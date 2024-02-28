## Liste de passerelles publiques

* Demandez sur un des salons suivants: #mautrix_yunohost:matrix.fdn.fr or #facebook:maunium.net

## Usages de la passerelle

**Notez que plusieurs comptes Messenger et Matrix peuvent être relayés, chaque compte Messenger connecté a son propre Salon d'Administration. Si plusieurs utilisateur.ice.s du Robot sont dans un même groupe Messenger, seul un Salon Matrix sera créé par la passerelle.**

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
```sudo nano /opt/yunohost/mautrix_facebook/config.yaml```
puis en redémarrant le service:
```sudo yunohost service restart mautrix_facebook```

## Caractéristiques spécifiques YunoHost

### Support multi-comptes

* Les utilisateur.ice.s du Robot ne sont pas liés aux comptes Yunohost. N'importe quel compte Matrix ou serveur Synapse autorisés dans la configuration de la passerelle peut inviter/utiliser le Robot.
* Le robot Messenger est un utilisateur Matrix-Synapse local, mais accessible via la fédération (Synapse public ou privé).
* Plusieurs comptes Messenger et Matrix peuvent être liés avec une seule passerelle, chaque compte a son propre salon d'administration.
* Si plusieurs utilisateur.ice.s du Robot sont dans un même groupe Messenger, seul un Salon Matrix sera créé par la passerelle. Autrement dit, la passerelle construit un seul miroir du réseau de discussion existant sur Messenger (utilisateurs et salons).
* Voir <https://github.com/YunoHost-Apps/synapse_ynh#multi-users-support>

### Support multi-instance

* L'installation multi-instance devrait fonctionner. Plusieurs instances de passerelles pourraient être installées pour une instance de Matrix-Synapse. Cela permet à un compte matrix de se relier à plusieurs comptes Messenger.
* Plusieurs instances de passerelles pourraient être installées pour que chaque instance de Matrix-Synapse puisse en bénéficier. Mais une passerelle peut être utilisée par les comptes de plusieurs instances Matrix-Synapse.

## Limitations

* Les appels Audio/Video ne sont pas relayés. Seule une notification apparait.
