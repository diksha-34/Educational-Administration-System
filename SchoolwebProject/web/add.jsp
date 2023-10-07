<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Edu School - addstudent</title>
    <!-- Google fonts -->
    <link href="//fonts.googleapis.com/css2?family=Ubuntu:wght@300;400;500;700&display=swap" rel="stylesheet">
    <!-- Template CSS Style link -->
    <link rel="stylesheet" href="assets/css/style-starter.css">
    <%@page import="java.sql.*" %>
    <%@include file="vars.jsp" %>
</head>

<body>
    <%@include file="adminheader.jsp" %>

    <!-- inner banner -->
    <section class="inner-banner py-5">
        <div class="w3l-breadcrumb py-lg-5">
            <div class="container pt-4 pb-sm-4">
                <h4 class="inner-text-title pt-5">Add Student</h4>
                <ul class="breadcrumbs-custom-path">
                    <li><a href="index.html">Home</a></li>
                    <li class="active"><i class="fas fa-angle-right"></i>Add Student</li>
                </ul>
            </div>
        </div>
    </section>
    <!-- //inner banner -->

    <!-- contact block -->
    <section class="w3l-contact py-5" id="contact">
        <div class="container py-md-5 py-4">
            <div class="title-main text-center mx-auto mb-md-5 mb-4" style="max-width:500px;">
                <p class="text-uppercase">Student Section</p>
                <h3 class="title-style">Add Student</h3>
            </div>
            <div class="row contact-block">
                <div class="col-md-7 contact-right">
                    <form action="" method="post" class="signin-form">
                        <div class="input-grids">
                            <div class="row">
                               
                                 <%
            if(request.getParameter("submitbtn")!=null){
                String sid,name1, email1, gender1,rollno,phone,fname,mname,sclass,s_section,dob;
                sid= request.getParameter("studentid");
                name1=request.getParameter("name");
                rollno=request.getParameter("rnum");
                email1=request.getParameter("email");
                 phone=request.getParameter("phone");
                gender1=request.getParameter("gender");
                dob= request.getParameter("dob");
                fname= request.getParameter("fname");
                 mname= request.getParameter("mname");
                  sclass= request.getParameter("sclass");
                  s_section = request.getParameter("s_section");
                
              
                
               
                
                    try{
                        Class.forName("com.mysql.cj.jdbc.Driver");
                        Connection myConnection=DriverManager.getConnection(PATH+PLACE,USERNAME, PASSWORD);
                        
                        try{
                            PreparedStatement mystatement = myConnection.prepareStatement("INSERT INTO student (name1, rollno, email1, phone, gender1, fname, mname, dob, sclass, s_section,studentid) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?,?)");
                           
                            mystatement.setString(1, name1);
                             mystatement.setString(2,rollno);
                            mystatement.setString(3, email1);
                            mystatement.setString(4,phone);
                            mystatement.setString(5, gender1);
                            mystatement.setString(6, fname );
                              mystatement.setString(7, mname );
                              mystatement.setString(8, dob );
                              mystatement.setString(9, sclass);
                              mystatement.setString(10, s_section );
                             mystatement.setString(11,sid);
                          
                            
                            if(mystatement.executeUpdate()>0){
                                out.print("<label class='col-form-label'>Add Student Successfully</label>");
                            }
                            
                        }catch(Exception e){
                            out.print("<label class='col-form-label'>"+"Error in query due to"+e.getMessage()+"</label>");
                        }
                    }catch(Exception e){
                        out.print("<label class='col-form-label'>"+"Error in Connection due to  "+e.getMessage()+"</label>");
                    }   

                }
               
            
        %>
        <div class="form-group">
                        <label class="col-form-label">Name Student</label>
                        <input type="text" name="name" id="w3lName" placeholder=" Your Name"
                                        class="contact-input" required="" />
                    </div>
                                    
        <div class="form-group">
                        <label class="col-form-label">Roll Number</label>
                         <input type="number" name="rnum" id="w3lName" placeholder="Roll no."
                                        class="contact-input" required="" />
                    </div>
         
                              <div class="form-group">
                        <label class="col-form-label">Email</label>
                         <input type="email" name="email" id="w3lSender" placeholder="asdf@gmail.com"
                                        class="contact-input" required="" />
                    </div> 
                                   
        <div class="form-group">
                        <label class="col-form-label">Mobile Number</label>
                         <input type="number" name="phone" id="w3lName" placeholder="Mobile number"
                                        class="contact-input" required="" />
                                    
                    </div>
                                    
        <div class="form-group">
                        <label class="col-form-label">Gender</label>
                         <select name="gender" class="contact-input">   
                                      <option value="">Choose Gender</option>
                                      <option value="male">Male</option>
                                      <option value="female">Female</option>
                                      </select>
                                    
                    </div>
                             
        <div class="form-group">
                        <label class="col-form-label">DOB</label>
                           <input type="date" name="dob" id="w3lName" placeholder="dd-mm-yy"
                                        class="contact-input" required="" />
                    </div>
                                  
        <div class="form-group">
                        <label class="col-form-label">Father Name</label>
                        
                                    <input type="text" name="fname" id="w3lName" placeholder=" Father Name"
                                        class="contact-input" required="" />
                                    
                    </div>
        <div class="form-group">
                        <label class="col-form-label">Mother Name</label>
                          <input type="text" name="mname" id="w3lName" placeholder=" Mother Name"
                                        class="contact-input" required="" />

                    </div>
        
        <div class="form-group">
                        <label class="col-form-label">Class</label>
                         <select name="sclass" class="contact-input">   
                                      <option value="">Choose Class</option>
                                      <option value="1">1st</option>
                                      <option value="2">2nd</option>
                                       <option value="3">3rd</option>
                                      <option value="4">4th</option>
                                       <option value="5">5th</option>
                                      <option value="6">6th</option>
                                       <option value="7">7th</option>
                                      <option value="8">8th</option>
                                       <option value="9">9th</option>
                                      <option value="10">10th</option>
                                      
                                      </select>
                    </div>
                                   
                            
<div class="form-group">
                        <label class="col-form-label">Section</label>
                         <select name="s_section" class="contact-input">   
                                      <option >Choose Section</option>
                                      <option>A</option>
                                      <option>B</option>
                                      <option>C</option>
                                      <option>D</option>
                                      
                                      </select>
                    </div>        
                                    
                                    
                        
                        <div class="text-start">
                            <button class="btn btn-style btn-style-3" name="submitbtn">Add Student</button>
                        </div>
                    </form>
                </div>
                
                            </section>
    
              <%@include file="footer.jsp" %>  
   
</body>

</html>