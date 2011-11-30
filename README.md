FedEx: Emails Galore!
=====================

FedEx is just ActionMailer.
---------------------------

All FedEx is is really just ActionMailer with sugar on top!

And it's all one method!
------------------------

To make a new mailer with FedEx, just call:


```	ruby
	FedEx::Mailer.create do |m|
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
	<p>Hello,</p> <%= $recipients %> <p>!</p>
```


The legal stuff
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