<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Edu School - Contact</title>
    <!-- Google fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Ubuntu:wght@300;400;500;700&display=swap" rel="stylesheet">
    <!-- Template CSS Style link -->
    <link rel="stylesheet" href="assets/css/style-starter.css">
    <%@page import="java.sql.*" %>
    <%@page import="javax.mail.*"%>
<%@page import="javax.mail.internet.*"%>
<%@page import="java.util.Properties"%>
</head>

<body>
     <%@include file="header.jsp" %>

    <!-- inner banner -->
    <section class="inner-banner py-5">
        <div class="w3l-breadcrumb py-lg-5">
            <div class="container pt-4 pb-sm-4">
                <h4 class="inner-text-title pt-5">Contact Us</h4>
                <ul class="breadcrumbs-custom-path">
                    <li><a href="index.html">Home</a></li>
                    <li class="active"><i class="fas fa-angle-right"></i>Contact Us</li>
                </ul>
            </div>
        </div>
    </section>
    <!-- //inner banner -->

    <!-- contact block -->
    <section class="w3l-contact py-5" id="contact">
        <div class="container py-md-5 py-4">
            <div class="title-main text-center mx-auto mb-md-5 mb-4" style="max-width:500px;">
                <p class="text-uppercase">Get In Touch</p>
                <h3 class="title-style">Contact Us</h3>
            </div>
            <div class="row contact-block">
                <div class="col-md-7 contact-right">
                      <%
 if(request.getParameter("submit")!=null) 
 {
 Properties props = new Properties();
 props.put("mail.smtp.host", "smtp.office365.com");
 props.put("mail.smtp.socketFactory.port", "587");
 props.put("mail.smtp.socketFactory.class",
 "javax.net.ssl.SSLSocketFactory");
 props.put("mail.smtp.auth", "true");
 props.put("mail.smtp.port", "587");
 props.put("mail.smtp.starttls.enable", "true");
 props.put("mail.smtp.ssl.trust", "*");
 props.put("mail.smtp.ssl.protocols", "TLSv1.2");

 Session session2 = Session.getInstance(props,
 new javax.mail.Authenticator() {
 protected PasswordAuthentication getPasswordAuthentication() {
 return new PasswordAuthentication("dikshaschoolproject@outlook.com","diksha@123");
 }
 });
 try {
 Message message = new MimeMessage(session2);
 message.addHeader("Content-type", "text/html; charset=UTF-8");
 message.setFrom(new InternetAddress("dikshaschoolproject@outlook.com"));
 message.setRecipients(Message.RecipientType.TO, InternetAddress.parse("dikshavashist2007@gmail.com"));
 message.setSubject(request.getParameter("subject"));

 message.setText("Name : " + request.getParameter("name") + "\nEmailid : "+ request.getParameter("email") 
 + "\nPhone :" + request.getParameter("phone") + "\nMessage : " + request.getParameter("message"));




 Transport.send(message);
 out.print("Mail has been sent successfully");

 }
 catch(Exception e)
 {
 out.println("Mail does not work due to " + e.getMessage());
 }
 
 
 
 }
 
 
 %>
                    <form method="post" class="signin-form">
                        <div class="input-grids">
                            <div class="row">
                                
                              
 
                                <div class="col-sm-6">
                                    <input type="text" name="name" id="w3lName" placeholder="Your Name"
                                        class="contact-input" required="" />
                                </div>
                                <div class="col-sm-6">
                                    <input type="email" name="email" id="w3lSender" placeholder="Your Email"
                                        class="contact-input" required="" />
                                </div>
                            </div>
                            <input type="text" name="w3lSubect" id="w3lSubect" placeholder="Subject"
                                class="contact-input" required="" />
                            <input type="text" name="phone" id="w3lWebsite" placeholder="Phone"
                                class="contact-input" required="" />
                        </div>
                        <div class="form-input">
                            <textarea name="messsage" id="message" placeholder="Type your message here"
                                required=""></textarea>
                        </div>
                        <div class="text-start">
                            <button class="btn btn-style btn-style-3" type="submit" name="submit">Send Message</button>
                        </div>
                    </form>
                    
                    
 






                </div>
                <div class="col-md-5 ps-lg-5 mt-md-0 mt-5">
                    <div class="contact-left">
                        <div class="cont-details">
                            <div class="d-flex contact-grid">
                                <div class="cont-left text-center me-3">
                                    <i class="fas fa-building"></i>
                                </div>
                                <div class="cont-right">
                                    <h6>Company Address</h6>
                                    <p>Edu School, 10001, 5th Avenue, 12202 street, London.</p>
                                </div>
                            </div>
                            <div class="d-flex contact-grid mt-4 pt-lg-2">
                                <div class="cont-left text-center me-3">
                                    <i class="fas fa-phone-alt"></i>
                                </div>
                                <div class="cont-right">
                                    <h6>Call Us</h6>
                                    <p><a href="tel:+1(21) 234 4567">+1(21) 112 7368</a></p>
                                </div>
                            </div>
                            <div class="d-flex contact-grid mt-4 pt-lg-2">
                                <div class="cont-left text-center me-3">
                                    <i class="fas fa-envelope-open-text"></i>
                                </div>
                                <div class="cont-right">
                                    <h6>Email Us</h6>
                                    <p><a href="mailto:example@mail.com" class="mail">example@mail.com</a></p>
                                </div>
                            </div>
                            <div class="d-flex contact-grid mt-4 pt-lg-2">
                                <div class="cont-left text-center me-3">
                                    <i class="fas fa-headphones-alt"></i>
                                </div>
                                <div class="cont-right">
                                    <h6>Customer Support</h6>
                                    <p><a href="mailto:info@support.com" class="mail">info@support.com</a></p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
    <!-- //contact block -->

    <%@include file="footer.jsp" %>
</body>

</html>