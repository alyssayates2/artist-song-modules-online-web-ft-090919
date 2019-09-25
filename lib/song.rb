require_relative '../lib/concerns/memorable'
require_relative '../lib/concerns/paramable'

class Song

  extend Memorable
  include Paramble


  attr_reader :artist

  @@songs = []

  def initialize
    @name = name
    @@songs << self
  end

  def self.find_by_name(name)
    @@songs.detect{|a| a.name == name}
  end

  def self.all
    @@songs
  end

  def artist=(artist)
    @artist = artist
  end

  # def to_param
  #   name.downcase.gsub(' ', '-')
  # end
end
