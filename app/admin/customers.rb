ActiveAdmin.register Customer do
  form :partial => "form"
  filter :last_name
  filter :email
  filter :phone
  filter :last_service_date

  index do
    column :last_name 
    column :first_name
    column :phone
    column :email
    column :last_service_date
    default_actions
  end

  show :title => :display_name do
    render "show"
  end

  action_item :only => :show do
    link_to('New Work Order', work_order_admin_customer_path(customer))
  end
  

  member_action :work_order do
    @customer = Customer.find(params[:id])
    @invoice = @customer.invoices.new
    @service_types = @customer.service_types.collect{|s| [s.name,s.id] }
  end
  
  
end
