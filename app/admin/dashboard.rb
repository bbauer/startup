ActiveAdmin.register_page "Dashboard" do

  menu :priority => 1, :label => proc{ I18n.t("active_admin.dashboard") }

  content :title => proc{ "Cleaner's Dashboard" } do
    if current_admin_user

    columns do
       column do
          panel "Welcome Back #{current_admin_user.first_name}!" do
            p "Below you will find a snapshot of some important data that will help run your business more efficiently.  To update your company profile and other settings, please access the menu below:"
            ul do
              li link_to("Modify Company Information", edit_admin_admin_user_path(current_admin_user))
            end
          end
       end
    end
  #  div :class => "blank_slate_container", :id => "dashboard_default_message" do
  #    span :class => "blank_slate" do
  #      span "Welcome to Active Admin. This is the default dashboard page."
  #      small "To add dashboard sections, checkout 'app/admin/dashboards.rb'"
  #    end
  #  end

    # Here is an example of a simple dashboard with columns and panels.
    #
     columns do
       column do
         panel "Upcoming Jobs" do
           ul do
             current_admin_user.invoices.limit(5).map do |invoice|
               li link_to("#{invoice.customer.display_name} - #{invoice.service_date.strftime("%m/%d/%Y")}", admin_customer_path(invoice.customer))
             end
           end
         end
       end

       column do
         panel "Tomorrow's Route" do
          div :id => 'map', :style => "width: 100%; height: 280px"
          render 'map'
         end
       end
     end
    end
  end # content
end
