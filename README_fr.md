# Une passerelle entre Matrix et Facebook/Messenger pour YunoHost
[![Integration level](https://dash.yunohost.org/integration/mautrix-facebook.svg)](https://dash.yunohost.org/appci/app/mautrix-facebook)  
[![Install Mautrix-Messenger with YunoHost](https://install-app.yunohost.org/install-with-yunohost.png)](https://install-app.yunohost.org/?app=mautrix-facebook)

*[Read this readme in english.](./README.md)* 

> *Ce package vous permet d'installer Mautrix-Messenger rapidement et simplement sur un serveur Yunohost.  
Si vous n'avez pas YunoHost, regardez [ici](https://yunohost.org/#/install) pour savoir comment l'installer et en profiter.*

## Vue d'ensemble
Une passerelle entre Matrix et Messenger empaquetée comme un service YunoHost. Les messages, médias et notifications sont relayées entre un compte Messenger et un compte Matrix. 
La passerelle ["Mautrix-Facebook"](https://docs.mau.fi/bridges/python/facebook/index.html) consiste en un Service d'Application Matrix-Synapse et repose sur une base-de-données postgresql. C'est pourquoi [Synapse for YunoHost](https://github.com/YunoHost-Apps/synapse_ynh) doit être préalablemnet installé.

** Attention : sauvegardez et restaurez toujours les deux applications Yunohost matrix-synapse et mautrix_facebook en même temps!**

**Version incluse:** 0.3.0

## Captures d'écran

![](Lien vers une capture d'écran pour cette application)

## Liste de passerelles publiques

* Demandez sur un des salons suivants: #mautrix_yunohost:matrix.fdn.fr or #facebook:maunium.net

## Usages de la passerelle
** Notez que plusieurs comptes Messenger et Matrix peuvent être relayés, chaque compte Messenger connecté a son propre Salon d'Administration. Si plusieurs utilisateur.ice.s du Robot sont dans un même groupe Messenger, seul un Salon Matrix sera créé par la passerelle. **

### Relayer TOUTES les conversations entre UN compte Messenger et UN compte Matrix
* Prérequis : votre compte Matrix ou le serveur sur lequel il est hébergé doit être autorisé dans la configuration de la passerelle (voir ci-dessous)
* Invitez le Robot (par défaut @facebookbot:synapse.votredomaine) à une nouvelle conversation.
* Ce nouveau salon d'administration du Robot Mautrix-Messenger est appelé "Administration Room".
* Envoyez ``help`` au Robot dans le "Administration Room" pour une liste des commandes d'administration de la passerelle.
Voir aussi [upstream wiki Authentication page](https://docs.mau.fi/bridges/python/facebook/authentication.html)

#### Relier la passerelle comme un appareil secondaire

### Robot-Relai "Relaybot": Relayer les conversations de TOUS les comptes Matrix et TOUS les comptes Messenger présents dans UN groupe/salon
* Pas implémenté pour l'instant

## Configuration de la passerelle

La passerelle est [configurée avec les paramètres standards adaptés pour votre YunoHost et l'instance Matrix-Synapse sélectionnée](https://github.com/YunoHost-Apps/mautrix_facebook_ynh/blob/master/conf/config.yaml). Vous pouvez par exemple ajouter des administrateur.ice.s et utilisateur.ice.s du Robot autorisés en modifiant le fichier de configuration par liaison SSH: 
``` sudo nano /opt/yunohost/mautrix_facebook/config.yaml```
puis en redémarrant le service: 
``` sudo yunohost service restart mautrix_facebook```

## Documentation

 * Documentation officielle "Mautrix-Facebook": https://docs.mau.fi/bridges/python/facebook/index.html
 * Salon Matrix sur les Passerelles dans Yunohost): #mautrix_yunohost:matrix.fdn.fr
 * Salon Matrix (application principale): #facebook:maunium.net
Si vous devez téléverser vos fichiers log quelque-part, soyez avertis qu'ils contiennent des informations sur vos contacts et vos numéros de téléphone. Effacez-les avec 
``| sed -r 's/[0-9]{10,}/📞/g' ``
 * La passerelle "Mautrix-Messenger" repose sur l'implémentation du [daemon facebookd](https://gitlab.com/facebookd/facebookd) . 
 * Documentation YunoHost: Si une documentation spécifique est nécessaire, n'hésitez pas à contribuer.

## Caractéristiques spécifiques YunoHost

#### Support multi-comptes
* Les utilisateur.ice.s du Robot ne sont pas liés aux comptes Yunohost. N'importe quel compte Matrix ou serveur Synapse autorisés dans la configuration de la passerelle peut inviter/utiliser le Robot. 
* Le robot Messenger est un utilisateur Matrix-Synapse local, mais accessible via la fédération (Synapse public ou privé).
* Plusieurs comptes Messenger et Matrix peuvent être liés avec une seule passerelle, chaque compte a son propre salon d'administration. 
* Si plusieurs utilisateur.ice.s du Robot sont dans un même groupe Messenger, seul un Salon Matrix sera créé par la passerelle. Autrement dit, la passerelle construit un seul miroir du réseau de discussion existant sur Messenger (utilisateurs et salons).
* Voir https://github.com/YunoHost-Apps/synapse_ynh#multi-users-support

#### Support multi-instance

* L'installation multi-instance devrait fonctionner. Plusieurs instances de passerelles pourraient être installées pour une instance de Matrix-Synapse. Cela permet à un compte matrix de se relier à plusieurs comptes Messenger. 
* Plusieurs instances de passerelles pourraient être installées pour que chaque instance de Matrix-Synapse puisse en bénéficier. Mais une passerelle peut être utilisée par les comptes de plusieurs instances Matrix-Synapse.

#### Architectures supportées

* x86-64b - [![Build Status](https://ci-apps.yunohost.org/ci/logs/mautrix_facebook%20%28Apps%29.svg)](https://ci-apps.yunohost.org/ci/apps/mautrix_facebook/)
* ARMv8-A - [![Build Status](https://ci-apps-arm.yunohost.org/ci/logs/mautrix_facebook%20%28Apps%29.svg)](https://ci-apps-arm.yunohost.org/ci/apps/mautrix_facebook/)

## Limitations

* Les appels Audio/Video ne sont pas relayés. Seule une notification apparait. 

## Informations additionnelles

* 

**Plus d'informations sur la page de documentation:** 

* https://docs.mau.fi/bridges/python/facebook/index.html 
* https://yunohost.org/packaging_apps

## Liens

 * Signaler un bug:  https://github.com/YunoHost-Apps/mautrix_facebook_ynh/issues
 * Site de l'application: https://github.com/YunoHost-Apps/mautrix_facebook_ynh
 * Documentation de l'application principale: https://docs.mau.fi/bridges/python/facebook/index.html
 * Dépôt de l'application principale: https://github.com/tulir/mautrix-facebook
 * Site web YunoHost: https://yunohost.org/

---

Informations pour les développeurs
----------------

**Seulement si vous voulez utiliser une branche de test pour le codage, au lieu de fusionner directement dans la banche principale.**
Merci de faire vos pull request sur la [branche testing](https://github.com/YunoHost-Apps/mautrix_facebook_ynh/tree/testing).

Pour essayer la branche testing, procédez comme suit.
```
sudo yunohost app install https://github.com/YunoHost-Apps/mautrix_facebook_ynh/tree/testing --debug
ou
sudo yunohost app upgrade mautrix_facebook -u https://github.com/YunoHost-Apps/mautrix_facebook_ynh/tree/testing --debug
```

Pour tester la communication entre le Service d'Application et Matrix-Synapse sur une Machine Virtuelle (ex. avec un nom de domaine: synapse.vm), vous devez installer un certificat:
```
echo | openssl s_client -showcerts -servername synapse.vm -connect synapse.vm:443 2>/dev/null | awk '/-----BEGIN CERTIFICATE-----/, /-----END CERTIFICATE-----/' >> /usr/local/share/ca-certificates/synapse.vm.crt
update-ca-certificates
```
