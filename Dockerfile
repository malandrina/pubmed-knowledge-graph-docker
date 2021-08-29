FROM mysql:latest AS pubmed_knowledge_graph_db
ENV MYSQL_ALLOW_EMPTY_PASSWORD=true \
  MYSQL_DATABASE=pubmed_knowledge_graph_dev
COPY data/PKG2020S4_A01_Articles.sql.gz /docker-entrypoint-initdb.d/
COPY data/PKG2020S4_C04_ReferenceList.sql.gz /docker-entrypoint-initdb.d/
COPY data/PKG2020S4_A02_AuthorList.sql.gz /docker-entrypoint-initdb.d/
COPY data/PKG2020S4_B08_ORCID_Education.sql.gz /docker-entrypoint-initdb.d/
COPY data/PKG2020S4_B09_ORCID_Employment.sql.gz /docker-entrypoint-initdb.d/
COPY data/PKG2020S4_B10_BERN_Main.sql.gz /docker-entrypoint-initdb.d/
COPY data/PKG2020S4_B12_BERN_Mutation.sql.gz /docker-entrypoint-initdb.d/
COPY data/PKG2020S4_B14_Scimago.sql.gz /docker-entrypoint-initdb.d/
COPY data/PKG2020S4_C03_Affiliation_merge.sql.gz /docker-entrypoint-initdb.d/
COPY data/PKG2020S4_C05_NIH_PubMed.sql.gz /docker-entrypoint-initdb.d/
