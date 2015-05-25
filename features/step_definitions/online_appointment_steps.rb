Given /the following doctors exist/ do |table|
  table.hashes.each do |doc|
    Doctor.create!(doc)
  end
  # table is a Cucumber::Ast::Table
  #pending # express the regexp above with the code you wish you had
end

When /^I follow '(\d+)'$/ do |arg1|
  #pending # express the regexp above with the code you wish you had
end


#When /^I fill in "(.*)" with "(.*)"$/ do |arg1, arg2|
  
  #pending # express the regexp above with the code you wish you had
#end
