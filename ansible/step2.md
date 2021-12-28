# Ansible software version

Yalnızca yüklü olan Ansible sürümünü değil, aynı zamanda birkaç önemli ayrıntıyı da görmek için --version pararameteresi ile ansible komutunu çalıştırın:

`ansible --version`{{execute}}

Çıktı aşağıdakine benzer görünecektir:

```
[root@c01c899604a3 ~]# ansible --version
ansible 2.9.6
  config file = /root/ansible.cfg
  configured module search path = ['/root/.ansible/plugins/modules', '/usr/share/ansible/plugins/modules']
  ansible python module location = /usr/lib/python3.6/site-packages/ansible
  executable location = /usr/bin/ansible
  python version = 3.6.8 (default, Jan 11 2019, 02:17:16) [GCC 8.2.1 20180905 (Red Hat 8.2.1-3)]
```

config dosyasını not alın
```
config file = /root/ansible.cfg
```

Hangi Ansible Configuration dosyasını kullandığımızı ve sırayla hangi envanteri kullandığımızı mevcut çalışma dizinimizden her zaman bilebiliriz.

# ad-hoc komutlarına giriş

Ansible'ın nasıl çalıştığına dair bir fikir edinmenize yardımcı olmak için bazı ad-hoc komutları çalıştıracağız. Ansible Ad-Hoc komutları, bir playbook yazmak zorunda kalmadan uzak düğümlerde görevler gerçekleştirmenizi sağlar.

'ansible' komutunu kullanın ve üzerinde yürütmek istediğiniz grubu sağlayın. "--list-hosts" komutunu kullanmayı deneyin:

`ansible web --list-hosts`{{execute}}`

Çıktı şöyle görünecektir:

```
  hosts (2):
    host02
    host03
```

şimdi bununla karşılaştır

`ansible all --list-hosts`{{execute}}

Çıktı şöyle görünecektir:

```
  hosts (3):
    host01
    host02
    host03
```

Web grubunun yalnızca "host02" ve "host03" içerdiğini, hepsinin de "host01" içerdiğini fark edeceksiniz.

# Bağlantıyı belirleme

`-m` seçeneği, hangi Ansible modülünün kullanılacağını tanımlar.

`ansible web -m ping`{{execute}}

Çıktı aşağıdaki gibi görünecektir:

```
host03 | SUCCESS => {
    "ansible_facts": {
        "discovered_interpreter_python": "/usr/libexec/platform-python"
    },
    "changed": false,
    "ping": "pong"
}
host02 | SUCCESS => {
    "ansible_facts": {
        "discovered_interpreter_python": "/usr/libexec/platform-python"
    },
    "changed": false,
    "ping": "pong"
}
```

Terminal penceresinde ana bilgisayar adı ve **SUCCESS** ile dönüş değerleri göreceksiniz.
