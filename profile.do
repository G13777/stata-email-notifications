global EmailFrom djcoynestata@gmail.com // This is the gmail account you create to send the emails from stata
global EmailAccount djcoynestata        // The account name without the "@gmail.com"
global EmailPassword NOTMYREALPASSWORD  // Fill in your password 
global EmailSmtpServer smtp.gmail.com   // These two lines don't need to be changed if you're using gmail
global EmailSmtpPort 587                
global EmailSender "David Coyne's Stata" // How the sender name appears on the email

set more off, permanently                // These are other profile commands I always use. "set more off" might be important here
set logtype text
