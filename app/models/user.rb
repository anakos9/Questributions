class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

    has_many :tasks
    has_many :projects
    
    def full_name
      full_name = self.first_name + " " + self.last_name
      return full_name
    end
    
end
