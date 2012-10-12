class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :name
  # attr_accessible :title, :body

  validates_uniqueness_of :email, :case_sensitive => false
  validates :name, :presence => true, :allow_blank => false, :allow_nil => false, :length => { :maximum => 25 }, :case_sensitive => false
end
