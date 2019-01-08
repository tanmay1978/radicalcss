@set http_proxy=proxy.cognizant.com
@set https_proxy=proxy.cognizant.com
@set no_proxy=cognizant.com

@npm config set proxy http://534003:T@nmay@1323@proxy.cognizant.com:6050
@npm config set https-proxy https://proxy.cognizant.com:6050
@npm config set strict-ssl false

@git config --global http.proxy http://proxy.cognizant.com:6050
@git config --global https.proxy https://proxy.cognizant.com:6050
@git config --global http.sslVerify false
@git config --global url."https://github".insteadOf git://github

@npm config set registry http://registry.npmjs.org