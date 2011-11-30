require "fedex/version"

module FedEx
	class Mailing
		def create
			yield do
				def $mailer_name
					mail(:to=> $recipients, :subject => $subject)
				end
			end
		end
	end
end
