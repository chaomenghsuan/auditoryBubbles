
%mixDir = '/Users/zhaomengxuan/Documents/bubble noise/bmacaulay-zhe_shi_ma_zi';
mixDir = '/Users/zhaomengxuan/Google Drive/thesis/experiment/native';
%baseFeatDir = '/Users/zhaomengxuan/Documents/bubble noise/bmacaulay_result/bmacaulay_result';
baseFeatDir = '/Users/zhaomengxuan/Google Drive/thesis/experiment/native_result';
pattern = 'bps.*.wav';
pcaDims = [100 400];
usePcaDims = 40;
trimFrames = 0;
overwrite = 0;
win_s = 0.064;
setLength_s = 0;
maxFreq_hz = 10000;
mainBubbleAnalysis(mixDir, resultFile, baseFeatDir, pattern, noiseRefFile, pcaDims, usePcaDims, trimFrames, win_s, overwrite, setLength_s, maxFreq_hz)%, '',true)

