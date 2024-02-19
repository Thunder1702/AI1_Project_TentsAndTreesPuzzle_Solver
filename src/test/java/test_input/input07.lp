% cell(rows, columns)
cell(1..8,1..8).

tree(1,6).
tree(2,3).
tree(3,3).
tree(3,7).
tree(3,8).
tree(4,1).
tree(5,2).
tree(5,7).
tree(6,6).
tree(6,7).
tree(7,1).
tree(8,3).

% hint how many tents X at row R -> row_hint(R,X)
row_hint(1,2).
row_hint(2,1).
row_hint(3,2).
row_hint(4,1).
row_hint(5,2).
row_hint(6,1).
row_hint(7,2).
row_hint(8,1).

% hint how many tents Y at column C -> column_hint(C,X)
column_hint(1,2).
column_hint(2,1).
column_hint(3,2).
column_hint(4,1).
column_hint(5,1).
column_hint(6,3).
column_hint(7,0).
column_hint(8,2).