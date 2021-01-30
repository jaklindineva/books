Given(/^the following books exist:$/) do |table|
  table.hashes.each do |book|
      Book.create!(book)
  end
end