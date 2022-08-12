class Hello
  #def initialize(str_add,str_count,str_reverse,str_upcase,str_split,str_remove,str_spaces,str_squeeze,str_center,str_tab)
   # @str_add = str_add
    #@str_count = str_count
  #  @str_reverse = str_reverse
  #  @str_upcase = str_upcase
  #  @str_split = str_split
  #  @str_remove = str_remove
  #  @str_spaces = str_spaces
  #  @str_squeeze = str_squeeze
  #  @str_center = str_center
  #  @str_tab = str_tab
    
  #end

  def initialize(hello)
    @hello = hello
  end

  # a
  def str_add
  	#a = " This is my first test " 
  	#"a. " << @str_add + ":" << a
    "a. " << @hello + " : " << "This is my first test"
  end

  # b
  def str_count
  	#"b. " <<  @str_count + ":" << @str_count.length << " characters"
    "b. " << @hello + " : " << @hello.length.to_s + "  characters"
  end
  
  # c
  def str_reverse
  	#"c. " << @str_reverse + ":" << @str_reverse.reverse
    "c. " << @hello + " : " << @hello.reverse
  end
  
  # d
  def str_upcase
  	#"d. " << @str_upcase + ":" << @str_upcase. upcase
    "d. " << @hello + " : " << @hello. upcase
  end
  
  #e 
  def str_split
	 #{}"e. " << @str_split  + ":" << @str_split.split(' ').join('->')
   "e. " << @hello  + ":" << @hello.split(' ').join('->')
  end

  # f
  def str_remove
  	"f. " << @hello + ":" << @hello.delete("o")
  end

  #g g. Hello word: H e l l o w o r d // there are 2 spaces between Hello and word
  def str_spaces
  	"g. " << @hello + ":" << @hello.split('').join(' ')
  end


#   h. Hello word: Helo wrd // remove the character which happen from 2nd times 
  def str_squeeze
    "h. " << @hello + ":" << @hello.squeeze
  end

# i. Hello word: Heo word // remove duplicate character 

# j. Hello word: Hello word 1 Hello word 2 Hello word 3 Hello word 4 Hello word 5

# k. Hello word: Hello wor

# l. Hello word: ello word

# m. Hello word: 		Hello word    cai nay chua lam duoc
	def str_center
		"m.  " << @hello + ":" << @hello.center(20)
	end

# n. Hello word: Hello   word
	def str_tab
		"n. " << @hello + ":" << @hello.split(' ').center(10)
	end
# o. Hello word: word Hello
  


  def detail
    puts " |  #{self.str_add}  | \n #{self.str_count}  | \n #{self.str_reverse}  | \n #{self.str_upcase}  | \n #{self.str_split}  | \n #{self.str_remove}  | \n #{self.str_spaces}  | \n #{self.str_squeeze} | \n #{self.str_center} | "
  end

end

