# encoding: utf-8

require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "paths"))

Oletetaan /^että olen sivulla ([^\"]*)$/ do |page_name|
  Given %{I am on #{page_name}}
end

Oletetaan /^että olen sivulla "([^\"]*)"$/ do |page_url|
  visit page_url
end

Kun /^menen sivulle (.*)$/ do |page_name|
  When %{I go to #{page_name}}
end

Kun /^menen sivulle "([^\"]*)"$/ do |page_url|
  visit page_url
end

Kun /^painan "([^\"]*)"$/ do |button|
  When %{I press "#{button}"}
end

Kun /^klikkaan linkkiä "([^\"]*)"$/ do |link|
  When %{I follow "#{link}"}
end

Kun /^klikkaan linkkiä "([^\"]*)" valitsimen "([^\"]*)" sisällä$/ do |link, parent|
  When %{I follow "#{link}" within "#{parent}"}
end

Kun /^syötän kenttään "([^\"]*)" arvon "([^\"]*)"$/ do |field, value|
  When %{I fill in "#{field}" with "#{value}"}
end

Kun /^syötän arvon "([^\"]*)" kenttään "([^\"]*)"$/ do |value, field|
  When %{I fill in "#{value}" for "#{field}"}
end

Kun /^syötän alla olevan:$/ do |fields|
  When %{I fill in the following:}, fields
end

Kun /^valitsen arvon "([^\"]*)" kentästä "([^\"]*)"$/ do |value, field|
  When %{I select "#{value}" from "#{field}"}
end

# Missing: date stuff

Kun /^valitsen kentän "([^\"]*)"$/ do |field|
  When %{I check "#{field}"}
end

Kun /^poistan valinnan kentästä "([^\"]*)"$/ do |field|
  When %{I uncheck "#{field}"}
end

Kun /^valitsen kentän "([^\"]*)"$/ do |field|
  When %{I choose "#{field}"}
end

Kun /^liitän tiedoston "([^\"]*)" kenttään "([^\"]*)"$/ do |path, field|
  When %{I attach the file "#{path}" to "#{field}"}
end

Niin /^minun pitäisi nähdä "([^\"]*)"$/ do |text|
  Then %{I should see "#{text}"}
end

Niin /^minun pitäisi nähdä "([^\"]*)" valitsimen "([^\"]*)" sisällä$/ do |text, selector|
  Then %{I should see "#{text}" within "#{selector}"}
end

Niin /^minun pitäisi nähdä \/([^\/]*)\/$/ do |regexp|
  Then %{I should see /#{regexp}/}
end

Niin /^minun pitäisi nähdä \/([^\/]*)\/ valitsimen "([^\"]*)" sisällä$/ do |regexp, selector|
  Then %{I should see /#{regexp}/ within "#{selector}"}
end

Niin /^minun ei pitäisi nähdä "([^\"]*)"$/ do |text|
  Then %{I should not see "#{text}"}
end

Niin /^minun ei pitäisi nähdä "([^\"]*)" valitsimen "([^\"]*)" sisällä$/ do |text, selector|
  Then %{I should not see "#{text}" within "#{selector}"}
end

Niin /^minun ei pitäisi nähdä \/([^\/]*)\/$/ do |regexp|
  Then %{I should not see /#{regexp}/}
end

Niin /^minun ei pitäisi nähdä \/([^\/]*)\/ valitsimen "([^\"]*)" sisällä$/ do |regexp, selector|
  Then %{I should not see /#{regexp}/ within "#{selector}"}
end

Niin /^"([^\"]*)"-kentän pitäisi sisältää "([^\"]*)"$/ do |field, value|
  Then %{the "#{field}" field should contain "#{value}"}
end

Niin /^"([^\"]*)"-kentän ei pitäisi sisältää "([^\"]*)"$/ do |field, value|
  Then %{the "#{field}" field should not contain "#{value}"}
end

Niin /^"([^\"]*)"-valintaruudun pitäisi olla valittuna$/ do |label|
  Then %{the "#{label}" checkbox should be checked}
end

Niin /^"([^\"]*)"-valintaruudun ei pitäisi olla valittuna$/ do |label|
  Then %{the "#{label}" checkbox should not be checked}
end

Niin /^minun pitäisi olla sivulla (.+)$/ do |page_name|
  Then %{I should be on #{page_name}}
end

Niin /^näytä minulle sivu$/ do |page_name|
  Then %{show me the page}
end