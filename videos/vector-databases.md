
# Vector Databases: from Embeddings to Applications

https://learn.deeplearning.ai/vector-databases-embeddings-applications

## Intro



## How to Obtain Vector Representations

Creating Embeddings of MNIST using Encoder/Decoder network
- Distance between similar letters are smaller

Also using SentenceTransformer
- distance between similar sentences are smaller

## Search for similar vectors

Brute force takes a long time!

## Approximate nearest neighbors

ANN - Approximate Nearest Neighbor

Performance for a little bit of accuracy

NSW - Nearest Neighbor - does not always find the best match
Six degrees

Store nearest neighbors 

HNSW - Hierarchical Navigable Small World
- Layers with increasing detail
- Find best match in each layer

O(log(N)) complexity

## Vector Databases

CRUD against OpenAI database

## Sparse, Dense, and Hybrid Search
6 mins

Dense Search
- Looking for data points densely packed around the query point. Using e.g. ANN
Sparse Search
- Searching for data points more sparsely distributed in vector space
- Bag of Words
- BM25

Hybrid Search
- Running Sparse and Dense in same query, combining there scores.


## Application - Multilingual Search
6:43

Vectors of same phrase in different languages are similar
Using weaviate


Still not sure what is in the embedding, did not explain how to create the wikipedia vector database.
