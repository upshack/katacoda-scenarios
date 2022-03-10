#### Gitlab Access Token

1. Gitlab sayfasında sağ üstte bulunan profil kısmına tıklıyoruz ve açılan seçenekelrde **Edit profile** seçeneğine tıklıyoruz
2. sol tarafta bulunan menüde **Access Tokens** yazan kısma tıklıyoruz ve bu sayfada **Scopes** altında yer alan kutucuklardan **api** olanı işaretleyip ardından sayfanın alt konumunda olan **Create personel access token** butonuna tıklıyoruz

### Jenkins Credentials API

1.jenkins anasayfasında sol tarafta bulunun menüde **Credentials** yazan kısma tıklıyoruz
2.**System** kısmına tıklıyoruz
3.açılan sayfada **Global credentials (unrestricted)** yazan yere tıklıyoruz 
4.**Add Credentials** yazan yere tıklıyoruz 
5.**Kind** yazan yerde tıklıyoruz ve açılan seçenekler arasından **GitLab API token** yazanı seçiyoruz ve **API token** yazan yere personel access kodumuzu ekliyoruz ve ardından **OK** yazna butona tıklıyoruz

### Jenkins Credentials SSH Key

1.lab ortamımızda bir ssh key oluşturuyoruz bu kısım Versiyon kontrolü lab ında işlenmiştir.
2.jenkins anasayfasında sol tarafta bulunun menüde **Credentials** yazan kısma tıklıyoruz
3.**System** kısmına tıklıyoruz
4.açılan sayfada **Global credentials (unrestricted)** yazan yere tıklıyoruz 
5.**Add Credentials** yazan yere tıklıyoruz 
6.**Kind** yazan yerde tıklıyoruz ve açılan seçenekler arasından **SSH Username with private key** yazanı seçiyoruz ve SSH anahtarımızı **Private key** kısmında **Enter directly** kutucuğunu seçtikten sonra **add** dedikten sonra ekliyoruz ve ardından **OK** yazna butona tıklıyoruz

### Manage Jenkins

1.jenkins anasayfasında sol tarafta bulunun menüde **Manage Jenkins** yazan kısma tıklıyoruz
2.Açılan sayfada **Configure System** seçeneğine tıklıyoruz
3.açılan sayfada **Gitlab** yazan yere gelip buradan **Connection name** kısmını istediğimiz bir ismi veriyoruz ardından **Gitlab host URL** kısmına https://gitlab.com{{copy}} yazıyoruz ve **Credentials** kısmına tıkladığımızda öncesidne oluşturduğumuz credentials bilgisini seçip sayfanını en alt kısmında yer alan **Apply** kısmına tıklayıp işlemimizi sonlandırıyoruz

#### Jenkins - Gitlab Entegrasyonu

1.sol tarafta bulunna menümüzün en üst kısmında yer alan **new item** şeçeneğine tıklayalım.
2.**Enter an item name** kısmında ise oluşturacağımız job'a bir isim verelim.
3.**Freestyle project** seçeneğine tıklayalım ve ardından **Ok** diyelim.
4.**Source Code Management** kısmında **Git** seçeneğini seçelim ve **Repository URL** kısmına gitlab repo adresimizi yazalım.
5.**Credentials** yazan yere ssh key bilgisini girdiğimiz credentials ı seçiyoruz
6.**Build Triggers** kısmında bulunan kutucuklardan **build when a change is pushed ...** yazan kutucuğu işaretliyoruz

### Gitlab Webhook
1.gitlab sayfasında sol tarafta bulunan menüden **Settings** kısmına tıklayıp açılan seçenekler arasından **İntegration** şeçeneğini seçelim
2.açılan sayfada **Preject services** altında yer alan kısımda **Jenkins CI** yazan yere tıklayalım
3.açılan sayfada **Active** kutucuğunu işaretleyelim ve **Jenkins url** yazan kısıma jenkins adresimizi yazalım ardından **Project name** yazan kısıma ise jenkins de oluşturduğumuz job ın ismini yazalım
4.**Username** ve **Password** kısımlarına jenkins kullanıcı giriş bilgilerimizi girelim