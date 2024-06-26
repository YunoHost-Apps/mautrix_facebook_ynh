<!--
Nota bene : ce README est automatiquement généré par <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
Il NE doit PAS être modifié à la main.
-->

# Matrix-Facebook bridge pour YunoHost

[![Niveau d’intégration](https://dash.yunohost.org/integration/mautrix_facebook.svg)](https://dash.yunohost.org/appci/app/mautrix_facebook) ![Statut du fonctionnement](https://ci-apps.yunohost.org/ci/badges/mautrix_facebook.status.svg) ![Statut de maintenance](https://ci-apps.yunohost.org/ci/badges/mautrix_facebook.maintain.svg)

[![Installer Matrix-Facebook bridge avec YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=mautrix_facebook)

*[Lire le README dans d'autres langues.](./ALL_README.md)*

> *Ce package vous permet d’installer Matrix-Facebook bridge rapidement et simplement sur un serveur YunoHost.*  
> *Si vous n’avez pas YunoHost, consultez [ce guide](https://yunohost.org/install) pour savoir comment l’installer et en profiter.*

## Vue d’ensemble

Une passerelle entre Matrix et Messenger empaquetée comme un service YunoHost. Les messages, médias et notifications sont relayées entre un compte Messenger et un compte Matrix. 
La passerelle ["Mautrix-Facebook"](https://docs.mau.fi/bridges/python/facebook/index.html) consiste en un Service d'Application Matrix-Synapse et repose sur une base-de-données postgresql. C'est pourquoi [Synapse for YunoHost](https://github.com/YunoHost-Apps/synapse_ynh) doit être préalablemnet installé.

**Attention : sauvegardez et restaurez toujours les deux applications Yunohost matrix-synapse et mautrix_facebook en même temps!**


**Version incluse :** 0.5.1~ynh2
## :red_circle: Anti-fonctionnalités

- **Application non maintenue **: Ce logiciel n'est plus maintenu. Attendez-vous à ce qu'il ne fonctionne plus avec le temps, et que l'on découvre des failles de sécurité qui ne seront pas corrigées, etc.

## Documentations et ressources

- Documentation officielle utilisateur : <https://docs.mau.fi/bridges/python/facebook/index.html>
- Documentation officielle de l’admin : <https://docs.mau.fi/bridges/python/setup/index.html?bridge=facebook>
- Dépôt de code officiel de l’app : <https://github.com/mautrix/facebook>
- YunoHost Store : <https://apps.yunohost.org/app/mautrix_facebook>
- Signaler un bug : <https://github.com/YunoHost-Apps/mautrix_facebook_ynh/issues>

## Informations pour les développeurs

Merci de faire vos pull request sur la [branche `testing`](https://github.com/YunoHost-Apps/mautrix_facebook_ynh/tree/testing).

Pour essayer la branche `testing`, procédez comme suit :

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/mautrix_facebook_ynh/tree/testing --debug
ou
sudo yunohost app upgrade mautrix_facebook -u https://github.com/YunoHost-Apps/mautrix_facebook_ynh/tree/testing --debug
```

**Plus d’infos sur le packaging d’applications :** <https://yunohost.org/packaging_apps>
