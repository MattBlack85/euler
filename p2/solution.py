def main():
    fib_sum = 0
    previous = 0
    actual = 1

    while actual < 4000000:
        next_num = previous + actual
        if actual % 2 == 0:
            fib_sum += actual

        previous = actual
        actual = next_num

    print('Sum of fibonacci numbers until 4M is', fib_sum)


if __name__ == '__main__':
    main()
