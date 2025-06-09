function sortedArray = Quicksort(arr)
    if length(arr) <= 1
        sortedArray = arr;
    else
        pivot = arr(1);
        left = arr(arr < pivot);
        middle = arr(arr == pivot);
        right = arr(arr > pivot);
        sortedArray = [Quicksort(left), middle, Quicksort(right)];
    end
end
