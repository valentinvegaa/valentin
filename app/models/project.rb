class Project < ActiveRecord::Base
	belongs_to :client
	has_many :tasks, dependent: :destroy
	accepts_nested_attributes_for :tasks, :allow_destroy => true
end
