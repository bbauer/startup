ActiveAdmin.register Leads do
  menu :if => proc{ current_admin_user.super_duper? }
end
