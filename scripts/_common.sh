#!/bin/bash

#=================================================
# COMMON VARIABLES
#=================================================

#=================================================
# PERSONAL HELPERS
#=================================================

_mautrix_facebook_build_venv() {
    python3 -m venv "$install_dir/venv"
    "$install_dir/venv/bin/pip3" install --upgrade pip setuptools wheel
    "$install_dir/venv/bin/pip3" install --upgrade "$install_dir/src/mautrix-facebook.tar.gz"
}

_mautrix_facebook_register_synapse() {
    "$install_dir/venv/bin/python3" -m mautrix_facebook -g -c "$install_dir/config.yaml" -r "$synapse_registration_path/$app.yaml"
    "/opt/yunohost/matrix-$synapse_instance/update_synapse_for_appservice.sh" || ynh_die --message="Synapse can't restart with the appservice configuration"

    chown -R "$app:$app" "$install_dir"
    ynh_store_file_checksum --file="$synapse_registration_path/$app.yaml"
    ynh_store_file_checksum --file="$install_dir/config.yaml"
}

#=================================================
# EXPERIMENTAL HELPERS
#=================================================

#=================================================
# FUTURE OFFICIAL HELPERS
#=================================================
