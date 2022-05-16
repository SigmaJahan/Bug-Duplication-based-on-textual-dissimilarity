# Project Title: 
Does Textual Dissimilarity Hinder Duplicate Bug Report Detection? An Empirical Study

# Project Description: 
Duplicate bug reports pose a major overhead during software maintenance since they cost valuable development time and resources. Over the last decade, many automated techniques used Natural Language Processing, Information Retrieval, and Machine Learning methods to detect duplicate bug reports. They often leverage the textual similarity between any two given bug reports to determine their duplication. However, duplicate bug reports are not always guaranteed to be textually similar since many duplicate bugs have different symptoms (i.e., reported differently) but with the same root cause. As a result, the existing techniques might not be sufficient to deal with textually dissimilar duplicate bug reports. In this paper, we conduct a large-scale empirical study to understand better the impacts of textual dissimilarity on the detection of duplicate bug reports. First, we determine the performance of three existing techniques in duplicate bug report detection and show that their performance is significantly different for textually similar and textually dissimilar duplicate bug reports. Second, we analyze these two sets of bug reports using descriptive statistics, word embedding visualization, and clustering tendency analysis. We observed that both textually similar and dissimilar duplicate bug reports have comparable clustering tendencies, which indicates similar semantics between any two duplicate bug reports despite their textual differences. Finally, being inspired by the above findings, we apply domain-specific embedding to duplicate bug report detection problems, which not only reduces the performance gap by 13%--15% in terms of F1-measure between textually similar and textually dissimilar duplicate bug reports but also equips us with actionable insights for duplicate bug report detection. 

# Members : 
Sigma Jahan, Usmi Mukherjee

# How to run

1. Dataset preprocessing: 
Run the files from Dataset Pre-processing for Eclipse, Firefox, and Mobile. There are two different preprocessing steps: One for the IR-based approach and another for the ML-based approach. Raw and prepared datasets are also available in the dataset folder.
Optional argument:
-   -d, --data            DATA
                        Path to data folder
-   -r, --ratio           SPLIT_RATIO
                         Split ratio of training data (default: 0.8)
-   -wv, --word_vocab     WORD_VOCAB_SIZE
                         Word vocabulary size (default: 20,000)
-   -cv, --char_vocab     CHAR_VOCAB_SIZE
                         Character vocabulary size (default: 100)


2. Existing Model Implementation and Evaluation: 
There are three main python files to run for each dataset. BM25, LDA+GloVE, and Siamese CNN as python files. You can run BM25 on the Jupyter notebook offline but it is required to run LDA+GloVE and Siamese CNN directly using Google Colab with the following system requirements.
optional arguments:
-   -h, --help            show this help message and exit
-   -d, --data            DATA
                         Path to data folder
-   -b, --baseline        BASELINE
                         Run with baseline model (default: False)
-   -k, --top_k           TOP_K
                         Number of top candidates for Recall@k evaluation (default: 25)
-   -e, --epochs          EPOCHS
                         Number of training epochs (default: 150)
-   -nw, --n_words        NUM_WORDS
                         Number of words in vocabulary (default: 20,000)
-   -nc, --n_chars        NUM_CHARS
                         Number of characters in vocabulary (default: 100)
-   -wd, --word_dim       WORD_DIM
                         Dimension of word embeddings (default: 100)
-   -cd, --char_dim       CHAR_DIM
                         Dimension of character embeddings (default: 50)
-   -nf, --n_filters      NUM_CNN_FILTERS
                         Number of filters for CNN (default: 64)
-   -np, --n_prop         NUM_PROPERTIES
                         Number of properties of the bug report (depending on data sets)
-   -bs, --batch_size     BATCH_SIZE
                         Batch size of training (default: 2064)
-   -nn, --n_neg          NUM_NEGATIVE_SAMPLES
                         Number of negative samples (default: 1)
-   -lr, --learning_rate  Learning rate (default: 1e-3)


3. Statistical Analysis:
 Run the file name as stat_analysis from Statistical Analysis folder with the following requirements (PyNonpar & Pingouin)

4. Visualization:
 For the dataset-specific embedding visualization from the folder named Embedding Visualization, run the embedding_visualization python file on Google Colab/Calvert

5. Hopkins Statistic: 
Run the hopkins_stat python file from the folder named Hopkins Statistic on  Google Colab/Calvert

6. Proposed Model Implementation and Evaluation: 
Run the domain_specific_embedding python file from the folder named as Domain-Specific Embedding Model for all three dataset 

# System Requirements

- Python 3.7 - (All the files from the source code are written in python hence .py file)
- PyTorch
- nltk
- kutils 0.3.0.
- gensim
- pyLDAvis
- PyNonpar
- Pingouin
- Tensorflow 2.8.0
- Keras 2.8.0
- Operating System: Windows 10 Home
- PC configuration:  16.0 GB RAM
- Make sure that GloVe is working on your platform. It is recommended to run the ML-based model, GloVe visualization, and Hopkins Statistic test which include GloVe online on platforms such as Google Colab or Calvert


# Installation details: 
Install these packages using command prompt or using Google Colab/Calvert: 
 
- pip install PyNonpar
- pip install Pingouin
- pip install kutils 0.3.0.
- pip install keras
- pip install Tensorflow
- pip install Python 3.7 - (All the files from the source code are written in python hence .py file)
- pip install PyTorch
- pip install nltk
- pip install gensim
- pip install pyLDAvis
- pip install GloVe
- pip install rank-bm25


 
Required parameters for the operations:
- Dup - Indicates duplicate bug reports
- Sim - indicates textually similar duplicate bug reports
- Dissim - Indicates textually dissimilar duplicate bug reports


# Licensing Information:

https://www.freecodecamp.org/news/how-open-source-licenses-work-and-how-to-add-them-to-your-projects-34310c3cf94/

(Can get after creating the repo on Gitlab) - Use Apache License 2.0 or MIT license as you wish

Something not working as expected?
Contact: Sigma Jahan (sigma.jahan@dal.ca) ; Usmi Mukherjee (usmi.mukherjee@dal.ca)

OR

Create an issue from here!

