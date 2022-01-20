# store_web

A new Flutter project.

## Getting Started
### ⚙️ Require
- 🐳 docker 20.10.10
- flutter stable, 2.8.1
- Dart 2.14.3

### Build web

```
flutter build web --release # Created build/web
```

### Run docker

```
docker-compose --build && docker-compose up -d
```

## System design
### Docker Container and Role
- Proxy
  Nginx. Reverse proxy.
  `URL` localhost
- Web
  Nginx. Flutter web.
  `URL` localhost:3333
- API
  Go + Gin.
  `URL` localhost:3000

### URL scheme
localhost -> localhost:3333/merchant/uNIBNya8QiyaeiBSAdh0FxcpNyd8/store/Tlii3joayARMatbIYzsU -> localhost:3000/merchant/uNIBNya8QiyaeiBSAdh0FxcpNyd8/store/Tlii3joayARMatbIYzsU

### 🥅 What is Goal?
1. When access http://localhost, it shows localhost:3333/merchant/uNIBNya8QiyaeiBSAdh0FxcpNyd8/store/Tlii3joayARMatbIYzsU without redirect.
2. When access http://localhost/store, it shows localhost:3333/merchant/uNIBNya8QiyaeiBSAdh0FxcpNyd8/store/Tlii3joayARMatbIYzsU/store without redirect.

### Current behavior
👍 Works good.  
`proxy.nginx.conf`
```
proxy_pass                                http://store_web/; 
```
When access http://localhost, it shows localhost:3333.
When access http://localhost/merchant/uNIBNya8QiyaeiBSAdh0FxcpNyd8/store/Tlii3joayARMatbIYzsU, it shows http://localhost:3333/merchant/uNIBNya8QiyaeiBSAdh0FxcpNyd8/store/Tlii3joayARMatbIYzsU.


👎 Works bad.  
I changed proxy_pass http://store_web/ to http://store_web/merchant/uNIBNya8QiyaeiBSAdh0FxcpNyd8/store/Tlii3joayARMatbIYzsU.  
`proxy.nginx.conf`
```
proxy_pass                                http://store_web/merchant/uNIBNya8QiyaeiBSAdh0FxcpNyd8/store/Tlii3joayARMatbIYzsU/; 
```
When access http://localhost, it shows blank page.
