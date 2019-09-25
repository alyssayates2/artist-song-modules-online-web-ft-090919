require_relative '../lib/concerns/paramable'
require_relative '../lib/concerns/memorable'

class Song

  extend Paramable 
  extend Memorable

  attr_reader :artist

  @@songs = []

  def initialize
    @@songs << self
    # @name = name
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
