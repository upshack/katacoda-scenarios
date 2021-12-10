**git branch** komutu ile bulundğumuz branch in bilgisine erişebiliriz

**git branch -m test test_iki** komutu ile branch ismi değiştirebiliriz

**git branch -D test** komutu ile branch silebiliriz

**git rm <doya_adi>** bu komut dosyayı çalışma dizininden siler

**git tag <commit_id>**  bu komut belirtilen işleme etiket vermek için kullanılır

**git fsck** git dosya sisteminin bütünlüğünü kontrol etmek için git fsck komutunu kullanın. Bozuk nesneler tanımlanır

**git archive –format=tar <branch_ismi>** bir kullanıcının tek bir dizin ağacının bileşenlerini içeren bir zip veya tar dosyası oluşturmasını sağlar

**git diff <branch1> <branch2>**  Iki branch arasindaki farklari gosterir.

**git reset <file_name>** Yapilan ve commitlenmeyen degisiklikleri geri alir. Calisma alanizi localinizdeki repository ile esler.

**git reset –hard** Tum degisiklikleri geri almak icin asagidaki komutu kullanabilirsiniz.

**git reset --hard <commit_sha_id>** Eger bir commite donmek ve o anki degisikliklerinizi geri almak isterseniz asagidaki kodu kullanabilirsiniz.

**git reset --hard <remote>/<branch_name>** Calisma alanizi uzak sunucu ile esler. Yapilan ve pushlanmayan degisiklikler geri alinir.

**git clean -fdx** Calisma alaninizi temizler.
* -d = Takip edilmeyen klasorleri sil
* -f = silmeye zorla
* x = ignore edilmis dosyalari da sil.

**git clone repo_adresi** repository den yerel sistemimize indirme yapmak için kullanılır

**git remote rm depo-adi** repository silmek için kullanılır