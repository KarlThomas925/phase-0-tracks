# Virus Predictor
# I worked on this challenge [with: Mauricio ].
# We spent [2] hours on this challenge.
# EXPLANATION OF require_relative
# => Used to pair files with each other (within same folder).
#
require_relative 'state_data'

class VirusPredictor
  #Defining the attributes of the VirusPredictor class
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  #Calls two other methods
  def virus_effects
    predicted_deaths
    speed_of_spread
  end
  private
  #Prints the numbers of deaths within a state, depending on the population density
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density > 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density <= 200 && @population_density >=50
      number_of_deaths = (@population * ((@population_density.floor/50) * 0.1))
    else
      number_of_deaths = (@population * 0.05).floor
    end
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"
  end
  # Returns the speed of the disease based on the population density
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0
if @population_density > 200
      speed = (@population_density * 0.5)
    elsif @population_density <= 200 && @population_density >=50
      speed = (100/@population_density)
    else
      speed += 2.5
    end
    
    
  
    puts " and will spread across the state in #{speed} months.\n\n"
  end
end
#=======================================================================
# DRIVER CODE
 # initialize VirusPredictor for each state
  STATE_DATA.each{ |state, state_info|
    
    VirusPredictor.new(state,state_info[:population_density], state_info[:population]).virus_effects
    }
#=======================================================================
=begin
Reflection Section
Hash is shown encased in curly brackets, other hash is shown with arrow.
Used to pair files with each other (within same folder). Different from require as we don't need full file path.
Use a loop (.each, .times loop, for loops)
Argument is not needed for virus_effects.
=end