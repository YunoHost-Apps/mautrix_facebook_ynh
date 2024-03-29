<!--
N.B.: Questo README è stato automaticamente generato da <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
NON DEVE essere modificato manualmente.
-->

# Matrix-Facebook bridge per YunoHost

[![Livello di integrazione](https://dash.yunohost.org/integration/mautrix_facebook.svg)](https://dash.yunohost.org/appci/app/mautrix_facebook) ![Stato di funzionamento](https://ci-apps.yunohost.org/ci/badges/mautrix_facebook.status.svg) ![Stato di manutenzione](https://ci-apps.yunohost.org/ci/badges/mautrix_facebook.maintain.svg)

[![Installa Matrix-Facebook bridge con YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=mautrix_facebook)

*[Leggi questo README in altre lingue.](./ALL_README.md)*

> *Questo pacchetto ti permette di installare Matrix-Facebook bridge su un server YunoHost in modo semplice e veloce.*  
> *Se non hai YunoHost, consulta [la guida](https://yunohost.org/install) per imparare a installarlo.*

## Panoramica

A puppeting bridge between Matrix and Facebook packaged as a YunoHost service. Messages, notifications (and sometimes media) are bridged between a Facebook user and a Matrix user. Currently the Matrix user can NOT invite other Matrix user in a bridged Facebook room, so only someone with a Facebook account can participate to Facebook group conversations. The ["Mautrix-Facebook"](https://docs.mau.fi/bridges/python/facebook/index.html) bridge consists in a Synapse App Service and relies on postgresql (mysql also possible). Therefore, [Synapse for YunoHost](https://github.com/YunoHost-Apps/synapse_ynh) should be installed beforehand.


**Versione pubblicata:** 0.5.1~ynh1
## :red_circle: Anti-funzionalità

- **Applicazione non mantenuta**: Questo software non è più mantenuto. Ci si può aspettare che con il passare del tempo smetta di funzionare, sia esposto a falle di sicurezza, ecc.

## Documentazione e risorse

- Documentazione ufficiale per gli utenti: <https://docs.mau.fi/bridges/python/facebook/index.html>
- Documentazione ufficiale per gli amministratori: <https://docs.mau.fi/bridges/python/setup/index.html?bridge=facebook>
- Repository upstream del codice dell’app: <https://github.com/mautrix/facebook>
- Store di YunoHost: <https://apps.yunohost.org/app/mautrix_facebook>
- Segnala un problema: <https://github.com/YunoHost-Apps/mautrix_facebook_ynh/issues>

## Informazioni per sviluppatori

Si prega di inviare la tua pull request alla [branch di `testing`](https://github.com/YunoHost-Apps/mautrix_facebook_ynh/tree/testing).

Per provare la branch di `testing`, si prega di procedere in questo modo:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/mautrix_facebook_ynh/tree/testing --debug
o
sudo yunohost app upgrade mautrix_facebook -u https://github.com/YunoHost-Apps/mautrix_facebook_ynh/tree/testing --debug
```

**Maggiori informazioni riguardo il pacchetto di quest’app:** <https://yunohost.org/packaging_apps>
