class Car < ActiveRecord::Base
  attr_accessible :ano, :cor, :kilometragem, :marca, :modelo, :variacao

  belongs_to :user	
end
