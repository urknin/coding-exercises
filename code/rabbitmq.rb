require 'bunny'

class Rabbitmq
  # This exercise is to build a method that implement Publish/Subscribe model using RabbitMQ (Messaging Service) and Bunny gem (RabbitMQ Client).
  #
  # The test case will provide a guest name to your method. The method should subscribe to a queue, publish the provided guest to the queue, and then
  # return a string with guest's name. (e.g.: "Received Name's Reservation")
  #
  # The test is pretty basic, but we are looking to see a working Pub/Sub implementation using RabbitMQ.
  #
  # Source (https://www.rabbitmq.com/getstarted.html, http://rubybunny.info/articles/getting_started.html)
  #
  def self.reservation_pub_sub(guest)
  end
end
