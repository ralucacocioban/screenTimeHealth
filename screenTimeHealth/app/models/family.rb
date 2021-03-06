class Family < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  
  has_many :kids
  accepts_nested_attributes_for :kids, :allow_destroy => true


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :email, presence: true
  validates :surname, presence: true
  validates :password, presence: true

end
