# Ansible Değişkenleri

Bu adım için bir değişken kullanacağız. Ansible, çalışma kitaplarında kullanılabilecek değerleri depolamak için değişkenleri destekler. Değişkenler çeşitli yerlerde tanımlanabilir ve açık bir önceliğe sahiptir. Ansible, bir görev yürütüldüğünde değişkeni değeriyle değiştirir.

Değişken isimleri harf, rakam ve alt çizgi olmalıdır. Değişkenler her zaman bir harfle başlamalıdır.

## Ansible Playbook inceleme

Bu alıştırma, halihazırda tamamlanmış başka bir Ansible Playbook sağladı. Bunu incelemek için Linux `cat` komutunu kullanın.

`cat hostname.yml`{{execute}}

Çıktı:

```yaml
---
- name: change hostnames
  hosts: web
  become: true
  tasks:

  - name: change hostnames for device
    hostname:
      name: "{{inventory_hostname}}"
```

Bu Ansible Playbook, iki şey dışında önceki playbook ile tamamen aynıdır.

- Hem "host02" hem de "host03" içeren "web" grubunda yürütülür.
- Ad alanı artık açık parantez `{{` ve kapalı parantez `}}` ile tanımlanan bir **değişken** kullanıyor.

## Ansible Playbook çalıştırmak

Playbook'u çalıştırmak için 'ansible-playbook' komutunu kullanın:

`ansible-playbook hostname.yml`{{execute}}

Ansible Playbook'un aynı anda her iki ana bilgisayarda da çalıştığını unutmayın. Bu, iki ana bilgisayarda çalıştırmak için iki yüz ana bilgisayarla aynı süreyi alacaktır.

## hostnames değişikliği kontrolü

Ana bilgisayar adının gerçekten değiştiğini doğrulamak için her ana bilgisayarda oturum açın:

### host02

host02 ye  bağlantı için ssh kullanın:

`ssh host02`{{execute}}

Ana bilgisayar adının değiştiğini doğrulayın
`[root@host02 ~]#`

Kontrol düğümüne geri dönmek için exit komutunu kullanın

`exit`{{execute}}

### host03

host03 e bağlantı için ssh kullanın:

`ssh host03`{{execute}}

Ana bilgisayar adının değiştiğini doğrulayın
`[root@host03 ~]#`

Kontrol düğümüne geri dönmek için exit yazın

`exit`{{execute}}
