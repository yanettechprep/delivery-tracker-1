class DeliveriesController < ApplicationController
  def index
    deliveries = Delivery.all
    @list_of_deliveries = deliveries.order({ :created_at => :desc })
    render({ :template => "deliveries/index.html.erb" })
  end

  def create
    the_delivery = Delivery.new
    the_delivery.description = params.fetch("query_description")
    the_delivery.status = "waiting_on"
    the_delivery.user_id = session.fetch(:user_id)
    #the_delivery.details = params.fetch("query_details")
    the_delivery.arrive_on = params.fetch("query_supposed_to_arrive_on")
    the_delivery.save
        
    redirect_to("/", { :alert => "Added to list" })
  end
  
  def update
    the_delivery = Delivery.find(params[:path_id])

    current_status = params.fetch("query_status")
    the_delivery.status = current_status
    the_delivery.save
  
    redirect_to("/")
  end
  
  def destroy
    the_id = params.fetch("path_id")
    the_delivery = Delivery.where({ :id => the_id }).at(0)
  
    the_delivery.destroy
  
    redirect_to("/")
  end
end
