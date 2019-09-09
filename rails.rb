# ASSESSMENT 5: INTRO TO RAILS
# Coding practical questions

# 1. Create a method called hello_world that takes a language code (e.g. "es", "de", "ru", "ja") as an argument and returns the appropriate version of "Hello, World" for the given language. The default should be English. Test your code with THREE method calls. Expected output for hello_world 'es': 'Hola Mundo', hello_world 'de': 'Hallo Welt'

#  def hello_world (language)
#   if language == "ru"
#     puts "Pivet Mir!"
#   elsif language == "fr"
#     puts "Bonjour le monde!"
#   elsif language == "de"
#     puts 'Holla Welt'
#   else
#     puts "Hello World!"
# end
# end

# puts " Please select your language: ru, fr or de"
# hello_world ("de")
# hello_world("")
#hello_world("fr")

# 2a. Create a method called assign_grade that takes a number as an argument and returns the corresponding letter grade. Test your code with THREE method calls. Expected output for assign_grade 96: 'A', assign_grade 75: 'C'

# def assign_grade(num)
#   number = num.to_i
#     if  number >= 90
#       p "A"
#     elsif number >= 80
#       p "B"
#     elsif number >= 70
#       p "C"
#     elsif  70 > number >= 60
#       p "D"
#     else  60 > number
#       p "F"
#     end
# end
# assign_grade(95)
# assign_grade(10)
# assign_grade(60)


# 2b. STRETCH: Create exceptions to your method if the number passed is less than 0 or greater than 100. Copy and paste the original code below to add the exceptions.



# 3a. Create a method called pluralizer that takes 2 arguments - a singular noun and a number - and returns the number and the pluralized form of the noun, if necessary. Test your code with THREE method calls. Expected output of pluralizer(5, cat): '5 cats', expected output of pluralizer(1, dog): '1 dog'

# def pluralizer (noun, number)
#   if number === 1
#     puts number.to_s + " " + noun
#   else
#     puts number.to_s + " " + noun + "s"
#   end
# end
#  pluralizer("cat",2)
#  pluralizer("dog",1)
#  pluralizer("bird",0)

# 3b. STRETCH: Pick three nouns with irregular pluarlization like sheep, goose/geese, child/children, person/people, crossroads, pants and add the exceptions to your code. Copy and paste the original code below to add the exceptions.
