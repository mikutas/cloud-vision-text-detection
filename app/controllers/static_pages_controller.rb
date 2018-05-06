class StaticPagesController < ApplicationController
  # Imports the Google Cloud client library
  require 'google/cloud/vision'
  require 'tempfile'

  def input
    @document = Document.new
  end

  def result
    # Your Google Cloud Platform project ID
    project_id = "my-mojiokoshi"

    # Instantiates a client
    vision = Google::Cloud::Vision.new(project: project_id, keyfile: Rails.application.credentials.google_service_account[:path])

    # The name of the image file to annotate
    file_name = params[:document][:image].tempfile.path

    # Performs label detection on the image file
    @result = vision.image(file_name).document
  end
end
