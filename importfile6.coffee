function occultsmall = importfile6(filename, dataLines)
%IMPORTFILE6 Import data from a text file
%  OCCULTSMALL = IMPORTFILE6(FILENAME) reads data from text file
%  FILENAME for the default selection.  Returns the data as a table.
%
%  OCCULTSMALL = IMPORTFILE6(FILE, DATALINES) reads data for the
%  specified row interval(s) of text file FILENAME. Specify DATALINES as
%  a positive scalar integer or a N-by-2 array of positive scalar
%  integers for dis-contiguous row intervals.
%
%  Example:
%  occultsmall = importfile6("C:\Users\Bondz\Documents\occultsmall.jl.json", [3, Inf]);
%
%  See also READTABLE.
%
% Auto-generated by MATLAB on 12-Apr-2019 13:10:53

%% Input handling

% If dataLines is not specified, define defaults
if nargin < 2
    dataLines = [3, Inf];
end

%% Setup the Import Options
opts = delimitedTextImportOptions("NumVariables", 2);

% Specify range and delimiter
opts.DataLines = dataLines;
opts.Delimiter = "#";

% Specify column names and types
opts.VariableNames = ["VarName1", "Thisroutineapproximatesthelightcurveforasmall"];
opts.VariableTypes = ["string", "string"];
opts = setvaropts(opts, [1, 2], "WhitespaceRule", "preserve");
opts = setvaropts(opts, [1, 2], "EmptyFieldRule", "auto");
opts.ExtraColumnsRule = "ignore";
opts.EmptyLineRule = "read";

% Import the data
occultsmall = readtable(filename, opts);

end