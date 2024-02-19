% cell(rows, columns)
cell(1..10,1..10).

tree(1,5).
tree(2,1).
tree(2,3).
tree(2,7).
tree(3,5).
tree(3,9).
tree(4,1).
tree(4,7).
tree(4,9).
tree(5,1).
tree(6,3).
tree(6,5).
tree(6,10).
tree(7,5).
tree(7,8).
tree(8,2).
tree(8,5).
tree(9,4).
tree(9,8).
tree(10,5).

% hint how many tents X at row R -> row_hint(R,X)
row_hint(1,3).
row_hint(2,1).
row_hint(3,3).
row_hint(4,2).
row_hint(5,1).
row_hint(6,3).
row_hint(7,2).
row_hint(8,1).
row_hint(9,2).
row_hint(10,2).

% hint how many tents Y at column C -> column_hint(C,X)
column_hint(1,3).
column_hint(2,1).
column_hint(3,2).
column_hint(4,3).
column_hint(5,0).
column_hint(6,4).
column_hint(7,1).
column_hint(8,2).
column_hint(9,2).
column_hint(10,2).