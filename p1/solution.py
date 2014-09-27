import time


def main():
    start = time.time()
    x = 0
    for num in range(1, 1000):
        if num%3 == 0 or num%5 == 0:
            x += num
    end = time.time() - start
    print("finished after %s seconds, result is %s" % (str(end), str(x)))


if __name__ == '__main__':
    main()
