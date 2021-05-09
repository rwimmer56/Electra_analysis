#!/bin/bash

DATA_DIR=~/Electra_analysis/electra/

python ../run_finetuning.py \
  --data-dir $DATA_DIR \
  --model-name electra_large \
  --hparams '{"model_size": "large", "task_names": ["squad"]}' 
