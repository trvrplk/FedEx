FedEx: Emails Galore!
=====================

FedEx is just ActionMailer.
---------------------------

All FedEx is is really just ActionMailer with sugar on top!

---------------------------------------------------------------
And it's all one method!
------------------------

To make a new mailer with FedEx, just call:


```	ruby
	FedEx::Mailer.create do |m|
		m.#mailer_name
		m.$recipients = "foo@bar.com"
		m.$subject = "Foobar"
	end
```	
	
And a template with something like:


```html
	<p>Hello</p>
	<br />
	<p>World!</p>
```


And You can use Dynamic ERb too!

```	html
	<p>Hello,</p> <%= recipients %> <p>!</p>
```
---------------------------------------------------------------
Use the Price Gun
-----------------
FedEx supports Markdown emails, as long as you use the rake task in the next section. Make sure that if using ERb tags use those, not any special syntax.
---------------------------------------------------------------
Generators and Rake Tasks and Enviornment Variables, Oh My!
===========================================================

###### Generators ######
FedEx comes with a `mailer_view` genrator. Given a view direcory called `bar`, run `rails g mailer_view foo_email` for example and get: 
``` markdown
	# find me in views/bar_mailer/foo_email.md
```

Make sure that the name provided for the generator is the same as the mailing name!

###### Rake Tasks ######
To compile markdown emails, run `rake fedex:md file=bar_mailer/foo_email.md`

**NOTE: if you're using dynamic ERb than add '.erb' to the name as this is not automaticaly done**

###### Environment Variables ######
Options passed on FedEx-related Rake tasks ar Environment Variables. That's it.
---------------------------------------------------------------The legal stuff
---------------
	Copyright (C) 2011 by cookiebatch

	Permission is hereby granted, free of charge, to any person obtaining a copy
	of this software and associated documentation files (the "Software"), to deal
	in the Software without restriction, including without limitation the rights
	to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
	copies of the Software, and to permit persons to whom the Software is
	furnished to do so, subject to the following conditions:

	The above copyright notice and this permission notice shall be included in
	all copies or substantial portions of the Software.

	THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
	IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
	FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
	AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
	LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
	OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
	THE SOFTWARE.	