#!/usr/bin/python
# -*- coding: utf-8 -*- 

import os,sys
import numpy as np
import pandas as pd
from matplotlib import pyplot as plt

evaluation_url = https://www.dropbox.com/s/482zjl1hzgvej92/test.csv?dl=1"
training_url = "https://www.dropbox.com/s/4y54q61b6s18ofh/train.csv?dl=1"

def download_datasets():
    evaluation_path = "evaluation.handout.csv"
    training_path = "train.csv"

    if sys.version_info[0] == 2:
        from urllib import urlretrieve
    else:
        from urllib.request import urlretrieve

    if not os.path.exists(evaluation_path):
        urlretrieve(evaluation_url,evaluation_path)
    if not os.path.exists(training_path):
        urlretrieve(training_url,training_path)


def generate_submission(preproc_fun,model,filename="submission.csv"):
    
    data_eval = pd.DataFrame.from_csv("./evaluation.handout.csv")
    
    
    x_col = [ 'dist','due', 'lat','lon','f_class','s_class','t_class',]
    X_eval = preproc_fun(data_eval[x_col])
    
    # Предскажем вероятность сгорания
    Y_pred_proba_eval = model.predict_proba(X_eval)[:,1]
    
    #Поделим предсказание на сгоревшие и не сгоревшие по порогу (thr)
    
    
    response = pd.DataFrame()
    response["Ids"] = np.arange(len(Y_pred_proba_eval))
    
    response["Y_prob"] = map("{0:.5f}".format,Y_pred_proba_eval)
    
    
    response.to_csv(filename,index=None)
    
def plot_forest_feature_importances(rf,feature_names):
    importances = rf.feature_importances_
    std = np.std([tree.feature_importances_ for tree in rf.estimators_],
                 axis=0)
    indices = np.argsort(importances)[::-1]

    # Print the feature ranking
    print("Feature ranking:")

    for f in range(len(feature_names)):
        print("%d. %s (%f)" % (f + 1, feature_names[f], importances[indices[f]]))

    # Plot the feature importances of the forest
    plt.figure()
    plt.title("Feature importances")
    plt.bar(range(len(feature_names)), importances[indices],
           color="r", yerr=std[indices], align="center")
    plt.xticks(range(len(feature_names)), indices)
    plt.xlim([-1, len(feature_names)])
    
    plt.yscale("log")
    plt.show()

