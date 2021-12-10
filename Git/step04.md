# Git komutları
 
>Şimdi ise ilk commit işlemimizi gerçelştirmek için `git commit -m "First commit with README file"`{{execute}} komutunu çalıştırdık ve tekrardan `git status`{{execute}} komutu ile test ettik 
Şimdi ise log geçmişinde arama yapmak için `git commit -m "First commit with README file"`{{execute}}  komutunu çalıştırıyoruz ve tekrardan kontrol için “git status” komutunu çalıştırıyoruz
Şimdi ise `GIT_PAGER=cat git log`{{execute}} komutu ile log geçmişine bakıyoruz

>`echo "dummy.txt" >> .gitignore`{{execute}} komutu ile gitignore dosyamıza yeni bir satır ekliyoruz

>`git add .; git commit -m "Initiate gitignore with dummy file"`{{execute}} komutu ile değişiklikleri commitliyoruz

>Şimdi git ile yeni bir repository açmayı deneyelim örnek olarak **git remote add origin https://github.com/username/my-repo.git**  şeklinde adresimizi girdik

>Şimdi ise `git push origin master`{{execute}} komutu ile bunu repomuza pushladık