%res1 = load('/Volumes/XUANNODISK/computational linguistics/bubble backup/6sent/native/native_result/trim=00,length=0,win_ms=064/pca_100dims_400files/res/native_result/target=wei2_zhu1_bps_snr-25_/fn=plotPbc/res.mat');
%res2 = load('/Volumes/XUANNODISK/computational linguistics/bubble backup/6sent/L2/L2_result/trim=00,length=0,win_ms=064/pca_100dims_400files/res/L2_result/target=wei4_zhu4_bps_snr-25_/fn=plotPbc/res.mat');
res1 = load('/Users/zhaomengxuan/Google Drive/thesis/experiment/native_result/trim=00,length=0,win_ms=064/pca_100dims_400files/res/native_result/target=wei4_zhu4_bps_snr-25_/fn=plotPbc/res.mat');
res2 = load('/Users/zhaomengxuan/Google Drive/thesis/experiment/L2_4_result/trim=00,length=0,win_ms=064/pca_100dims_400files/res/L2_4_result/target=wei4_zhu4_bps_snr-25_/fn=plotPbc/res.mat');
n1 = 1000;
n2 = 1000;

%sigMask1 = exp((2*abs(0.5-res1.pval) - 1) / (4*res1.crit_p));
%sigMask2 = exp((2*abs(0.5-res2.pval) - 1) / (4*res2.crit_p));

%sigCorr1 = res1.pbc .* sigMask1;
%sigCorr2 = res2.pbc .* sigMask2;

%z1 = atanh(sigCorr1);
%z2 = atanh(sigCorr2);

z1 = atanh(res1.pbc);
z2 = atanh(res2.pbc);

Z = (z1 - z2) / sqrt((1/(n1-3)) + (1/(n2-3)));
%Z(Z>-1.96 & Z<1.96) = 0;
%Z(Z<=-1.96 | Z>=1.96) = 1;

p = normcdf(-abs(Z));
[h, crit_p] = fdr_bh(p);

fs = 44100;
hop_s = 0.0160;
maxFreq = 10000;
specCmap = easymap('bcyr', 255);
specCax = [-99 5];
outName = 'sig_wei4_zhu4';
outDir = '/Users/zhaomengxuan/Google Drive/thesis/experiment/L2_4_result/stats';

prt('ToFile', true, 'StartAt', 0, ...
    'Width', 3, 'Height', 3, 'NumberPlots', 0, ...
    'TargetDir', outDir, ...
    'SaveTicks', 1, 'Resolution', 200)

%prtSpectrogram(Z.*res1.clean, outName, fs, hop_s, specCmap, specCax, [1 1 1], maxFreq);
prtSpectrogram(cat(3,res1.clean, h), outName, fs, hop_s, specCmap, specCax, [1 1 1], maxFreq);
