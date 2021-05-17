function F = getWrongAnswers(textFilePath, targetMatPath)

paths = importdata(textFilePath,'\n');

inFile = string(fullfile(targetMatPath, strcat(paths(1), '.mat')));
dOrig = size(cell2mat(struct2cell(load(inFile, 'features'))));
dReshape = cell2mat(struct2cell(load(inFile, 'origShape')));
F = zeros(dOrig);
%
for i = 1:length(paths)
    inFile = string(fullfile(targetMatPath, strcat(paths(i), '.mat')));
    features = cell2mat(struct2cell(load(inFile, 'features')));
    F = F + features/length(paths);
    %disp(F(1,1));
end

F = reshape(F, dReshape);
imagesc(F);
axis xy;
colorbar;
end