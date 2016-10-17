class Sound < ApplicationRecord
	mount_uploader :soundAttachment, SoundAttachmentUploader
	mount_uploader :imageAttachment, ImageAttachmentUploader
end
