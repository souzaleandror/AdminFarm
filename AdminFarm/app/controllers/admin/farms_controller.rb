module Admin
  class FarmsController < Admin::ApplicationController
    include ApplicationHelper
    # To customize the behavior of this controller,
    # you can overwrite any of the RESTful actions. For example:
    #
    # def index
    #   super
    #   @resources = Farm.
    #     page(params[:page]).
    #     per(10)
    # end
    def show
      @table1 = FarmLot.where(:farm_id => params[:id]).select(show_table1('show', Farm, FarmLot)).limit(10)
      super
    end
    # Define a custom finder by overriding the `find_resource` method:
    # def find_resource(param)
    #   Farm.find_by!(slug: param)
    # end

    # See https://administrate-prototype.herokuapp.com/customizing_controller_actions
    # for more information
  end
end
