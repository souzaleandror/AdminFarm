module Admin
  class AnimalStatesController < Admin::ApplicationController
    # To customize the behavior of this controller,
    # you can overwrite any of the RESTful actions. For example:
    #
    # def index
    #   super
    #   @resources = AnimalState.
    #     page(params[:page]).
    #     per(10)
    # end
    def show
      @table1 = Animal.where(:animal_state_id => requested_resource).select(show_table1('show', AnimalState, Animal)).limit(10)
      @table2 = Weighing.where(:animal_state_id => requested_resource).select(show_table1('show', AnimalState, Weighing)).limit(10)
      @table3 = AnimalCategory.where(:id => requested_resource.animal_category)
      @table4 = Gender.where(:id => requested_resource.gender)
      super
    end
    # Define a custom finder by overriding the `find_resource` method:
    # def find_resource(param)
    #   AnimalState.find_by!(slug: param)
    # end

    # See https://administrate-prototype.herokuapp.com/customizing_controller_actions
    # for more information
  end
end
