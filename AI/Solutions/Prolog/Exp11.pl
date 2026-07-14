write_file :-
    open('output.txt', write, File),
    write(File, 'Hello from Prolog!'), nl(File),
    write(File, 'This is file handling example.'), nl(File),
    write(File, 'Line 3 of the file.'), nl(File),
    close(File),
    write('Written to output.txt'), nl.

read_file :-
    open('output.txt', read, File),
    write('File contents:'), nl,
    repeat,
        read_line_to_string(File, Line),
        (Line == end_of_file -> close(File), !
        ; write(Line), nl, fail).
read_file.

go :-
    write('Prolog File Handling'), nl,
    write('1. Write to file'), nl,
    write('2. Read from file'), nl,
    write('Choose (1 or 2): '), read(C),
    (C = 1 -> write_file
    ; C = 2 -> read_file
    ; write('Invalid choice'), nl).
