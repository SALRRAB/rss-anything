# base image
FROM nikolaik/python-nodejs:latest

WORKDIR /app
COPY ./ /app

# install requirements
RUN pip install -r requirements.txt
RUN npm install -D tailwindcss@3
RUN npx tailwindcss -i ./static/custom.css -o ./static/main.css

# start app
EXPOSE 8000
CMD ["gunicorn", "app:app", "-b", "0.0.0.0:8000", "-w", "4", "--threads", "10"]