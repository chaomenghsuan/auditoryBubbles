%inCsvFiles = {'/Users/zhaomengxuan/Google Drive/thesis/exp_ma/native_ma/gge.csv',...
%    '/Users/zhaomengxuan/Google Drive/thesis/exp_ma/native_ma/gge.csv',...
%    '/Users/zhaomengxuan/Google Drive/thesis/exp_ma/native_ma/jyang.csv',...
%    '/Users/zhaomengxuan/Google Drive/thesis/exp_ma/native_ma/qxu.csv',...
%    '/Users/zhaomengxuan/Google Drive/thesis/exp_ma/native_ma/sliu.csv',...
%    '/Users/zhaomengxuan/Google Drive/thesis/exp_ma/native_ma/yguo.csv'};
inCsvFiles = '/Users/zhaomengxuan/Google Drive/thesis/experiment/L2/hannahglassman.csv';
%inCsvFiles = {'/Users/zhaomengxuan/Google Drive/thesis/experiment/L2/lvweimin.csv',...
%    '/Users/zhaomengxuan/Google Drive/thesis/experiment/native/chenming.csv',...
%    '/Users/zhaomengxuan/Google Drive/thesis/experiment/native/naifengliu.csv',...
%    '/Users/zhaomengxuan/Google Drive/thesis/experiment/native/huangyiming.csv',...
%    '/Users/zhaomengxuan/Google Drive/thesis/experiment/native/zhangxi.csv'};
resultFile = '/Users/zhaomengxuan/Google Drive/thesis/experiment/L2_result/native_result.mat';
verbose = 1;
ignoreStimulusDir = 1;
processListeningData(inCsvFiles, resultFile, verbose, ignoreStimulusDir);

