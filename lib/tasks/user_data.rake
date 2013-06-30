namespace :db do
  desc "Create a test user"
  task populate: :environment do
    1.upto(3) do |n|
      User.create!(email: "test#{n}@test.com", password: "password", password_confirmation: "password")
    end
  end
end
