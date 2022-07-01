dial_book = {
  "newyork" => "212",
  "newbrunswick" => "732",
  "edison" => "908",
  "plainsboro" => "609",
  "sanfrancisco" => "301",
  "miami" => "305",
  "paloalto" => "650",
  "evanston" => "847",
  "orlando" => "407",
  "lancaster" => "717"
}
 
def get_city_names(somehash)
  somehash.keys
end
 
def get_area_code(somehash, key)
  somehash[key]
end
 
loop do
  puts "¿Desea buscar un código de área basado en el nombre de una ciudad? (Y/N)"
  answer = gets.chomp.downcase
  break if answer != "y"
  puts "¿De qué ciudad quieres el código de área?"
  puts get_city_names(dial_book)
  puts "Escribe la ciudad: "
  prompt = gets.chomp
  if dial_book.include?(prompt)
    puts "El código de área para #{prompt} es #{get_area_code(dial_book, prompt)}. "
  else
    puts "Ingresaste un nombre de ciudad que no está en el diccionario. "
  end
  puts "-" * 75
end