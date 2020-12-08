#!/bin/bash
before_build(){
  ./cc-test-reporter before-build
}

after_build(){
  ./cc-test-reporter after-build --exit-code $TRAVIS_TEST_RESULT
}

pre_set(){
  if [ "X$CC_TEST_REPORTER_ID" == "X" ] ; then 
    echo "CC_TEST_REPORTER_ID variable is nil"
    exit 1
  else
    curl -L https://codeclimate.com/downloads/test-reporter/test-reporter-latest-linux-amd64 > ./cc-test-reporter
    chmod +x ./cc-test-reporter  
  fi
}

run_spec(){
  docker run -it rafavilvert/sherlock:${TRAVIS_JOB_ID} rspec
}

pre_set 
before_build
run_spec
after_build