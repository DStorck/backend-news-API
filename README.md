# BACKEND-NEWS API

This is a Rails 5 API meant for use with a IOS Swift App [CatchUp](https://github.com/DStorck/SwiftNewsApp).
Ruby Version 2.3.0

Currently using [Guardian API](http://open-platform.theguardian.com/) to gather articles.  You will need to get an API Developer Key in order to use this site.

## Installation

1. `git clone git@github.com:DStorck/backend-news-API.git`
2. `cd backend-news-API`
3. `bundle install`
4. create Guardian API key and put in .env as GUARDIAN_API_KEY


## Search by keyword
Search requests are GET requests to the `/:keyword/:page` endpoint with the
following parameters(:page is optional):

| parameter   | data type | description |
|-------------|----------:|-------------|
| `keyword`   | string    | Search by keyword |
| `page`      | integer   | Page of data returned. First response is page 1 by default. |

## Search by section
Section requests are GET requests to the `/section/:topic/:page` endpoint with the
following parameters(:page is optional):

| parameter   | data type | description |
|-------------|----------:|-------------|
| `topic`     | string    | Section of newspaper to search. Endpoints can be found on Guardian API website. |
| `page`      | integer   | Page of data returned. First response is page 1 by default. |

###Example Request and Reponse
### Simple search query
Request URL:

GET:
```
/soccer
```

Response data:

```json
[
  {
  "id": 2412,
  "title": "Seattle and USA striker Clint Dempsey sidelined with irregular heartbeat",
  "url": "https://www.theguardian.com/football/2016/aug/26/clint-dempsey-seattle-usa-sidelined-world-cup-mls-irregular-heartbeat",
  "created_at": "2016-08-26T22:03:01.454Z",
  "updated_at": "2016-08-26T22:03:01.454Z",
  "guardian_id": "football/2016/aug/26/clint-dempsey-seattle-usa-sidelined-world-cup-mls-irregular-heartbeat"
  },
  {
  "id": 2413,
  "title": "A strict diet of pie in the sky",
  "url": "https://www.theguardian.com/football/2016/aug/26/a-strict-diet-of-pie-in-the-sky",
  "created_at": "2016-08-26T22:03:01.458Z",
  "updated_at": "2016-08-26T22:03:01.458Z",
  "guardian_id": "football/2016/aug/26/a-strict-diet-of-pie-in-the-sky"
  },
  {
  "id": 2414,
  "title": "Hope Solo's punishment shows that women are judged more harshly | Shireen Ahmed",
  "url": "https://www.theguardian.com/football/2016/aug/26/hope-solo-suspension-female-athletes-double-standards",
  "created_at": "2016-08-26T22:03:01.461Z",
  "updated_at": "2016-08-26T22:03:01.461Z",
  "guardian_id": "football/2016/aug/26/hope-solo-suspension-female-athletes-double-standards"
  }
]
```

### Testing
Run all tests with `rake test`
