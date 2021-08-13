require_relative 'view'

class Controller
  def initialize(cookbook)
    @cookbook = cookbook
    @view = View.new
  end

  def list
    # 1. Pegar todas as receitas
    recipes = @cookbook.all
    # 2. Mandar a View exibir as receitas
    @view.display(recipes)
  end

  def create
    # 1. Perguntar o name e a description da Recipe
    name = @view.ask_name
    description = @view.ask_description

    # 2. Criar uma nova instância de Recipe
    new_recipe = Recipe.new(name, description)

    # 3. Adicionar ao cookbook
    @cookbook.add_recipe(new_recipe)

    # 4. Listar as receitas
    list
  end

  def destroy
    # 1. Listar todas as receitas
    list

    # 2. Pegar o index da receita a ser excluída
    index = @view.ask_index

    # 3. Pedir ao cookbook que exclua a receita pelo index
    @cookbook.remove_recipe(index)

    # 4. Listar todas as receitas
    list
  end
end