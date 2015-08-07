require 'pry'
# Build a class AnimalSorter
class AnimalSorter
# Make sure there are two constants that AnimalSorter knows about,
# SEA_ANIMALS and LAND_ANIMALS
  SEA_ANIMALS = ["marlin", "octopus", "fish"]
  LAND_ANIMALS = ["aardvark", "cat", "elephant"]
  # AnimalSorter should be able to accept an array of animals on
  # initialization.
  def initialize (array)
    @array = array
  end
  # Define a to_a method to account for the species in the test suite.
  def to_a
    sea_array = []
    land_array = []
    new_array = []
    @array.each do |animal|
      if SEA_ANIMALS.include?(animal)
        sea_array << animal
      else
        land_array << animal
      end
    end
    new_array << sea_array
    new_array << land_array
    new_array
    # binding.pry
  end

end

# Return an array that contains two arrays, the first one
# should include the sea creatures, the second, land animals.

# Read the test suite for an example of a nested array.
