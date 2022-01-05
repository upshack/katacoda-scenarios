dosyamıza bakalım `pod-namespace.yaml`{{open}}

`Happypanda` pod unun **dev-service1** namespace programlanacak şekilde yapılandırıldığına dikkat edin.

Aşağıdaki komutu kullanarak bu yaml dosyasını uygulayalım:

`kubectl apply -f /pods-manifests/pod-namespace.yaml`{{execute}}

## Doğrulama

**dev-service1** namespace inde çalışan pod lara bir göz atalım:

`kubectl get pods -n dev-service1`{{execute}}

Harika! "Happypanda" pod u "dev-service1" namespace i ile çalışıyor!
