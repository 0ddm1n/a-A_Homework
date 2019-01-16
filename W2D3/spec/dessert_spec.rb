require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef") }
  subject(:dessert) { Dessert.new(Integer, 2, "Thing") }

  describe "#initialize" do
    it "sets a type" do
      expect(dessert.type).to eq(Integer)
    end

    it "sets a quantity" do
      expect(dessert.quantity).to eq(2)     
    end 

    it "starts ingredients as an empty array" do
      expect(dessert.ingredients).to eq([])
    end

    it "raises an argument error when given a non-integer quantity" do
      # HELP!
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      expect(dessert.add_ingredient('chicken')).to eq(['chicken'])
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      expect(dessert.mix!).to eq(dessert.ingredients.shuffle!)
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      expect(dessert.eat(2)).to eq(0)
    end

    it "raises an error if the amount is greater than the quantity" do
      dessert.eat(2)

      expect do
        dessert.eat(2)
      end.to raise_error(argumentError)
    end

  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
      expect(dessert.serve).to eq('')
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do
      expect(dessert.make_more(self)).to eq(@chef.bake(dessert))
    end
  end
end
