# RSS Anything

Uses [Diffbot's Extract API](https://www.diffbot.com/products/extract/) to transform lists of links on websites into an RSS feed.

## Build Locally

**Requirements**
 * Python 3+
 	* [virtualenv](https://virtualenv.pypa.io/en/latest/) recommended but not necessary.
 * npm

```sh
pip install -r requirements.txt
npm install -D tailwindcss@3
npx tailwindcss -i ./static/custom.css -o ./static/main.css
flask run
```

## Build with Docker

Docker build for [https://rss.diffbot.com](https://rss.diffbot.com). Includes a redis cache for aggressive RSS readers.

```sh
docker compose up --build
```