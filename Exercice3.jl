matrix_val_1_1 = [[rand();rand()]]
matrix_val_1_2 = [[rand();rand()]]
matrix_val_1_3 = [[rand();rand()]]
matrix_val_1_4 = [[rand();rand()]]
matrix_val_2_1 = [[rand();rand()]]
matrix_val_2_2 = [[rand();rand()]]
matrix_val_2_3 = [[rand();rand()]]
matrix_val_2_4 = [[rand();rand()]]
matrix_1 = [matrix_val_1_1 matrix_val_1_2 matrix_val_1_3 matrix_val_1_4]
matrix_2 = [matrix_val_2_1 matrix_val_2_2 matrix_val_2_3 matrix_val_2_4]
matrix = [matrix_1; matrix_2]
display(matrix)
max = findmax(matrix)
println("Max: $max")