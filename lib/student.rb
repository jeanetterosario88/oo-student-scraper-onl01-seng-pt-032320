require 'pry'
class Student

  attr_accessor :name, :location, :twitter, :linkedin, :github, :blog, :profile_quote, :bio, :profile_url

  @@all = []

  def initialize(student_hash)
    student_hash.each do |ky, valu| 
      self.send(("#{ky}="), valu)
    end
    @@all << self
  end

  def self.create_from_collection(allstudenthashsarray)
    allstudenthashsarray.each do |student_hash|
      self.new(student_hash)
    end
  end

  def add_student_attributes(attributes_hash)
    attributes_hash.each do |ky, valu|
      self.send(("#{ky}="), valu)
    end
    self
  end

  def self.all
    @@all
  end
end