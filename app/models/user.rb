class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  # Setup accessible (or protected) attributes for your model
  attr_accessible :name, :email, :password, :password_confirmation, :remember_me
  attr_accessible :start_holiday, :end_holiday
  attr_accessible :officer, :department, :photo
  
  has_attached_file :photo, :styles => {:medium => "300x300>", :thumb => "100x100>"}
end
