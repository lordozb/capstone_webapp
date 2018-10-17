class Analyze < ApplicationRecord
	mount_uploader :file_location, DataUploader 
	belongs_to :video
end
