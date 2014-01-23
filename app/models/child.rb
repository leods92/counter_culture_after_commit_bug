class Child < ActiveRecord::Base
  belongs_to :parent
  belongs_to :school

  attr_accessible :name

  counter_culture :school
end
