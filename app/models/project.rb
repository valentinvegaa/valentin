class Project < ActiveRecord::Base
	belongs_to :client
	has_many :tasks, dependent: :destroy
	accepts_nested_attributes_for :tasks, reject_if: proc { |a| a['name'].blank? }, :allow_destroy => true
end
