module Admin
  class MedicinesController < Admin::ApplicationController
    # To customize the behavior of this controller,
    # you can overwrite any of the RESTful actions. For example:
    #
    # def index
    #   super
    #   @resources = Medicine.
    #     page(params[:page]).
    #     per(10)
    # end
    
    def show
      @table1 = ApplicationMedicine.where(:medicine_id => requested_resource).select(show_table1('show', Medicine, ApplicationMedicine)).limit(10)
      super
    end
    
    # Define a custom finder by overriding the `find_resource` method:
    # def find_resource(param)
    #   Medicine.find_by!(slug: param)
    # end

    # See https://administrate-prototype.herokuapp.com/customizing_controller_actions
    # for more information
  end
end
