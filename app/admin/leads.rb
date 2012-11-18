ActiveAdmin.register Lead do
  menu :if => proc{ current_admin_user.super_duper? }
end
