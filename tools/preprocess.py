import sys

import nltk


def main():
    for row in sys.stdin:
        row = row.rstrip()
        row = row.lstrip(" -")
        row = row.lower()
        row = " ".join(nltk.tokenize.wordpunct_tokenize(row))

        print(row)


if __name__ == '__main__':
    main()
