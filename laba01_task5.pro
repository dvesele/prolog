sirakuz(0, _).         

sirakuz(N, A0) :-
    N > 0,
    write(A0),         % Выводим текущий член
    nl,                
    A0 =:= 1,         
    !.                 % Отсекаем дальнейшие варианты и заканчиваем предикат

sirakuz(N, A0) :-
    N > 0,
    A0 mod 2 =:= 0,    % Проверяем, является ли текущий член четным
    N1 is N - 1,       % Уменьшаем счетчик N на 1
    A1 is A0 // 2,     
    sirakuz(N1, A1).   % Рекурсивно вызываем предикат со следующим членом последовательности

sirakuz(N, A0) :-
    N > 0,
    A0 mod 2 =:= 1,    % Проверяем, является ли текущий член нечетным
    N1 is N - 1,       
    A1 is 3 * A0 + 1,  
    sirakuz(N1, A1).  