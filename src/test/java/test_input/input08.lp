% cell(rows, columns)
cell(1..8,1..8).

tree(1,6).
tree(1,7).
tree(2,1).
tree(3,1).
tree(3,7).
tree(4,4).
tree(4,5).
tree(6,2).
tree(6,3).
tree(7,2).
tree(7,4).
tree(8,7).

% hint how many tents X at row R -> row_hint(R,X)
row_hint(1,2).
row_hint(2,1).
row_hint(3,2).
row_hint(4,2).
row_hint(5,1).
row_hint(6,1).
row_hint(7,0).
row_hint(8,3).

% hint how many tents Y at column C -> column_hint(C,X)
column_hint(1,2).
column_hint(2,2).
column_hint(3,1).
column_hint(4,2).
column_hint(5,1).
column_hint(6,2).
column_hint(7,0).
column_hint(8,2).