
  DB='db_prod01'
FILE=live_stream_id_10.csv 
 SQL='select * from stream_entries where stream_id=10 ;'

mysql -B -e $SQL $DB | perl -e 's/^/"/ ; s/$/"/ ; s/\t/","/g ; ' > $FILE

