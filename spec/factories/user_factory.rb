FactoryGirl.define do

	sequence(:email) { |n| "user#{n}@example.com" }

	factory :user do
		email
		password "12345678"
		first_name "Test"
		last_name "User"
		admin false
	end

	factory :admin, class: User do
		email
		password "12345678"
		admin true
		first_name "Admin"
		last_name "User"
	end

end