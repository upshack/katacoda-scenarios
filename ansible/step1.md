# lab ortamını tanıma

 erişmemiz gereken host bilgileri

| Role                 | Inventory name | IP Address     |
| ---------------------| ---------------| ---------------|
| Ansible Control node | host01         | `[[HOST1_IP]]` |
| Managed host 2       | host02         | `[[HOST2_IP]]` |
| Managed host 3       | host03         | `[[HOST3_IP]]` |

# /etc/hosts incelenmesi

Bu laboratuvar ortamı için ana bilgisayar adlarını kullanacağız. Bu, `/etc/hosts` dosyasındaki ana bilgisayar eşlemesi yoluyla gerçekleştirilir. `/etc/hosts` dosyasını incelemek için Linux `cat` komutunu kullanın:
`cat /etc/hosts`{{execute}}

Aşağıdaki iki satıra dikkat edin:

```
[[HOST2_IP]] host02 node01
[[HOST3_IP]] host03 node02
```

- "host02" veya "node01" ana bilgisayar adı, "[[HOST2_IP]]" olarak çözülecek
- "host03" veya "node02" ana bilgisayar adı "[[HOST3_IP]]" olarak çözülecek

# ana bilgisayarlara bağlanma

Her bir ana bilgisayara manuel olarak giriş yapmak istiyorsanız, ana bilgisayar adlarına ssh yapabilirsiniz.

`host02`ye bağlanmak için Linux `ssh` komutunu kullanın:

`ssh host02`{{execute}}

Kontrol düğümüne geri dönmek için **exit** yazın.

`exit`{{execute}}

host03"e bağlanmak için Linux "ssh" komutunu kullanın:

`ssh host03`{{execute}}

Kontrol düğümüne geri dönmek için **exit** yazın.

`exit`{{execute}}
