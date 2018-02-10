# All Administrate controllers inherit from this `Admin::ApplicationController`,
# making it the ideal place to put authentication logic or other
# before_actions.
#
# If you want to add pagination or other controller-level concerns,
# you're free to overwrite the RESTful controller actions.
module Admin
  class ApplicationController < Administrate::ApplicationController
    #include ApplicationHelper
    
    before_action :authenticate_admin

    def authenticate_admin
      # TODO Add authentication logic here.
    end
    
    # def show
    #   if not show_table('show', requested_resource.class).empty?
    #     show_table('show', requested_resource.class).each_with_index do |table, n|
    #       instance_variable_set("@table"+"#{n}", table.where(:gender_id => requested_resource).select(show_table1('show', requested_resource.class, table)).limit(10))
    #     end
    #   end  
    #   super
    # end  
    
    # Override this value to specify the number of elements to display at a time
    # on index pages. Defaults to 20.
    # def records_per_page
    #   params[:per_page] || 20
    # end
  end
end
