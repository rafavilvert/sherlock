#!/bin/bash
before_build(){
  ./cc-test-reporter before-build
}

after_build(){
  ./cc-test-reporter after-build
}

pre_set(){
  env
  if [ "X$CC_TEST_REPORTER_ID" == "X" ] ; then 
    echo "CC_TEST_REPORTER_ID variable is nil"
    exit 1
  else
    curl -L https://codeclimate.com/downloads/test-reporter/test-reporter-latest-linux-amd64 > ./cc-test-reporter
    chmod +x ./cc-test-reporter  
  fi
}

run_spec(){
  bundle exec rspec ./spec
}

pre_set 
before_build
run_spec
after_build