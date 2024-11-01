function [h, avg, err] = plotMeanAndSEM(x, ymat, lineProps)
    ymat = squeeze(ymat);
    avg = mean(ymat,1);
    stdev = std(ymat,0, 1);
    n = size(ymat,1);
    err = stdev / sqrt(n);

    if isempty(x)
        x = 1:length(avg);
    end
    h = shadedErrorBar(x, avg,err, 'lineProps',lineProps);
    h.edge(1).Visible = 'off';
    h.edge(2).Visible = 'off';
end