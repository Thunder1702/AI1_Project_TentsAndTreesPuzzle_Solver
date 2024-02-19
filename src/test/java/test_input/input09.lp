% cell(rows, columns)
cell(1..10,1..10).

tree(1,4).
tree(1,9).
tree(2,2).
tree(2,6).
tree(3,3).
tree(4,2).
tree(4,6).
tree(4,9).
tree(5,7).
tree(6,1).
tree(6,2).
tree(7,4).
tree(7,8).
tree(7,10).
tree(8,2).
tree(8,9).
tree(9,7).
tree(9,8).
tree(9,9).
tree(10,5).

% hint how many tents X at row R -> row_hint(R,X)
row_hint(1,2).
row_hint(2,3).
row_hint(3,0).
row_hint(4,4).
row_hint(5,1).
row_hint(6,2).
row_hint(7,2).
row_hint(8,2).
row_hint(9,2).
row_hint(10,2).

% hint how many tents Y at column C -> column_hint(C,X)
column_hint(1,2).
column_hint(2,2).
column_hint(3,2).
column_hint(4,1).
column_hint(5,3).
column_hint(6,1).
column_hint(7,2).
column_hint(8,2).
column_hint(9,1).
column_hint(10,4).