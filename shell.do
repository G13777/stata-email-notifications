global dofile "E:\test.do"  // Change this to the do-file you want to run.
global email "EMAIL@provider.com" // Change to your email address where you want to RECEIVE the notification (not the sender)



************ NO NEED TO EDIT BELOW UNLESS YOU WANT TO ADD ATTACHMENTS ****************

// This runs the do-file, and will continue onto the notifier regardless of errors.
capture noisily do $dofile

// Replace the email address here with your email address.
if _rc==0{
	psemail $email, s(Program Complete) b(Your program "$dofile" completed successfully.)
}

if _rc!=0{
	psemail $email, s(ERROR) b(Your program "$dofile" has encountered an error.)
}
