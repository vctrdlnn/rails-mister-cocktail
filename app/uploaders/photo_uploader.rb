# encoding: utf-8

class PhotoUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave


  process eager: true  # Force version generation at upload time.

  process convert: 'png'

  version :standard do
    resize_to_fit 800, 600
  end

  version :bright_face do
    cloudinary_transformation effect: "brightness:30", radius: 20,
      width: 150, height: 150, crop: :thumb, gravity: :face
  end

  version :thumbnail do
    cloudinary_transformation effect: "brightness:30", radius: :max,
      width: 80, height: 130, gravity: :auto, crop: :thumb, :border=>"1px_solid_grey"
  end

  version :cocktail do
    cloudinary_transformation effect: "art:primavera", radius: 10, width: 400,
    height: 400, gravity: "auto", crop: "fill"
  end


  # Pour utiliser les versions: <%= image_tag @product.photo.url(:bright_face) %>
  # Sans versions:  <%= cl_image_tag @cocktail.photo, :bright_face %>



end
