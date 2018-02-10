module Admin
  class DestiniesController < Admin::ApplicationController
    include ApplicationHelper
    # To customize the behavior of this controller,
    # you can overwrite any of the RESTful actions. For example:
    #
    # def index
    #   super
    #   @resources = Destiny.
    #     page(params[:page]).
    #     per(10)
    # end
    def show
      @table1 = AnimalDeath.where(:destiny_id => params[:id]).select(show_table1('show', Destiny, AnimalDeath)).limit(10)
      @table2 = AnimalSale.where(:destiny_id => params[:id]).select(show_table1('show', Destiny, AnimalSale)).limit(10)
      super
    end
    # Define a custom finder by overriding the `find_resource` method:
    # def find_resource(param)
    #   Destiny.find_by!(slug: param)
    # end

    # See https://administrate-prototype.herokuapp.com/customizing_controller_actions
    # for more information
  end
end
