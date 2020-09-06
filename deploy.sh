# build our heroku-ready local Docker image
docker build -t web-face -f Dockerfile .

# push your directory container for the web process to heroku
heroku container:push web -a web-face

# promote the web process with your container
heroku container:release web -a web-face

# run migrations
heroku run  python manage.py migrate -a web-face
