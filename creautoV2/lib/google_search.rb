require 'launchy' 

def google_searcher_input
a = "https://www.google.com/search?q="
abort("How to use?") if ARGV.empty?

x = ""
for i in ARGV
	x = "#{x}+#{i}"

end
x[0]=""
puts "#{a}#{x}"
Launchy.open("#{a}#{x}")
end

google_searcher_input