READ ME

Feel free to use and distribute as you wish; this is by no means a perfect or fancy-looking script. It was something I threw together to 
help in my work and thought someone might benefit from it.

This is meant to help automate the process of removing Auto-Mapping from Outlook mailboxes. In the end this will allow the person with delegated access to
be able to access the mailbox from within OWA but it will not show up in their list of mailboxes in the Outlook app. This is meant to help speed up
Outlook in cases where someone has access to many mailboxes but only needs to get to them periodically.

I would only use this script if the delegate does not need to have the mailbox in their Outlook at all times. If they are fine with using OWA
as needed, then this will work for them.

When run it will prompt you for your O365 Admin credentials, which will then run the command to connect to Exchange Online. You will be asked for
password and MFA if applicable.

You will then get prompts for both the mailbox being shared, and the mailbox that is getting access.

After finishing the command it will prompt you to see if you'd like to do another. If 1 is selected it will return to the prompt
for the mailbox being shared. If 2 is selected the script will end.

Have fun, stay curious!
