# Giriş

Bu bölümde sık kullanılan araçların tanıtımı gerçekleştireceğiz

## Sık kullanılan araçlar 

**`ifconfig` komutu**

ifconfig komutunu sistemimize ait network adaptörleirn bilgilerini görmek ve bu bilgileri modifiye etmek için kullarız

  - `ifconfig`{{execute}} komutu sistemimizdeki network adaptörlerimize ait ip, mac ve mtu bilgilerini görebiliriz

  - "ifconfig <network-adaptor-ismi>": istenilen netwtork adaptörünün bilgisini verir örnek kullanımı `ifconfig lo`{{execute}}

  - "ifdown <network-adaptor-ismi>": network adaptörünü deaktif etmek için kullanılır örnek kullanım olarak `ifdown lo`{{execute}} ve sonucu test etmek için `ifconfig`{{execute}} komutunu çalıştıralım

  - "ifup <network-adaptor-ismi>": network adaptörünü aktif etmek için kullanılır örnek kullanım olarak `ifup lo`{{execute}} komutunu kullanarak öncesinde eaktif ettiğimiz network adaptörünü test edelim ve teyit etmek için `ifconfig`{{execute}} komutunu çalıştıralım

  - "ifconfig <network-adaptor-ismi> <yeni-ip-adresi> netmask <subnetmask>": bu komut ile istenilen network adaptörünün ip adresini değiştirebiliriz, örnek olarak `ifconfig lo 127.0.0.5 netmask 255.0.0.1`{{execute}} komutunu çalıştıralım ve teyit için `ifconfig`{{execute}} komutunu çalıştıralım ve tekrandan eski haline getirmek için `ifconfig lo 127.0.0.1 netmask 255.0.0.1`{{execute}} komutunu çalıştıralım

  - "ifconfig <network-adaptor-ismi> mtu <istenilen-deger>": bu komut ile istenilen network adaptörünün mtu değerini değişterebilriiz, minimum mtu değeri ise 1500

**`dig` komutu**

Dig komutunu istenilen sisteme ait dns bilgilerini görmek için kullanırız 

"dig <domain-adresi>": örnek olarak `dig google.com`{{execute}}

Örnek argüman kullanımı:

  - `dig +short google.com`{{execute}} **+short** argümanı ile sadece domain e ait ip adresini görebiliriz
  - `dig google.com NS`{{execute}}  **NS** argümanın ile dns kaydı üzerindeki NameSpace leri bilgilerini verir

ayrıca txt dosyasının içerisinden **-f** argümanı ile topluca işlem yaptırabiliriz örnek olarak istenilen dns adreslerinin ip bilgisini listeleyelim bunun için `echo "google.com youtube.com" >> text.txt`{{execute}} komutu iki adet dns adresini dosyamızın içerisine yazdık şimdi ise `dig -f test.txt +short`{{execute}} komutunu çaşıltırıp sonuca bakalım

**`nslookup` komutu**

DNS/IP bilgilerine bu komut ile de görebiliriz, örnek olarak `nslookup google.com`{{execute}} komutunu çalıştıralım

**'host' komutu**

İstenilen DNS adresi üzerine kayıtlı IP/NS vs bilgilerini verir, örnek olarak `host google.com`{{execute}}