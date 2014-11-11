class Zero_Juggler
  attr_reader :binary_output
  def initialize(as_string)
    @line = as_string.split(" ")
    @current_flag = "0"
    @binary_output = ""
    @string_to_add = ""
  end



  def parse()
    @line.each_with_index do |symbol, index|
      if index%2==0
        set_flag(index)
      else
        grow_binary(index)
      end
    end
  end

  private

  def set_flag(index)
    if @line[index] == "0"
      @current_flag = "0"
    end

    if @line[index] == "00"
      @current_flag = "1"
    end
  end

  def grow_binary(index)
    @binary_output += @current_flag * @line[index].length
  end
end


File.open(ARGV[0], "r") do |f|
  f.each_line do |line|
    juggler = Zero_Juggler.new(line)
    juggler.parse
    integer_output = juggler.binary_output.to_i(2)
    p integer_output
    # puts "===" *8
  end
end