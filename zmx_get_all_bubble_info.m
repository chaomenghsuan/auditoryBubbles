name = {'adanamunroe', 'hannahglassman', 'lorrainemcshea', 'marioaltamirano', 'melissalent','huangyiming', 'liyudan', 'naifengliu', 'zhangxi', 'lvweimin', 'chenming'};
for i = 1:length(name)

    rootDir = '/Users/zhaomengxuan/Google Drive/thesis/experiment';
    folder = strcat('bps', name{i});
    mixDir = fullfile(rootDir, name{i}, folder);
    saveAdaptiveInfo(mixDir);

end