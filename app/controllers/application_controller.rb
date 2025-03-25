class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  # Done once only when only files are locally stored on the computer's disk.
  # Skip if files are uploaded to a cloud storage provider.
  include ActiveStorage::SetCurrent
end
