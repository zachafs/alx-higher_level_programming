#!/usr/bin/node

// Import the callMeMoby function from the 101-call_me_moby module
const callMeMoby = require('./101-call_me_moby').callMeMoby;

// Use the callMeMoby function to execute a function 3 times
callMeMoby(3, function () {
  console.log('C is fun');
});
