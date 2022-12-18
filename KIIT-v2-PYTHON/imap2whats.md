##### First, you will need to register as a WhatsApp Business API client to use the API. You can do this by visiting the WhatsApp Business API website and filling out the registration form.
##### Change file extension from .md to py and remove the instruction lines to use code
###### s341 - me@ateeq.cloud

Once you have registered and been approved as a client, you will need to obtain your API credentials, including your API key and API secret.

Next, install the whatsapp and imaplib Python libraries using pip:

      pip install whatsapp imaplib

Import the necessary libraries and classes in your Python script:
      
      from whatsapp import Client
      import imaplib
      import email
      
Initialize the WhatsApp client with your API key and API secret:
    client = Client(api_key, api_secret)
  
Connect to your email account using the imaplib library:

    mail = imaplib.IMAP4_SSL('imap.gmail.com')
    mail.login('your_email@gmail.com', 'your_email_password')
    mail.list()
    mail.select('inbox')
Retrieve the latest email in your inbox:

    result, data = mail.search(None, "ALL")
    ids = data[0]
    id_list = ids.split()
    latest_email_id = id_list[-1]
    result, data = mail.fetch(latest_email_id, "(RFC822)")

Parse the email using the email library:

    raw_email = data[0][1]
    email_message = email.message_from_bytes(raw_email)
Extract the subject and body of the email:

    subject = email_message['Subject']
    body = email_message.get_payload()
Send a WhatsApp message using the send_message method:

    client.send_message('whatsapp:+1234567890', f'You have received a new email with subject "{subject}" and body "{body}"')


This script will connect to your email account, retrieve the latest email in your inbox, parse the email to extract the subject and body, and send a WhatsApp message with the subject and body of the email.      
