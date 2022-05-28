#1.  Create two matrices of the same layout and test if addition and subtraction of the matrix #works as expected: C = A + B

matrix_1 = [1 2 3; 4 5 6]
matrix_2 = [9 8 7; 6 5 4]

display(matrix_1)
println()
display(matrix_2)

c = matrix_1 + matrix_2 # Ergebnis wie erwartet
d = matrix_1 - matrix_2 # Ergebnis wie erwartet

println()
display(c)
println()
display(d)
println()

#2. Now compare matrix multiplication either this way A * B and this way A .* B. Whats the difference?!

x*y # Fehler: DimensionMismatch. Funktioniert nicht, da die Dimensionen gleich sind. Für diese Multiplikation muss die Form der zweiten Matrix genau umgekehrt zur ersten sein: Die Anzahl der Spalten der ersten Matrix muss der Anzahl der Zeilen der zweiten Matrix gleich sein
x.*y # Funktioniert, hier wird jede Stelle der Matrizen einzeln multipliziert (Vorgehen wie bei der Addition, Ergebnis: [9 16 21; 24 25 24]) 

#3. What about matrix division with "/" or "\"?!
# Diese Zeichen sind nicht als Divison, sondern andere Operationen definiert
x/y # -> wird zu einer 2x2 Matrix, dies ist die Umkehrung der Matrixmultiplikation (Rechtsmultiplikation)
x\y # -> wird zu einer 3x3 Matrix, dies ist die Linksmultiplikation mit der Inversen von A

#4. Create a 3x3 integer matrix A with useful numbers. Now try A+1, A-1, A*2, A/2.
A = [1 2 3; 4 5 6; 7 8 9]

A+1 # Funktioniert nicht: Fehler no method matching +
A-1 # Funktioniert nicht: Fehler no method matching -
A*2 # Klappt, Multiplikation mit 2 pro Matrix-Stelle ([2 4 6; 8 10 12; 14 16 18])
A/2 # Klappt, Division mit 2 pro Matrix-Stelle ([0.5 1.0 1.5; 2.0 2.5 3.0; 3.5 4.0 4.5])

#5. Now multiply a 3x4 matrix with a suitable (4)vector.
A = [1 2 3 4; 5 6 7 8; 9 10 11 12]
vector = [5 10 15 20]
A * vector # Klappt, Ergebnis: 3- element Vector 150;350;550
