wavInDir = '/Users/zhaomengxuan/Google Drive/thesis/experiment/test/audio';
mixOutDir = '/Users/zhaomengxuan/Google Drive/thesis/experiment/test';
noiseRefFile = '/Users/zhaomengxuan/Google Drive/thesis/experiment/noise.wav';
dur_s = 2;
normalize = 1;
baseSnr_db = -25;
nMixes = 2;
initialBps = 3;
subjectName = 'test30';
playAdaptiveListening(wavInDir, mixOutDir, subjectName, nMixes, initialBps, dur_s, baseSnr_db, noiseRefFile, normalize, 1, 0, 0, 0, 1);