require('pry')

class Triangle
  define_method(:initialize) do |one, two, three|
    @one = one
    @two = two
    @three = three
  end
  define_method(:anal)  do
    if @one + @two <= @three || @two + @three <= @one || @one + @three <= @two
      "Not a triangle, bro!"
    elsif @one == @two && @two == @three
      "Equilateral, bro!"
    elsif @one == @two || @two == @three || @one == @three
      "Isosceles, bro!"
    else
      "Scalene, bro!"
    end
  end
end
