%Inclass assignment 7. 
% 1. The gene Cdx2 is a crucial transcription factor involved in number of
% developmental stages. Use the UCSC genome browser to answer the following questions
% about it:

% A. What human chromosome is it located on?
%    13

% B. How many exons does it have?
%    3

% C. What is the precise position of its stop codon in the genome?
%    27,971,139

% D. Identify at least one difference in sequence between human and mouse
% CDX2.
%    At base pair 27,963,851, the human genome contains an A nucleotide,
%    but the mouse genome contains a G nucleotide.

% E. In which human tissues is it expressed most abundantly?
%    Colon - Transverse, and Small Intestine - Terminal Ileum

%2. A. Use the unigene database to find the accession number for a genbank
% entry containing the complete coding sequence of Cdx2. 
%      The accession number for this genbank entry is NM_001265
accession = 'NM_001265';

% B. Use MATLAB to read the genbank information corresponding to that
% accession number. 
genbank_dat = getgenbank(accession);

% C. Use the information read in to find the position of the start and stop
% codon within the sequence. What are the parts of the sequence before the start codon 
% and after the stop codon?
start_pos = genbank_dat.CDS.indices(1);
stop_pos = genbank_dat.CDS.indices(2);
fprintf('The start codon is located at position: %d \n', start_pos)
fprintf('The stop codon is located at position: %d \n', stop_pos)
% The parts of the sequence before the start codon and after the stop codon
% are exons.

% D. Use the protein_id to read the information on the protein. Use the
% information you read to determine where the homeobox domain of the protein is.
% Hint: see the field "Features". 
protein_dat = getgenpept(genbank_dat.CDS.protein_id);
% The homeobox domain of the protein is located between amino acids 190 and
% 242 in the amino acid sequence for the protein.
