import sys


def main():
    for row in sys.stdin:
        row = row.rstrip().lstrip(" -")

        print(row)


if __name__ == '__main__':
    main()
