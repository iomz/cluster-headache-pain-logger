# Create user iomz@sfc.wide.ad.jp with passwd:hogehoge
1.upto(3) do |n|
  User.create!(email: "test#{n}@test.com", password: "password", password_confirmation: "password")
end
