class StoreAdminController < ApplicationController
  layout 'admin'
  def admin
    #should use the 'admin' template; should be default for all other views unless specified otherwise
  end

  def home 
    #should use the 'admin' template
  end

  def orders
    render :layout => "order_administration"
  end

  def invoice
    render :layout => false 
    #setting layout to false will cause this store_admin#invoice action to not render a layout at all.
    #we dont store_admin#invoice to use any layout(while also not affecting the layouts assigned to other controller#s)
  end
end
