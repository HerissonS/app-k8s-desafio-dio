# PROJETO DESAFIO DIO
## Criando um Deploy de uma Aplicação

Neste projeto será realizado um deploy de uma aplicação completa com frontend, backend e database mysql. No desenvolvimento do projeto serão criadas as imagens dos containeres e serviços necessários no kubernetes para que a aplicação esteja pronta para produção.

Existem 3 pastas no projeto:
 - backend - Executado no lado do servidor
 - database - Executado no lado do servidor
 - frontend - Executado no lado do cliente

Foi criado um cluster na nuvem GCP e criadas imagens personalizadas para a aplicação. As imagens foram enviadas para o docker hub.

Foi criado também um script .sh para executar os comandos para subir a aplicação, sem que fosse necessário digitar todos os comandos do docker e kubectl.

Serviços criados:
 - Imagem personalizada PHP Apache
 - Imagem personalizada mysql com arquivo .sql
 - Banco de dados mysql
 - Deployment com PersistentVolumeClaim e as imagens personalizadas criadas
 - Service com LoadBalancer para os pods e um serviço de conexão para conectar com o banco de dados