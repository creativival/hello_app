# # (1..100).to_a.each { |n| puts n**2 }
#
# def yeller(a)
#   a.map(&:upcase).join
# end
#
# puts yeller(%w[o l d a b c fr])
#
# def random_subdomain
#   ('a'..'z').to_a.shuffle[0..7].join
# end
#
# puts random_subdomain
# puts random_subdomain
#
# def string_shuffle(s)
#   s.split('').shuffle.join
# end
#
# puts string_shuffle("masaya nagaoka")

hash = { one: 'uno', two: 'dos', three: 'tres' }
hash.each { |key, value| puts "#{key}のスペイン語は#{value}"  }

p a = 1..10
p b = Range.new(1, 10)
p a == b
