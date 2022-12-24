Given('des clients existent:') do |table|
  # table is a Cucumber::MultilineArgument::DataTable
  data = table.hashes
  data.each do |row|
    row.each do |key, value|
      if key.eql? "firstName"
        firstName = value
      else
        lastName = value
      end
      Customer.create!(firstName: firstName, lastName: lastName)
    end
  end
end
