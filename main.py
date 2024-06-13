from source import socketIo, app
from source.main.controller import *


if __name__ == "__main__":    
    app.run(host="0.0.0.0",port=2345)
    #  ssl_context=('/etc/ssl/iudi_online.crt','/etc/ssl/iudi.online.key'))
