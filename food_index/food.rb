
require 'net/ftp'
require 'tempfile'
#^M
CRLF = "\r"
ftp = Net::FTP.new("sch7sortavala.ucoz.ru")
puts "2222"
ftp.passive = true
#^M
ftp.debug_mode = true
#^M
ftp.binary = false
#^M
ftp.login(user="",passwd='',acct=nil)
#ftp.login^M
p "123"
files = ftp.chdir('food')
p "111"
#files2 = ftp.list('*xlsx')^M
files2=ftp.list('*[0-9]\.xlsx')
files3 = ftp.list('*sm\.xlsx')
#файлы календаря питания
files9 = ftp.list('kp[0-9][0-9][0-9][0-9]\.xlsx')
#файлы примерного меню
files8 = ftp.list('tm[0-9][0-9][0-9][0-9]_sm\.xlsx')

puts files2.size
puts files3.size


files3_5="<hr>"

#puts files2
#puts files3
#ftp.getbinaryfile('nif.rb-0.91.gz', 'nif.gz', 1024)^M
files2_4=[]
for i in 0...files2.size
  files2_1=files2[i]
  #files2_2=files2_1.scan(/\w+/)
  #files2_2-files2_1.scan(/\s+/)
  #files2_2=files2_1.scan(/\s/)
  files2_2=files2_1.split(/\s/)
  files2_3=files2_2[-1]
  files2_4[i]=files2_3
  p files2_3
  

end



files3_4=[];files3_time=[];files3_day=[];
files3_m=[]
files3_y=[]
files3.reverse!

files8_4=[]
files8_time=[]
files8_day=[]
files8_m=[]
files8_y=[]
files8.reverse!
#puts files3


#exit

pat1 = Regexp.compile("tm[0-9][0-9][0-9][0-9]-sm\.xlsx") # /^foo.*/
files3.delete_if { |a| (a=~pat1) }

for i in 0...files3.size
  files3_1=files3[i]
  files3_2=files3_1.split(/\s/)
  puts files3_2
  files3_3=files3_2[-1]
  files3_time_t=files3_2[-2]
  files3_day_t=files3_2[-3]
  puts files3_day_t
  if (files3_day_t == 1 or 2 or 3 or 4 or 5 or 6 or 7 or 8 or 9)
  then 
  files3_m_t=files3_2[-4]
  else
  files3_m_t=files3_2[-4]
  end
  puts files3_m_t
  files3_y_t=files3_2[-5]
  files3_4[i]=files3_3
  files3_time[i]=files3_time_t
  files3_day[i]=files3_day_t
  files3_m[i]=files3_m_t
  files3_y[i]=files3_y_t

end

for i in 0...files8.size
  files8_1=files8[i]
  files8_2=files8_1.split(/\s/)
  puts files8_2
  files8_3=files8_2[-1]
  files8_time_t=files8_2[-2]
  files8_day_t=files8_2[-3]
  puts files8_day_t
  if (files8_day_t == 1 or 2 or 3 or 4 or 5 or 6 or 7 or 8 or 9)
  then 
  files8_m_t=files8_2[-4]
  else
  files8_m_t=files8_2[-4]
  end
  puts files8_m_t
  files8_y_t=files8_2[-5]
  files8_4[i]=files8_3
  files8_time[i]=files8_time_t
  files8_day[i]=files8_day_t
  files8_m[i]=files8_m_t
  files8_y[i]=files8_y_t

end

$day_file=""
$month_file=""
$year_file=""

_up1=%*
<html><head>
<meta http-equiv="cache-control" content="max-age=0" />
<meta http-equiv="cache-control" content="no-cache" />
<meta http-equiv="expires" content="0" />
<meta http-equiv="expires" content="Tue, 01 Jan 1980 1:00:00 GMT" />
<meta http-equiv="pragma" content="no-cache" />
<meta charset="utf-8">
<meta charset="utf-8">
<style type="text/css">
   TABLE.food_table{
    width: 50%; 
    border: 1px solid #399; 
    border-spacing: 7px 5px; 
   }
   TD.food_table {
    background: #fc0;
    border: 1px solid #333; 
    padding: 5px; 
   }
   TD.food_table_z {
   background: #9c1;
    border: 1px solid #333;
    padding: 5px;
    text-align: center;
    }
    
    .wrapper {
        position: absolute;
        width: 110px;
        height: 130px;
        margin-bottom: 15px;
    }
    #dd {
        position: relative;
        height: 130px !important;
    }
  </style>
  <script>
var width=110,r=5;

setTimeout('ff()', 100);
function ff() {
d=document.getElementById('dd');

if(d.width>2&&r==1){
  d.style.left=(parseInt(d.style.left)+1)+"px";
  d.width=d.width-2;
}else if(d.width<width&&r==0){
  d.style.left=(parseInt(d.style.left)-1)+"px";
  d.width=d.width+2;
}else {r=(r==1?0:1);}
setTimeout('ff()', 80);
}

</script>

</head>
<body>
<div class="wrapper">
    <img id="dd" src="http://sch7sortavala.ucoz.ru/images/tradizii/vlad.png" style="left: 330;" alt="Вращение картинки">
  </div>
<center>
Автоматически сгенерированный индекс каталога<\/br>
меню фактического в формате xlsx.<\/br>
---------------------------------<\/br>
дата очередной генерации индекса :#{Time.now}<\/br>
---------------------------------<\/br>

---------------------------------<\/br>
найдено  следующее(последние 365 записей):<\/br>
<table class="food_table">
<tr>
<td colspan=3>
<a href="food/kp2023.xlsx">календарь питания</s></br><a href="food/tm2023-sm.xlsx">примерное меню</a>
</td>
</tr>

<tr>
#{
#<td>
#меню старшего и среднего звена
#</td>
#{
}
<th>
меню на дату:
</th>
<th>
гиперссылка и наименование файла:
</th>
<th>
Полное время</br>
 последней даты опубликации файла:
</th>
</tr>

#{$root="\/food\/"}


#{
files3_5=""

for i in 0...files8_4.size
  #
  tmp11=files8_4[i].split('-')
  tmp111="<tr><td class=\"food_table\">"+tmp11[2].to_s+" числа "+tmp11[1].to_s+" месяца "+tmp11[0].to_s+" года"+"</td>"
  if (tmp11[0].to_s != $year_file)
  files8_5=files8_5+"<tr><td colspan=\"3\" class=\"food_table_z\">"+tmp11[0].to_s+" год</td></tr>"
  $year_file=tmp11[0].to_s
  end
  
  if (tmp11[1].to_s != $month_file.to_s)
  files8_5=files3_5+"<tr><td colspan=\"3\" class=\"food_table_z\">"+tmp11[1].to_s+" месяц</td></tr>"
  $month_file=tmp11[1].to_s
  end
  
  files8_5=files8_5+tmp111+"<td class=\"food_table\"><a href=\""+$root+files8_4[i]+"\""+">"+files8_4[i]+"<\/a></td><td class=\"food_table\">"+(ftp.mtime(files8_4[i],true)).to_s+"</td></tr>"
  p files8_5
  if (i>365) then break end
end


for i in 0...files3_4.size
  #
  tmp11=files3_4[i].split('-')
  tmp111="<tr><td class=\"food_table\">"+tmp11[2].to_s+" числа "+tmp11[1].to_s+" месяца "+tmp11[0].to_s+" года"+"</td>"
  if (tmp11[0].to_s != $year_file)
  files3_5=files3_5+"<tr><td colspan=\"3\" class=\"food_table_z\">"+tmp11[0].to_s+" год</td></tr>"
  $year_file=tmp11[0].to_s
  end
  
  if (tmp11[1].to_s != $month_file.to_s)
  files3_5=files3_5+"<tr><td colspan=\"3\" class=\"food_table_z\">"+tmp11[1].to_s+" месяц</td></tr>"
  $month_file=tmp11[1].to_s
  end
  
  files3_5=files3_5+tmp111+"<td class=\"food_table\"><a href=\""+$root+files3_4[i]+"\""+">"+files3_4[i]+"<\/a></td><td class=\"food_table\">"+(ftp.mtime(files3_4[i],true)).to_s+"</td></tr>";
  
  if (i>365) then break end
end

#{files8_5}

#{files3_5}


#</td>
#</tr>
}

#{files3_5}

</table>

</center>
</body>
</html>
*
puts _up1

file=Tempfile.new("index.php6")
puts file.path
file.write(_up1)
puts file.read

#
ftp.puttextfile(file.path,"index.hgf")

ftp.close


#p $a
#p files8
#p files9
