#!/bin/bash

DATA_DIR=~/elec/electra-squad-8GB/models/electra_large/

python ../run_finetuning.py \
  --data-dir $DATA_DIR \
  --model-name electra_large \
  --hparams '{"model_size": "large", "task_names": ["squad"]}' 