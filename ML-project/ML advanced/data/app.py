import pandas as pd

from sklearn.metrics.pairwise import cosine_similarity

from sklearn.feature_extraction.text import TfidfVectorizer
import numpy as np

df = pd.read_csv('ML-project/ML advanced/data/amazon.csv')
# print(data.info())
df = df[['product_name','category','rating','about_product','rating_count','review_content']]
# print(data['rating'])
df['rating']=df['rating'].astype(str).str.replace('|','')
df['rating'] = pd.to_numeric(df['rating'])
df['rating'] = df['rating'].fillna(df['rating'].median())

df['combined'] = (
    df['product_name'] + " " +
    df['category'] + " " +
    df['about_product'] + " " +
    df['review_content']
)

tfidf = TfidfVectorizer(stop_words='english')
matrix = tfidf.fit_transform(df['combined'])
print(matrix)
# This prints the word associated with ID 17983
print(tfidf.get_feature_names_out()[17983])
# similarity = cosine_similarity(matrix)

# def recommend(product_name):
#     idx = df[df['product_name'] == product_name].index[0]
    
#     scores = list(enumerate(similarity[idx]))
#     scores = sorted(scores, key=lambda x: x[1], reverse=True)
    
#     for i in scores[1:6]:
#         print(df.iloc[i[0]]['product_name'])


# recommend(df['product_name'].iloc[0])