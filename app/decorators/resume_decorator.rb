require 'ostruct'
class ResumeDecorator
	attr_accessor :data
	def initialize data
		@data = data
	end

	def basics
		def self.basics
			@basics
		end
		@basics = OpenStruct.new(self.data["basics"])
	end

	def location
		OpenStruct.new basics["location"]
	end

	def profiles
		OpenStruct.new basics["profiles"]
	end

	def work
		self.data["work"]
	end

	def volunteer
		OpenStruct.new self.data["volunteer"]
	end

	def education
		OpenStruct.new self.data["education"][0]
	end

	def publications
		OpenStruct.new self.data["publications"]
	end

	def skills
	 	self.data["skills"]
	end

	def keywords
		OpenStruct.new self.data["keywords"]		
	end

	def interests
		OpenStruct.new self.data["interests"]
	end

	def references
		OpenStruct.new self.data["references"]
	end
end