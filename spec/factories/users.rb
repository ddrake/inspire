# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    email "MyString"
    name "MyString"
    password_digest "MyString"
    message nil
  end
end
