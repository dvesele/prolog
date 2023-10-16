numOfDays(jan, 31).
numOfDays(feb, 28).
numOfDays(mar, 31).
numOfDays(apr, 30).
numOfDays(may, 31).
numOfDays(jun, 30).
numOfDays(jul, 31).
numOfDays(aug, 31).
numOfDays(sep, 30).
numOfDays(oct, 31).
numOfDays(nov, 30).
numOfDays(dec, 31).

nextMonth(jan, feb).
nextMonth(feb, mar).
nextMonth(mar, apr).
nextMonth(apr, may).
nextMonth(may, jun).
nextMonth(jun, jul).
nextMonth(jul, aug).
nextMonth(aug, sep).
nextMonth(sep, oct).
nextMonth(oct, nov).
nextMonth(nov, dec).
nextMonth(dec, jan).

nextDate(date(M1, D1), date(M2, D2)) :-
    numOfDays(M1, Days1),            % количество дней в первом месяце
    D1 >= 1, D1 =< Days1,            % проверка корректности первого аргумента
    (
        (D1 = Days1, nextMonth(M1, M2), D2 = 1); % если текущий день – последний в месяце, переходим к следующему месяцу и ставим день 1
        (D1 \= Days1, M2 = M1, D2 is D1 + 1)    % в противном случае остаемся в том же месяце и увеличиваем день на 1
    ),
    numOfDays(M2, Days2),            % количество дней во втором месяце
    (
        var(D2);                       % если второй аргумент анонимная переменная, задаем ему значение
        (D2 >= 1, D2 =< Days2)         % если второй аргумент является переменной, убеждаемся, что он попадает в диапазон дней
    ).