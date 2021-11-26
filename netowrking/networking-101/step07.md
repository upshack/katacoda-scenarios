# Giriş
bu bölümde ise sistem servisleri ile etkileşime geçmeyi göreceğiz

sistemimiz üzerinde çalışan servislerin tam listesini almak için `systemctl --type=service`{{execute}} komutunu kullanırız
eğer`ssh` servisinin durumunu öğrenmek için `systemctl status ssh`{{execute}} komutunu çalıştıralım

sistemimiz üzerinde servis işlemlerine birkaç örnek verelim ve beraber inceleyelim

  - `systemctl stop ssh`{{execute}} servisi durdumak için kullanılır
  - `systemctl start ssh`{{execute}} servisi çalıştırmak için kullanılır
  - `systemctl restart ssh`{{execute}} servisi yeniden başlatmak için kullanılır
  - `systemctl reload nginx`{{execute}} bu komutu yaptığımız konfigürasyonları uygulamayı yeniden başlatmadan aktif etmek için kullanırız ama .net/java da bu desteklenmez bu yüzden yeniden başlatılması yani **restart** komutunu kullanmamız gerekir