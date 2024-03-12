#!pip install swifter
import os
import pandas as pd

os.getcwd()

path = '../SDM_Lab1/neo4j/import/'
file = 'dblp_article.csv'
file2 = 'dblp_article_header.csv'

df = pd.read_csv(path + file, delimiter = ';', low_memory=False, header = None)
df_header = pd.read_csv(path + file2, delimiter = ';')

df.columns = df_header.columns.str.extract(r'([^:]+)')[0].values
cols_to_keep = ['author','journal','editor' ,'title', 'key','volume','year'] 

df_bridge = df[cols_to_keep]
df_bridge = df_bridge.assign(author=df_bridge['author'].str.split('|')).explode('author').reset_index(drop=True)
df_bridge = df_bridge.assign(editor=df_bridge['editor'].str.split('|')).explode('editor').reset_index(drop=True)