rule callpeak:
    input:
        treatment=rules.bam_sort.output.bam,   # required: treatment sample(s)
    output:
        peaks_xls="results/macs2/{sample}_{genome}_peaks.xls",
        narrowPeaks="results/macs2/{sample}_{genome}_peaks.narrowPeak",
        bed="results/macs2/{sample}_{genome}_summits.bed"
    log:
        "logs/macs2/{sample}_{genome}_callpeak.log"
    params:
        "-f BAM -g hs"
    wrapper:
        "0.74.0/bio/macs2/callpeak"