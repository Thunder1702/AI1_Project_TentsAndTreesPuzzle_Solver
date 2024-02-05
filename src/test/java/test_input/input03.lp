% cell(rows, columns)
cell(1..8,1..8).

tree(1,1).
tree(1,4).
tree(1,6).
tree(2,2).
tree(3,1).
tree(4,3).
tree(5,4).
tree(7,4).
tree(7,6).
tree(7,7).
tree(8,3).
tree(8,7).


% hint how many tents X at row R -> row_hint(R,X)
row_hint(1,2).
row_hint(2,2).
row_hint(3,0).
row_hint(4,1).
row_hint(5,2).
row_hint(6,1).
row_hint(7,0).
row_hint(8,4).

% hint how many tents Y at column C -> column_hint(C,X)
column_hint(1,2).
column_hint(2,1).
column_hint(3,2).
column_hint(4,1).
column_hint(5,2).
column_hint(6,1).
column_hint(7,2).
column_hint(8,1).