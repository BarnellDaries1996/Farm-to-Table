-- A local restaurant that sources local ingredients for delicious meals

-- Declaring restaurant name, address and contact details
local restaurantName = "Farm to Fork"
local address = "123 Main Street, Anytown, USA"
local contactDetails = "Call us on: 555-123-4567"

-- Declaring supplier information
local suppliers = { 
	{name = "John Doe Farms", address = "456 Main Street, Anytown, USA"},
	{name = "Josephine's Organics", address = "789 Hill Street, Anytown, USA"},
	{name = "Smith's Dairy", address = "123 Smith Street, Anytown, USA"}
}

-- Declaring menu items
local menuItems = {
	{name = "Grilled Vegetable Salad", ingredients = {"Tomatoes", "Carrots", "Onions", "Spinach", "Feta Cheese"}},
	{name = "Grilled Chicken Sandwich", ingredients = {"Chicken Breast", "Ciabatta", "Mayonnaise", "Tomato", "Lettuce"}},
	{name = "Fruit Salad", ingredients = {"Oranges", "Apples", "Bananas", "Strawberries", "Blueberries"}},
	{name = "Cheese Plate", ingredients = {"Cheddar", "Swiss", "Brie", "Feta", "Goat Cheese"}}
}

-- Function to print menu items
function printMenuItems()
	for i, menuItem in ipairs(menuItems) do
		io.write(menuItem.name .. ":\n")
		for j, ingredient in ipairs(menuItem.ingredients) do
			io.write("- " .. ingredient .. "\n")
		end
		io.write("\n")
	end
end

-- Function to retrieve suppliers for menu items
function getSuppliers()
	for i, menuItem in ipairs(menuItems) do
		io.write("Suppliers for " .. menuItem.name .. ":\n")
		for j, ingredient in ipairs(menuItem.ingredients) do
			for k, supplier in ipairs(suppliers) do
				io.write("- " .. ingredient .. ": " .. supplier.name .. " (" .. supplier.address .. ")\n")
			end
		end
		io.write("\n")
	end
end

-- Function to greet customers
function greetCustomers()
	io.write("Welcome to " .. restaurantName .. "!\n")
	io.write("We source local ingredients from farmers to create delicious meals.\n")
	io.write("Our address is " .. address .. ".\n")
	io.write("If you have any questions, please do not hesitate to contact us on " .. contactDetails .. ".\n\n")
	io.write("Here is our menu today:\n")
end

-- Function to print restaurant info
function printRestaurantInfo()
	io.write("\n\n*** Restaurant Info ***\n\n")
	io.write("Name: " .. restaurantName .. "\n")
	io.write("Address: " .. address .. "\n")
	io.write("Contact Details: " .. contactDetails .. "\n")
end

-- Main function to print all info
function main()
	greetCustomers()
	printMenuItems()
	getSuppliers()
	printRestaurantInfo()
end

-- Call main function
main()