#!/bin/bash

echo Testing sudo
sudo echo OK
echo
echo Installing Insomnia 2021.5.3
echo
curl -sSL 'https://github.com/Kong/insomnia/releases/download/core@2021.5.3/Insomnia.Core-2021.5.3.deb' -H 'authority: github.com' -H 'upgrade-insecure-requests: 1' -H 'user-agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36' -H 'accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9' -H 'sec-gpc: 1' -H 'sec-fetch-site: same-origin' -H 'sec-fetch-mode: navigate' -H 'sec-fetch-user: ?1' -H 'sec-fetch-dest: document' -H 'referer: https://github.com/Kong/insomnia/releases/tag/core@2021.5.3' -H 'accept-language: en-US,en;q=0.9,pt-BR;q=0.8,pt;q=0.7' -H 'cookie: _octo=GH1.1.423413128.1633048998; _device_id=fec678d5cb2ee745eb2eceea37385c79; user_session=mMG-oFRpQdhUWRQEfA0DG27x6sp8r_QI130JLT9GCbEPpWX1; __Host-user_session_same_site=mMG-oFRpQdhUWRQEfA0DG27x6sp8r_QI130JLT9GCbEPpWX1; logged_in=yes; dotcom_user=brtmvdl; has_recent_activity=1; color_mode=%7B%22color_mode%22%3A%22dark%22%2C%22light_theme%22%3A%7B%22name%22%3A%22light%22%2C%22color_mode%22%3A%22light%22%7D%2C%22dark_theme%22%3A%7B%22name%22%3A%22dark%22%2C%22color_mode%22%3A%22dark%22%7D%7D; tz=America%2FSao_Paulo; _gh_sess=ShRuN2EkofSjZkbo7HDco1sSJtsjQ3xciorXeyUT36EgC2%2FJkPOgNYcnQTeSKDL5OSgZbw9mXi%2BWru4zl7HUL5u1vwWBMww70Vce3cUKwnFInlBKq%2Fe5hf7fOxVCTYWnF8goafIMd0Eajo8L%2FVcV%2FeW03BDS2F43aL35wv5FnjM%3D--NeTlvf%2BZ9HjJv0wj--s%2FPfnGcOR6gqPUclR%2FOqJg%3D%3D' --compressed --output ./insomnia.deb
sudo apt update && sudo apt install -y ./insomnia.deb
rm -rf ./insomnia.deb
echo
echo Verifying installation
echo
[[ $(command -v insomnia) ]] && echo Insomnia Installed
