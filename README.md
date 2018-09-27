StayNTouch Coding Exercises
=============================

To better assess a candidate's development skills, we would like to provide the
following exercises. You have as much time as you'd like (though we ask that you
not spend more than a few hours).

Submission Instructions
-----------------------

1. Complete the exercises as described below.
  - Use separate commits for each solution and put an explanation of your
    solution in the commit message. Don't squash your commits.
  - Your code should be clear and well-documented.
2. When you're done, use `git bundle` to bundle up the repo and send it back to
`jongmyung@stayntouch.com`.


Exercises
=========

*Note: Feel free to use Google to look up syntax, method definitions, etc. but
please don't just look up the answers.*

Fibonacci Sequence
------------------

Implement a method that will calculate the Nth number of the Fibonacci sequence
(http://en.wikipedia.org/wiki/Fibonacci_number).

Tests have been pre-written using rspec at `/spec/fibonacci_spec.rb`.

Yaml Parsing
------------

Given a Yaml file of the format found in data/hotel.yaml parse the file so that
we can access it in Ruby.

Your parsing code should return an object that allows you to access attributes
in two ways:

1. Using the `[]` operator:
  ```
  data['hotels'].last['rooms'].first['amenities'].last => "Pool"
  ```

2. Using method calls:
  ```
  data.genres.hotels.last.rooms.first.amenities.last => "Pool"
  ```

Tests have been pre-written using rspec in `/spec/hotel_parser_spec.rb`.

RabbitMQ PubSub
---------------

Implement a method that simple PubSub model using RabbitMQ and Bunny gem
message publishes to queue and subscribe it from queue and return the value as expected from rspec
(https://www.rabbitmq.com/getstarted.html, http://rubybunny.info/articles/getting_started.html)

Tests have been pre-written using rspec in `/spec/rabbitmq_spec.rb`.