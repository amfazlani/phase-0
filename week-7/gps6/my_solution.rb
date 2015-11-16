# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#links the file with another file and its data. Similar to a css file linked inside of an HTML.
#

# require_relative 'state_data'

class VirusPredictor

  # When we first make a new instance of the VirusPredictor class, we initialize (or define) three initial values (state, pop. density, and population) and create instance variables for them so that they can be called by other methods.

  def initialize(state_of_origin)
    @state = state_of_origin
    @population = STATE_DATA[@state][:population]
    @population_density = STATE_DATA[@state][:population_density]
  end

  # The virus effects method calls two separate methods and passes to them the three instance variables defined in def initialize.

  def virus_effects
    # number_of_deaths = predicted_deaths
    # speed = speed_of_spread
    print "#{@state} will lose #{predicted_deaths} people in this outbreak and will spread across the state in #{speed_of_spread} months.\n\n"
  end

  private

  # The predicted deaths method takes three arguments and, based on a series of if/else conditions assigns the appropriate variable for number of deaths based on the equation population * whatever the appropriate percentage is.  Then, after the running the if/else it prints a string, calling the instance variable @state and the correlated local variable number_of_deaths.  The floor method is invoked to round down the number of deaths.

  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      (@population * 0.4).floor
    elsif @population_density >= 150
      (@population * 0.3).floor
    elsif @population_density >= 100
      (@population * 0.2).floor
    elsif @population_density >= 50
      (@population * 0.1).floor
    else
      (@population * 0.05).floor
    end
  end

  # Speed_of_spread method takes two arguments.  It sets speed as a local variable set initially to zero.  Then, based on different conditions, it modifies the speed accordingly.  Then, it prints a string which includes the speed local variable.

  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    # speed = 0.0

    if @population_density >= 200
      @speed = 0.5
    elsif @population_density >= 150
      @speed = 1
    elsif @population_density >= 100
      @speed = 1.5
    elsif @population_density >= 50
      @speed = 2
    else
      @speed = 2.5
    end

    # puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


STATE_DATA.each { |state, data|  VirusPredictor.new(state).virus_effects}

# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#Reflection
=begin

What are the differences between the two different hash syntaxes shown in the state_data file?
The differences between the two different syntaxes is that one is a key created by a string and the other is created as a symbol using a colon (:). The differences between the two is that while a string key is not stored into memory, a symbol key is so that when you use that same key name again, if they are all symbols the file will process it much faster because it is already stored into memory.

What does require_relative do? How is it different from require?
Require relative is used to link a different file along with its data with the file in which require_relative is called. For example, in this case the file that I need to link is called "state_data.rb" and I want to link it with the file I am in called "my_solution.rb" At the top of the page I would type require_relative "state_data" and it would know to link all the data in state_rb with my current file. Require is used when the file that needs to be linked is not in the same directory as the file in which require is called in, so it would have to be linked in a specefic way.

What are some ways to iterate through a hash?
The most common method I have used to iterate through a hash is the .each method, in which a value is assigned to the key and a value is assigned to the value. In this case, we also used .each to iterate through the nested hash.

When refactoring virus_effects, what stood out to you about the variables, if anything?
What stood out to me is that while in the begenning of the challenge I was not able to notice that the use of variables in the original solution was very excessive, near the end it became very clear that variables only really needed to be assigned in the very begenning, with the exception of the specefic local variables used in the different methods.

What concept did you most solidify in this challenge?
I think this challenge really helped me learn more about nested arrays, require_relative, and private. I was not really exposed to either of these before, especially require_relative and private. I am glad that I have a pretty solid understanding of each of these now and their practical uses in the real world.

=end



