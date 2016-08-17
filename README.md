# SNP Feasible Solutions Algorithm
SNPs FSA is a pipeline for applying statistical analysis tools to identify interactions between SNPs and their effects on phenotypic expression.

# Introduction
This pipeline allows users to access and apply new statistical analysis tools to indentify possible phenotypic outcomes
as a result of epistatic interactions between Single Nucleotide Polymorphisms (SNPs). This pipeline is designed to take
a group of population genotype data as either a VCF file format or ""NCBI GEO files"" and a two column file explaning 
case-phenotype relationships to produce many sets of combination of SNPs related to the phenotype. This pilot version
has been tested on case-controlled data obtained from NCBI GEO database. In order to rapidly produced SNP interaction sets, SNP data is separated into smaller subsets. Default subsets are created based on clinvar phenotype data and based on the coexpression of genes to partitioned SNPs. A user may also define their own subsets for the phenotypes.


This pipeline uses a set of python script converters to generate the input files (from the original user input) for the
R package, rFSA, tools to be used.

# Dependencies

Dependencies for our pipeline include up to date versions for Python and R. The user must also download rFSA R utils package, and pandas package for python.

# Computing Environment & Speed

# Installed Software

### Python 2.7+

https://www.python.org/downloads/

##### Pandas

http://pandas.pydata.org/pandas-build/dev/

### R 3.3.1+

https://www.r-project.org/

##### The rFSA Package

https://github.com/jmsuk0587/rFSA

# Execution

