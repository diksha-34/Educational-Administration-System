<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Update non teacher : Welcome to School Management System</title>
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
                    <li class="active"><i class="fas fa-angle-right"></i>Update Non Teaching staff</li>
                </ul>
            </div>
        </div>
    </section>
    <!-- //inner banner -->

    <%
        String nontid = request.getParameter("nonteachid");
        String name1 = "", email1 = "", gender1 = "", quali = "", phone = "", dob = "", joining = "", department = "", salary="", adress = "", loginid = "";

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection myconnection = DriverManager.getConnection(PATH + PLACE, USERNAME, PASSWORD);

            PreparedStatement mystatement = myconnection.prepareStatement("select * from nonteaching where nonteachid=?");
            mystatement.setString(1, nontid);

            ResultSet myresult = mystatement.executeQuery();
            if (myresult.next()) {
                name1 = myresult.getString("name1");
                loginid = myresult.getString("loginid");
                email1 = myresult.getString("email");
                phone = myresult.getString("phone");
                gender1 = myresult.getString("gender1");
                dob = myresult.getString("dob");
                quali = myresult.getString("quali");
                department = myresult.getString("department");
                 salary = myresult.getString("salary");
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
                <h3 class="title-style">Update Non Tecahing Staff</h3>
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
                salary= request.getParameter("sal");
                 quali= request.getParameter("Quali");
                  department= request.getParameter("sub");
                  adress= request.getParameter("adress");
                joining = request.getParameter("join");
               
         
            
            try
            {
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection myconnection = DriverManager.getConnection(PATH+PLACE, USERNAME, PASSWORD);

                try
                {
                    PreparedStatement mystatement = myconnection.prepareStatement("update nonteaching set name1=?,  "
                    + "email=?, phone=?, gender1=?, Quali=?,dob=?,department=?, salary=?, adress=?, joining=?,loginid=? where nonteachid=?");
                               mystatement.setString(1, name1);
                             mystatement.setString(2,email1);
                            mystatement.setString(3, phone);
                            mystatement.setString(4,gender1);
                            mystatement.setString(5, quali);
                            mystatement.setString(6, dob);
                               mystatement.setString(7, department);
                                 mystatement.setString(8, salary);
                               
                               mystatement.setString(9,adress);
                                mystatement.setString(10,joining);
                               mystatement.setString(11,loginid);
                               mystatement.setString(12, nontid);
                    if(mystatement.executeUpdate()>0)
                    {
                        out.print("Staff Updated successfully");
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
                         <label class="col-form-label">Staff Login ID</label>
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
                        <label class="col-form-label">Teacher Department</label>
                         <select name="sub" class="contact-input" required="">
                                    <%
                                        if (department.equals("trans")) {
                                            out.print("<option value='trans' selected>Transport</option>");
                                            out.print("<option value='clean'>Cleaning Staff</option>");
                                            out.print("<option value='store'>StoreKeepers</option>");
                                            out.print("<option value='lib'>Librarians</option>");
                                             out.print("<option value='account'>Account and Finance</option>");
                                            
                                        }
                                        else if (department.equals("clean")) {
                                            out.print("<option value='trans' >Transport</option>");
                                            out.print("<option value='clean'selected>Cleaning Staff</option>");
                                            out.print("<option value='store'>StoreKeepers</option>");
                                            out.print("<option value='lib'>Librarians</option>");
                                             out.print("<option value='account'>Account and Finance</option>");
                                            
                                        }
                                        else if (department.equals("store")) {
                                            out.print("<option value='trans' >Transport</option>");
                                            out.print("<option value='clean'>Cleaning Staff</option>");
                                            out.print("<option value='store'selected>StoreKeepers</option>");
                                            out.print("<option value='lib'>Librarians</option>");
                                             out.print("<option value='account'>Account and Finance</option>");
                                            
                                        }
                                        else if (department.equals("lib")) {
                                            out.print("<option value='trans' >Transport</option>");
                                            out.print("<option value='clean'>Cleaning Staff</option>");
                                            out.print("<option value='store'>StoreKeepers</option>");
                                            out.print("<option value='lib'selected>Librarians</option>");
                                             out.print("<option value='account'>Account and Finance</option>");
                                            
                                        }
                                       else if (department.equals("account")) {
                                            out.print("<option value='trans' >Transport</option>");
                                            out.print("<option value='clean'>Cleaning Staff</option>");
                                            out.print("<option value='store'>StoreKeepers</option>");
                                            out.print("<option value='lib'>Librarians</option>");
                                             out.print("<option value='account'selected>Account and Finance</option>");
                                            
                                        }
                                       
                                       
                                       
                                    %>
                                </select>
                    </div>                 
                                <div class="form-group">
                        <label class="col-form-label">Salary</label>
                         <input type="text" name="sal" id="w3lName" placeholder="Salary"
                                    class="contact-input" required="" value="<%= salary %>" />
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
                                    <button class="btn btn-style btn-style-3" name="updatebtn">Update  Non Teaching staff</button>
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
