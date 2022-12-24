Given('je suis authentifié en tant que {string}') do |string|
  Customer.all.each do |customer|
    if customer.firstName == string
    end
  end
end
