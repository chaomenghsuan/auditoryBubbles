function Fs = getAllWrongAnswers(rootDir, resultDir, expSentence, targetTonePattern, namelist)

% e.g. rootDir = '/Users/zhaomengxuan/Documents/bubble noise'
% e.g. resultDir = '/Volumes/??DISK/computational linguistics/bubble backup'
% e.g. expSentence = 'zhe_shi_ma_zi'
% e.g. targetTonePattern = '3_2'
% e.g. namelist = {'gge', 'czhou'}

%dOrig = [1,170852];
dReshape = [1412,121];
count = 0;
Fs = zeros(dReshape);
for i = 1:length(namelist)
    inFolder = strcat(namelist(i), '-', expSentence);
    txtFile = strcat('wrong', targetTonePattern, '.txt');
    textFilePath = char(fullfile(rootDir, inFolder, 'wrong_answers', txtFile));
    resultFolder = strcat(string(inFolder), '_result');
    targetFolder = char(strcat('bps', string(namelist(i))));
    targetMatPath = fullfile(char(resultDir), char(resultFolder), 'trim=00,length=0,win_ms=064/feat',char(targetFolder));
    F = getWrongAnswers(textFilePath, targetMatPath);
    Fs = Fs + F/length(namelist);
    count = count + 1;
end
%F = reshape(F, dReshape);

imagesc(Fs);
colorbar;
axis xy;
end