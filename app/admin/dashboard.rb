ActiveAdmin.register_page "Dashboard" do

  menu :priority => 1, :label => proc{ I18n.t("active_admin.dashboard") }

  content :title => proc{ "Cleaner's Dashboard" } do
    columns do
       column do

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
  end # content
end
