class MyList
  include MyEnumerable
    def initialize(*list)
        @list = list
    end

    def each(&value)
        @list.each(&value)
    end
end

list = MyList.new(1, 2, 3, 4, 5, 6, 7)

puts (list.all? { |e| e < 5})

# class Person 
#     def initialize( name ) 
#          @name = name
#     end

#     def do_with_name   # expects a block
#         yield( @name ) # invoke the block and pass the `@name` attribute
#     end
# end