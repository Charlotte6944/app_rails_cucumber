Given('je suis authentifi√© en tant que {string}') do |string|
  Customer.all.each do |customer|
    if customer.firstName == string
    end
  end
end
