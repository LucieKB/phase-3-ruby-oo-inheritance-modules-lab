require_relative "./concerns/memorable"
require_relative "./concerns/findable"
require_relative "./concerns/paramable"

class Song
  
  attr_accessor :name
  attr_reader :artist

  extend Memorable::ClassMethods
  extend Findable::ClassMethods
  include Paramable::InstanceMethods
  include Memorable::InstanceMethods

  @@songs = []

  def initialize
    super
  end

  def self.all
    @@songs
  end

  def artist=(artist)
    @artist = artist
  end

end
