function mat2arff(M, filename, gt)

% mat2arff(M, filename, gt)
%
% Save the matrix M as a Weka ARFF file.  Make up names for the
% columns.  If gt argument is provided, use that as the class,
% otherwise give everything the same class.

% Copyright (C) 2005 Michael Mandel, mim at ee columbia edu;
% distributable under GPL

file = fopen(filename, 'w');

% Print comments at top of file
fprintf(file, ['% ' filename '\n']);
fprintf(file, '% This file was automatically generated by mat2arff\n');

% Print header info
fprintf(file, ['@RELATION ' filename '\n\n']);
colnums = [1:size(M,2)];
fprintf(file, '@ATTRIBUTE f%d NUMERIC\n', colnums);

% Print list of classes
fprintf(file, '@ATTRIBUTE class {');
if(nargin < 3)
  fprintf(file, 'n,y,');
else
  fprintf(file, 'c%d,',unique(gt));
end
fprintf(file, '\b}\n\n');

% Print data section
fprintf(file, '@DATA\n');
if(nargin < 3)
  for i=1:size(M,1)
    fprintf(file, '%f,', M(i,:));
    fprintf(file, 'n\n');
  end
else
  for i=1:size(M,1)
    fprintf(file, '%f,', M(i,:));
    fprintf(file, 'c%d\n', gt(i));
  end
end

fclose(file);
