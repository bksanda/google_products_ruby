#RUBY!! no more semi-colons... ever.

require 'json'
file = File.read("./products.json")

#Welcome to RUBY we use snake case now
#snake case word_word not camel case wordWord
google_data = JSON.parse(file)


#outputs the full object
puts google_data.inspect
puts "$" * 70
puts "\n"

#outputs the first item's title
puts google_data["items"][0]["product"]["title"]
puts "&" * 70
puts "\n"

#1.) The kind of results you're are dealing are shopping#products. 
#Go through the items and find all results that have kind of shopping#product. 
#How many are there? Where else is this count information stored in the search results?
#google_data["items"].find {|google_data| google_data["kind"]=="shopping#product"} 
puts "Quest 1) The kind of results you're are dealing are shopping#products." 
puts "@" * 70
puts "\n"

sp_results = []

google_data["items"].each do |sp_item|
	google_data["items"].find {|google_data| google_data["kind"]=="shopping#product"} 
	puts "The item: #{sp_item} \n"
	puts "=" * 25 
	sp_results.push(sp_item)	
end

print "The number of items with kind of shopping#product: "
puts sp_results.count

print "The number of items with kind of shopping#product: "
puts google_data["currentItemCount"]

puts "=" * 70
puts "\n"

#2.) Find all items with a backorder availability in inventories.
puts "Quest 2) Find all items with a backorder availability in inventories."
puts "@" * 70
puts "\n"

# puts google_data["items"].find {|bk_item| bk_item ["product"]["title"] if bk_item["product"]["inventories"][0]["availability"] === "backorder"}.to_s
puts google_data["items"].find {|bk_item| bk_item["product"]["inventories"][0]["availability"] === "backorder"}

puts "=" * 70
puts "\n"

#3.) Find all items with more than one image link.
puts "Quest 3) Find all items with more than one image link."
puts "@" * 70
puts "\n"

#google_data["items"].collect {|img_item| img_item["product"]["title"] if img_item["product"]["images"].length > 1}
puts "THESE ITEMS HAVE MORE THAN ONE IMAGE LINK:"
puts "\n"
google_data["items"].select {|img_item| puts "#{img_item["product"]["title"]}" if img_item["product"]["images"].length > 1 } 
puts "\n"

puts "=" * 70
puts "\n"

#4.) Find all canon products in the items (careful with case sensitivity).
puts "Quest 4) Find all canon products in the items (careful with case sensitivity)."
puts "@" * 70
puts "\n"

puts "THESE ITEMS ARE CANON PRODUCTS:"
puts "\n"
google_data["items"].select {|canon_item| puts "#{canon_item["product"]["title"]} \n" if canon_item["product"]["brand"]=="Canon"}
puts "\n"

puts "=" * 70
puts "\n"

#5.) Find all items that have product author name of "eBay" and are brand "Canon".
puts "Quest 5) Find all items that have product author name of \"eBay\" and are brand \"Canon\"." 
puts "@" * 70
puts "\n"

puts "THESE ITEMS HAVE PRODUCT AUTHOR EBAY AND BRAND CANON:"
puts "\n"
google_data["items"].select {|ebay_canon| puts "#{ebay_canon["product"]["title"]} \n" if ebay_canon["product"]["author"]["name"].include?("eBay") && ebay_canon["product"]["brand"]=="Canon"}
puts "\n"

puts "=" * 70
puts "\n"

#6.) Print all the products with their brand, price, and a image link.
puts "Quest 6) Print all the products with their brand, price, and a image link."
puts "@" * 70

google_data["items"].select {|info| puts """\nPRODUCT TITLE: \t#{info["product"]["title"]} 
BRAND: \t\t#{info["product"]["brand"]}
PRICE: \t\t$#{info["product"]["inventories"][0]["price"]}
IMAGE LINK: \t#{info["product"]["images"][0]["link"]}
"""
}

puts "\n"








