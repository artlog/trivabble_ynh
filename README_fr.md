
  * Le contenu n'est pas encore prêt , troisième reprise du projet

L'application n'a pas encore été soumise pour ^tre listée dans les applications yunohost.

[![Niveau d'intégration](https://dash.yunohost.org/integration/trivabble.svg)](https://dash.yunohost.org/appci/app/trivabble)  
[![Installer trivabble avec YunoHost](https://install-app.yunohost.org/install-with-yunohost.png)](https://install-app.yunohost.org/?app=trivabble)

*[Read this readme in english.](./README.md)* 

Ce paquet vous permet d'installer trivabble rapidement et simplement sur un serveur Yunohost.  

Si vous n'avez pas YunoHost, regardez [ici](https://yunohost.org/#/install) pour savoir comment l'installer et en profiter.

## Vue d'ensemble

Ce projet permet l'integration de l'application Trivabble dans yunohost.

Trivabble est un jeu libre et gratuit de Scrabble en réseau. Il fonctionne sur tablette, sur ordinateur classique et bientôt sur téléphone. Pas besoin d'installer quoi que ce soit, ça marche tout seul !

**Version incluse:** 1.0

## Captures d'écran

![](Lien vers une capture d'écran pour cette application)

## Démo

* [Démo officielle](Lien vers un site de démonstration pour cette application)

## Configuration

Comment configurer cette application: via le panneau d'administration, un fichier brut en SSH ou tout autre moyen.

## Documentation

 * Documentation officielle: Lien vers la documentation officielle de cette application
 * Documentation YunoHost: Si une documentation spécifique est nécessaire, n'hésitez pas à contribuer.

## Caractéristiques spécifiques YunoHost

#### Support multi-utilisateurs

L'authentification LDAP et HTTP est-elle prise en charge?
L'application peut-elle être utilisée par plusieurs utilisateurs?

#### Architectures supportées

* x86-64b - [![Build Status](https://ci-apps.yunohost.org/ci/logs/trivabble%20%28Apps%29.svg)](https://ci-apps.yunohost.org/ci/apps/trivabble/)
* ARMv8-A - [![Build Status](https://ci-apps-arm.yunohost.org/ci/logs/trivabble%20%28Apps%29.svg)](https://ci-apps-arm.yunohost.org/ci/apps/trivabble/)
* Jessie x86-64b - [![Build Status](https://ci-stretch.nohost.me/ci/logs/trivabble%20%28Apps%29.svg)](https://ci-stretch.nohost.me/ci/apps/trivabble/)

## Limitations

* Limitations connues.

## Informations additionnelles

* Autres informations à ajouter sur cette application

**Plus d'informations sur la page de documentation:**  
https://yunohost.org/packaging_apps

## Liens

 * Site de l'application: Lien vers le site officiel de cette application https://git.jakse.fr/artlog/trivabble_ynh
 * Dépôt de l'application principale: Lien vers le dépôt officiel de l'application principale https://git.jakse.fr/trivabble/trivabble
 * Site web YunoHost: https://yunohost.org/

---

Informations pour les développeurs
----------------

```
sudo yunohost app install https://git.jakse.fr/artlog/trivabble_ynh --debug
ou
sudo yunohost app upgrade trivabble -u https://git.jakse.fr/artlog/trivabble_ynh --debug
```
