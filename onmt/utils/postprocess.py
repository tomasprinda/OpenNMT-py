import collections
import re


def postprocess_texts(texts):
    out = []
    for text in texts:
        out.append(postprocess(text))

    return out


def postprocess(text):
    text = text.replace(" ' ", "'")
    text = re.sub(" ([.,?!;])", r"\1", text)

    # if source is not None:
    #     if len(source) > 0 and source[0].isupper():
    #         text = text[]

    return text
