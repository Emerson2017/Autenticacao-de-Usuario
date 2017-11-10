class User < ApplicationRecord
has_many :mural_atividades
has_many :minhas_atividades


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
validates_presence_of :username

	
end

