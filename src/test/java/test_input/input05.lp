% cell(rows, columns)
cell(1..10,1..10).

tree(1,2).
tree(2,6).
tree(2,8).
tree(3,5).
tree(3,9).
tree(4,4).
tree(4,7).
tree(5,2).
tree(6,1).
tree(6,4).
tree(6,7).
tree(6,8).
tree(6,10).
tree(8,5).
tree(8,9).
tree(9,1).
tree(9,4).
tree(9,10).
tree(10,5).
tree(10,9).

% hint how many tents X at row R -> row_hint(R,X)
row_hint(1,3).
row_hint(2,0).
row_hint(3,3).
row_hint(4,1).
row_hint(5,3).
row_hint(6,2).
row_hint(7,1).
row_hint(8,4).
row_hint(9,1).
row_hint(10,2).

% hint how many tents Y at column C -> column_hint(C,X)
column_hint(1,1).
column_hint(2,2).
column_hint(3,2).
column_hint(4,3).
column_hint(5,0).
column_hint(6,4).
column_hint(7,1).
column_hint(8,4).
column_hint(9,0).
column_hint(10,3).