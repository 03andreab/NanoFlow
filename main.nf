#!/usr/bin/env nextflow

params.input = "${params.projectDir}/test_data/SRR31144620.fastq.gz"

include { qcat } from './modules/qcat.nf'

workflow {
    input_ch = Channel.of(params.input)
    qcat(input_ch)
}


