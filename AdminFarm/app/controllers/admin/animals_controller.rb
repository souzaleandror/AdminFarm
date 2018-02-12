module Admin
  class AnimalsController < Admin::ApplicationController
    # include WelcomeHelper
    # To customize the behavior of this controller,
    # you can overwrite any of the RESTful actions. For example:
    #
    # def index
    #   super
    #   @resources = Animal.
    #     page(params[:page]).
    #     per(10)
    # end
    
    def show
       @table1 = AnimalDeath.where(:animal_id => requested_resource).select(show_table1('show', Animal, AnimalDeath)).limit(1)
       @table2 = AnimalSale.where(:animal_id => requested_resource).select(show_table1('show', Animal, AnimalSale)).limit(1)
       @table3 = Weighing.where(:animal_id => requested_resource).select(show_table1('show', Animal, Weighing)).limit(10).descWeighDate
       @table4 = ApplicationMedicine.where(:animal_id => requested_resource).select(show_table1('show', Animal, ApplicationMedicine)).limit(10).descDateMedicine
      super
    end
    
    # Define a custom finder by overriding the `find_resource` method:
    # def find_resource(param)
    #   Animal.find_by!(slug: param)
    # end

    # See https://administrate-prototype.herokuapp.com/customizing_controller_actions
    # for more information
  end
end
