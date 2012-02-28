module Spree::InquiriesHelper
  def translate_types
    INQUIRY_TYPES.collect { |i| i }
  end
end
