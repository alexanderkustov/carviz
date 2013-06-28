class Profile < ActiveRecord::Base
  mount_uploader :avatar, AvatarUploader

  attr_accessible :idade, :local, :sexo, :telefone, :avatar, :remote_avatar_url
  belongs_to :user
end
