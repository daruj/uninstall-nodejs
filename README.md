# uninstall-nodejs
Script to uninstall NodeJs in Mac OS
Everything Node related (ie NPM n, nvm, yarn etc) will be nuked.


1) Open a terminal and clone this repo: git clone https://github.com/lebsral/uninstall-nodejs.git
2) Open the folder (cd uninstall-nodejs), and change the file permissions:
```
 sudo chmod +x ./uninstall-node.sh
```
```
 node -v
 which node
 ```
3) Run the script: first withot then with sudo
```
sudo ./uninstall-node.sh
```
 . Press enter/return when the following message is displayed: 'Press Control-C to quit now.'

 ```
  node -v
  which node
  ```

4) Reinstall with n
```
curl -L https://git.io/n-install | bash
```
5) get yarn
```
brew update
brew install yarn
```



Url to my site: http://video-programazion.blogspot.com.ar <br />
Video tutorial url: https://www.youtube.com/watch?v=dMlhqLPvB74


**************

Código para desinstalar NodeJs en la Mac OS

```
1) Abrir una terminal y clonarse el repositorio: git clone git@github.com:daruj/uninstall-nodejs.git <br />
2) Abrir la carpeta descargada (cd uninstall-nodejs) y darle al archivo permisos de ejecución: sudo chmod +x ./uninstall-node.sh <br />
3) Correr el script: sudo ./uninstall-node.sh. Cuando aparezca el siguiente mensaje 'Press Control-C to quit now.' presionar Enter!
```
Url de mi sitio: http://video-programazion.blogspot.com.ar/ <br />
Video Tutorial: https://www.youtube.com/watch?v=dMlhqLPvB74

Espero que les haya servido!



TODO:  currently the parts commented out require sudo.  The brew parts at the top can not be done with sudo.  Either a 'switch' needs to be installed, or you have to run it twice, commenting out the different sections each time.
