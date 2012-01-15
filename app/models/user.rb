class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :username, :website, :city, :intro, :avatar, :notified

  validates :username, 
  				:length => { :maximum => 50 }, 
  				:uniqueness => { :case_sensitive => false }
  
  has_many :boards
end
