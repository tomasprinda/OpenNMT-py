import sys
import nltk


def main():
    for row in sys.stdin:
        row = row.rstrip()
        row = nltk.tokenize.wordpunct_tokenize(row)

        print(" ".join(row))


if __name__ == '__main__':
    main()
