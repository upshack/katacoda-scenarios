# Ansible Inventory

Bu adım, ini formatlı bir envanter dosyasını bulmanızı ve anlamanızı sağlayacaktır.

Ana dizindeki Ansible inventory dosyasını inceleyin. `/root/hosts` dosyasını örneklemek için Linux `cat` komutunu kullanın:

`cat /root/hosts`{{execute}}

Bu alıştırmanın amaçları için şifreler burada düz metin olarak verilmiştir. Üretimde, şifreleri şifrelemek için Red Hat Ansible Platformunu kullanabilirsiniz. Ansible ile kimlik bilgisi yönetimi, HashiCorp tarafından CyberArk veya Vault'a tam olarak entegre edilebilir.

`[all]` adında bir varsayılan grup var. Bu, tüm ana bilgisayarların **all** grubunun parçası olduğu anlamına gelir. Bir gruptaki değişkenleri tanımlamak için, bu değişkenleri grubun tüm üyelerine uygulayacak olan ":vars"ı kullanabilirsiniz.

```
[all:vars]
ansible_user=root
ansible_ssh_pass=katacoda
```
biri kontrol düğümü ve sadece 'host01' içeren iki grubumuz var,
```
[control_node]
host01 ansible_host=localhost ansible_connection=local
```

"host01" düğümünün iki ana bilgisayar değişkeni (veya bu bağımsız ana bilgisayara özel değişkenler) vardır.

- `ansible_host`-bu isteğe bağlı bir değişkendir, burada Ansible envanter adınız DNS adınızla eşleşmiyorsa, DNS adını veya bir IP adresini sabit kodlayabilirsiniz.
- `ansible_connection` - bu, ana bilgisayarın varsayılan SSH yerine yerel bağlantıyı kullandığı anlamına gelir. Diğer değerler arasında Cisco Router gibi ağ cihazları için "network_cli" veya Microsoft'un WinRM'si üzerinden görevleri çalıştırmak için "winrm" bulunur.

ve son olarak, yönetilen iki ana bilgisayarımızla "web" adında bir grup var.

```
[web]
host02
host03
```
