class User < ApplicationRecord
  # Include default devise modules. Others available are: , :validatable 
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable

   validates_presence_of :name

   def first_name
   	self.name.split.first
   end

   def last_name
   	self.name.split.last
   end
  
end
