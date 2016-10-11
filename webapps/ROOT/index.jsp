<%@ page import="java.io.*,java.util.*,javax.mail.*"%>
<%@ page import="javax.mail.internet.*,javax.activation.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%
   String result;
   // Recipient's email ID needs to be mentioned.
   String to = "wash.araiguma@gmail.com";

   // Sender's email ID needs to be mentioned
   String from = "nao.masui@japan-reit.co.jp";

   // Assuming you are sending email from localhost
   String host = "smtp.sendgrid.net";

   // Get system properties object
   Properties properties = System.getProperties();

   // Setup mail server
   properties.setProperty("mail.smtp.host", host);
   properties.setProperty("mail.smtp.port", "465");

   //smtp関連の設定
   properties.setProperty("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
   properties.setProperty("mail.smtp.socketFactory.fallback", "false");
   properties.setProperty("mail.smtp.socketFactory.port", "465");

   //タイムアウトの設定
   properties.setProperty("mail.smtp.connectiontimeout", "50000");
   properties.setProperty("mail.smtp.timeout", "50000");

   // Get the default Session object.
   Session mailSession = Session.getDefaultInstance(properties);

   String result1 = "";
   String result2 = "";
   String result3 = "";
   String result4 = "";
   String result5 = "";
   String result6 = "";
   String result7 = "";

   try{
	  result1 = "1....";
      // Create a default MimeMessage object.
      MimeMessage message = new MimeMessage(mailSession);

      result2 = "2....";
      // Set From: header field of the header.
      message.setFrom(new InternetAddress(from));

      result3 = "3....";
      // Set To: header field of the header.
      message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));

      result4 = "4....";
      // Set Subject: header field
      message.setSubject("This is the Subject Line!");

      result5 = "5....";
      // Now set the actual message
      message.setText("This is actual message");

      result6 = "6....";
      // Send message
      Transport.send(message);

      result7 = "7....";
      result = "Sent message successfully....";
   }catch (MessagingException mex) {
      mex.printStackTrace();
      result = "Error: unable to send message....";
   }
%>
<!DOCTYPE html>
<html>
<head>
    <title>Microsoft Azure Web Site - Welcome</title>
    <style type="text/css">
        html {
            height: 100%;
            width: 100%;
        }

        #feature {
            width: 960px;
            margin: 95px auto 0 auto;
            overflow: auto;
        }

        #content {
            font-family: "Segoe UI";
            font-weight: normal;
            font-size: 26px;
            color: #ffffff;
            float: left;
            width: 460px;
            margin-top: 68px;
            margin-left: 0px;
            vertical-align: middle;
        }

            #content h1 {
                font-family: "Segoe UI Light";
                color: #ffffff;
                font-weight: normal;
                font-size: 70px;
                line-height: 48pt;
                width: 800px;
            }

	    #content h2 {
                font-family: "Segoe UI Light";
                color: #ffffff;
                font-weight: normal;
                font-size: 60px;
                line-height: 48pt;
                width: 800px;
            }

        p a, p a:visited, p a:active, p a:hover {
            color: #ffffff;
        }

        #content a.button {
            background: #0DBCF2;
            border: 1px solid #FFFFFF;
            color: #FFFFFF;
            display: inline-block;
            font-family: Segoe UI;
            font-size: 24px;
            line-height: 46px;
            margin-top: 10px;
            padding: 0 15px 3px;
            text-decoration: none;
        }

            #content a.button img {
                float: right;
                padding: 10px 0 0 15px;
            }

            #content a.button:hover {
                background: #1C75BC;
            }

        body {
            background-image: url('background.png');
            background-repeat: no-repeat;
            background-position: center;
        }
    </style >


</head>
<body bgcolor="#00abec" >
    <div id="feature">
        <div id="content">
            <h2>This Java based web application has been successfully created!!!!</h2>
            <p>
                There's nothing here yet, but Microsoft Azure makes it simple to publish content with
                <a href="http://www.windowsazure.com/en-us/documentation/articles/web-sites-deploy/#git" alt="GIT">GIT</a> and
                <a href="http://www.windowsazure.com/en-us/documentation/articles/web-sites-deploy/#ftp" alt="FTP">FTP</a>
            </p>

            <a href="http://go.microsoft.com/?LinkID=9844831" class="button">Tell me more<img border="0" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAB8AAAAdCAYAAABSZrcyAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyJpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMC1jMDYxIDY0LjE0MDk0OSwgMjAxMC8xMi8wNy0xMDo1NzowMSAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNS4xIFdpbmRvd3MiIHhtcE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6NERBNUVDMDBBNkE5MTFFMThGMDVCRkNEMjk1M0IwMTQiIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6NERBNUVDMDFBNkE5MTFFMThGMDVCRkNEMjk1M0IwMTQiPiA8eG1wTU06RGVyaXZlZEZyb20gc3RSZWY6aW5zdGFuY2VJRD0ieG1wLmlpZDo0REE1RUJGRUE2QTkxMUUxOEYwNUJGQ0QyOTUzQjAxNCIgc3RSZWY6ZG9jdW1lbnRJRD0ieG1wLmRpZDo0REE1RUJGRkE2QTkxMUUxOEYwNUJGQ0QyOTUzQjAxNCIvPiA8L3JkZjpEZXNjcmlwdGlvbj4gPC9yZGY6UkRGPiA8L3g6eG1wbWV0YT4gPD94cGFja2V0IGVuZD0iciI/PnW1aqMAAAE1SURBVHjaxFeLEYMgDEUnYARHYAS7gSM4AiN0A0dxBEbQDewG7QYUeonlqHzksHl3Oe80yQtJCMhYBrTWnZG7EaXDUKDTZfpMKvQJwlggfRG5+cCNzJ7DxYg8cgpBStBxYX3wbHLzUhjZzqwikS3rSyTJgfgJRvY5sEJYW8+XCJJDqoPKhQH4i+EhclWTOBCA+iGHFCEGVhlH/l1ybLD5RFO5wjNscPdsOzkYI3IHxHiwDXnGoEL0SD759bgwAOyrCclxMMiCWo5OM2EAIqIvHb3Piz0VFbo5ulu8En/JE2k6i1gAO2XLroGt/ZJq4NadcBXJX0ZuTdM8UjUjq7ld+QrfRAGxDVhBmt0VrwET5FjRAek+p5twpLOd/FQjPc/JbzKkdzjy2yv5vZ38j+Vf/2pvAQYAVsHorRPkS+QAAAAASUVORK5CYII%3D" /></a>

            <center>
				<h1>Send Email using JSP</h1>
			</center>
			<p align="center">
				<%
				   out.println("Result: " + result1 + result2 + result3 + result4 + result5 + result6 + result7 + result + "\n");
				%>
			</p>

          <font face="Segoe UI" size="4">
            <br/>
	    <br/>
            <table width="750" frame="below">
              <tr bgcolor="rgb(13,188,242)">
                <th align="left" width="200">    Java Property  </th>
                <th align="left" width="500">    Value  </th>
              </tr>
              <%@ page import="java.util.*" %>
              <%
                  ArrayList<String> mainPageProps = new ArrayList<String>();
                  mainPageProps.add("java.version");
                  mainPageProps.add("java.vendor");
                  mainPageProps.add("os.arch");
                  mainPageProps.add("catalina.base");
                  mainPageProps.add("jetty.base");
                  mainPageProps.add("user.timezone");
                  for(String name : mainPageProps)
                  {
                    String value = System.getProperty(name);
                    if(value != null)
                    {
  out.print("<tr><td>" + name);
  out.print("</td><td>" + value );
  out.print("</td></tr>");
                    }
                  }
              %>
            </table>
          </font>
        </div>
    </div>
</body>

</html>