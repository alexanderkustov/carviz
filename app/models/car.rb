class Car < ActiveRecord::Base
  attr_accessible :ano, :cor, :kilometragem, :marca, :modelo, :variacao,:carphoto
  mount_uploader :carphoto, CarPhotoUploader
  belongs_to :user
end
