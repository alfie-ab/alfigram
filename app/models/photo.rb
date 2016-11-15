class Photo < ApplicationRecord
  has_attached_file :image, styles: {large: "600x600>", medium: "300x300>", thumb: "150x150#"}
end
