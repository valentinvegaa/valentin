class Task < ActiveRecord::Base
	belongs_to:project
	has_many:activities, as: :manageable
end