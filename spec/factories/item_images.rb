FactoryBot.define do
  factory :item_image do
    item_id   {"1"}
    image {Rack::Test::UploadedFile.new(File.join(Rails.root, 'app/assets/images/logo.png'))}
    
 
   
  end
end