ActiveAdmin.register AdminUser do     
  menu :if => proc{ current_admin_user.super_duper? }

  controller do
    def index
      if has_access
        super
      else
        redirect_to '/admin'
      end
    end

    def create
      if has_access
        super
      else
        redirect_to '/admin'
      end
    end

    def index
      if has_access
        super
      else
        redirect_to '/admin'
      end
    end

    def new
      if has_access
        super
      else
        redirect_to '/admin'
      end
    end

    def edit
      if has_access
        super
      else
        redirect_to '/admin'
      end
    end

    def update
      if has_access
        super
      else
        redirect_to '/admin'
      end
    end

    private

    def has_access
       current_admin_user.super_duper? || current_admin_user.id == params[:id].to_i
    end
  end
  index do                            
    column :email                     
    column :current_sign_in_at        
    column :last_sign_in_at           
    column :sign_in_count             
    default_actions                   
  end                                 

  filter :email                       

  form do |f|                         
    f.inputs "Login Information" do       
      f.input :email                  
      f.input :password               
      f.input :password_confirmation  
    end                               
    f.inputs "Company Information" do
      f.input :company_name
      f.input :address
      f.input :city
      f.input :state
      f.input :postal
      f.input :website
      f.input :logo_url
      f.input :twitter
      f.input :facebook
    end
    f.buttons                         
  end                                 
end                                   
