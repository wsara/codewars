# Description:

# We need a method for parsing an array of strings to see which of 3 categories they fall into:

# :alpha strings contain the word "alpha"
# :beta strings contain the word "beta"
# :unknown strings don't contain either "alpha" or "beta"
# :unknown is also used for nil entries
# No string will contain both "alpha" and "beta"
# The strings can contain alpha and beta in any case (e.g. "Alpha", "BeTa")
# The input will be an array containing strings and nils. The output should be an array containing :alpha, :beta and :unknown symbols, based on the string at that index in the input array.

# For example, the input:

# ["I'm Alpha", "No idea", "beta tester", nil]
# should result in:

# [:alpha, :unknown, :beta, :unknown]


def line_types lines
  array = []
  lines.each do |line|
    if line == nil
      array << :unknown
    elsif line.match(/(alpha)/i)
     array << :alpha
    elsif line.match(/(beta)/i)
      array << :beta
    else
      array << :unknown
    end
  end
  return array
end