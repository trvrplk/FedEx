require 'redcarpet'


namespace :fedex do
	desc "Compile Markdown Emails" 
		task :md = :enviornment do
			`redcarpet app/views/#{ENV['file']}`
		end	
	end
end		