For the QUaC dataset, if you want to conduct the analysis of the followup questions or yes/no questions using your own data/predictions it is neccessary to:
  
* Replace the `quac_to_squad.py` file with the one located in this directory and run it according to the provided guide within the data_converter
* After the creation of necessary train/dev files move them into the location of your chosing and dont forget to specify the path
* Run the `quac_create_files.ipynb` which will create the required files for error analysis

If you do not want to analyse the followup or yesno questions you have to make changes in the `quac_create_files.ipynb` and in the `quac_error_analysis.ipynb` since in both
the code is using these attributes.


