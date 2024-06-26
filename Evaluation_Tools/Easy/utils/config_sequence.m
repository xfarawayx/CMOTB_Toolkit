function sequences = config_sequence()
% config sequences for evaluation
% the configuration files are placed in ./sequence_evaluation_config/;

dataset_name = 'all_dataset.txt';
%dataset_name = 'PO.txt';
%dataset_name = 'sw1.txt';

% check if the file exists
if ~exist(dataset_name, 'file')
    error('%s is not found!', dataset_name);
end

% load evaluation sequences
fid = fopen(dataset_name, 'r');
i = 0;
sequences = cell(100000, 1);
while ~feof(fid)
    i = i + 1;
    sequences{i, 1} = fgetl(fid);
end
sequences(i+1:end) = [];
fclose(fid);
end