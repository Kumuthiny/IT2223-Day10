arr = [8, 3, 5, 1, 7, 2];
n = length(arr);
sortedArr = divide(arr);
disp('Sorted Array:');
disp(sortedArr);

% Main divide function
function A = divide(A)
    n = length(A);
    if n < 2
        return;
    end

    mid = floor(n / 2);

    L = A(1:mid);
    R = A(mid+1:end);

    L = divide(L);
    R = divide(R);

    A = merge(L, R);
end

% Merge function
function result = merge(L, R)
    i = 1;
    j = 1;
    k = 1;
    result = zeros(1, length(L) + length(R));  % Preallocate for performance

    while i <= length(L) && j <= length(R)
        if L(i) <= R(j)
            result(k) = L(i);
            i = i + 1;
        else
            result(k) = R(j);
            j = j + 1;
        end
        k = k + 1;
    end

    % Copy remaining elements (if any)
    while i <= length(L)
        result(k) = L(i);
        i = i + 1;
        k = k + 1;
    end

    while j <= length(R)
        result(k) = R(j);
        j = j + 1;
        k = k + 1;
    end
end
