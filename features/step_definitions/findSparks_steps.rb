#Given /^I am on LMS\+$/ do
#  visit 'http://172.16.5.202:8888/lms/view/login'
#end

#When /^I make login with user "([^"]*)" and password "([^"]*)"$/ do |arg1, arg2|
#  fill_in 'usuario', :with => arg1
#  fill_in 'senha', :with => arg2
#  find("input[value='Entrar']").click
#end

Then /^LMS\+ main page will open$/ do
  page.should have_content('SISTEMA LMS')
end

Then /^Fail message will appear on screen$/ do
  page.should have_content('ADSM_INVALID_CREDENTIALS_EXCEPTION_KEY')
end

When /^I open the main menu$/ do
  #find("button.navbar-toggle").click
  find(:xpath, '//*[@id="body-web"]/div/div[1]/div/div/button').click
end

Then /^Left menu will appear on screen$/ do
  page.should have_xpath("//*[contains(@class, 'ng-isolate-scope sidebar col-sm-3')]")
  #page.should have_xpath('//*[@id="body-web"]/div/div[2]/div/div[1]')
end


Then /^I click in "([^"]*)"$/ do |arg1|
  find("a", :text => arg1).click 
end

Then /^The screen called "([^"]*)" will appear on screen$/ do |arg1|
  find("h2", :text => arg1)
end

#
# it will work only if the input field has an id attribute
# if it does not have an id, you shall implement a smarter
# algorithm
#
When /^I write "([^"]*)" in "([^"]*)"$/ do |textToType, label|
  html = page.evaluate_script('document.getElementById("body-web").innerHTML')
  html.gsub! "\n", ""
  inputHtmlCode =  /<label.*?>Evento da Cia A.rea<\/label>.*?(<input.*?\/?>)/.match(html)[1]
  idFromInput = /id=\"(.*?)\"/.match(inputHtmlCode)[1]
  fill_in idFromInput , with: textToType
end





Dado /^que estou no LMS\+$/ do
  visit 'http://172.16.5.202:8888/lms/view/login'
end

Dado /^faco login com usuario "([^"]*)" e senha "([^"]*)"$/ do |arg1, arg2|
  fill_in 'usuario', :with => arg1
  fill_in 'senha', :with => arg2
  find("input[value='Entrar']").click
end

Dado /^abro o menu principal$/ do
  #find(:xpath, '//*[@id="body-web"]/div/div[1]/div/div/button').click
  find('button.navbar-toggle').click
end

Dado /^clico em "([^"]*)"$/ do |arg1|
  find("a", :text => arg1).click
end

Quando /^preencho o campo "([^"]*)" com o valor "([^"]*)"$/ do |label, valor|
  html = page.evaluate_script('document.getElementById("body-web").innerHTML')
  html.gsub! "\n", ""
  inputHtmlCode =  /<label.*?>#{label}<\/label>.*?(<input.*?\/?>)/.match(html)[1]
  idFromInput = /id=\"(.*?)\"/.match(inputHtmlCode)[1]
  fill_in idFromInput, :with => valor
end


Quando /^clico no botao "([^"]*)"$/ do |arg1|
  find("button", :text => arg1).click
end



Entao /^Vai aparecer uma linha do grid com conteudo "([^"]*)"$/ do |arg1|
  find("td", :text => arg1).should be_visible
end


Entao /^vai aparecer a mensagem "([^"]*)"$/ do |arg1|
  puts find(:xpath, '//*[@id="toast-container"]').text
  find(:xpath, '//*[@id="toast-container"]').text should eq(arg1)
end


