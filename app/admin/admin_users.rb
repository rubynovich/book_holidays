ActiveAdmin.register AdminUser do
 
  filter :email  
  filter :last_sign_in_at
  filter :last_sign_in_ip
  filter :current_sign_in_at
  filter :current_sign_in_ip  
  filter :created_at  
  filter :updated_at
    
  index do
    column :id
    column :email
    column :last_sign_in_at    
    column :last_sign_in_ip    
    column :created_at
    column :updated_at
    default_actions
  end
  
  form do |f|
    f.inputs "Devise" do
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.buttons
  end
end
