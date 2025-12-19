cd beeyond-frontend

docker build -t beeyond-frontend --no-cache .
# docker run -p 8000:8000 --network beeyond-network beeyond-frontend