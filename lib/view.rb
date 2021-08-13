class View

  def ask_name
    puts "Enter recipe name:".green
    gets.chomp
  end

  def ask_description
    puts "Enter recipe description".green
    gets.chomp
  end

  def ask_index
    puts "Enter recipe index:".red
    gets.chomp.to_i - 1
  end

  def display(recipes)
    puts '-'.red * 60
    recipes.each_with_index do |recipe, index|
      puts "#{index + 1} - #{recipe.name}: #{recipe.description}".blue
    end
    puts '-'.red * 60
  end
end