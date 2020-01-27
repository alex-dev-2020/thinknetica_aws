year = Hash.new(0)
year = {
  Jan: 31, 
  Feb: 28, 
  Mar: 31, 
  Apr: 30, 
  May: 31, 
  Jun: 30, 
  Jul: 31, 
  Aug: 31, 
  Sep: 30, 
  Oct: 31, 
  Nov: 30, 
  Dec: 31}
  
year.each {|month, days| print month.to_s + " "  if days == 30} 

puts

days_in_a_month = {
  jan: 31, 
  feb: 28, 
  mar: 31, 
  apr: 30, 
  may: 31, 
  jun: 30, 
  jul: 31, 
  aug: 31, 
  sep: 30, 
  oct: 31, 
  nov: 30, 
  dec: 31}

days_in_a_month.each {|month, days| puts month if days == 30}