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
  `URL` daichi-curry.asigar.com
- Web
  Nginx. Flutter web.
  `URL` localhost:3333
- API
  Go + Gin.
  `URL` localhost:3000

### URL scheme
daichi-curry.asigar.com -> localhost:3333/merchant/uNIBNya8QiyaeiBSAdh0FxcpNyd8/store/Tlii3joayARMatbIYzsU -> localhost:3000/merchant/uNIBNya8QiyaeiBSAdh0FxcpNyd8/store/Tlii3joayARMatbIYzsU