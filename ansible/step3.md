# Ansible Configuration dosyaları

Bu adım, Ansible yapılandırma dosyasını (`ansible.cfg`) bulmanıza ve anlamanıza yardımcı olacaktır.

Ansible'ın davranışı, Ansible'ın ini-style konfigürasyon dosyasındaki ayarlar değiştirilerek özelleştirilebilir.

Bu laboratuvar ortamı için, kontrol düğümündeki ana dizinde yapılandırılmış bir "ansible.cfg" zaten var:

`cat ansible.cfg`{{execute}}

İşte kısaltılmış bir çıktı:
```
inventory = hosts
<< OUTPUT ABRIDGED >>
```

 - `inventory`: kullanılan Ansible Inventory'nin yerini gösterir