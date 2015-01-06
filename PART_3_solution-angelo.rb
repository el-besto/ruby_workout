# Intro Classes
## Exercises Using Classes

# Create a class called `superHero` that takes a `firstName` and `lastName`. Give each superHero a `superPunch` method that returns `"WHAM!"`.

  class SuperHero
    attr_accessor :first_name, :last_name

    def initialize(first_name, last_name)
      @first_name = first_name
      @last_name = last_name
    end

    def superPunch
      puts "WHAM!"
    end

  end
  
  ######
  # hard-coded values for testing
  ######
  # create a new object instance
    angelo = SuperHero.new("Angelo", "Cisneros")
  # ensure object instance created
    puts angelo
  # test first_name
    puts angelo.first_name
  # test last_name
    puts angelo.last_name
  # test superPunch method
    angelo.superPunch


# Create a class called `robot` that takes `name` and `purpose`. Give each robot a `greet` method that returns `"beep boop"`

  class Robot
    attr_accessor :name, :purpose
    
    def initialize(name, purpose)
      @name = name
      @purpose = purpose
    end

    def greet
      puts "beep boop"
    end
  end

  ######
  # hard-coded values for testing
  ######
  # create a new object instance
    rosie = Robot.new("Rosie", "Take care of Jetsons")
  # test name
    puts rosie.name
  # test greet method
    rosie.greet

# Make a `Starship` class that takes a `model` and `ownerName`. 
  #Give your `Starship` a `setTopSpeed` method and a `getTopSpeedMethod` that let you change and read the `topSpeed`. *Assume `topSpeed` is just a number.*
  # Give your `Starship` an `accelerateTo` method that sets `currentSpeed` to some number, unless that number is greater than its `topSpeed`.
  class Starship
    attr_accessor :top_speed, :current_speed
    attr_reader :model, :owner_name

    def initialize(model, owner_name)
      @model = model
      @owner_name = owner_name
    end

    # def getTopSpeed
    #   @top_speed
    # end

    def set_top_speed(top_speed)
      @top_speed = top_speed.to_i
    end

    def accelerate_to(speed)
      if speed.to_i > self.top_speed.to_i
        @current_speed = self.top_speed.to_i
      else
        @current_speed = speed.to_i
      end
    end
  end

  enterprise = Starship.new('enterprise', 'picard')
  puts "an object exists, see?(the UID) #{enterprise}"

  # test set_top_speed method
  enterprise.set_top_speed(1000)
  puts "top speed of #{enterprise.model} is #{enterprise.top_speed}"

  # test accelerate_to (normal case)
  enterprise.accelerate_to(500)
  puts "current speed of #{enterprise.model} is #{enterprise.current_speed}"

  # test accelerate_to (edge-case, over max speed, adjusts accel to max speed)
  enterprise.accelerate_to(5000)
  puts "current speed of #{enterprise.model} is #{enterprise.current_speed}"

  # test readability of model and owner_name
  puts "The owner of the #{enterprise.model} is #{enterprise.owner_name}"



# Make a `Dice` class that takes a `numberOfSides`. Add a method called `getSide` or `roll` that randomly returns a number from `1` up to the `numberOfSides`.
  #Modify your `getSide` method to record the returned side in a `lastRoll` instance variable. 
  ### HELP NEED TO FINISH
  
  class Dice
    attr_reader :last_roll

    def initialize(number_of_sides)
      @number_of_sides = number_of_sides
    end

    def roll
      roll = rand(1..@number_of_sides)
      @last_roll = roll
    end
  end

  six_sided = Dice.new(6)
  puts "An object was created, see? #{six_sided}"
  puts "test roll method: #{six_sided.roll}"
  puts "test 'last_roll' reader #{six_sided.last_roll}"
  puts "test roll method 2: #{six_sided.roll}"
  puts "test 'last_roll2' reader #{six_sided.last_roll}"