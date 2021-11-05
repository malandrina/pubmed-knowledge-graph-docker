FROM mysql:latest AS pubmed_knowledge_graph_db
ENV MYSQL_ALLOW_EMPTY_PASSWORD=true \
  MYSQL_DATABASE=pubmed_knowledge_graph_dev
COPY data/* /docker-entrypoint-initdb.d/
