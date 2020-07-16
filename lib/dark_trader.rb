require 'nokogiri'
require 'pry'
require 'rubocop'
require 'rspec'
require 'open-uri'

page = Nokogiri::HTML(URI.open("https://coinmarketcap.com/all/views/all/"))

def dark_trader
  page = Nokogiri::HTML(URI.open("https://coinmarketcap.com/all/views/all/"))
  length_of_btc_array = page.css('tbody tr').length
  array_of_cryptos = []
  for i in (1..length_of_btc_array)
    hash_of_cryptos = Hash.new
    crypto_name = page.xpath('//*[@id="__next"]/div[1]/div[2]/div[1]/div[2]/div/div[2]/div[3]/div/table/tbody/tr[' + i.to_s + ']/td[2]/div/a').text.delete('$')
    crypto_value = page.xpath('//*[@id="__next"]/div[1]/div[2]/div[1]/div[2]/div/div[2]/div[3]/div/table/tbody/tr[' + i.to_s + ']/td[5]/a').text.delete('$').to_f
    hash_of_cryptos[crypto_name] = crypto_value
    array_of_cryptos << hash_of_cryptos
  end
  p array_of_cryptos
  return array_of_cryptos
end

dark_trader