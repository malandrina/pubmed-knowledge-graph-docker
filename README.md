# PubMed Knowledge Graph, dockerized

Paper: [Building a PubMed knowledge graph](https://www.nature.com/articles/s41597-020-0543-2)
Dataset: http://er.tacc.utexas.edu/datasets/ped

## Getting started

1. Clone or fork this repo and `cd` to the root directory
2. Download the PubMed Knowledge Graph dataset by running `script/download`
3. Build the Docker image by running `docker build . --tag pubmed_knowledge_graph_db:latest`
4. Run a Docker container using the image built in step 3: `docker run -p 3306
   --name pubmed_knowledge_graph_db  pubmed_knowledge_graph_db:latest`
5. Run a MySQL console to explore the data: `script/mysql-console`
