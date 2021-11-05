# PubMed Knowledge Graph, dockerized

PubMed Knowledge Graph is a dataset produced by information science researchers in China, South Korea, and the United States. The dataset facilitates the analysis of connections between articles available on PubMed, an open archive of biomedical journal literature.

pubmed-knowledge-graph-docker is a small collection of Docker-based scripts for getting started with PubMed Knowledge Graph data. Users can:

- Estimate disk space requirements
- Download `.sql.gz` files for main PubMed Knowledge Graph tables
- Create a MySQL database and importing the downloaded data
- Run a MySQL console for basic data exploration

For more information about the PubMed Knowledge Graph dataset, refer to the following resources:
- [Building a PubMed knowledge graph, _Nature_](https://www.nature.com/articles/s41597-020-0543-2)
- [PubMed Knowledge Graph homepage](http://er.tacc.utexas.edu/datasets/ped)

## Specs

### Docker

- MySQL version: 8
- Image size: 21 GB
- Volume size: 249 GB

### Dataset

| Table name              | Import duration | \# rows, table status | Avg row length | Index length   | Data length     |
| ----------------------- | ----------------------- |--------------------- | -------------- | -------------- | --------------- |
| A01\_Articles           | 3 hours                 |28,892,918            | 1,135          | 14,080,163,840 | 32,798,408,704  |
| A02\_AuthorList         | 13 hours                |115,376,880           | 102            | 13,059,964,928 | 11,879,317,504  |
| A14\_ReferenceList      | 7 hours                 |223,261,597           | 100            | 10,831,790,080 | 20,234,371,072  |
| B08\_ORCID\_Education   | <1 minute               |715,211               | 150            | 31,031,296     | 107,610,112     |
| B09\_ORCID\_Employment  | <1 minute               |1,157,432             | 159            | 47,841,280     | 184,238,080     |
| B10\_BERN\_Main         | 1.5 hours               |283,659,349           | 60             | 6,262,095,872  | 17,245,929,472  |
| B12\_BERN\_Mutation     | <1 minute               |1,271,931             | 75             | 42,565,632     | 96,059,392      |
| B14\_Scimago            | <1 minute               |318,179               | 308            | 0              | 98,172,928      |
| C03\_Affiliation\_Merge | 45 minutes              |51,838,873            | 387            | 1,449,132,032  | 20,100,153,344  |
| C04\_ReferenceList      | 18 hours                |471,120,762           | 31             | 18,260,901,888 | 14,735,638,528  |
| C05\_NIH\_PubMed        | 45 minutes              |14,062,071            | 74             | 1,222,606,848  | 1,049,624,576   |
| Total                   | ~44 hours               |1,191,675,203         |                |                | 118,529,523,712 |

- MySQL version: 8
- Image size: ~21 GB
- Volume size: ~249 GB

## Usage

0. Install Docker: https://docs.docker.com/engine/install
1. Clone or fork this repo and `cd` to the root directory
2. Download the PubMed Knowledge Graph dataset by running `script/download`
3. Build the Docker image:

```bash
% docker build . --tag pubmed_knowledge_graph_db:latest
```

4. Run a Docker container using the image built in step 3:

```bash
% docker run -p 3306 --name pubmed_knowledge_graph_db  pubmed_knowledge_graph_db:latest
```

5. Run a MySQL console to explore the data: `script/mysql-console`
