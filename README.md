[![Build Status](https://travis-ci.com/github/rafavilvert/sherlock.png)](https://travis-ci.com/github/rafavilvert/sherlock)
[![Coverage Status](https://coveralls.io/repos/rafavilvert/sherlock/badge.png?branch=master)](https://coveralls.io/r/rafavilvert/sherlock?branch=master)
[![Total Downloads](https://poser.pugx.org/rafavilvert/sherlock/d/total.png)](https://packagist.org/packages/rafavilvert/sherlock)
[![Latest Stable Version](https://poser.pugx.org/rafavilvert/sherlock/v/stable.png)](https://packagist.org/packages/rafavilvert/sherlock)

# Sherlock

This application has the objetive to help you make test in your infrastructure and it can be used to demonstrate test in diferent versions.

### Requirements 
* Docker 
* Docker-compose

### How to run
* Build the images: 
```
docker-compose build
```
* Running aplication: 
```
docker-compose up
```

You can use this application to test the following test cases

* Count total of request

* Test intermitent error

* Test slow request using sleep

* Get all headers from request

### Using Count total request
Each request on URL http://localhost:3000/count return total sum requests 

**EG using curl:**

```
curl -X GET http://localhost:3000/count 
```

### Using intermitent internal server error (500)
First of all you need to use this feature is set the environment variables at [docker-compose.yaml](https://github.com/rafavilvert/sherlock/blob/master/docker-compose.yml#L4)

- ERROR_FLAG: This variable enable or disable intermitent errors, allow values: enable/disable
- ERROR_OFTEN: This variable will indicate how oftem your request will return error (500).

### Slow request with sleep
Here you can determinate the time in seconds that your application will wait for each request made in your application trought http://localhost:3000/sleep/

**EG:**
```
http://localhost:3000/sleep/10
```
### Get all headers from request
You can verify the headers data getting from request trought ```http://localhost:3000/header```