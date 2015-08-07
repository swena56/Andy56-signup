class ProgrammingPracticeController < ApplicationController
#http_basic_authenticate_with name: "admin", password: "password"
#force_ssl only: :cheeseburger
  def index

  	if params[:status] == "activated"

  	end
  	@current_date = DateTime.now.to_date
    @myBirthday = Date.new(1986,8,27)
    
    
  end

  #not sure how to download a file yet
  def download_file
  	client = Client.find(params[:id])
  	send_data generate_pdf(client),filename: "#{client.name}.pdf", type: "application/pdf"
  end

  def getDate
  	return "date!!!"
  end






private
  def generate_pdf(client)
  	#Prawn::Document.new do
  	#	text client.name, align: : center
  	#	text "Address: #{client.address}"
  	#	text "Email: #{client.email}"
  	#end.render
  	#end
  end
end
