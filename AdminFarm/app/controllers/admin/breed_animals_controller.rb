module Admin
  class BreedAnimalsController < Admin::ApplicationController
    # To customize the behavior of this controller,
    # you can overwrite any of the RESTful actions. For example:
    #
    # def index
    #   super
    #   @resources = BreedAnimal.
    #     page(params[:page]).
    #     per(10)
    # end
    def show
      @table1 = AnimalCategory.where(:id => requested_resource.animal_category)
      super
    end
    # Define a custom finder by overriding the `find_resource` method:
    # def find_resource(param)
    #   BreedAnimal.find_by!(slug: param)
    # end

    # See https://administrate-prototype.herokuapp.com/customizing_controller_actions
    # for more information
  end
end
