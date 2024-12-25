# [debian files]()

[![github/license](https://img.shields.io/github/license/brtmvdl/debian)](https://img.shields.io/github/license/brtmvdl/debian)  [![github/stars](https://img.shields.io/github/stars/brtmvdl/debian?style=social)](https://img.shields.io/github/stars/brtmvdl/antify?style=social)

## social & donate

[Donate](https://link.mercadopago.com.br/brtmvdl) - [Telegram](https://t.me/+KRmg5MlqgMk0MTg5) - [Discord](https://discord.gg/FpxetYYp)

## how to use

### installer script file

```sh
sudo touch /usr/bin/i
sudo chmod 777 /usr/bin/i
echo 'curl -sSL "https://raw.githubusercontent.com/tarsislimadev/debian/refs/heads/main/src/install/${1}.sh" | bash' > /usr/bin/i
```

### remover script file

```sh
sudo touch /usr/bin/r
sudo chmod 777 /usr/bin/r
echo 'curl -sSL "https://raw.githubusercontent.com/tarsislimadev/debian/refs/heads/main/src/remove/${1}.sh" | bash' > /usr/bin/r
```

### executable script file

```sh
sudo touch /usr/bin/b
sudo chmod 777 /usr/bin/b
echo 'curl -sSL "https://raw.githubusercontent.com/tarsislimadev/debian/refs/heads/main/src/bin/${1}.sh" | bash' > /usr/bin/b
```

### example: install "docker" using "i" executable file

```sh
i docker
```

### running directly on bash

```sh
curl -sSL "https://raw.githubusercontent.com/tarsislimadev/debian/refs/heads/main/src/install/nvm.sh" | bash
```

## license

[MIT](./LICENSE)
