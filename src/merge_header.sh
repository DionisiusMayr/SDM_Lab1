#!/usr/bin/env bash
set -eu

DATA_DIR='../sample_data/'
OUTPUT_DIR='../sample_data/'


cat ${DATA_DIR}/dblp_article_header.csv > ${OUTPUT_DIR}/article.csv
echo "" >> ${OUTPUT_DIR}/article.csv
cat ${DATA_DIR}/dblp_article.csv >> ${OUTPUT_DIR}/article.csv

cat ${DATA_DIR}/dblp_book_header.csv > ${OUTPUT_DIR}/book.csv
echo "" >> ${OUTPUT_DIR}/book.csv
cat ${DATA_DIR}/dblp_book.csv >> ${OUTPUT_DIR}/book.csv

cat ${DATA_DIR}/dblp_data_header.csv > ${OUTPUT_DIR}/data.csv
echo "" >> ${OUTPUT_DIR}/data.csv
cat ${DATA_DIR}/dblp_data.csv >> ${OUTPUT_DIR}/data.csv

cat ${DATA_DIR}/dblp_incollection_header.csv > ${OUTPUT_DIR}/incollection.csv
echo "" >> ${OUTPUT_DIR}/incollection.csv
cat ${DATA_DIR}/dblp_incollection.csv >> ${OUTPUT_DIR}/incollection.csv

cat ${DATA_DIR}/dblp_inproceedings_header.csv > ${OUTPUT_DIR}/inproceedings.csv
echo "" >> ${OUTPUT_DIR}/inproceedings.csv
cat ${DATA_DIR}/dblp_inproceedings.csv >> ${OUTPUT_DIR}/inproceedings.csv

cat ${DATA_DIR}/dblp_mastersthesis_header.csv > ${OUTPUT_DIR}/mastersthesis.csv
echo "" >> ${OUTPUT_DIR}/mastersthesis.csv
cat ${DATA_DIR}/dblp_mastersthesis.csv >> ${OUTPUT_DIR}/mastersthesis.csv

cat ${DATA_DIR}/dblp_phdthesis_header.csv > ${OUTPUT_DIR}/phdthesis.csv
echo "" >> ${OUTPUT_DIR}/phdthesis.csv
cat ${DATA_DIR}/dblp_phdthesis.csv >> ${OUTPUT_DIR}/phdthesis.csv

cat ${DATA_DIR}/dblp_proceedings_header.csv > ${OUTPUT_DIR}/proceedings.csv
echo "" >> ${OUTPUT_DIR}/proceedings.csv
cat ${DATA_DIR}/dblp_proceedings.csv >> ${OUTPUT_DIR}/proceedings.csv

cat ${DATA_DIR}/dblp_www_header.csv > ${OUTPUT_DIR}/www.csv
echo "" >> ${OUTPUT_DIR}/www.csv
cat ${DATA_DIR}/dblp_www.csv >> ${OUTPUT_DIR}/www.csv

# dblp_author_authored_by.csv
# dblp_author.csv
# dblp_journal.csv
# dblp_journal_published_in.csv
