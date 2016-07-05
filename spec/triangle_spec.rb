require('rspec')
require('triangle')

describe('Triangle#anal') do
  it("analyze inputs to see if it will be a triangle")  do
    expect(Triangle.new(1, 2, 3).anal).to(eq("Not a triangle, bro!"))
  end
  it("analyze inputs to see if it will be a equilateral") do
    expect(Triangle.new(1, 1, 1).anal).to(eq("Equilateral, bro!"))
  end
  it("analyze inputs to see if it will be a isosceles") do
    expect(Triangle.new(2, 2, 3).anal).to(eq("Isosceles, bro!"))
  end
  it("analyze inputs to see if it will be a scalene") do
    expect(Triangle.new(2, 3, 4).anal).to(eq("Scalene, bro!"))
  end
end
