class Document < ApplicationRecord
  mount_uploader :image, ImageUploader
end
