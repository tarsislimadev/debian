
DIR=$HOME/.dotnet
wget https://download.visualstudio.microsoft.com/download/pr/5972698f-ba44-4664-9c50-bdc69ca70fb7/1cf7d94425d8dd4d5789dfa978d61475/dotnet-sdk-5.0.401-linux-x64.tar.gz
mkdir -p $DIR
tar -xf dotnet-sdk-5.0.401-linux-x64.tar.gz -C $DIR

# $EXP_PATH="export PATH=${HOME}/.dotnet:${PATH}"
echo "export PATH=${HOME}/.dotnet:${PATH}" >> $HOME/.bashrc

rm -rf dotnet-sdk-5.0.401-linux-x64.tar.gz
