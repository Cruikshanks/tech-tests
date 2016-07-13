# Fibonnaci examples
# The first 21 numbers are
# 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987, 1597, 2584,
# 4181, 6765
class Fibonnaci
  # Got the solution for this from https://www.youtube.com/watch?v=z6zc4N45ST0
  # I have tweaked it so that max is passed into the method, which also means
  # the variables are initialized on each call to the method (the example
  # provided is a one time use solution).
  # Also initially thought I could re-write this to be more like
  # generate_sequence but that's a trap! gen_seq has a set length. sum_... is
  # asked to sum all even numbers before you hit value 4,000,000, NOT the
  # 4,000,000 fibonnaci number. Hence we don't know how long a sequence we're
  # dealing with
  def sum_even_numbers(max)
    i = 0
    num_1 = 0
    num_2 = 1
    sum = 0

    while i <= max
      i = num_1 + num_2

      sum += i if i.even?

      num_1 = num_2

      num_2 = i
    end
    sum
  end

  def find(n)
    generate_sequence(n)[-1]
  end

  def generate_sequence(n)
    sequence = [0, 1]
    # This takes advantage of the ability in ruby to specify a negative index in
    # an array, which causes it to start counting from the right. In this way
    # -2 and -1 will give you the second to last and last values in the array.
    # The .times method is just some more Ruby niceness, which avoids the need
    # for a for loop.
    # Finally I cripped (and simplified the solution for my tiny brain) from
    # http://stackoverflow.com/a/12586717/6117745. However I spotted a flaw.
    # Initially it was just n.times but as the is prepopulated with the first
    # 2 values you were actually getting a sequence n+2 in length. Hence the
    # n-2.
    (n - 2).times.each { sequence << sequence[-2] + sequence[-1] }
    sequence
  end
end
