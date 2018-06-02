Option Explicit

'########## 環境?????更 ???? ##########
Dim smtpserver : smtpserver = "gmail-smtp-in.l.google.com"        'SMTP server's IP address or name
Dim mailFrom   : mailFrom   = "mailbox@gmail.com" 'From address
Dim mailTo     : mailTo     = "sean010587@gmail.com"  'To address
Dim mailSubject: mailSubject= "您有新郵件!!!"
Dim mailBody   : mailBody   = "新郵件來囉~~~"
Dim mailAttachment : mailAttachment = "C:/Users/User/Desktop/TEST/download/mail.jpg"
'########## 環境?????更 ???? ##########


'Create Mail Object
Dim mail : Set mail = CreateObject("CDO.Message")
mail.From = mailFrom
mail.To = mailTo
mail.Subject = mailSubject
mail.TextBody = mailBody
mail.AddAttachment "C:/Users/User/Desktop/TEST/download/mail.jpg"


'Sending Mail
Dim schemas : schemas = "http://schemas.microsoft.com/cdo/configuration/"
mail.Configuration.Fields.Item(schemas&"sendusing") = 2
mail.Configuration.Fields.Item(schemas&"smtpserver") = smtpserver
mail.Configuration.Fields.Item(schemas&"smtpserverport") = 25
mail.Configuration.Fields.Update
mail.Send
