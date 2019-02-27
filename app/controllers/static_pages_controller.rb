class StaticPagesController < ApplicationController
  # Imports the Google Cloud client library
  require 'google/cloud/vision'
  require 'tempfile'

  def input
    @document = Document.new
  end

  def result
    # Instantiates a client
    image_annotator = Google::Cloud::Vision::ImageAnnotator.new(
      version: :v1,
      credentials: JSON.parse(Rails.application.credentials.google_service_account[:json])
    )

    # The name of the image file to annotate
    file_name = params[:document][:image].tempfile.path

    response = image_annotator.document_text_detection image: file_name
    text = ''
    response.responses.each do |res|
      res.text_annotations.each do |annotation|
        text << annotation.description
      end
    end
    @result = text
  end
end
