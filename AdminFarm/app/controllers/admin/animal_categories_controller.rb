module Admin
  class AnimalCategoriesController < Admin::ApplicationController
    include ApplicationHelper
    # To customize the behavior of this controller,
    # you can overwrite any of the RESTful actions. For example:
    #
    # def index
    #   super
    #   @resources = AnimalCategory.
    #     page(params[:page]).
    #     per(10)
    # end
    
    def show
       @table1 = Animal.where(:animal_category_id => params[:id]).select(show_table1('show', AnimalCategory, Animal)).limit(10)
       @table2 = BreedAnimal.where(:animal_category_id => params[:id]).select(show_table1('show', AnimalCategory, BreedAnimal)).limit(10)
       @table3 = AnimalStage.where(:animal_category_id => params[:id]).select(show_table1('show', AnimalCategory, AnimalStage)).limit(10)
       @table4 = AnimalState.where(:animal_category_id => params[:id]).select(show_table1('show', AnimalCategory, AnimalState)).limit(10)
       @table5 = Medicine.where(:animal_category_id => params[:id]).select(show_table1('show', AnimalCategory, Medicine)).limit(10)
       @table6 = Vaccine.where(:animal_category_id => params[:id]).select(show_table1('show', AnimalCategory, Vaccine)).limit(10)
      super
    end

    # Define a custom finder by overriding the `find_resource` method:
    # def find_resource(param)
    #   AnimalCategory.find_by!(slug: param)
    # end

    # See https://administrate-prototype.herokuapp.com/customizing_controller_actions
    # for more information
  end
end
