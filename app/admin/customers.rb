ActiveAdmin.register Customer do
  scope_to :current_admin_user
  form :partial => "form"
  filter :last_name
  filter :email
  filter :phone
  filter :last_service_date

  controller do
    def create
      params[:customer][:admin_user_id] = current_admin_user.id
      super
    end

    def update
      params[:customer][:admin_user_id] = current_admin_user.id
      super
    end
  end

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
    @service_types = current_admin_user.service_types
  end
  
  
end
