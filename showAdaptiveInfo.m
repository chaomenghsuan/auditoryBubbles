function showAdaptiveInfo(mixDir)

% Load the .mat files generated by platAdaptiveListening() in a directory
% and plot the evolution of the difficulty and the correctness over time
% for each stimulus.

[~,files] = findFiles(mixDir, '.*.mat$');
if isempty(files)
    return
end

for f = 1:length(files)
    %m = load(files{f});
    bn = basename(files{f}, 0);
    fn = ['f_' regexprep(bn(1:end-3), '[^a-zA-Z0-9_]', '')];
    num = str2double(bn(end-2:end));
    data.(fn)(num) = orderfields(load(files{f}));
end

fns = fieldnames(data);

% bps levels over blocks
subplot 211
bps = cat(2, data.(fns{1}).perStimBps)';
semilogy(bps)
legend(data.(fns{1})(end).choices)
ylabel('Bubbles per second')
xlabel('Mixtures')

data.(fns{1})(end).choices
bps(end,:)

% moving average correctness / accuracy
subplot 212
nAvg = 20;
plot(conv2(data.(fns{1})(end).perStimPast', ones(nAvg,1)/nAvg, 'same'))
ylim([0 1])
%legend(data.(fns{1})(end).choices)
xlabel('Mixtures')
ylabel(sprintf('Moving-average accuracy, N=%s', nAvg))

% Would be nice to plot moving average of frequency of each response...

1+1;