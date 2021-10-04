#!/bin/bash

echo Testing sudo
sudo echo OK
echo
echo Installing Insomnia 2021.5.3
echo
curl -sSL 'https://github.com/Kong/insomnia/releases/download/core@2021.5.3/Insomnia.Core-2021.5.3.deb' -H 'authority: github.com' -H 'upgrade-insecure-requests: 1' -H 'user-agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.152 Safari/537.36' -H 'accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9' -H 'sec-gpc: 1' -H 'sec-fetch-site: cross-site' -H 'sec-fetch-mode: navigate' -H 'sec-fetch-user: ?1' -H 'sec-fetch-dest: document' -H 'referer: https://insomnia.rest/' -H 'accept-language: en-US,en;q=0.9,pt-BR;q=0.8,pt;q=0.7' -H 'cookie: _octo=GH1.1.272534334.1613002356; _device_id=21a604d5b19401fe9c4b57acd0ef6f03; user_session=LRCAu90LnfCfIkhNffymnCm0Qvp-BtFLBMaXfdO8GZVa1nI2; logged_in=yes; dotcom_user=tmvdl; has_recent_activity=1; tz=America%2FSao_Paulo; _gh_sess=ZfKxYDfg7u8dd88DALFK93Zeb3RJWB3fzRxCN9TWzFhSHIu%2BcF%2Bp9IJ6wEjpYf4XiygkAMrdKqXfwD07JaxfntvbTyk%2FdlA8s%2BPVtErLJ6X8%2BlSxt1i5D3V2j1KWDYotEruuIB%2BKmZPW%2FwHbW7Kigm%2BecM5bOOsD3nlzRaOWeTXAiMxOo8wDdw%2BcI4WvS%2BmOwsKaaY0dzITnO79%2BKO96rQZZVDfzKUnBCuVNx%2BGsj67SSYDbHRmFF8HkbfsgTBpvB6uRxFbMSoHBZ0SD86w%2Folw1fb%2FdoWA0l6LQnruHe6hSgvWhbgELLceu2ccySpyx9%2BDLQr1g75tNgFy2DOFBvE4szD%2B4qAn0IJpwHAYa0cNLL6XguJrh9726tsttEkGxHW2i8eWDsKsSnMFS1toQw1Ss%2FUVaxxXQtnZkE8xtTSnp4vaVc%2B9%2B47IPepTARlcQH9HTQnIuVfgViw47Mc6QVwAvxAu9q8jHAy%2BSJjoxMTaGCD6cKH7LGMfMZWOQ6onGm4RFyLD%2F6F5z0AqmmKzz9jqBEm%2BCRHbnMLhWkJuwkhmekRghQEOdz%2F%2FyNnvO7IOHpQ992qZSHvVyz23UlQZ9v4ktR1y6ihskWHAmq58ISJLSD%2B5qdASaP%2FreQD6WwzpFR2dHqv81bYsbkk%2B3KeWPcq%2FBY32FeKMq8itx8T%2FUVKEGee4g%2FXCZMyaIbmvsQJlt5EIjdHrNR%2FntgPPUGiPIW6nyUfRKKTupqj5N1wTdBDSkj8yk7xv3YAP2qBY8k4kOlvIM%2FSq3ijhGcOp9HUKbuEHIrR626Y3gxvqyHafemvhd%2BT4hCZpbCyAqBpgAe9jK6ufcbxcXIfXOM5Jxkjs4WlNkUotV%2FFGmhQccFIwtb9hJ23rVLU5oulXQ3hxXGzmWu3c8pYspTlVMMuXcA3zxzC%2Fr6e53yOVt5Gbtn9M5ECf6Qio4JlSwAJgm0LMHRr8uSicpmC1mhkQRYqfh2FSw84Oiav7%2FDK32wXTmoQrPWy2lKGviQTQJ2i5iqcW2sQZwxvn9pDmhsGU%3D--ZEMxYap48shS4m4Q--6bzqclnFIkhbIbvZNqYSuQ%3D%3D' --compressed --output ./insomnia.deb
sudo apt update && sudo apt install -y ./insomnia.deb
rm -rf ./insomnia.deb
echo
echo Verifying installation
echo
[[ $(command -v insomnia) ]] && echo Insomnia Installed
