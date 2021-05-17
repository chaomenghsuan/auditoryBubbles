wavInDir = '/Users/zhaomengxuan/Google Drive/thesis/experiment/utterance6';
mixOutDir = '/Users/zhaomengxuan/Google Drive/thesis/experiment/test';
noiseRefFile = '/Users/zhaomengxuan/Google Drive/thesis/experiment/noise.wav';
dur_s = 2;
normalize = 1;
baseSnr_db = -25;
nMixes = 5;
bubblesPerSecond = Inf;
subjectName = 'test';
mixDir = mixMrtBubbleNoiseDir(wavInDir, mixOutDir, nMixes, bubblesPerSecond, baseSnr_db, dur_s, normalize, noiseRefFile);
playListeningTestDir(mixDir, subjectName,1,1)