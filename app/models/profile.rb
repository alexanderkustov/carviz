class Profile < ActiveRecord::Base
  attr_accessible :idade, :local, :sexo, :telefone
  belongs_to :user
end
