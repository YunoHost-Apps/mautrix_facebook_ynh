<!--
注意：此 README 由 <https://github.com/YunoHost/apps/tree/master/tools/readme_generator> 自动生成
请勿手动编辑。
-->

# YunoHost 的 Matrix-Facebook bridge

[![集成程度](https://dash.yunohost.org/integration/mautrix_facebook.svg)](https://dash.yunohost.org/appci/app/mautrix_facebook) ![工作状态](https://ci-apps.yunohost.org/ci/badges/mautrix_facebook.status.svg) ![维护状态](https://ci-apps.yunohost.org/ci/badges/mautrix_facebook.maintain.svg)

[![使用 YunoHost 安装 Matrix-Facebook bridge](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=mautrix_facebook)

*[阅读此 README 的其它语言版本。](./ALL_README.md)*

> *通过此软件包，您可以在 YunoHost 服务器上快速、简单地安装 Matrix-Facebook bridge。*  
> *如果您还没有 YunoHost，请参阅[指南](https://yunohost.org/install)了解如何安装它。*

## 概况

A puppeting bridge between Matrix and Facebook packaged as a YunoHost service. Messages, notifications (and sometimes media) are bridged between a Facebook user and a Matrix user. Currently the Matrix user can NOT invite other Matrix user in a bridged Facebook room, so only someone with a Facebook account can participate to Facebook group conversations. The ["Mautrix-Facebook"](https://docs.mau.fi/bridges/python/facebook/index.html) bridge consists in a Synapse App Service and relies on postgresql (mysql also possible). Therefore, [Synapse for YunoHost](https://github.com/YunoHost-Apps/synapse_ynh) should be installed beforehand.


**分发版本：** 0.5.1~ynh1
## :red_circle: 负面特征

- **Upstream not maintained**: This software is not maintained anymore. Expect it to break down over time, be exposed to unfixed security breaches, etc.

## 文档与资源

- 官方用户文档： <https://docs.mau.fi/bridges/python/facebook/index.html>
- 官方管理文档： <https://docs.mau.fi/bridges/python/setup/index.html?bridge=facebook>
- 上游应用代码库： <https://github.com/mautrix/facebook>
- YunoHost 商店： <https://apps.yunohost.org/app/mautrix_facebook>
- 报告 bug： <https://github.com/YunoHost-Apps/mautrix_facebook_ynh/issues>

## 开发者信息

请向 [`testing` 分支](https://github.com/YunoHost-Apps/mautrix_facebook_ynh/tree/testing) 发送拉取请求。

如要尝试 `testing` 分支，请这样操作：

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/mautrix_facebook_ynh/tree/testing --debug
或
sudo yunohost app upgrade mautrix_facebook -u https://github.com/YunoHost-Apps/mautrix_facebook_ynh/tree/testing --debug
```

**有关应用打包的更多信息：** <https://yunohost.org/packaging_apps>
