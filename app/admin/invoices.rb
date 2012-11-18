ActiveAdmin.register Invoice do
  scope_to :current_admin_user
  menu :label => 'Work Orders'

  controller do
    def create
      params[:invoice][:admin_user_id] = current_admin_user.id
      @invoice = current_admin_user.invoices.create(params[:invoice])
      current_admin_user.service_types.each do |service_type|
        next unless params["price_#{service_type.id}"] && params["price_#{service_type.id}"].to_f > 0
        @invoice.create_invoice_item(:service_type_id => service_type.id, :price => params["price_#{service_type.id}"], :notes => params["service_type_#{service_type.id}"])
      end
      redirect_to admin_customer_path(@invoice.customer)
    end

    def update
      params[:invoice][:admin_user_id] = current_admin_user.id
      super
    end
  end
  
end
