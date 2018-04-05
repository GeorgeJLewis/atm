#person.rb

class Person
  attr_accessor :name

  def initialize
    set_name(attrs[:name])
  end
