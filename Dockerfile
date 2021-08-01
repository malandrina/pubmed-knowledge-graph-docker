FROM mysql:latest AS pubmed_knowledge_graph_db
ENV MYSQL_ALLOW_EMPTY_PASSWORD=true \
  MYSQL_DATABASE=pubmed_knowledge_graph_dev
COPY data/PKG2020S4_A10_DataBankList.sql.gz /docker-entrypoint-initdb.d
