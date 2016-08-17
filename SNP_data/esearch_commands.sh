esearch -db snp -query "cds indel[Function Class] AND Homo sapiens[Organism]" | esummary | xtract -pattern DocumentSummary -element Id -element SNP_ID -block GENES -element GENE_ID -block GENES -element NAME > snp.cds_indel.info.tsv
esearch -db snp -query "downstream variant 500b[Function Class] AND Homo sapiens[Organism]" | esummary | xtract -pattern DocumentSummary -element Id -element SNP_ID -block GENES -element GENE_ID -block GENES -element NAME > snp.downstream_variant_500b.info.tsv
esearch -db snp -query "frameshift[Function Class] AND Homo sapiens[Organism]" | esummary | xtract -pattern DocumentSummary -element Id -element SNP_ID -block GENES -element GENE_ID -block GENES -element NAME > snp.frameshift.info.tsv
esearch -db snp -query "frameshift variant[Function Class] AND Homo sapiens[Organism]" | esummary | xtract -pattern DocumentSummary -element Id -element SNP_ID -block GENES -element GENE_ID -block GENES -element NAME > snp.frameshift_variant.info.tsv
esearch -db snp -query "gene segment[Function Class] AND Homo sapiens[Organism]" | esummary | xtract -pattern DocumentSummary -element Id -element SNP_ID -block GENES -element GENE_ID -block GENES -element NAME > snp.gene_segment.info.tsv
esearch -db snp -query "intron[Function Class] AND Homo sapiens[Organism]" | esummary | xtract -pattern DocumentSummary -element Id -element SNP_ID -block GENES -element GENE_ID -block GENES -element NAME > snp.intron.info.tsv
esearch -db snp -query "intron variant[Function Class] AND Homo sapiens[Organism]" | esummary | xtract -pattern DocumentSummary -element Id -element SNP_ID -block GENES -element GENE_ID -block GENES -element NAME > snp.intron_variant.info.tsv
esearch -db snp -query "missense[Function Class] AND Homo sapiens[Organism]" | esummary | xtract -pattern DocumentSummary -element Id -element SNP_ID -block GENES -element GENE_ID -block GENES -element NAME > snp.missense.info.tsv
esearch -db snp -query "nc transcript variant[Function Class] AND Homo sapiens[Organism]" | esummary | xtract -pattern DocumentSummary -element Id -element SNP_ID -block GENES -element GENE_ID -block GENES -element NAME > snp.nc_transcript_variant.info.tsv
esearch -db snp -query "near gene 3[Function Class] AND Homo sapiens[Organism]" | esummary | xtract -pattern DocumentSummary -element Id -element SNP_ID -block GENES -element GENE_ID -block GENES -element NAME > snp.near_gene_3.info.tsv
esearch -db snp -query "near gene 5[Function Class] AND Homo sapiens[Organism]" | esummary | xtract -pattern DocumentSummary -element Id -element SNP_ID -block GENES -element GENE_ID -block GENES -element NAME > snp.near_gene_5.info.tsv
esearch -db snp -query "nonsense[Function Class] AND Homo sapiens[Organism]" | esummary | xtract -pattern DocumentSummary -element Id -element SNP_ID -block GENES -element GENE_ID -block GENES -element NAME > snp.nonsense.info.tsv
esearch -db snp -query "reference[Function Class] AND Homo sapiens[Organism]" | esummary | xtract -pattern DocumentSummary -element Id -element SNP_ID -block GENES -element GENE_ID -block GENES -element NAME > snp.reference.info.tsv
esearch -db snp -query "splice 3[Function Class] AND Homo sapiens[Organism]" | esummary | xtract -pattern DocumentSummary -element Id -element SNP_ID -block GENES -element GENE_ID -block GENES -element NAME > snp.splice_3.info.tsv
esearch -db snp -query "splice 5[Function Class] AND Homo sapiens[Organism]" | esummary | xtract -pattern DocumentSummary -element Id -element SNP_ID -block GENES -element GENE_ID -block GENES -element NAME > snp.splice_5.info.tsv
esearch -db snp -query "splice acceptor variant[Function Class] AND Homo sapiens[Organism]" | esummary | xtract -pattern DocumentSummary -element Id -element SNP_ID -block GENES -element GENE_ID -block GENES -element NAME > snp.splice_acceptor_variant.info.tsv
esearch -db snp -query "splice donor variant[Function Class] AND Homo sapiens[Organism]" | esummary | xtract -pattern DocumentSummary -element Id -element SNP_ID -block GENES -element GENE_ID -block GENES -element NAME > snp.splice_donor_variant.info.tsv
esearch -db snp -query "stop gain[Function Class] AND Homo sapiens[Organism]" | esummary | xtract -pattern DocumentSummary -element Id -element SNP_ID -block GENES -element GENE_ID -block GENES -element NAME > snp.stop_gain.info.tsv
esearch -db snp -query "stop gained[Function Class] AND Homo sapiens[Organism]" | esummary | xtract -pattern DocumentSummary -element Id -element SNP_ID -block GENES -element GENE_ID -block GENES -element NAME > snp.stop_gained.info.tsv
esearch -db snp -query "stop loss[Function Class] AND Homo sapiens[Organism]" | esummary | xtract -pattern DocumentSummary -element Id -element SNP_ID -block GENES -element GENE_ID -block GENES -element NAME > snp.stop_loss.info.tsv
esearch -db snp -query "stop lost[Function Class] AND Homo sapiens[Organism]" | esummary | xtract -pattern DocumentSummary -element Id -element SNP_ID -block GENES -element GENE_ID -block GENES -element NAME > snp.stop_lost.info.tsv
esearch -db snp -query "synonymous codon[Function Class] AND Homo sapiens[Organism]" | esummary | xtract -pattern DocumentSummary -element Id -element SNP_ID -block GENES -element GENE_ID -block GENES -element NAME > snp.synonymous_codon.info.tsv
esearch -db snp -query "upstream variant 2kb[Function Class] AND Homo sapiens[Organism]" | esummary | xtract -pattern DocumentSummary -element Id -element SNP_ID -block GENES -element GENE_ID -block GENES -element NAME > snp.upstream_variant_2kb.info.tsv
esearch -db snp -query "utr 3[Function Class] AND Homo sapiens[Organism]" | esummary | xtract -pattern DocumentSummary -element Id -element SNP_ID -block GENES -element GENE_ID -block GENES -element NAME > snp.utr_3.info.tsv
esearch -db snp -query "utr 5[Function Class] AND Homo sapiens[Organism]" | esummary | xtract -pattern DocumentSummary -element Id -element SNP_ID -block GENES -element GENE_ID -block GENES -element NAME > snp.utr_5.info.tsv
esearch -db snp -query "utr variant 3 prime[Function Class] AND Homo sapiens[Organism]" | esummary | xtract -pattern DocumentSummary -element Id -element SNP_ID -block GENES -element GENE_ID -block GENES -element NAME > snp.utr_variant_3_prime.info.tsv
esearch -db snp -query "utr variant 5 prime[Function Class] AND Homo sapiens[Organism]" | esummary | xtract -pattern DocumentSummary -element Id -element SNP_ID -block GENES -element GENE_ID -block GENES -element NAME > snp.utr_variant_5_prime.info.tsv