# Giriş
bu bölümde kendi sistemimiz üzerinde dns ile alakalı config dosyalarına değineceğiz

## DNS ayrıntıları

öncelikle `/etc/resolv.conf` dosyamızı kontrol edelim, çünkü dns serverları yani url leri ip adreslerine çeviren **nameserver** orada set ediyoruz
şimdi ise `cat /etc/resolv.conf`{{execute}} komutumuzu çalıştıralım ve `nameserver` karşılık gelen değerin `8.8.8.8` olduğunu görelim
`8.8.8.8` en popüler DNS server adresidir ve google tarafından sağlanır ayrıca `/etc/hosts` dosyası içerisindeki url ve adresleri dikkatli incelemelisiniz çünkü sistemimiz bu dosya içerisine yazılan url adresine karşılık gelen ip adresi her zaman çalıştırıcaktır gerçek dns server bilgisini değil burada bir yönlendirme yapmış oluyoruz
örnek olarak açıklarsak `google.com` adresini `127.0.0.1` olarak dosyamıza kaydedersek, sistemimiz bu dns adresini çözümlerken `127.0.0.1` adresine gidecektir denemek için `echo "127.0.0.1 google.com" >> /etc/hosts`{{execute}} kodunu çalıştıralım ve şimdi `google.com` adresine `ping` atmaya çalıştığımızda `127.0.0.1` adresine göreceğiz
  - `ping -c2 google.com`{{execute}}
linux sistemlerde ister program olsun ister kullanıcı, takip edeceği adımlar şu şekildedir:

1. `/etc/hosts` dosyasını kontrol et, eğer dns adresine karşılık bir ip var ise onu kullan
2. eğer `DNS` adı `/etc/hosts` dosyası içersinde set edilmemiş ise, local `DNS cache` e bakar, yani önceden kaydedilmiş `DNS` kayıtlarına, *ama sadece** sisteme admin tarafında konfigüre edildiyse.
3. eğer `DNS` ön bellekte değilse, `/etc/resolv.conf` dosyasına `nameserver` IP bilgisini sorar
