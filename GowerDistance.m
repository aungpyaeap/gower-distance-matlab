function D = GowerDistance(data)
[n, p] = size(data);
D = zeros(n, n);

for i = 1:p
    column = data{:, i};

    if isnumeric(column)
        % For numeric variables
        range = max(column) - min(column);
        if range == 0
            continue; % Skip constant columns
        end
        d = abs(column - column') / range;
    elseif iscell(column) || iscategorical(column) || isobject(column)
        % For categorical variables
        d = zeros(n, n);
        for j = 1:n
            for k = 1:n
                d(j,k) = ~isequal(column{j}, column{k});
            end
        end
    else
        warning('Skipping column %d: unsupported data type', i);
        continue;
    end

    D = D + d;
end

% Normalize by the number of valid attributes
D = D / p;

% fprintf('Maximum Gower Distance: %.4f\n', max(D(:)));
% fprintf('Minimum Gower Distance: %.4f\n', min(D(D > 0.00)));

end
