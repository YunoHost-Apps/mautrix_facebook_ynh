<!--
Ohart ongi: README hau automatikoki sortu da <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>ri esker
EZ editatu eskuz.
-->

# Matrix-Facebook bridge YunoHost-erako

[![Integrazio maila](https://dash.yunohost.org/integration/mautrix_facebook.svg)](https://dash.yunohost.org/appci/app/mautrix_facebook) ![Funtzionamendu egoera](https://ci-apps.yunohost.org/ci/badges/mautrix_facebook.status.svg) ![Mantentze egoera](https://ci-apps.yunohost.org/ci/badges/mautrix_facebook.maintain.svg)

[![Instalatu Matrix-Facebook bridge YunoHost-ekin](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=mautrix_facebook)

*[Irakurri README hau beste hizkuntzatan.](./ALL_README.md)*

> *Pakete honek Matrix-Facebook bridge YunoHost zerbitzari batean azkar eta zailtasunik gabe instalatzea ahalbidetzen dizu.*  
> *YunoHost ez baduzu, kontsultatu [gida](https://yunohost.org/install) nola instalatu ikasteko.*

## Aurreikuspena

A puppeting bridge between Matrix and Facebook packaged as a YunoHost service. Messages, notifications (and sometimes media) are bridged between a Facebook user and a Matrix user. Currently the Matrix user can NOT invite other Matrix user in a bridged Facebook room, so only someone with a Facebook account can participate to Facebook group conversations. The ["Mautrix-Facebook"](https://docs.mau.fi/bridges/python/facebook/index.html) bridge consists in a Synapse App Service and relies on postgresql (mysql also possible). Therefore, [Synapse for YunoHost](https://github.com/YunoHost-Apps/synapse_ynh) should be installed beforehand.


**Paketatutako bertsioa:** 0.5.1~ynh1
## :red_circle: Ezaugarri zalantzagarriak

- **Jatorrizko garapena utzita**: Software honek ez du arduradunik. Denborak aurrera egin ahala funtzionatzeari utziko dio, konpondu gabeko segurtasun arazoak izango ditu, etab.

## Dokumentazioa eta baliabideak

- Erabiltzaileen dokumentazio ofiziala: <https://docs.mau.fi/bridges/python/facebook/index.html>
- Administratzaileen dokumentazio ofiziala: <https://docs.mau.fi/bridges/python/setup/index.html?bridge=facebook>
- Jatorrizko aplikazioaren kode-gordailua: <https://github.com/mautrix/facebook>
- YunoHost Denda: <https://apps.yunohost.org/app/mautrix_facebook>
- Eman errore baten berri: <https://github.com/YunoHost-Apps/mautrix_facebook_ynh/issues>

## Garatzaileentzako informazioa

Bidali `pull request`a [`testing` abarrera](https://github.com/YunoHost-Apps/mautrix_facebook_ynh/tree/testing).

`testing` abarra probatzeko, ondorengoa egin:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/mautrix_facebook_ynh/tree/testing --debug
edo
sudo yunohost app upgrade mautrix_facebook -u https://github.com/YunoHost-Apps/mautrix_facebook_ynh/tree/testing --debug
```

**Informazio gehiago aplikazioaren paketatzeari buruz:** <https://yunohost.org/packaging_apps>
