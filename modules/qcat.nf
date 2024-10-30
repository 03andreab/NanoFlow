process qcat {
    conda "${projectDir}/yml/qcat.yml" 

    publishDir 'results', mode: 'copy'

    input:
        path input

    output:
        path('output_qcat/')

    """
    gzcat "$input" | qcat --trim -k Auto -b output_qcat/
    """
}