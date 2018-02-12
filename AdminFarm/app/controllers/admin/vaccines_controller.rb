module Admin
  class VaccinesController < Admin::ApplicationController
    # To customize the behavior of this controller,
    # you can overwrite any of the RESTful actions. For example:
    #
    # def index
    #   super
    #   @resources = Vaccine.
    #     page(params[:page]).
    #     per(10)
    # end
    
    def show
      @table1 = Vaccination.where(:vaccine_id => requested_resource).select(show_table1('show', Vaccine, Vaccination)).limit(10)
      super
    end
    
    # Define a custom finder by overriding the `find_resource` method:
    # def find_resource(param)
    #   Vaccine.find_by!(slug: param)
    # end

    # See https://administrate-prototype.herokuapp.com/customizing_controller_actions
    # for more information
  end
end
