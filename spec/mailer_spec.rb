require 'spec_helper'

describe FedEx do
	it 'creates emails' do
		mailer = FedEx::Mailer.new do
			recipients ['foo@localhost', 'bar@localhost']
			subject "Hello World!"
		end
	end
end
