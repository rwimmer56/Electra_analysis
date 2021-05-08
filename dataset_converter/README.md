# QA Dataset Converter

These scripts convert four popular question answering datasets into a common format based on SQuAD 2.0 to allow for easier probing and experimentation. An example of a question in the SQuAD 2.0 format is shown below:
  
```
{
  "context": "The Normans were the people who in the 10th and 11th centuries..."
  "qas": [
    {
      "question": "In what country is Normandy located?",
      "id": "56ddde6b9a695914005b9628",
      "answers": [
        {
          "text": "France",
          "answer_start": 159
        }
      ],
      "is_impossible": false
    }
...
```

In the following sections, we guide you through converting  QuAC, and NewsQA into a SQuAD 2.0 format.

---
## QuAC

**Step 1**

Clone this repo and go into the QuAC directory

```
cd qa-dataset-converter/quac
```

**Step 2**

Download the QuAC dataset from https://quac.ai/

**Step 3**

Set *--quac_file* to the path of your QuAC train or dev file. Run:

```
python quac_to_squad.py --quac_file train_v0.2.json --output_file quac_train.json

python quac_to_squad.py --quac_file val_v0.2.json --output_file quac_dev.json
```

This will return two files **quac_train.json** and **quac_dev.json** in the SQuAD 2.0 format.

---
## NewsQA - original dataset

**Step 1**

Clone this repo and go into the NewsQA directory

```
cd qa-dataset-converter/newsqa
```

**Step 2**

Follow the instructions at https://github.com/Maluuba/newsqa to build the NewsQA dataset. This will result in a directory called *split_data* with train, dev, and test CSVs.

**Step 3**

Note: If you used a Python 2.7 conda environment to set up NewsQA, make sure to deactivate your environment before this step.

Set *--newsqa_file* to the path of a NewsQA file in the *split_data* directory. Run:

```
python newsqa_to_squad.py --newsqa_file split_data/train.csv --output_file newsqa_train.json

python newsqa_to_squad.py --newsqa_file split_data/dev.csv --output_file newsqa_dev.json
```

