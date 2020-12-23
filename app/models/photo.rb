class Photo < ApplicationRecord
    # mounts paperclip image
    has_attached_file :image
     #Validates file, file type and file size
    validates_attachment :image, presence: true,
    content_type: { content_type: "image/jpeg" },
    size: { in: 0..10.kilobytes }
end
