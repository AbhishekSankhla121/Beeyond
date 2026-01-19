<!-- run application on you local machine -->
Part 2 (Optional)
Video link:📎 https://youtu.be/h2iIpnNMxBY
<!-- change directory to beeyon-frontend -->
```bash
cd beeyond-frontend

```
<!-- run this build command to create image -->
```bash
docker buildx build  --build-arg REACT_APP_SERVER_URL=http://localhost:5000 -t beeyond-frontend --no-cache .
```
<!-- run this command to run fronted application -->
```bash
docker run -d --name frontend --network beeyond_devcontainer_beeyond-network -p 3000:3000   beeyond-frontend 
```
<!-- change directory to beeyond-backed -->
```bash
cd ..
cd beeyond-backend
```
<!-- build image -->
```bash
docker buildx build -t beeyond-backend --no-cache .
```
<!-- run container -->
```bash
docker run -d --name backend --network beeyond_devcontainer_beeyond-network -p 5000:5000 -e PORT='5000' -e DATABASE_CONNECTION_STRING=mongodb://admin:admin@mongo:27017/abhishek?authSource=admin -e FRONTEND_URL=http://localhost:3000 -e JWT_SECRET=super-secret-key-123   beeyond-backend 
```
<!-- Alternative option -->
💻 Run Application on Local Machine (Without DevContainer)

video link: 📎  https://youtu.be/s82qhh-ynIk
<!-- move root or parent directory -->
<!-- run command -->
docker compose -f compose.yaml up --build --force-recreate -d
<!-- check ci pipeline--> 


<!-- kubernetes push frontend image with minor vaalue changes -->
```bash
docker build \
  --build-arg REACT_APP_SERVER_URL=http://backend.beeyond.local:30856 \
  -t ks-beeyond-frontend \
  --no-cache \
  .
```

```bash
docker tag ks-beeyond-frontend:latest abhisheksankhla121/ks-beeyond-frontend:latest
docker push abhisheksankhla121/ks-beeyond-frontend:latest
```

