<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Update teacher : Welcome to School Management System</title>
    <!-- Google fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Ubuntu:wght@300;400;500;700&display=swap" rel="stylesheet">
    <!-- Template CSS Style link -->
    <link rel="stylesheet" href="assets/css/style-starter.css">
    <%@include file="vars.jsp" %>
    <%@page import="java.sql.*" %>
</head>

<body>
    <%@include file="adminheader.jsp" %>
    <!-- inner banner -->
    <section class="inner-banner py-5">
        <div class="w3l-breadcrumb py-lg-5">
            <div class="container pt-4 pb-sm-4">

                <ul class="breadcrumbs-custom-path">
                    <li><a href="index.html">Home</a></li>
                    <li class="active"><i class="fas fa-angle-right"></i>Update Teacher</li>
                </ul>
            </div>
        </div>
    </section>
    <!-- //inner banner -->

    <%
        String tid = request.getParameter("teachid");
        String name1 = "", email1 = "", gender1 = "", quali = "", phone = "", dob = "", joining = "", subject = "", adress = "", loginid = "";

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection myconnection = DriverManager.getConnection(PATH + PLACE, USERNAME, PASSWORD);

            PreparedStatement mystatement = myconnection.prepareStatement("select * from teacher where teachid=?");
            mystatement.setString(1, tid);

            ResultSet myresult = mystatement.executeQuery();
            if (myresult.next()) {
                name1 = myresult.getString("name1");
                loginid = myresult.getString("loginid");
                email1 = myresult.getString("email");
                phone = myresult.getString("phone");
                gender1 = myresult.getString("gender1");
                dob = myresult.getString("dob");
                quali = myresult.getString("quali");
                subject = myresult.getString("subject");
                adress = myresult.getString("adress");
                joining = myresult.getString("joining");
            } else {
                out.print("Wrong Teacher id");
            }
        } catch (Exception e) {
            out.print("Error in Connection or Query due to " + e.getMessage());
        }
    %>

    <!-- contact block -->
    <section class="w3l-contact py-5" id="contact">
        <div class="container py-md-5 py-4">
            <div class="title-main text-center mx-auto mb-md-5 mb-4" style="max-width:500px;">
                <p class="text-uppercase">Teacher Section</p>
                <h3 class="title-style">Update Teacher</h3>
            </div>
            <div class="row contact-block">
                <div class="col-md-6 contact-right">
                    <form method="post" >
                        <div class="input-grids">
                            <div class="row">
                                
                                <%
        
        if(request.getParameter("updatebtn")!=null)
        {
            
           
            name1=request.getParameter("name");
                loginid=request.getParameter("teach");
                email1=request.getParameter("email");
                 phone=request.getParameter("phone");
                gender1=request.getParameter("gender");
                dob= request.getParameter("dob");
               
                 quali= request.getParameter("Quali");
                  subject= request.getParameter("sub");
                  adress= request.getParameter("adress");
                joining = request.getParameter("join");
               
         
            
            try
            {
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection myconnection = DriverManager.getConnection(PATH+PLACE, USERNAME, PASSWORD);

                try
                {
                    PreparedStatement mystatement = myconnection.prepareStatement("update teacher set name1=?,  "
                    + "email=?, phone=?, gender1=?, Quali=?,dob=?, subject=?,  adress=?, joining=?,loginid=? where teachid=?");
                               mystatement.setString(1, name1);
                             mystatement.setString(2,email1);
                            mystatement.setString(3, phone);
                            mystatement.setString(4,gender1);
                            mystatement.setString(5, quali);
                            mystatement.setString(6, dob);
                               mystatement.setString(7, subject);
                               mystatement.setString(8,adress);
                                mystatement.setString(9,joining);
                               mystatement.setString(10,loginid);
                               mystatement.setString(11, tid);
                    if(mystatement.executeUpdate()>0)
                    {
                        out.print("Teacher Updated successfully");
                    }
                    else
                    {
                        out.print("Error Occured. Try again later");
                    }

                }
                catch(Exception e)
                {
                    out.print("Error in Query due to " + e.getMessage());
                }
            }
            catch(Exception e)
            {
                out.print("Error in Connection due to " + e.getMessage());
            }
                
            
           
        
        }
        
        
    %>
   
                                
                                
                                
                                
                                
                     <div class="form-group">
                        <label class="col-form-label">Teacher name</label>
                         <input type="text" name="name" id="w3lName" placeholder="Teacher Name"
                                    class="contact-input" required="" value="<%= name1 %>" />
                    </div>           
                                
                     <div class="form-group">
                         <label class="col-form-label">Teacher Login ID</label>
                        <input type="number" name="teach" id="w3lName" placeholder="Login Id"
                                    class="contact-input" required="" value="<%= loginid %>" />
                        
                    </div>           
               <div class="form-group">
                        <label class="col-form-label">Email</label>
                         <input type="email" name="email" id="w3lSender" placeholder="asdf@gmail.com"
                                    class="contact-input" required="" value="<%= email1 %>" />
                    </div>               
                <div class="form-group">
                        <label class="col-form-label">Mobile Number</label>
                         <input type="number" name="phone" id="w3lName" placeholder="Mobile number"
                                    class="contact-input" required="" value="<%= phone %>" />

                    </div>               
             <div class="form-group">
                        <label class="col-form-label">Gender</label>
                       <select name="gender" class="contact-input" required="">
                                    <option>Choose Gender</option>
                                    <%
                                        if (gender1 == null) {
                                            gender1 = "";
                                        }
                                        if (gender1.equals("male")) {
                                            out.print("<option value='male' selected>Male</option>");
                                            out.print("<option value='female'>Female</option>");
                                        } else {
                                            out.print("<option value='male'>Male</option>");
                                            out.print("<option value='female' selected>Female</option>");
                                        }
                                    %>
                                </select>
                    </div>                  
                               
                         <div class="form-group">
                        <label class="col-form-label">DOB</label>
                         <input type="date" name="dob" id="w3lName" placeholder="dd-mm-yy"
                                    class="contact-input" required="" value="<%= dob %>" />

                    </div>       
<div class="form-group">
                        <label class="col-form-label">Teacher Qualification</label>
                        <input type="text" name="Quali" id="w3lName" placeholder="Qualification"
                                    class="contact-input" required="" value="<%= quali %>" />
                                
                    </div>
             <div class="form-group">
                        <label class="col-form-label">Teacher Subject</label>
                         <select name="sub" class="contact-input" required="">
                                    <%
                                        if (subject.equals("hindi")) {
                                            out.print("<option value='hindi' selected>Hindi</option>");
                                            out.print("<option value='english'>English</option>");
                                            out.print("<option value='math'>Math</option>");
                                            out.print("<option value='sci'>Science</option>");
                                        } else if (subject.equals("english")) {
                                            out.print("<option value='hindi'>Hindi</option>");
                                            out.print("<option value='english' selected>English</option>");
                                            out.print("<option value='math'>Math</option>");
                                            out.print("<option value='sci'>Science</option>");
                                        } else if (subject.equals("math")) {
                                            out.print("<option value='hindi'>Hindi</option>");
                                            out.print("<option value='english'>English</option>");
                                            out.print("<option value='math' selected>Math</option>");
                                            out.print("<option value='sci'>Science</option>");
                                        }
                                        if (subject.equals("sci")) {
                                            out.print("<option value='hindi'>Hindi</option>");
                                            out.print("<option value='english'>English</option>");
                                            out.print("<option value='math'>Math</option>");
                                            out.print("<option value='sci' selected>Science</option>");
                                        }
                                    %>
                                </select>
                    </div>                  
                                
                            <div class="form-group">
                        <label class="col-form-label">Address</label>
                         <input type="text" name="adress" id="w3lName" placeholder="Address"
                                    class="contact-input" required="" value="<%= adress %>" />
                    </div>   

              <div class="form-group">
                        <label class="col-form-label">School Joining date</label>
                         <input type="text" name="join" id="w3lName" placeholder="Joining Date"
                                    class="contact-input" required="" value="<%= joining %>" />
                    </div>                 
                               

                                <div class="text-start">
                                    <button class="btn btn-style btn-style-3" name="updatebtn">Update Teacher</button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
    <!-- //contact block -->

    <%@include file="footer.jsp" %>
