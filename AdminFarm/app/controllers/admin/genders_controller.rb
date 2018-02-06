module Admin
  class GendersController < Admin::ApplicationController
    include ApplicationHelper
    
    # To customize the behavior of this controller,
    # you can overwrite any of the RESTful actions. For example:
    #
    # def index
    #   super
    #   @resources = Gender.
    #     page(params[:page]).
    #     per(10)
    # end
    
    def show
       @table1 = AnimalStage.where(:gender_id => params[:id]).select(show_table1('show', Gender, AnimalStage)).limit(10)
       @table2 = AnimalState.where(:gender_id => params[:id]).select(show_table1('show', Gender, AnimalState)).limit(10)
       @table3 = Animal.where(:gender_id => params[:id]).select(show_table1('show', Gender, Animal)).limit(10)
       #@table4 = ApplicationMedicine.where(:animal_id => params[:id]).select(show_table1('show', Animal, ApplicationMedicine)).limit(10).descDateMedicine
      super
    end

    # Define a custom finder by overriding the `find_resource` method:
    # def find_resource(param)
    #   Gender.find_by!(slug: param)
    # end

    # See https://administrate-prototype.herokuapp.com/customizing_controller_actions
    # for more information
  end
end
