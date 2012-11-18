ActiveAdmin.register ServiceType do
  scope_to :current_admin_user

  controller do
    def create
      params[:service_type][:admin_user_id] = current_admin_user.id
      super
    end

    def update
      params[:service_type][:admin_user_id] = current_admin_user.id
      super
    end
  end
  
end
