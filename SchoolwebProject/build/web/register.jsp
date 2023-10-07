<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Edu School - register</title>
    <!-- Google fonts -->
    <link href="//fonts.googleapis.com/css2?family=Ubuntu:wght@300;400;500;700&display=swap" rel="stylesheet">
    <!-- Template CSS Style link -->
    <link rel="stylesheet" href="assets/css/style-starter.css">
    <%@page import="java.sql.*" %>
    <%@include file="vars.jsp" %>
</head>

<body>
    <%@include file="header.jsp" %>

    <!-- inner banner -->
    <section class="inner-banner py-5">
        <div class="w3l-breadcrumb py-lg-5">
            <div class="container pt-4 pb-sm-4">
                <h4 class="inner-text-title pt-5">Register</h4>
                <ul class="breadcrumbs-custom-path">
                    <li><a href="index.jsp">Home</a></li>
                    <li class="active"><i class="fas fa-angle-right"></i>Register</li>
                </ul>
            </div>
        </div>
    </section>
    <!-- //inner banner -->

    <!-- contact block -->
    <section class="w3l-contact py-5" id="contact">
        <div class="container py-md-5 py-4">
            <div class="title-main text-center mx-auto mb-md-5 mb-4" style="max-width:500px;">
                <p class="text-uppercase">Become Member</p>
                <h3 class="title-style">Register</h3>
            </div>
            <div class="row contact-block">
                <div class="col-md-7 contact-right">
                    <form action="" method="post" class="signin-form">
                        <div class="input-grids">
                            <div class="row">
                               
                                 <%
            if(request.getParameter("submitbtn")!=null){
                String name1, email1, gender1, password1, password2,usertype;
                name1=request.getParameter("name");
                email1=request.getParameter("email");
                gender1=request.getParameter("gender");
                password1=request.getParameter("password1");
                password2=request.getParameter("password2");
               
                
                
                if(password1.equals(password2)){
                    try{
                        Class.forName("com.mysql.cj.jdbc.Driver");
                        Connection myConnection=DriverManager.getConnection(PATH+PLACE,USERNAME, PASSWORD);
                        
                        try{
                            PreparedStatement mystatement = myConnection.prepareStatement("insert into usertable values(?, ?, ?, SHA(?),?)");
                            mystatement.setString(1, name1);
                            mystatement.setString(2, email1);
                            mystatement.setString(3, gender1);
                            mystatement.setString(4, password1 + SALT);
                            
                             mystatement.setString(5, "user");
                            
                            if(mystatement.executeUpdate()>0){
                                out.print("<label class='col-form-label'>Registerd Succesfully. Now you can login</label>");
                            }
                            
                        }catch(Exception e){
                            out.print("<label class='col-form-label'>"+"Error in query due to"+e.getMessage()+"</label>");
                        }
                    }catch(Exception e){
                        out.print("<label class='col-form-label'>"+"Error in Connection due to  "+e.getMessage()+"</label>");
                    }   

                }
                else {
                    out.print("<label class='col-form-label'>Password does not match. Please try again</label>");
                }
            }
        %>
        <div class="form-group">
                        <label class="col-form-label">Name</label>
                         <input type="text" name="name" id="w3lName" placeholder="Your name"
                                        class="contact-input" required="" />
                                
                    </div>
                        
        <div class="form-group">
                        <label class="col-form-label">Email</label>
                        <input type="email" name="email" id="email" placeholder="asdf@gmail.com"
                                        class="contact-input" required="" />
                    </div>
                                   
        <br><!-- comment -->
        <div id="answerbox"></div>
        <br>
                       
        <div class="form-group">
                        <label class="col-form-label">Gender</label>
                        <select name="gender" class="form-control" >
                            <option value="">Choose Gender</option>
                            <option value="male">Male</option>
                            <option value="female">Female</option>
                        </select>
                    </div>
                                    
                       <div class="form-group">
                        <label class="col-form-label">Password</label>
                        <input type="password" name="password1" id="pass1" placeholder="****"
                                        class="contact-input" required="" />
                    </div>             
                  <div class="form-group">
                        <label class="col-form-label">Confirm Password</label>
                       <input type="password" name="password2" id="pass2" placeholder="****"
                                        class="contact-input" required="" />
                                
                    </div>                 

                                    
                                    
                           
                        
                        <div class="text-start">
                            <button class="btn btn-style btn-style-3" name="submitbtn">Register</button>
                        </div>
                    </form>
                </div>
                
                            </section>
    
              <%@include file="footer.jsp" %>  
              
              <script>
        $(document).ready(function(){
            $("#email").blur(function(){
                var email1 = $("#email").val();
                $.ajax({
                    method: "POST",
                    url: "myajax.jsp",
                    data: { email: email1 }
                })
                .done(function(msg){
                    $("#answerbox").html(msg);
                });
            });
        });
    </script>
              
              
              
              
   
</body>

</html>