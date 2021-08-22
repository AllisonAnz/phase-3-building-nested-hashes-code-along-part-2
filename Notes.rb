# Link https://learning.flatironschool.com/courses/2661/assignments/99163?module_item_id=202340

# Manipulating A Hash 
# We learned that you can access a value in a hash like this 
hash = {first: "first value!", second: "second value!"}

hash[:first]
#  => "first value!" 

# If we has the following hash 
epic_tragedy = {
  :montague => {
      :patriarch => {name: "Lord Montague", age: "53"},
      :matriarch => {name: "Lady Montague", age: "54"},
      :hero => {name: "Romeo", age: "15", status: "alive"},
      :hero_friends => [
         {name: "Benvolio", age: "17", attitude: "worried"},
         {name: "Mercutio", age: "18", attitude: "hot-headed"}
      ]
   },
   :capulet => {
      :patriarch => {name: "Lord Capulet", age: "50"},
      :matriarch => {name: "Lady Capulet", age: "51"},
      :heroine => {name: "Juliet", age: "15", status: "alive"},
      :heroine_friends => [
        {name: "Steven", age: "30", attitude: "confused"},
        {name: "Nurse", age: "44", attitude: "worried"}
      ]
   }
} 

# to access Montague patriarch's name 
# We use the hash name epic_tragedy 
# followed by a chain list of all the key names that preceded the value of his name 
puts epic_tragedy[:montague][:patriarch][:name]
#  => "Lord Montague" 

# We can even use this method to change the value of a particular key 
# If we wanted to reset the Montague patriarchs name 
epic_tragedy[:montague][:patriarch][:name] = "Michael Jordan"
# puts epic_tragedy
# #=> prints updated hash with name: Michael Jordan 

# In the above hash, both the families nested hashes contain array 
# :hero_friends and :heroine_friends 
# Similar to how we chain multiple keys in brackets to access nested hashes,
# We can chain brackets with integers for nested arrays 
puts epic_tragedy[:montague][:hero_friends][1]
#  => {:name=>"Mercutio", :age=>"18", :attitude=>"hot-headed"} 

# We can go further, and continue to chain brackets 
puts epic_tragedy[:montague][:hero_friends][1][:name]
#  => "Mercutio" 