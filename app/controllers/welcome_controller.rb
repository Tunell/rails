class WelcomeController < ApplicationController
  def index
  end
  def about
  	render :partial => "about"
  end
  def ajaxNavWelcome
 	render 'welcome.js'
  end
  def ajaxNavAbout
 	render 'about.js'
  end
  def ajaxNavContact
 	render 'contact.js'
  end
  def ajaxNavCv
 	render 'cv.js'
  end
  def ajaxNavProjects
 	render 'projects.js'
	end
  def download
  	pdf_filename = File.join(Rails.public_path, "/cv.pdf")
  	send_file(pdf_filename, :filename => "Pelles CV.pdf", :type => "application/pdf")
  end
end
