require './string_ruby'
require './service'
class Main

  def self.run
    @arr_example =[
                  "a. Hello word: Thi is my first test.",

                  "b. Hello word: 10 characters ",

                  "c. Hello word: drow olleH ",

                  "d. Hello word: HELLO WORD",

                  "e. Hello word: Hello -> word",

                  "f. Hello word: Hell wrd // remove ‘o’",

                  "g. Hello word: H e l l o w o r d // there are 2 spaces between Hello and word",

                  "h. Hello word: Helo wrd // remove the character which happen from 2nd times ",

                  "i. Hello word: Heo word // remove duplicate character ",

                  "j. Hello word: Hello word 1 Hello word 2 Hello word 3 Hello word 4 Hello word 5",

                  "k. Hello word: Hello wor",

                  "l. Hello word: ello word",

                  "m. Hello word: Hello word",

                  "n. Hello word: Hello word",

                  "o. Hello word: word Hello",
                ]
    puts "*****************************************"
    puts "**************** TESTING ****************"
    puts "*****************************************\n"

    loop do
      service = Service.new()
      puts " ========== SELECT FUCNTION =========  "
      puts  service.strings_info(@arr_example)
      puts " ======= NHAP VAO MOT CHUOI HOAC THOAT BAM : 0 \n"
      print "Please input value : "
      input = gets.chomp
      hello = Hello.new(input)
      puts "------------------ SHOW STRING-------------------"
      puts  hello.detail
      puts "\n\n\n"


      break if (input.to_i == 0)
    end   
  end
end

Main.run
