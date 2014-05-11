FactoryGirl.define do
	factory :user do
		name		"Mark Doerr"
		email		"mdoerr@example.com"
		password	"foobar"
		password_confirmation	"foobar"
	end
end