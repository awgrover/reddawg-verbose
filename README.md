# Obscure Score

Scores text based on how obscure the words are.

# Use

Get the site/obscure_score.zip. unzip it (to a .html).

Open the html in a browser.

Type some text in.

Hit score.

# How it works

We use the words.txt from http://number27.org/assets/misc/words.txt.

Each word has a rank, the higher the rank, the more obscure.

We add up the ranks.

We put the entire words.txt in the .html. We didn't try to make it smaller. Ouch.

# Building

Makes the .html:

```make```

Clean everything except the downloaded words.txt:

```make clean```

Refetch words.txt

```make refetch```

# TODO

* use a perfect hash
* maybe compress/uncompresss the hash data in memory
* phase 2 is backend etc.
