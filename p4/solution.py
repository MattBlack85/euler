def reverse_string(s):
    length = len(s)
    return ''.join([s[x]for x in range(length - 1, -1, -1)])


def find_palindrome(a):
    b = 999
    found = False
    while b >= 100:
        stringified = str(a * b)
        first_half, last_half = stringified[:3], stringified[3:]
        if first_half == reverse_string(last_half):
            found = True
            break
        else:
            b -= 1

    return stringified if found else None


def main():
    a = 999
    biggest = 0
    for x in range(a, 99, -1):
        res = find_palindrome(x)
        if res and int(res) > biggest:
            biggest = int(res)

    print('Biggest palindrome', biggest)


if __name__ == '__main__':
    main()
