SimpleForm.setup do |config|
  config.label_text = lambda { |label, required| "#{label} #{required}" }
  config.default_input_size = 28
end