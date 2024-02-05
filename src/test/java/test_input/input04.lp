% cell(rows, columns)
cell(1..10,1..10).

tree(1,5).
tree(1,6).
tree(1,9).
tree(2,2).
tree(2,3).
tree(2,8).
tree(4,1).
tree(4,3).
tree(4,5).
tree(4,10).
tree(5,10).
tree(6,1).
tree(7,3).
tree(7,9).
tree(8,1).
tree(8,7).
tree(8,8).
tree(9,5).
tree(10,8).
tree(10,9).

% hint how many tents X at row R -> row_hint(R,X)
row_hint(1,3).
row_hint(2,2).
row_hint(3,2).
row_hint(4,2).
row_hint(5,2).
row_hint(6,0).
row_hint(7,4).
row_hint(8,1).
row_hint(9,2).
row_hint(10,2).

% hint how many tents Y at column C -> column_hint(C,X)
column_hint(1,4).
column_hint(2,0).
column_hint(3,1).
column_hint(4,2).
column_hint(5,2).
column_hint(6,2).
column_hint(7,2).
column_hint(8,2).
column_hint(9,2).
column_hint(10,3).