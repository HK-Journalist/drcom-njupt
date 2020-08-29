#!/bin/bash

local_ip=`ifconfig eth0 | grep inet | cut -d : -f 2 | cut -d " " -f 1`

curl -X POST "http://10.10.244.11:801/eportal/?c=ACSetting&a=Login&protocol=http:&hostname=10.10.244.11&iTermType=1&wlanuserip=$local_ip&wlanacip=10.255.252.150&wlanacname=XL-BRAS-SR8806-X&mac=00-00-00-00-00-00&ip=$local_ip&enAdvert=0&queryACIP=0&loginMethod=1" \
  -H "Connection: keep-alive" \
  -H "ache-Control: max-age=0" \
  -H "Origin: http://10.10.244.11" \
  -H "Upgrade-Insecure-Requests: 1" \
  -H "DNT: 1" \
  -H "Content-Type: application/x-www-form-urlencoded" \
  -H "User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36" \
  -H "Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9" \
  -H "Referer: http://10.10.244.11/a70.htm?wlanuserip=$local_ip&wlanacip=10.255.252.150&wlanacname=XL-BRAS-SR8806-X&vlanid=0&ip=$local_ip&ssid=null&areaID=null&mac=00-00-00-00-00-00" \
  -H "Accept-Language: zh-CN,zh;q=0.9,en;q=0.8" \
  -H "Cookie: program=2; vlan=0; ssid=null; areaID=null; PHPSESSID=1q9rjt4dpba6oukql9ip5k7nu3; ISP_select=@运营商; md5_login2=%2C0%2C学号@运营商%7C密码; ip=$local_ip" \
  --data "DDDDD=%2C0%2C学号%40运营商&upass=密码&R1=0&R2=0&R3=0&R6=0&para=00&0MKKey=123456&buttonClicked=&redirect_url=&err_flag=&username=&password=&user=&cmd=&Login=&v6ip=" \
  --compressed \
  --insecure
