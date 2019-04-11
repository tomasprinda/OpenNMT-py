#/bin/bash

rm all*
rm onerandom tworandom

cat EUbookshop.cs-en.cs News-Commentary.cs-en.cs OpenSubtitles.cs-en.cs ParaCrawl.cs-en.cs Wikipedia.cs-en.cs | python ../../tools/preprocess.py > all.cs 
cat EUbookshop.cs-en.en News-Commentary.cs-en.en OpenSubtitles.cs-en.en ParaCrawl.cs-en.en Wikipedia.cs-en.en | python ../../tools/preprocess.py > all.en

mkfifo onerandom tworandom
tee onerandom tworandom < /dev/urandom > /dev/null & shuf --random-source=onerandom all.cs > all.cs.shuf & shuf --random-source=tworandom all.en > all.en.shuf & wait

head -n 3 *.shuf

head -n 4000 all.cs.shuf > all.cs.shuf.dev
head -n 4000 all.en.shuf > all.en.shuf.dev
tail -n 53000000 all.cs.shuf > all.cs.shuf.train
tail -n 53000000 all.en.shuf > all.en.shuf.train

rm all.cs all.cs.shuf all.en all.en.shuf onerandom tworandom
