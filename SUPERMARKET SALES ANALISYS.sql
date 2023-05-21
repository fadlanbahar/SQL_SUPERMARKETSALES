# Mengecek seluruh kolom di database dan tabel
select *
from globalstore.supermarketsales s 


#Analisis 
#1. grouping sales by productline
select
	`Product line`, 
	sum(Total) as REVENUE
from 
	globalstore.supermarketsales s 
group by
	`Product line` 
order by
	2 desc
	
	
#2. Grouping sales by MONTH
select
	 month (`Date`),
	sum(Total) as REVENUE
from 
	globalstore.supermarketsales s 
group by
	1
order by
	2 desc

#3. Grouping sales by BRANCH
select
	 Branch ,
	sum(Total) as REVENUE
from 
	globalstore.supermarketsales s 
group by
	1
order by
	2 desc

#4. Grouping sales by GENDER
select
	 Gender  ,
	sum(Total) as REVENUE
from 
	globalstore.supermarketsales s 
group by
	1
order by
	2 desc

#5. Grouping sales by PAYMENT
select
	Payment  ,
	sum(Total) as REVENUE
from 
	globalstore.supermarketsales s 
group by
	1
order by
	2 desc

#6. Grouping sales by CITY
select
	City  ,
	sum(Total) as REVENUE
from 
	globalstore.supermarketsales s 
group by
	1
order by
	2 desc
	

#7. Mengecek penjualan terbaik berdasarkan bulan, dengan melihat total penjualan dan frekuensi penjualan perbulan
select
	month(date),
	sum(Total) as REVENUE,
	count(`Invoice ID`) as FREQUENCY
from 
	globalstore.supermarketsales s 
group by 
	month(date) 
order by 
	2 desc

	
#8. mengetahui bulan januari adalah paling tinggi baik revenue dan frequensi
# melakukan analisis lebih lanjut di bulan januari
select
	month(date),
	`Product line`,
	sum(Total) as REVENUE,
	count(`Invoice ID`) as FREQUENCY
from 
	globalstore.supermarketsales s 
where
	month(date) = 1 #GANTI BULAN UNTUK MENDAPAT LAPORAN BULANAN PENJUALAN
group by 
	month(date),
	`Product line` 
order by 
	3 desc


	
#9. Mengetahui rating pada masing-masing branch
select Branch, Avg(Rating)
from globalstore.supermarketsales s 
group by Branch
order by 2 desc
#order by Rating desc limit 10

	
 