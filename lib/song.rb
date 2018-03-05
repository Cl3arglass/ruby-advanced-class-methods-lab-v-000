class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create
    person = self.new
    @@all << person
    person
  end

  def self.new_by_name(name)
    named = self.new
    named.name = name
    named
  end

  def self.create_by_name(name)
  end

end
