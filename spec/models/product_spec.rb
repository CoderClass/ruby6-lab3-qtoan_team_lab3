require 'rails_helper'

RSpec.describe Product, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  describe ".alphabetical" do
    it "returns [] when there are no products" do
    end

    it "returns [a,b,c] in order when 3 new products are created" do
      a = Product.create!(name: "Warriors", description: "The Warriors are the first team in the NBA to star...", image_path: "warriors.jpg", price_vnd: 10000, weight: 500)

      b = Product.create!(name: "Hello", description: "Just for Test", price_vnd: 20000, weight: 200)

      c = Product.create!(name: "Testng")

      expect([b,c,a]).to eq Product.alphabetical
    end

  end 
 

end
