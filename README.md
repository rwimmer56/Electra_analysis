# Electra analysis

## 1. Obtaining necessary datasets
Since we are working with three different datasets it is necessary to obtain them beforehand.  Our recommendation would be to use one dataset at a time - meaning go thrgough all of the steps presented here, and in the respective sections, save what you want to save to a different folder and only then use different dataset. Since the model will be using methods for finetuing/evaluation as if each dataset would be a SQUAD task, it will be producing these files into the same location - overwritting everything from previous runs. 

* SQUAD 2.0 (Rajpurkar, et al.,2018) dataset can be obtained here:
  * [Training set](https://rajpurkar.github.io/SQuAD-explorer/dataset/train-v2.0.json)
  * [Dev set](https://rajpurkar.github.io/SQuAD-explorer/dataset/dev-v2.0.json)
 
* QUaC (Choi, et al.,2018) dataset can be obtained here:
  * [Training set](https://s3.amazonaws.com/my89public/quac/train_v0.2.json)
  * [Dev set](https://s3.amazonaws.com/my89public/quac/val_v0.2.json)

* NewsQA (Trischler, et al.,2016) - to obtain the original dataset [NewsQA paper](https://arxiv.org/pdf/1611.09830) was built on, it is necessary to follow the provided guide that can be found here:
  * [NewsQA set](https://github.com/Maluuba/newsqa)
 
* NewsQA - MRQA variant dataset can be obtained here (Fisch, et al.,2019):
  * [Training set](https://s3.us-east-2.amazonaws.com/mrqa/release/v2/train/NewsQA.jsonl.gz)
  * [Dev set](https://s3.us-east-2.amazonaws.com/mrqa/release/v2/dev/NewsQA.jsonl.gz)

## 2. Transforming datasets

In order to work with the aforementioned datasets it is necessary to convert some of them to a format ELECTRA's basic tools can handle.  This format will be copying the SQUAD 2.0 format.  
  
The necessary tools can be found in the [dataset_converter folder](https://github.com/TheHaymitch/Electra_analysis/tree/main/dataset_converter), which contains modified repository/code created by Priyanka Sen and Amir Saffari (2020). Follow the guide inside the folder to obtain necessary converted datasets.  

 ## 3. Using ELECTRA
 In the [electra folder](https://github.com/TheHaymitch/Electra_analysis/tree/main/electra) you can find detailed guide how to use ELECTRA. This folder contains modified repository/code from the published research by Clark, et al. (2020). Sucessful fine-tuning + evaluation will result in creation of a folder containing necessary files for the analysis of results.  
 
 ## 4. Analysis of results
 
 After model sucessfully accomplishes finetuning and evaluation it is necessary for the further analysis to change produced files into filetypes that can be analysed more easily. Each dataset has specific folder located in the analysis folder of this repository. It is necessary to change the pre-made paths to ones were your electra produced preds.json and null-ods.json and the original transformed dataset were saved dev.json|train.json. The paths located in the corresponding folders are mirroring the ones if this repository would be cloned, the previous sections would be followed and each of the preds|nullods|dev|train files would have dataset-specific name.  
 
 

 
 
 
 
## References
Rajpurkar, P., Jia, R., & Liang, P. (2018). Know what you don't know: Unanswerable questions for SQuAD. arXiv preprint arXiv:1806.03822.

Choi, E., He, H., Iyyer, M., Yatskar, M., Yih, W.t., Choi, Y., Liang, P., & Zettlemoyer, L. (2018). Quac: Question answering in context. arXiv preprint arXiv:1808.07036.  

Trischler, A., Wang, T., Yuan, X., Harris, J., Sordoni, A., Bachman, P., & Suleman, K. (2016). Newsqa: A machine comprehension dataset. arXiv preprint arXiv:1611.09830.  

Fisch, A., Talmor, A., Jia, R., Seo, M., Choi, E., & Chen, D. (2019). MRQA 2019 shared task: Evaluating generalization in reading comprehension. arXiv preprint arXiv:1910.09753.
  
Sen, P. & Saffari, A.  (2020). What do Models Learn from Question Answering Datasets?. In Proceedings of the 2020 Conference on Empirical Methods in Natural Language Processing (EMNLP) (pp. 2429–2438). Association for Computational Linguistics.  

Clark, K., Luong, M.T., Le, Q., & Manning, C. (2020). Electra: Pre-training text encoders as discriminators rather than generators. arXiv preprint arXiv:2003.10555.







 
    
    
