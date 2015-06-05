class Activity < ActiveRecord::Base
	belongs_to:manageable, polymorphic: true
end