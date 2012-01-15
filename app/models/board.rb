class Board < ActiveRecord::Base
	attr_accessible :name

	belongs_to :user
	belongs_to :category

	validates :name, :presence => true, :length => { :maximum => 40 }
  	validates :user_id, :presence => true
  	validates :category_id, :presence => true

	default_scope :order => 'boards.created_at DESC'
end
