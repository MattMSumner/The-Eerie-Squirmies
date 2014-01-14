The-Eerie-Squirmies
===================

This was the first of two coding challenges for a job I applied for.

Question:

The Eerie Squirmies

input file: eerie.in

output file: eerie.out

The crime lab at Eerie University has been asked to help solve a murder case. It seems that on Halloween fifty years ago, a brother of the I Tappa Kega fraternity was hacked to death while out on an errand of mayhem. The prime suspects were Jason and Chucky but the case was never solved. A forensic team recently discovered that all of Jason~s victims were contaminated with a type of small worm called a Squirmy that is native to Crystal Lake and that none of Chucky~s victims had the worms on them. The body of the hapless frat brother was exhumed for examination to determine who the actual murderer was.

Unfortunately, all that was left was a frothy goo. However, a biologist was able to extract some genetic material from what was left. We must help the Eerie crime lab check the sequences of bases from the extracted chromosomes. The bases are adenine (A), thymine (T), cytosine (C) and guanine (G). A Squirmy has certain genetic sequences. Your program should read in strings representing genetic sequences and determine if the sequence is a Squirmy.  A Squirmy's genetic sequences adhere to the rules below:

* A Squirmy has a single chromosome that codes for a HEAD followed by one or more BODY SEGMENTs.

* A HEAD consists of a GLOBE followed by one or more EYE SPOTs.

* A BODY SEGMENT consists of a GLOBE followed by one or more LEGs.

* The DNA sequence for a GLOBE has the following structure:
  1. It starts with one or more A~s. The number of A~s determines the size of the GLOBE.
  2. The A~s are followed by either CAT or TAC.
  3. The GLOBE sequence is terminated by a single A.
So AATACA and ACATA are valid GLOBEs, while ATCAA and ACAT are not valid GLOBEs.

* The DNA sequence for an EYE SPOT has the following structure:
  1. The first base is T.
  2. The EYE SPOT may or may not be on a stalk.
    a. If the EYE SPOT is on a stalk, the strand continues with the code for one or more LEGs. The number of LEGS determines the length of the stalk.
    b. If the eye spot is not on a stalk, the strand continues with the terminators.
  3. The sequence for an EYE SPOT is terminated with AG.

So TAG and TCGGTCGTAG are valid GLOBES EYE SPOTs, while CGTAG and TAAG are not valid EYE SPOTs.

* The DNA sequence for a LEG has the following structure:
  1. The first base is C.
  2. The initial C is followed by one or more G~s. The number of G~s determines the length of the LEG.
  3. The LEG sequence is terminated by a single T.

So CGGGGGGT and CGT are valid LEGs, while CGGG and CCCGT are not valid LEGs.

For all sequences, there can be no bases in the sequence other than those specified. For example, the sequence CAGATA is not a valid LEG even though it contains CGT, because it has the extra A bases.

Input:

The first line contains an integer n, where 1 ~ n ~ 100, telling how many chromosomes are represented. The next n lines each contain a string of 1 to 100 uppercase alphabetic characters representing one chromosome. Only the characters 'A', 'T', 'C', and 'G' will be on chromosome lines.

Output:

The first line of output should read SQUIRMY OUTPUT. Each of the next n lines should consist of the case number followed by either YES or NO depending on whether or not the corresponding input line is a Squirmy. The last line of output should read END OF OUTPUT.

Sample Input:

    3
    ACATATAGACATACGT
    AAAAAATACATAGTAGTCGGGTAG
    ATACATCGGGTAGCGT

Sample Output (corresponding to sample input):

    SQUIRMY OUTPUT
    Case 1: YES
    Case 2: NO
    Case 3: NO
    END OF OUTPUT
