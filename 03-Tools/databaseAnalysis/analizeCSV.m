fid = fopen('D:\00xBeds\03-MatrixFactorizationWithContext\data\camra2011\trainingCLEAN.txt');
C = textscan(fid, '%d,%d,%d,"%d-%d-%d %d:%d:%d"', 4536891);
fclose(fid);


% fiddd = fopen('D:\00xBeds\03-MatrixFactorizationWithContext\data\camra2011\public_eval_t1CLEAN.txt');
% B = textscan(fid, '%d,%d,%d,"%d-%d-%d %d:%d:%d"', 4482);
% fclose(fiddd);
% 
% testSet = [B{1} B{2} B{3} B{4} B{5} B{6} B{7} B{8} B{9}];
% 
% trainSet = [C{1} C{2} C{3} C{4} C{5} C{6} C{7} C{8} C{9}];



numOfUsers= length(unique(C{1}))
users=sort(unique(C{1}));
minUserID = min(unique(C{1}))
maxUserID = max(unique(C{1}))

numOfItems= length(unique(C{2}))
items=sort(unique(C{2}));
minItemID = min(unique(C{2}))
maxItemID = max(unique(C{2}))

[un ind]=unique(C{2});