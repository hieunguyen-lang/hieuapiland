import mysql.connector
import smtplib
import random
from email.message import EmailMessage
config = {
    "user": "root",
    "password": "password",
    "host": "localhost",
    "port": 3306,
    "database": "landinvest",
    "auth_plugin": "mysql_native_password",
}
def get_data_email():
    try:
        connection = mysql.connector.connect(**config)
        cursor = connection.cursor()
        cursor.execute("SELECT gmail, password_app FROM gmail_from")
        gmail_data = cursor.fetchall()
        # Choose a random row from gmail_data
        data = random.choice(gmail_data)
        print(str(data))
    except mysql.connector.Error as error:
        print(f"Failed to connect to MySQL database: {error}")
    finally:
        if "connection" in locals() and connection.is_connected():
            cursor.close()
            connection.close()
            print("MySQL connection closed")
    return data
async def send_mail_to_email(email, link, user_name, device_register):
    try:

        MainData_body = f""" 
            <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
            <html dir="ltr" xmlns="http://www.w3.org/1999/xhtml" xmlns:o="urn:schemas-microsoft-com:office:office">

            <head>
                <meta charset="UTF-8">
                <meta content="width=device-width, initial-scale=1" name="viewport">
                <meta name="x-apple-disable-message-reformatting">
                <meta http-equiv="X-UA-Compatible" content="IE=edge">
                <meta content="telephone=no" name="format-detection">
                <title></title>
                <!--[if (mso 16)]>
                <style type="text/css">
                
                </style>
                <![endif]-->
                
                <!--[if gte mso 9]>
            <xml>
                <o:OfficeDocumentSettings>
                <o:AllowPNG></o:AllowPNG>
                <o:PixelsPerInch>96</o:PixelsPerInch>
                </o:OfficeDocumentSettings>
            </xml>
            <![endif]-->
                <!--[if !mso]><!-- -->
                <link href="https://fonts.googleapis.com/css2?family=Imprima&display=swap" rel="stylesheet">
                <!--<![endif]-->
            </head>

            <body>
                <div dir="ltr" class="es-wrapper-color">
                    <!--[if gte mso 9]>
                        <v:background xmlns:v="urn:schemas-microsoft-com:vml" fill="t">
                            <v:fill type="tile" color="#ffffff"></v:fill>
                        </v:background>
                    <![endif]-->
                    <table class="es-wrapper" width="100%" cellspacing="0" cellpadding="0">
                        <tbody>
                            <tr>
                                <td class="esd-email-paddings" valign="top">
                                    <table cellpadding="0" cellspacing="0" class="es-footer esd-header-popover" align="center">
                                        <tbody>
                                            <tr>
                                                <td class="esd-stripe" align="center">
                                                    <table bgcolor="#bcb8b1" class="es-footer-body" align="center" cellpadding="0" cellspacing="0" width="600">
                                                        <tbody>
                                                            <tr>
                                                                <td class="esd-structure es-p20t es-p20b es-p40r es-p40l" align="left">
                                                                    <table cellpadding="0" cellspacing="0" width="100%">
                                                                        <tbody>
                                                                            <tr>
                                                                                <td width="520" class="esd-container-frame" align="center" valign="top">
                                                                                    <table cellpadding="0" cellspacing="0" width="100%">
                                                                                        <tbody>
                                                                                            <tr>
                                                                                                <td align="center" class="esd-empty-container" style="display: none;"></td>
                                                                                            </tr>
                                                                                        </tbody>
                                                                                    </table>
                                                                                </td>
                                                                            </tr>
                                                                        </tbody>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <table cellpadding="0" cellspacing="0" class="es-content" align="center">
                                        <tbody>
                                            <tr>
                                                <td class="esd-stripe" align="center">
                                                    <table bgcolor="#efefef" class="es-content-body" align="center" cellpadding="0" cellspacing="0" width="600" style="border-radius: 20px 20px 0 0 ">
                                                        <tbody>
                                                            <tr>
                                                                <td class="esd-structure es-p40t es-p40r es-p40l" align="left">
                                                                    <table cellpadding="0" cellspacing="0" width="100%">
                                                                        <tbody>
                                                                            <tr>
                                                                                <td width="520" class="esd-container-frame" align="center" valign="top">
                                                                                    <table cellpadding="0" cellspacing="0" width="100%">
                                                                                        <tbody>

                                                                                        </tbody>
                                                                                    </table>
                                                                                </td>
                                                                            </tr>
                                                                        </tbody>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="es-p20t es-p40r es-p40l esd-structure" align="left">
                                                                    <table cellpadding="0" cellspacing="0" width="100%">
                                                                        <tbody>
                                                                            <tr>
                                                                                <td width="520" class="esd-container-frame" align="center" valign="top">
                                                                                    <table cellpadding="0" cellspacing="0" width="100%" bgcolor="#fafafa" style="background-color: #fafafa; border-radius: 10px; border-collapse: separate;">
                                                                                        <tbody>
                                                                                            <tr>
                                                                                                <td align="left" class="esd-block-text es-p20">
                                                                                                    <h3>Welcome, {user_name}</h3>
                                                                                                    <p><br></p>
                                                                                                    <p>You recently requested to open your Future Love account. Use the button below to confirmation.<br><br>Confirm your email address by clicking the button below. This step adds extra security to your business by verifying you own this email.</p>
                                                                                                </td>
                                                                                            </tr>
                                                                                        </tbody>
                                                                                    </table>
                                                                                </td>
                                                                            </tr>
                                                                        </tbody>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <table cellpadding="0" cellspacing="0" class="es-content" align="center">
                                        <tbody>
                                            <tr>
                                                <td class="esd-stripe" align="center">
                                                    <table bgcolor="#efefef" class="es-content-body" align="center" cellpadding="0" cellspacing="0" width="600">
                                                        <tbody>
                                                            <tr>
                                                                <td class="esd-structure es-p30t es-p40b es-p40r es-p40l" align="left">
                                                                    <table cellpadding="0" cellspacing="0" width="100%">
                                                                        <tbody>
                                                                            <tr>
                                                                                <td width="520" class="esd-container-frame" align="center" valign="top">
                                                                                    <table cellpadding="0" cellspacing="0" width="100%">
                                                                                        <tbody>
                                                                                            <tr>
                                                                                                <td align="center" class="esd-block-button">
                                                                                                    <!--[if mso]><a href="" target="_blank" hidden>
                <v:roundrect xmlns:v="urn:schemas-microsoft-com:vml" xmlns:w="urn:schemas-microsoft-com:office:word" esdevVmlButton href="{link}" 
                            style="height:56px; v-text-anchor:middle; width:520px" arcsize="50%" stroke="f"  fillcolor="#fff">
                    <w:anchorlock></w:anchorlock>
                    <center style='color:#ffffff; font-family:Imprima, Arial, sans-serif; font-size:22px; font-weight:700; line-height:22px;  mso-text-raise:1px'>Confirm email</center>
                </v:roundrect></a>
            <![endif]-->
                                                                                                    <!--[if !mso]><!-- --><span class="msohide es-button-border" style="display: block; background: #fff;"><a href="{link}" class="es-button msohide" target="_blank" style="padding-left: 5px; padding-right: 5px; display: block; background: #fff; mso-border-alt: 10px solid  #fff">Confirm email</a></span>
                                                                                                    <!--<![endif]-->
                                                                                                </td>
                                                                                            </tr>
                                                                                        </tbody>
                                                                                    </table>
                                                                                </td>
                                                                            </tr>
                                                                        </tbody>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="esd-structure es-p40r es-p40l" align="left">
                                                                    <table cellpadding="0" cellspacing="0" width="100%">
                                                                        <tbody>
                                                                            <tr>
                                                                                <td width="520" class="esd-container-frame" align="center" valign="top">
                                                                                    <table cellpadding="0" cellspacing="0" width="100%">
                                                                                        <tbody>
                                                                                            <tr>
                                                                                                <td align="left" class="esd-block-text">
                                                                                                    <p>Thanks,<br><br>Future Love Team!</p>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td align="center" class="esd-block-spacer es-p40t es-p20b" style="font-size:0">
                                                                                                    <table border="0" width="100%" height="100%" cellpadding="0" cellspacing="0">
                                                                                                        <tbody>
                                                                                                            <tr>
                                                                                                                <td style="border-bottom: 1px solid #666666; background: unset; height: 1px; width: 100%; margin: 0px;"></td>
                                                                                                            </tr>
                                                                                                        </tbody>
                                                                                                    </table>
                                                                                                </td>
                                                                                            </tr>
                                                                                        </tbody>
                                                                                    </table>
                                                                                </td>
                                                                            </tr>
                                                                        </tbody>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <table cellpadding="0" cellspacing="0" class="es-content" align="center">
                                        <tbody>
                                            <tr>
                                                <td class="esd-stripe" align="center">
                                                    <table bgcolor="#efefef" class="es-content-body" align="center" cellpadding="0" cellspacing="0" width="600" style="border-radius: 0 0 20px 20px">
                                                        <tbody>
                                                            <tr>
                                                                <td class="esd-structure es-p20t es-p20b es-p40r es-p40l esdev-adapt-off" align="left">
                                                                    <table width="520" cellpadding="0" cellspacing="0" class="esdev-mso-table">
                                                                        <tbody>
                                                                            <tr>
                                                                                <td class="esdev-mso-td" valign="top">
                                                                                    <table cellpadding="0" cellspacing="0" align="left" class="es-left">
                                                                                        <tbody>
                                                                                            <tr>
                                                                                                <td width="47" class="esd-container-frame" align="center" valign="top">
                                                                                                    <table cellpadding="0" cellspacing="0" width="100%">
                                                                                                        <tbody>
                                                                                                            <tr>
                                                                                                                <td align="center" class="esd-block-image es-m-txt-l" style="font-size: 0px;"><a target="_blank" href="https://ibb.co/c3Tqtm0"><img src="https://i.ibb.co/h980Hqb/love.png" alt="Demo" style="display: block;" width="47" title="Demo"></a></td>
                                                                                                            </tr>
                                                                                                        </tbody>
                                                                                                    </table>
                                                                                                </td>
                                                                                            </tr>
                                                                                        </tbody>
                                                                                    </table>
                                                                                </td>
                                                                                <td width="20"></td>
                                                                                <td class="esdev-mso-td" valign="top">
                                                                                    <table cellpadding="0" cellspacing="0" class="es-right" align="right">
                                                                                        <tbody>
                                                                                            <tr>
                                                                                                <td width="453" class="esd-container-frame" align="center" valign="top">
                                                                                                    <table cellpadding="0" cellspacing="0" width="100%">
                                                                                                        <tbody>
                                                                                                            <tr>
                                                                                                                <td align="left" class="esd-block-text">
                                                                                                                    <p style="font-size: 16px;">This link expire in 24 hours. If you have questions, <a target="_blank" style="font-size: 16px;" href="https://viewstripo.email">we're here to help</a></p>
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                        </tbody>
                                                                                                    </table>
                                                                                                </td>
                                                                                            </tr>
                                                                                        </tbody>
                                                                                    </table>
                                                                                </td>
                                                                            </tr>
                                                                        </tbody>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <table cellpadding="0" cellspacing="0" class="es-footer" align="center">
                                        <tbody>
                                            <tr>
                                                <td class="esd-stripe" align="center">
                                                    <table bgcolor="#bcb8b1" class="es-footer-body" align="center" cellpadding="0" cellspacing="0" width="600">
                                                        <tbody>
                                                            <tr>
                                                                <td class="esd-structure es-p40t es-p30b es-p20r es-p20l" align="left" esd-custom-block-id="853188">
                                                                    <table cellpadding="0" cellspacing="0" width="100%">
                                                                        <tbody>
                                                                            <tr>
                                                                                <td width="560" align="left" class="esd-container-frame">
                                                                                    <table cellpadding="0" cellspacing="0" width="100%">
                                                                                        <tbody>
                                                                                            <tr>
                                                                                                <td align="center" class="esd-block-image es-p20b es-m-txt-c" style="font-size: 0px;"><a target="_blank"><img src="https://i.ibb.co/h980Hqb/love.png" alt="Logo" style="display: block; font-size: 12px;" title="Logo" height="60"></a></td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td align="center" class="esd-block-social es-m-txt-c es-p10t es-p20b" style="font-size:0">
                                                                                                    <table cellpadding="0" cellspacing="0" class="es-table-not-adapt es-social">
                                                                                                        <tbody>
                                                                                                            <tr>
                                                                                                                <td align="center" valign="top" esd-tmp-icon-type="twitter" class="es-p5r"><a target="_blank" href><img src="https://tlr.stripocdn.email/content/assets/img/social-icons/logo-black/twitter-logo-black.png" alt="Tw" title="Twitter" height="24"></a></td>
                                                                                                                <td align="center" valign="top" esd-tmp-icon-type="facebook" class="es-p5r"><a target="_blank" href><img src="https://tlr.stripocdn.email/content/assets/img/social-icons/logo-black/facebook-logo-black.png" alt="Fb" title="Facebook" height="24"></a></td>
                                                                                                                <td align="center" valign="top" esd-tmp-icon-type="linkedin"><a target="_blank" href><img src="https://tlr.stripocdn.email/content/assets/img/social-icons/logo-black/linkedin-logo-black.png" alt="In" title="Linkedin" height="24"></a></td>
                                                                                                            </tr>
                                                                                                        </tbody>
                                                                                                    </table>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td align="center" class="esd-block-text" esd-links-underline="none">
                                                                                                    <p style="font-size: 13px;"><a target="_blank" style="text-decoration: none;"></a><a target="_blank" style="text-decoration: none;">Privacy Policy</a><a target="_blank" style="font-size: 13px; text-decoration: none;"></a> • <a target="_blank" style="text-decoration: none;">Unsubscribe</a></p>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td align="center" class="esd-block-text es-p20t" esd-links-underline="none">
                                                                                                    <p><a target="_blank"></a>Copyright © 2023 ThinkDiff Company<a target="_blank"></a></p>
                                                                                                </td>
                                                                                            </tr>
                                                                                        </tbody>
                                                                                    </table>
                                                                                </td>
                                                                            </tr>
                                                                        </tbody>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <table cellpadding="0" cellspacing="0" class="es-footer esd-footer-popover" align="center">
                                        <tbody>
                                            <tr>
                                                <td class="esd-stripe" align="center" esd-custom-block-id="819294">
                                                    <table bgcolor="#ffffff" class="es-footer-body" align="center" cellpadding="0" cellspacing="0" width="600">
                                                        <tbody>
                                                            <tr>
                                                                <td class="esd-structure es-p20" align="left">
                                                                    <table cellpadding="0" cellspacing="0" width="100%">
                                                                        <tbody>
                                                                            <tr>
                                                                                <td width="560" class="esd-container-frame" align="left">
                                                                                    <table cellpadding="0" cellspacing="0" width="100%">
                                                                                        <tbody>
                                                                                            <tr>
                                                                                                <td align="center" class="esd-empty-container" style="display: none;"></td>
                                                                                            </tr>
                                                                                        </tbody>
                                                                                    </table>
                                                                                </td>
                                                                            </tr>
                                                                        </tbody>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </body>

            </html>
"""
        print("_____truoc_khi_guimail_____")
        data = get_data_email()
        print(data[0], [data[1]])
        # msg = MIMEText(body, "html")
        # msg["To"] = email
        # msg["From"] = data[0]
        # msg["Subject"] = "FutureLove Account Register - Generate Images With AI"
        # server = smtplib.SMTP("smtp.postmarkapp.com", 587)
        # print("_____SONPRO_____")
        # print(data[0])
        # print(data[1])
        # server.starttls()
        # server.login(data[0], data[1])
        # server.sendmail(msg["From"], msg["To"], msg.as_string())
        # server.quit()
        # print("Email sent successfully!")
        msg = EmailMessage()
        msg["Subject"] = "Verify Account AI Make Wedding Online"
        msg["From"] = "devmobilepro1888@gmail.com"
        msg["To"] = email
        msg.set_content(
            f"""\
            {MainData_body}
        """,
            subtype="html",
        )
        server = smtplib.SMTP_SSL("smtp.gmail.com", 465)
        server.ehlo()
        server.login(data[0], data[1])
        server.send_message(msg)

        server.close()
    except Exception as e:
        print("An error occurred while sending the email:")
        print(str(e))
        print(email, link, user_name, device_register)
        return str(e)
