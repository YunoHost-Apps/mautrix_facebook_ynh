## List of known public services

* Ask on one of the following rooms: #mautrix_yunohost:matrix.fdn.fr or #facebook:maunium.net

## Bridging usage

**Note that several Facebook and Matrix users can be bridged, each Facebook account has its own bot administration room. If they are in a same Facebook group, only one matrix room will be created.**

### Bridge a Facebook user and a Matrix user

* First your Matrix user or Synapse Server has to be authorized in the Configuration of the bridge (see below)
* Then, invite the bot (default @facebookbot:yoursynapse.domain)
  * If the Bot does bot accept, see the [troubleshooting page](https://docs.mau.fi/bridges/general/troubleshooting.html)
* Type ``!fb login <email> <password>``, where ``<email>`` and ``<password>`` are your Facebook email and password, e.g. ``!fb login gafam@evil.com facebookpwd``
* If you have 2FA enabled, the bot will ask you to send the 2FA token.
* By defaults, only conversations with very recent messages will be bridged
* Accept invitations to the bridged chat rooms
* Send ``!fb help`` to the bot in this new Mautrix-Facebook bot administration room to know how to control the bot.
See also [upstream wiki Authentication page](https://docs.mau.fi/bridges/python/facebook/authentication.html)

### Double puppeting

* First login as described in the previous section
* Connect to the Matrix-Synapse Server to get an access token, for example with the command ``curl -XPOST -d '{"type":"m.login.password","identifier":{"type": "m.id.user", "user": "matrixusername"},"password":"matrixpassword","initial_device_display_name":"mautrix-facebook"}' https://yoursynapse.domain/_matrix/client/r0/login``
* Send ``login-matrix <access token>``, where ``<access token>`` is the token received from the Server.
* After logging in, the default Matrix puppet of your Facebook account should leave rooms and your account should join all rooms the puppet was in automatically.

### Relaybot: Bridge a group for several Matrix and several Facebook users to chat together

Not yet available

## Configuration of the bridge

The bridge is [roughly configured at installation](https://github.com/YunoHost-Apps/mautrix_facebook_ynh/blob/master/conf/config.yaml), e.g. allowed admin and user of the bot. Finer configuration can be done by modifying the
following configuration file with SSH:
```/opt/yunohost/mautrix_facebook/config.yaml```
and then restarting the mautrix_facebook service.

## YunoHost specific features

### Multi-user support

* Bot users are not related to Yunohost users. Any Matrix account or Synapse server autorized in the configuration of the bridge can invite/use the bot.
* The Facebook bot is a local Matrix-Synapse user, but accessible through federation (synapse public or private).
* Several Facebook and Matrix users can be bridged with one bridge, each user has its own bot administration room.
* If several bot users are in a same Facebook group, only one Matrix room will be created by the bridge.
* See <https://github.com/YunoHost-Apps/synapse_ynh#multi-users-support>

### Multi-instance support

* Multi-instance installation should work. Several bridge instances could be installed for one Matrix-Synapse instance so that one Matrix user can bridge several Facebook accounts.
* Several bridge instances could be installed for each Matrix-Synapse instance to benefit from it. But one bridge can be used by users from several Matrix-Synapse instances.

## Limitations

* It looks like media are not bridged.

## Additional information

* Other info you would like to add about this app.

**More info on the documentation page:**  
<https://docs.mau.fi/bridges/python/facebook/index.html>
