
def create 
puts "Entrer le nom de dossier a creer"
a = gets.chomp.to_s


Dir.mkdir("#{a}")
Dir.mkdir("#{a}/lib")
File.new("#{a}/README.md", "w+")
File.new("#{a}/Gemfile", "w+")
gemfile = File.open("#{a}/Gemfile","a")
gemfile.puts("source \"https://rubygems.org\"")
gemfile.close

Dir.chdir("#{a}")
puts "taper 'g' pour editer le fichier Gemfile maintenant, autre pour passer"
g=gets.chomp
if g=="g" 
	system("xdg-open Gemfile")
end
puts "Editer votre fichier et taper entrer pour poursuivre"
gets.chomp
system("bundle install")
system("rspec --init")

end
create 