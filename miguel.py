def miguel_sort(arr: list[int]) -> list[int]:
    bools: list[bool] = [False for _ in range(2 ^ 32)]
    for x in arr:
        bools[x] = True
    return [i for i, b in enumerate(bools) if b]