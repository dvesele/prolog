is_prime(N) :-
    N > 1,                 
    is_prime(N, 2).         % Вызываем вспомогательный предикат с начальным делителем 2

is_prime(N, Div) :-
    N =\= 2,
    N mod Div =:= 0,       
    !,                     % Отсекаем все дальнейшие варианты
    N =:= Div.            

is_prime(N, Div) :-
    Div < sqrt(N),         
    NextDiv is Div + 1,    % Увеличиваем делитель на 1
    is_prime(N, NextDiv).  % Рекурсивно вызываем предикат с новым делителем

is_prime(_, _).            % Базовый случай: достигнут конец проверки делителей