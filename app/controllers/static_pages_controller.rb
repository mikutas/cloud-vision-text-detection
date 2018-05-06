class StaticPagesController < ApplicationController
  # Imports the Google Cloud client library
  require "google/cloud/vision"

  def input
  end

  def result
    # Your Google Cloud Platform project ID
    project_id = "my-mojiokoshi"

    # Instantiates a client
    vision = Google::Cloud::Vision.new project: project_id

    # The name of the image file to annotate
    file_name = "app/assets/images/test.png"

    # Performs label detection on the image file
    @document = vision.image(file_name).document

    puts @document.text
  end
end
