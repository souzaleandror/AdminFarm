module Admin
  class AnimalStagesController < Admin::ApplicationController
    # To customize the behavior of this controller,
    # you can overwrite any of the RESTful actions. For example:
    #
    # def index
    #   super
    #   @resources = AnimalStage.
    #     page(params[:page]).
    #     per(10)
    # end
    def show
      @table1 = Animal.where(:animal_stage_id => requested_resource).select(show_table1('show', AnimalStage, Animal)).limit(10)
      @table2 = Weighing.where(:animal_stage_id => requested_resource).select(show_table1('show', AnimalStage, Weighing)).limit(10)
      @table3 = AnimalCategory.where(:id => requested_resource.animal_category)
      @table4 = Gender.where(:id => requested_resource.gender)
      super
    end
    # Define a custom finder by overriding the `find_resource` method:
    # def find_resource(param)
    #   AnimalStage.find_by!(slug: param)
    # end

    # See https://administrate-prototype.herokuapp.com/customizing_controller_actions
    # for more information
  end
end
