module Admin
  class FarmLotsController < Admin::ApplicationController
    # To customize the behavior of this controller,
    # you can overwrite any of the RESTful actions. For example:
    #
    # def index
    #   super
    #   @resources = FarmLot.
    #     page(params[:page]).
    #     per(10)
    # end
    def show
      @table1 = Farm.where(:id => requested_resource.farm)
      super
    end
    
    def new
      #super
      resource = resource_class.new
      if (defined? params[:farm_id])
        resource.farm_id = params[:farm_id]
      end
      #authorize_resource(resource)
      render locals: {
        page: Administrate::Page::Form.new(dashboard, resource),
      }
    end

    # Define a custom finder by overriding the `find_resource` method:
    # def find_resource(param)
    #   FarmLot.find_by!(slug: param)
    # end

    # See https://administrate-prototype.herokuapp.com/customizing_controller_actions
    # for more information
  end
end
