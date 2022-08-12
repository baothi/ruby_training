require './string_ruby.rb'

class Service 
  def strings_info(strings)
    puts "---------------------------------- STRING ------------------------------------"
    strings.each do |s|
      puts s
    end
    puts "--------------------------------------------------------------------------------"
  end
end