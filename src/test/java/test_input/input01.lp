% cell(rows, columns)
cell(1..6,1..6).

tree(2,1).
tree(2,4).
tree(3,2).
tree(3,5).
tree(4,1).
tree(5,5).
tree(6,4).

% hint how many tents X at row R -> row_hint(R,X)
row_hint(1,1).
row_hint(2,2).
row_hint(3,1).
row_hint(4,0).
row_hint(5,3).
row_hint(6,0).

% hint how many tents Y at column C -> column_hint(C,X)
column_hint(1,3).
column_hint(2,0).
column_hint(3,1).
column_hint(4,1).
column_hint(5,1).
column_hint(6,1).