# BACKEND-NEWS API

This is a Rails 5 API meant for use with a IOS Swift App [CatchUp](https://github.com/DStorck/SwiftNewsApp).
Ruby Version 2.3.0

Currently using [Guardian API](http://open-platform.theguardian.com/) to gather articles.  You will need to get an API Developer Key in order to use this site.

## Installation

1. 'git clone git@github.com:DStorck/backend-news-API.git'
2. 'cd backend-news-API'
3. 'bundle install'
4. get Guardian API key and put in .env as GUARDIAN_API_KEY


## Search by keyword
Search requests are GET requests to the `/:keyword/:page` endpoint with the
following parameters(:page is optional)

| parameter   | data type | description |
|-------------|----------:|-------------|
| `keyword`   | string    | Search keyword |
| `page`      | integer   | Page of data returned. First response is page 1 by default. |

## Search by section
Section requests are GET requests to the `/section/:topic/:page` endpoint with the
following parameters:

| parameter   | data type | description |
|-------------|----------:|-------------|
| `topic`     | string    | Section of newspaper to search. Endpoints can be found on Guardian API website. |
| `page`      | integer   | Page of data returned. First response is page 1 by default. |






















* How to run the test suite
