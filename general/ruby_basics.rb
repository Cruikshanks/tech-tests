# General variables for use in the examples
selected_bus_type = :individual
bus_type1 = :individual
bus_type2 = :limited

# IF statement
if_business_type = if selected_bus_type == bus_type1
  'Individual (sole trader)'
else
  'Limited company'
end
puts "IF statement result is: #{if_business_type}"

# CASE statement
case_business_type = case selected_bus_type
when :individual
  'Individual (sole trader)'
when :limited
  'Limited company'
end
puts "CASE statement result is: #{case_business_type}"

# Instantiate an array
# Add a value to the end
# Iterate it using a single line block
# Iterate it whilst knowing what position we're at
options = [:individual, :limited]
options.push(:charity)
options.each { |option| puts "Array option is: #{option}" }
options.each_with_index { |option, index| puts "Array option at #{index} is: #{option}" }

# Instantiate a range
# Iterate it using a single line block
(0..5).each { |i| puts "The current number is #{i}" }

# Instantiate a hash
# Add a value to the end
# Iterate it using a single line block
options_hash = {
  individual: 'Individual (sole trader)',
  limited: 'Limited company'
}
options_hash[:charity] = 'Charity'
options_hash.each { |key, value| puts "Hash option is: #{value}" }

# Enumerable hacking
# SELECT: evaluates the block against each element, and returns the original element if true.
# Hence in this example we don't get [2, 4, 6]
# Is normally used as in the second example, when trying to select specific values
# The 3rd example shows how to use SELECT with a hash
puts [1,2,3].select { |n| n*2 } # will be [1, 2, 3]
puts [1,2,3].select{ |n| n>2 } # will be [3]
my_hash = {"Joe" => "male", "Jim" => "male", "Patty" => "female"}
puts my_hash.select {|name, gender| gender == "male"} # will be {"Joe"=>"male", "Jim"=>"male"}

# MAP: evaluates the block against each element, and returns a new array with the calculated values.
# If we use it with a block that is trying to select specific values we'll just get a new array of the results
puts [1,2,3].map { |n| n*2 } # will be [2,4,6]
puts [1,2,3].map { |n| n>2 } # will be [false, false, true]

# COLLECT: Works exactly the same as MAP, just one of those Ruby cases where some prefer a different name.
# MAP is more commonly used.

# REDUCE: Also known as INJECT. Unlike the others which run an operation on each element and returns all the
# results, REDUCE is used to keep track of a result as we iterate the Enumerable e.g. summing an array
puts [1,2,3].reduce(0) { |total, item| total + item } # will be [6]

# Specify a Class
# Declare it using attr_readers and a constructor
# Use a hash to pass in args
# Instantiate an instance passing in args hash
# override to string of base object Class
# Call that method (implied) on the instance of the class
class Organisation

  attr_reader :organisation_type, :name

  def initialize(args)
    @organisation_type = args[:organisation_type]
    @name = args[:name]
  end

  def to_s
    "Organisation details: Type is #{@organisation_type}, Name is #{@name}"
  end

end

my_org = Organisation.new( { organisation_type: 'Limited company', name: 'Crooks-R-Us' } )
puts my_org
