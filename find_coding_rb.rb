dir = ARGV[0] ? ARGV[0] : "."

$not_first_line_count = 0

def check(file_name, str)
  str.split("\n").each.with_index(1) do |line, index|
    if line =~ /coding:.*utf-8/
      puts "#{file_name}: #{index}" 
      $not_first_line_count += 1 if index != 1
    end
  end
end

Dir.glob("#{dir}/**/*.rb") do |file_name|
  open(file_name) do |f|
    check(file_name, f.read)
  end
end

puts "===================="
puts $not_first_line_count
