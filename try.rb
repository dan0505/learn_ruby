class Person
    attr_accessor :name

    def initialize(name)
        @name = name
    end
end

arr = [Person.new('aaron'), Person.new('bob')]

anotherPeson = Person.new('fred')
arr.push(anotherPeson);

anotherPeson.name = 'ted'

puts arr[0].name
puts arr[1].name
puts arr[2].name
