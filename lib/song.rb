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
    created = self.new
    created.name = name
    @@all << created
    created
  end

  def self.find_by_name(name)
    self.all.detect{|p| p.name == name}
  end

  def self.find_or_create_by_name(name)
    if self.find_by_name(name)
      self.find_by_name(name)
    else self.create_by_name(name)
   end
 end

   def self.alphabetical
     @@all.name.sort
   end

  end


end
