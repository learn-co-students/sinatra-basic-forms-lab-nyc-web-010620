class Puppy 

    attr_reader :breed
    attr_accessor :name, :age

    @@all = []

    def initialize(name,breed,age)
        @name = name 
        @breed = breed
        @age = age 
        @@all.push(self)
    end 

    def self.all
        @@all 
    end 

end 