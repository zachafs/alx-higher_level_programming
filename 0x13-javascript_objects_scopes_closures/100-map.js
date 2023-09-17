#!/usr/bin/node
const list = require('./100-data').list;

if (Array.isArray(list)) {
  const mappedList = list.map((value, index) => value * index);
  console.log(list);
  console.log(mappedList);
} else {
  console.log('list is not an array');
}
