ActiveAdmin.register Invoice, :as => "Work Order" do
  scope_to :current_admin_user

  controller do
    def create
      params[:invoice][:admin_user_id] = current_admin_user.id
      super
    end

    def update
      params[:invoice][:admin_user_id] = current_admin_user.id
      super
    end
  end
  
end
