import pandas as pd
from collections import defaultdict


def generate_snp_acc_mapping(table_file):
    """
    Generates a mapping from SNP IDs from a platform to NCBI RS IDs. Based on one Affymetrix GEO dataset, may need
    further tweaking.

    :param table_file: Filename of table-sperated SNP info file
    :return: dictionary mapping platform IDs to RS IDs
    """
    with open(table_file) as snps:
        header = False
        snp_map = {}
        for snp in (l for l in snps if not l.startswith('#')):
            if not header:
                header = snp
            snp = snp.split('\t')
            snp_map[snp[0]] = snp[2] if snp[2].startswith('rs') else snp[1]
    return snp_map


def find_clinvar_groups(clinvar_summary, assembly='GRCh37'):
    """
    Seperated ClinVar variants into groups based on their associated phenotype given a genome assembly id.

    :param clinvar_summary: Filename of variant_summary.txt from ClinVar FTP.
    :param assembly: ID of assembly from which to use SNPs. Current GRCh37 or GRCh38
    :return: Dictionary containing keys of each MedGen phenotype ID mapping to lists of SNP RS IDs
    """
    variants = pd.read_table(clinvar_summary)
    groups = defaultdict(list)
    for i, var in variants[variants.Assembly==assembly].iterrows():
        pheno_ids = {xr.split(':')[0]: xr.split(':')[1] for xr in var.PhenotypeIDs.split(',') if ':' in xr}
        if 'MedGen' in pheno_ids:
            groups[pheno_ids['MedGen']].append(var['RS# (dbSNP)'])
        else:
            groups[None].append(var['RS# (dbSNP)'])
    return groups


def subset_wrap(table, groups, dependents, minimum=100, maximum=1000):
    """table is a pandas DataFrame
       groups is a dictionary keys are group labels (phenotype for ex.), values are lists of column labels
       dependents is a list the length of the number of samples
       returns a dictionary keys(group labels): values(sub dataframes)
    """
    df = table
    levels = list(set(dependents.tolist()))
    df['dependent'] = [levels.index(d) for d in dependents] #This is the dependent variable
    
    # call generic_subset on each group
    sub_dfs = {}
    for group, col_id_list in groups.items():
        sub_dfs[group] = generic_subset(df, col_id_list, minimum, maximum)
 
    return sub_dfs


def generic_subset(table, col_list, minimum, maximum):
    """table is a pandas dataframe
       snplist is a list of ids"""
    avail_cols = set(col_list).intersection(table.columns)
    
    
    if minimum < len(avail_cols) < maximum: #small groups of snps won't yeild meaningful results, large groups are (currently) too big
        return
    subset_table = table[list(avail_cols)+['dependent']]
    
    return subset_table #pandas dataframe

