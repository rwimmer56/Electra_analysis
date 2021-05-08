# Electra analysis

## 1. Obtaining necessary datasets
Since we are working with three different datasets it is necessary to obtain them beforehand.

* SQUAD 2.0 dataset can be obtained here:
  * [Training set](https://rajpurkar.github.io/SQuAD-explorer/dataset/train-v2.0.json)
  * [Dev set](https://rajpurkar.github.io/SQuAD-explorer/dataset/dev-v2.0.json)
 
* QUaC dataset can be obtained here:
  * [Training set](https://s3.amazonaws.com/my89public/quac/train_v0.2.json)
  * [Dev set](https://s3.amazonaws.com/my89public/quac/val_v0.2.json)

* NewsQA - to obtain the original dataset [NewsQA paper](https://arxiv.org/pdf/1611.09830) was built on, it is necessary to follow the provided guide that can be found here:
  * [NewsQA set](https://s3.amazonaws.com/my89public/quac/train_v0.2.json)
 
* NewsQA - MRQA variant dataset can be obtained here:
  * [Training set](https://s3.us-east-2.amazonaws.com/mrqa/release/v2/train/NewsQA.jsonl.gz)
  * [Dev set](https://s3.us-east-2.amazonaws.com/mrqa/release/v2/dev/NewsQA.jsonl.gz)

## 2. Transforming datasets

In order to work with the aforementioned datasets it is necessary to convert some of them to a format ELECTRA's basic tools can handle

 
    
    
