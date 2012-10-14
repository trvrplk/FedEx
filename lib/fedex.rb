require "fedex/version"

# @author cookiebatch
class FedEx
	class Mailer
		# @param [*args] tell the mailer who to send your email to. Uses a splat operator.
		# @return [nil]
		def recipients(*rec)
			@recipients = rec
		end

		# @param [String] tell the mailer the subject of the email.
		# @return [nil]
		def subject(*subj)
			@subj = subj
		end

		# @param [&blk] initialize the mailer.
		# @return [nil]
		def intialize(&blk)
			mail(:to => @recipients, :subject => @subj)
		end
	end
end
