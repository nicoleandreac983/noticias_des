class User < ApplicationRecord
  enum :role, [:normal_user, :author, :admin]
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,:recoverable, :rememberable, :validatable
  has_many :posts
  image_url = Faker::Avatar.image

end
