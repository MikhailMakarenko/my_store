class Item < ApplicationRecord
  # attr_accessible :price, :name, :real, :weight, :description

    validates :price, numericality: { greater_than: 0, allow_nil: true }
    validates :name, :description, presence: true
    validates :name, presence: true

=begin
    belongs_to :category

    after_initialize { p 'initialized'} #Item.new; Item.first
    after_save       { p 'saved'} #Item.save; Item.create; item.update_attributes()
    after_create     { ItemMailer.new_item_created(self).deliver }
    after_update     { p 'updated'}
    after_destroy    { p 'destroyed'}
=end


end
