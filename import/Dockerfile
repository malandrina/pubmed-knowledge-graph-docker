FROM mysql
COPY ./data/PKG2020S4_A10_DataBankList.sql.gz ./PKG2020S4_A10_DataBankList.sql.gz
#CMD gunzip ./PKG2020S4_A10_DataBankList.sql.gz
CMD mysql -h localhost -P 3306 -uroot pubmed_knowledge_graph_dev < ./PKG2020S4_A10_DataBankList.sql.gz
#gunzip < PKG2020S4_A01_Articles.sql.gz | mysql -uusername -ppassword destinationDatabaseName
