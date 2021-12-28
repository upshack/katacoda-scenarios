# Ansible Playbook genel bakış

Playbook'lar, Ansible'ın yapılandırma, dağıtım ve düzenleme dilidir. Uzak sistemlerinizin uygulamasını istediğiniz bir politikayı veya genel bir BT sürecindeki bir dizi adımı tanımlayabilirler.

## Ansible Playbook bileşenleri

playbook, az önce çalıştırdığınız geçici komutlardan bazılarını alabileceğiniz ve bunları tekrarlanabilir bir dizi *play* ve *task* haline getirebileceğiniz yerdir.

Playbook'lar, YAML biçiminde yazılmış metin dosyalarıdır ve bu nedenle şunlara ihtiyaç duyar:

  - uygun girdi için space kullanırız ***tab değil!***

Bazı önemli kavramlar:

  - **hosts**: üzerinde görevleri gerçekleştirmek için yönetilen ana bilgisayarlar

  - **tasks**: Ansible modüllerini çağırarak ve gerekli seçenekleri ileterek yapılacak işlemler.

  - **become**: Özel komutta "-b"yi kullanmakla aynı şekilde Playbook'larda ayrıcalık yükseltme.

## Ansible Playbook inceleme

Bu alıştırma zaten tamamlanmış bir Ansible Playbook sağlamıştır. Bu başucu kitabını incelemek için Linux `cat` komutunu kullanın.

`cat playbook.yml`{{execute}}

Bu Ansible Playbook'un bir görevi var.

```yaml
  - name: change hostname for device
    hostname:
      name: "control"
```

- `- name:` bu görevin tanımını verdiğimiz alandır
- `yum:` bu görevin kullandığı modüldür. Görevler ve modüller bire bir korelasyona sahiptir.
- `name: "control"` - is a parameter we provide to the `yum` module.  The key is name and the string `"control"` is provided as the value.  This means the hostname of the control node will be changed to `control`

## Ansible Playbook çalıştırılması

Playbook'u çalıştırmak için "ansible-playbook" komutunu kullanın:

`ansible-playbook playbook.yml`{{execute}}

Hostname i kontorl etmek için:
`hostnamectl`{{execute}}

Aşağıdaki çıktıyı göreceksiniz:
`Static hostname: control`

Bu değişikliği terminal penceresinde görmek için kontrol düğümüne yeniden giriş yapın:

`ssh localhost`{{execute}}

