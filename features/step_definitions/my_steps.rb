Given(/^I am on the site$/) do
  @browser = Watir::Browser.new

  @browser.goto 'https://ecommerce.psm.gedzyk.com/'
end

When(/^I fill the form$/) do
  @browser.link(href: '/free-trial/').click
  @browser.checkbox(name: 'module[8]').set
  # @browser.text_field(data_test: 'password').set 'password'
  # @browser.button(name: 'commit').click
  # @browser.link(data_test: 'addresses').click
  # @browser.link(data_test: 'create').click
end

# When(/^I fill the second form$/) do
#   @browser.text_field(id:'address_first_name').set Faker::Name.first_name
#   @browser.text_field(id:'address_last_name').set Faker::Name.last_name
#   @browser.text_field(id:'address_street_address').set Faker::Address.street_address
#   @browser.text_field(id:'address_secondary_address').set Faker::Address.secondary_address
#   @browser.text_field(id:'address_city').set Faker::Address.city
#   @browser.select_list(id:'address_state').select Faker::Address.state
#   @browser.text_field(id: 'address_zip_code').set Faker::Address.zip_code
#   @browser.radio(text: 'Canada').select
#   birthday = Faker::Date.birthday
#   @browser.date_field.set birthday
#   age = Date.today.year - birthday.year
#   @browser.text_field(id: 'address_age').set age
#   @browser.text_field(id: 'address_website').set Faker::Internet.url
#   file_name = 'watir_example.text'
#   File.write(file_name, '')
#   path = File.expand_path(file_name)
#   @browser.file_field(id: 'address_picture').set path
#   @browser.text_field(id: 'address_phone').set Faker::PhoneNumber.phone_number
#   checkbox_ids_arr = ['address_interest_climb', 'address_interest_dance', 'address_interest_read']
#   checkbox_id = checkbox_ids_arr[rand(checkbox_ids_arr.length)]
#   @browser.checkbox(id: "#{checkbox_id}").set
#   @browser.textarea(id: 'address_note').set 'See, filling out a form with Watir is easy!'
# end
#
# Then(/^I sent the filled form$/) do
#   @browser.button(name: 'commit').click
#   @browser.close
# end