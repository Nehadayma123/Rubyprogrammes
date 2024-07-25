
# 10. Create a Ruby program that simulates an inventory management system. The program should allow the user to:


$value = true
class Inventory
    def initialize
      @items = {}
    end
  
    def add_item(name, quantity)
        @items[name] = quantity
      puts "Item '#{name}' added with quantity #{quantity}."
    end
  
    def remove_item(name)
      if @items.delete(name)
        puts "Item '#{name}' removed from inventory."
      else
        puts "Item '#{name}' not found."
      end
    end
  
    def update_item_quantity(name, quantity)
      if @items.key?(name)
        @items[name] = quantity
        puts "Item '#{name}' updated to quantity #{quantity}."
      else
        puts "Item '#{name}' not found."
      end
    end
  
    def view_items
      puts "Inventory:"
      if @items.empty?
        puts "No items in inventory."
      else
        @items.each do |name, quantity|
          puts "#{name}: #{quantity}"
        end
      end
    end
  
    def search_item(name)
      if @items.key?(name)
        puts "Item found: #{name}: #{@items[name]}"
      else
        puts "Item '#{name}' not found."
      end
    end
  end
  
  inventory = Inventory.new
  
  begin
    puts "\nInventory Management System"
    puts "1. Add item"
    puts "2. Remove item"
    puts "3. Update item quantity"
    puts "4. View all items"
    puts "5. Search for an item"
    puts "6. Exit"
    print "Choose an option: "
    puts "-----------------------------------------------------------------------------------"

    puts "Type 1 is you want to add item"
    
    puts "Type 2 is you want to add remove"
     
    puts "Type 3 is you want to update item"
    
    puts "Type 4 is you want to view all item"
    
    puts "Type 5 is you want to search item"
    
    puts "Type 6 is you want to exit"
    
    option = gets.chomp.to_i
  
    case option
    when 1
      print "Enter item name: "
      name = gets.chomp
      print "Enter item quantity: "
      quantity = gets.chomp.to_i
      inventory.add_item(name, quantity)
    when 2
      print "Enter item name to remove: "
      name = gets.chomp
      inventory.remove_item(name)
    when 3
      print "Enter item name to update: "
      name = gets.chomp
      print "Enter new item quantity: "
      quantity = gets.chomp.to_i
      inventory.update_item_quantity(name, quantity)
    when 4
      inventory.view_items
    when 5
      print "Enter item name to search: "
      name = gets.chomp
      inventory.search_item(name)
    when 6
      puts "Exiting Inventory Management System."
      $value = false
      break
    else
      puts "Invalid option. Please choose again."
    end
  end while($value)
  