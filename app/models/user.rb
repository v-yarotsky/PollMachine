class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  validates_presence_of :name

  attr_accessible :email, :password, :password_confirmation, :remember_me, :name
  
  before_create do |user|
    user.uuid = UUIDTools::UUID.timestamp_create.to_s
  end
  
end
