# goapi

Voici les etapes pour creer une api REST en go avec gin et jwt 

Commencons

Création d'un depot git

```console
mkdir  <nom du projet>
 ```

```console
 go mod init  goapi 
```

## installer les dépendances

```console
 // gin framework
go get -u github.com/gin-gonic/gin
// ORM library
go get -u github.com/jinzhu/gorm
// package that we will be used to authenticate and generate our JWT
go get -u github.com/dgrijalva/jwt-go
// to help manage our environment variables
go get -u github.com/joho/godotenv
// to encrypt our user's password
go get -u golang.org/x/crypto

```
## Creation du main 

```console
touch main.go
```


