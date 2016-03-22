require 'rails_helper'

describe Product do
	before do
		@product = Product.create!(name: "camera")
		@user = User.create!(email: "nikkirobinsonphoto@gmail.com", password: "12345678")
		@product.comments.create!(rating: 1, user: @user, body: "Awful Camera!")
		@product.comments.create!(rating: 3, user: @user, body: "Okay Camera")
		@product.comments.create!(rating: 5, user: @user, body: "Cool Camera!")
	end

	it "returns the average rating of all comments" do

		expect(@product.average_rating).to eq 3
		
	end

	it "is not valid" do

		expect(Product.new(description: "Cool Bike!")).not_to be_valid

	end

end
