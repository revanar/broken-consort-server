class Collection < ApplicationRecord

  mount_base64_uploader :pdf_path, PdfUploader
  mount_base64_uploader :thumb_path, ThumbUploader


end
