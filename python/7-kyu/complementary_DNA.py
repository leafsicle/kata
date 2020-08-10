def DNA_strand(dna):
    strand = []
    complement = ""
    for aminoAcid in dna:
        if aminoAcid == "A":
            temp = "T"
            strand.append(temp)
            temp = ""
        elif aminoAcid == "T":
            temp = "A"
            strand.append(temp)
            temp = ""
        elif aminoAcid == "C":
            temp = "G"
            strand.append(temp)
            temp = ""
        elif aminoAcid == "G":
            temp = "C"
            strand.append(temp)
            temp = ""
    complement = "".join(strand)
    return complement

# clever dictionary approach that I saw after
# pairs = {'A':'T','T':'A','C':'G','G':'C'}
# def DNA_strand(dna):
# return ''.join([pairs[x] for x in dna])

