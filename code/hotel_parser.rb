require 'yaml'
# This module provides a Ruby interface for data serialization in YAML format

class HotelParser

  # Implement a method to parse the contents of a YAML file and return
  # an object whose values are accessible using the [] operator or method calls
  #
  # Note: Use of the YAML library is fine (encouraged, even) but please don't
  #       use any third-party gems that enable the required functionality.


  def self.parse(filename)
    # load filename using YAML class load_file taking file path
    hash = YAML.load_file(filename)
    # create hotel struct
    hotel_struct = Struct.new(:hotels)
    # call traverse_hotels method create struct objects and save them in hotel_object
    hotel_obj = hotel_struct.new(traverse_hotels(hash["hotels"]))
    return hotel_obj
  end

  #helper method to traverse and create structs objects for hotels
  def self.traverse_hotels(h)
    hotels = []
    h.each do |val|
      hotel_struct = Struct.new(:name,:rooms)
      new_hotel = hotel_struct.new(val['name'],traverse_rooms(val['rooms']))
      hotels.push(new_hotel)
    end
    return hotels
  end

  #helper method to traverse and create struct objects for rooms
  def self.traverse_rooms(r)
    rooms = []
    r.each do |r|
      room_struct = Struct.new(:name,:amenities)
      new_room = room_struct.new(r['name'],r['amenities'])
      rooms.push(new_room)
    end
    return rooms
  end
end

puts HotelParser.parse(File.expand_path('../data/hotel.yaml'))
