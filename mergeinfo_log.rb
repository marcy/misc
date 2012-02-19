# -*- coding: utf-8 -*-

# マージしてないリビジョンとlog見る for subversion

repos = ARGV[0]
num = ARGV[1] ? ARGV[1].to_i : 30
revs = []

mergeinfo = `svn mergeinfo --show-revs eligible #{repos} .`

first_num = -1 * num 

mergeinfo.split("\n").reverse[0, num].reverse.each do |rev|
  rev = rev.chomp
  puts `svn log -c #{rev} #{repos}`
  revs << rev
end

puts

puts "======================"
puts revs.join("\n")
puts "======================"
puts revs.join(",")
puts "======================"
puts "count: #{revs.size}"
