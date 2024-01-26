% cell(rows, columns)
cell(1..8,1..8).

tree(1,4).
tree(2,1).
tree(2,8).
tree(3,2).
tree(3,5).
tree(3,7).
tree(4,1).
tree(4,7).
tree(5,5).
tree(5,7).
tree(6,1).
tree(7,4).

% hint how many tents X at row R -> row_hint(R,X)
row_hint(1,3).
row_hint(2,1).
row_hint(3,2).
row_hint(4,1).
row_hint(5,1).
row_hint(6,2).
row_hint(7,1).
row_hint(8,1).

% hint how many tents Y at column C -> column_hint(C,X)
column_hint(1,3).
column_hint(2,0).
column_hint(3,2).
column_hint(4,1).
column_hint(5,2).
column_hint(6,1).
column_hint(7,1).
column_hint(8,2).