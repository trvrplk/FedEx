require 'redcarpet'


namespace :fedex do
	desc "Compile Markdown Emails" 
		task :md = :enviornment do
			`redcarpet #{ENV['file']}`
		end	
	end
end		