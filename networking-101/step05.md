# Giriş
Bu bölümde port kontrol işlemlerine değineceğiz

**`netstat` komutu**

 `connection refused` veya `I can't access the website`gibi hatalar aldığımızda genelde yapılması gereken ilk iş bu servislerin ilgili veya bizim makinemizde açık olup olmadığını kontorl etmektir
bu tarz işlemler için genelde `netstat` komutu kullanılır ve ayrıca yeni versiyonu olan `ss` de kullanabiliriz.

**netatsat** komutunun yaygın olarak kullanım şekli:  
  - `netstat -lepunta`{{execute}}

 `-` işaretinin ardından kullanılan her harf aslında bir argümandır, şimdi ise bu argümanların ne işe yaradığını açıklayalım

  - `-p` : Port üzerinde hangi servislerin ve programların çalıştığnı göster
  - `-l` : Sistem üzerinde hangi portların açık/dinlnediğini göster
  - `-a` : Bütün açık dinleyecileri göster(services, special sockets/programs)
  - `-n` : Port bilgisi ve kullandığı protokol ismini göster (shows 443 instead of HTTPS for example)
  - `-e` : Ekstra bilgileri göster
  - `-t` : TCP portları göster
  - `-u` : UDP portları göster

örnek olarak bir sistem üzerinde `22` numaralı portun açık oluduğu bilgisini test etmek istiyorsak şu şekilde bir kullanım ile gerçekleştirebiliriz `netstat -lepunta | grep 22`{{execute}}

## web uygulamlarında yanıt kontorlü

web sitesi üzerinde yanıt konrolü yapmak istediğimizde `curl` komutunu kullanabiliriz, oldukça faydalı bir komutttur port üzerinen bağlantı kontorlü, header ve bir kaç extra bilgiyi bizlere sunar
örnek olarak `curl -vk http://example.com/`{{execute}} komutunu çalıştıralım ve sonucu görelim, bize example.com adresine ait index.html dosyasını verdi ve burada kllandığımız `-vk` argümanı iki adet argüman içerir bunlar

  - `-v` : Detaylı bilgi verir
  - `-k` : SSL sertifikasını yok sayar 

Örnek bir uygulama olarak sistemimizin public IP bilgisini öğrenemk için curl komutunu kullanalım, `curl ifconfig.me`{{execute}} komutunu çalıştırıp sonucu görelim
