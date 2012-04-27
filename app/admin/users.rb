ActiveAdmin.register User do
 
  filter :name
  filter :officer
  filter :email
  filter :department
  filter :start_holiday
  filter :end_holiday
  
  index do
    column :id
    column :name
    column :officer
    column :department
    column :email
    column :start_holiday
    column :end_holiday
    default_actions    
  end
  
  form do |f|
    f.inputs "Personal data" do
      f.input :name
      f.input :officer
      f.input :department
      f.input :photo, :as => :file
    end
    f.inputs "Authenticate data" do
      f.input :email
#      f.input :password
#      f.input :password_confirmation
    end
    f.inputs "Holiday" do
      f.input :start_holiday, :as => :date
      f.input :end_holiday, :as => :date      
    end
    f.buttons
  end
end
