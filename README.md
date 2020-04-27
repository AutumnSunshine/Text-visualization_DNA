# Text-visualization_DNA
Visualizing DNA base sequences as colored pixels [Sample used:SARS-Cov2 DNA]]

This is a beginner Processing project

Context:

From: https://en.wikipedia.org/wiki/Genetic_code
DNA consists of 4 bases - Adenine[A], Thymine [T], Cytosine [C], Guanine [G].
As it is double stranded, each base on one strand has a complementary base on the other [A is complementary to T, C to G]
Because of this, while encoding DNA sequence, only one strand's bases are mentioned. [Thymine is replaced by Urasil - U in RNA]

A triplet of bases is called a codon & encodes an amino acid; in the ribosome, m-RNA sequence is read 3 bases at a time & 
hence codons form the basis to create proteins. While there are 64 possible combinations of the 
bases, there is some redundancy built in as there are only 20 amino acids used in protein synthesis. 
So, multiple codons can encode the same amino acid
Some combination are used for indicating START / STOP encoding. Generally AUG[Methionine] is the start Codon 
while UAA,UAG,UGA are stop codons (or TAA/TAG/TGA in DNA)

Objective:

Since DNA sequences are encoded as triplets, they lend themselves naturally to be encoded as RGB values of a pixel & 
hence easily visualized. Each base was assigned a random value between 0 and 255, before I hit upon values that produced
a decent graphic. Current assignment [T - 50  ; C - 120   ; A - 240  ; G - 30 ]
[Note: This visualization has no biological significance, in fact the ACGT sequences can be replaced by any other 
4 alphabets and can be visualized the same way]

For this exercise I used the SARS-CoV2 sequencing from India https://www.ncbi.nlm.nih.gov/nuccore/MT050493
The starting base is at Position 246, and I stopped at the earliest stop sequence, 
though the position indicated for stop is 21535 for gene olf1a [I'm not a biologist - so this is all I know from reading].

Software Used: Processing 
[Easily downloadable from https://processing.org/download/]

I chose Processing as its written on top of Java, and as I am familiar with Java, it was a flatter learning curve.
Plus, the mechanics of image processing are designed to be simple as it's design focused.
[One can see that Processing was designed by designers - the interfaces are so beautiful]
This project only has file processing & pixel manipulation stuff.

As a reference to get started, I watched a few tutorials from 
Daniel Schiffman's The Coding Train YT channel : https://www.youtube.com/channel/UCvjgXvBlbQiydffZU7m1_aw
Processing tutorial from their site            : https://processing.org/tutorials/

Other things in code are pretty self-explanatory.

Hopefully, future versions will be better-looking & more sophisticated!
