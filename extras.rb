test test test test test code


puts google_data["items"].find {|item| item ["product"]["title"] if item["product"]["inventories"][0]["availability"] === "backorder"}.to_s
print "The backorder item is: "
puts google_data["product"]["inventories"][0]["availability"]
exit



puts google_data["items"].collect {|x| "+ #{x["product"]["title"]}" if x["product"]["inventories"][0]["availability"] === "backorder"}.to_s
exit

bkorder_results = []

google_data["items"].each do |bkorder_item|
	if google_data["items"].find {|google_data| google_data["product"]["inventories"][0]["availability"]=="backorder"}.to_s 
		puts "The item: #{bkorder_item} \n"
		puts "=" * 25 
		puts "\n"
		bkorder_results.push(bkorder_item)	
	end
end


google_data["items"].each do |sp_item|
	google_data["items"].find {|google_data| google_data["kind"]=="shopping#product"} 
	puts "The item: #{sp_item} \n"
	puts "=" * 25 
	puts "\n"
	sp_results.push(sp_item)	
end


bkitem_results = []

google_data["items"].each do |item|
	google_data["items"].find {|google_data| google_data["product"]["inventories"]}
	if google_data["products"]["inventories"][0]["availability"]=="backorder" 
		puts "The item: #{item} \n"
		puts "=" * 25 
		puts "\n"
		bkitem_results.push(item)
	end	
end


if gdata = google_data.find {|gdata| gdata["availability"] == "backorder" }
	p gdata["item" => "product"]
else
	puts "Not Found!"
end





bkorder_results = []

google_data["items"].each do |bkorder_item| 
	if google_data["items"].include?("backorder")
		puts "The item in backorder is: #{bkorder_item} \n"
		bkorder_results.push(bkorder_item)
	end
end


bkorder_results = []
bkorder = google_data("items").fetch("backorder")
bkorder_results.push(bkorder)
puts bkorder_result

google_data["items"].each do |bkorder_item|
	google_data["items"]["product"]["inventories"]["availability"].each do |bkorder_items|
	google_data["items"].find {|google_data| google_data.key == "backorder"} 
	puts "The item in backorder: #{bkorder_item}"
	puts "=" * 25 
	puts "\n"
	bkorder_results.push(bkorder_item)	
end

puts bkorder_results.count

bkorder_results = []
google_data["items"].each do |bkorder_item|
	google_data["items"][0]["inventories"][0]["availability"].find("backorder") 
	puts "The item in backorder is: #{bkorder_item} \n\n"
	bkorder_results.push(bkorder_item)	
end
bkorder = []
google_data.select {|gdata| gdata == "backorder"}
bkorder.push(gdata)
puts bkorder
