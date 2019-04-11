#/bin/bash
python preprocess.py \
--train_src data/raw/all.cs.shuf.train --train_tgt data/raw/all.en.shuf.train \
--valid_src data/raw/all.cs.shuf.dev   --valid_tgt data/raw/all.en.shuf.dev \
--save_data data/all \
--src_vocab_size 150000 \
--tgt_vocab_size 550000 \
--lower \
--log_file preprocess.log \

