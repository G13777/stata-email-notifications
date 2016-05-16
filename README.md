# stata-email-notifications
Implementation to make stata email a user when a program finishes running

NOTES

This can be easily implemented in Windows machines, but it will not work on Macs, given that it implements Windows PowerShell to do the email. There is almost surely a similar program written for Macs, though, so I encourage someone to look for one. If the code is simple enough, I encourage whoever finds it to contact me or ask to commit to this repository.

PREREQUISITES

1. Install the psemail command in Stata (ssc install psemail)

2. A Gmail account (I actually created a new one specifically for this purpose, because you're going to need to write the password in a do-file and not use two-step authentication, which I'm not cool with on my main Gmail account.)

IMPLEMENTATION

1. Initialize the profile.do file and save to your Stata ado folder (For example, mine is simply C:\ado\).

2. Use the command "psemail EMAILADDRESS, s(SUBJECT) b(BODY) a(ATTACHMENT)" in your code, where the capitalized sections are to be filled in with the parameters you wish to email.

SUGGESTIONS

1. Because of the way Stata will call PowerShell, if you want to loop through a list sending emails, say a grade report to each student of a course, then you're going to want to include a line under psemail that reads "sleep 3000". This will cause Stata to pause for 3 seconds, and should give your computer adequate time to open PowerShell, send the email, and close PowerShell before re-calling the PowerShell program. If you don't pause, the calls to PowerShell will overlap and something bad might happen (I don't know, I haven't felt daring enough).

2. If you have a cell phone through Verizon, I have even better news... you can send the email to yourphonenumber@vtext.com and you will receive a text message with your notification. Other phone carriers may have a similar email address, but I'm not familiar with them. If you text instead of email, the attachments are removed.

3. This currently only works with 1 attachment. Not really sure how to do more.

4. If you want to allow for the possibility of errors (highly suggested), then you want to run the do-file using the capture command and use conditional email notifications. See the included shell for an example script.

