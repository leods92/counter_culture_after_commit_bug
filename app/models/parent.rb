class Parent < ActiveRecord::Base
  has_many :children

  def special_save
    transaction do
      save

      # This must happen here in case it fails everything
      # must be rolled back.
      children.first.update_attribute :name, "John"
    end
  end
end
