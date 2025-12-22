<!-- run application on you local machine -->
Part 2 (Optional)
Video link:📎 https://drive.google.com/file/d/110MGbytl7zUgGaFMGfxQqYONtKTuHCAO/view?usp=sharing
<!-- change directory to beeyon-frontend -->
cd beeyond-frontend

<!-- run this build command to create image -->
docker buildx build  --build-arg REACT_APP_SERVER_URL=http://localhost:5000 -t beeyond-frontend --no-cache .

<!-- run this command to run fronted application -->
docker run -d --name frontend --network beeyond_devcontainer_beeyond-network -p 3000:3000   beeyond-frontend 
<!-- change directory to beeyond-backed -->
cd ..

cd beeyond-backend

<!-- build image -->
docker buildx build -t beeyond-backend --no-cache .

<!-- run container -->
docker run -d --name backend --network beeyond_devcontainer_beeyond-network -p 5000:5000 -e PORT='5000' -e DATABASE_CONNECTION_STRING=mongodb://admin:admin@mongo:27017/abhishek?authSource=admin -e FRONTEND_URL=http://localhost:3000 -e JWT_SECRET=super-secret-key-123   beeyond-backend 

<!-- Alternative option -->
💻 Run Application on Local Machine (Without DevContainer)

video link: 📎 https://drive.google.com/file/d/1pL-SnXvZHr3vHz9Cx4hqBAjWrv9Xo6XZ/view?usp=sharing
<!-- move root or parent directory -->
<!-- run command -->
docker compose -f compose.yaml up --build --force-recreate -d
<!-- check ci pipeline--> 