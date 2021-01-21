SARSCoV2=getgenbank('NC_045512','SequenceOnly',true);
AntiSARSCoV2=getgenbank('MW118116','SequenceOnly',true);
ntdensity(SARSCoV2);
dimercount(AntiSARSCoV2,'chart','bar');
nwalign(AntiSARSCoV2,SARSCoV2,'showscore',true);
[lscore,locAlig] = nwalign(AntiSARSCoV2,SARSCoV2,'scoringmatrix','blosum30','gapopen',5,'extendgap',5);
seqalignviewer(locAlig);
fprintf('Score = %g \n',lscore);
swalign(AntiSARSCoV2,SARSCoV2,'showscore',true);
[lscore2,locAligseq2] = swalign(AntiSARSCoV2,SARSCoV2,'scoringmatrix','blosum30','gapopen',5,'extendgap',5); 
seqalignviewer(locAligseq2);
fprintf('Score = %g \n',lscore2);
figure
dimercount(SARSCoV2,'chart','bar');
ntdensity(AntiSARSCoV2)