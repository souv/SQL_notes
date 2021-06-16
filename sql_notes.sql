#substring 
#postgresql ( use regular expression )
substring(variable from 'https?://([^/]*)') as variable_substr

#use split_part function to get part of the string by number 
#postgresql
split_part(substring(url from '//[^/]+....'),'/',2) as path1

#get current time
#postgresql
current_timestamp as current_time 
current_date as dt 

#compare two columns
#postgresql,hive,redshift,bigquery,sparksql
select 
  year,
  q1,
  q2,
  case when q1 > q2 then '+'
       when q1 < q2 then ' '
       else '-'
 q2-q1 as diff_q2_q1
 SIGN(q1-q2) as sign_q2_q1 --use 1,0,-1 to represent diff
from 
  quarterly_sales
order by 
year;
