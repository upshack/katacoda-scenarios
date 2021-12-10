# Git komutları

>Öncelikle sistemimizde mevcut olan git in versiyonunu kontrol edelim
`git --version`{{execute}}

bütün git özelliklerini listelemek için “git –help” komutunu kullanabiliriz
`git –help`{{execute}}

sistemimizde ki git öncesinde konfigüre edilmiş olup olmadığını kontrol etmek için `git config -l`{{execute}} komutunu kullanırız, ve bu konfigürasyonu güncellemek veya sıfırdan bir girdi yapacak iseniz şu kodları kullanmalısınız, 
<pre class="file" data-target="clipboard">
git config --global user.name "x y"
</pre>
<pre class="file" data-target="clipboard">
git config --global user.email xy@example.com
</pre>
Ayarları yaparken global parametresi eklenmezse sadece üzerinde çalışılan proje için ayar uygulanacak herhangi bir proje açık değilse hata verecektir.

>Konfigürasyondaki kullanıcı adına ulaşmak için aşağıdaki komutu kullanabiliriz
`git config user.name`{{execute}}

>şimdi ise bir çalışma alanı oluşturalım `mkdir myproject`{{execute}} ardından oluşturduğumuz dizinin içerisine giriş yapalım `cd myproject`{{execute}} şimdi ise `git init`{{execute}} komutu burada bir git dizini oluşturalım, bu dizinde repo adresi, projenin akışı gibi bilgiler bulunur
>`echo "Dojo git" > README.md; touch dummy.txt`{{execute}} kodu ile dosyalarımı oluşturup içerisine girdi yaptından sonra bu değişikliği test etmek için `git status`{{execute}} komutunu çalıştırıyoruz ve dosyamızda bir güncelleme yapıyoruz `git add README.md`{{execute}} komutunu çalıştırıyoruz 

