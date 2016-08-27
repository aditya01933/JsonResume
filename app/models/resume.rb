require 'json'

class Resume
	def show
		path = Rails.root.join("app/assets/javascripts", "resume.json")
		file = File.read(path)
		data_hash = JSON.parse(file)
	end
end