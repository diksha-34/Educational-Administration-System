
<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Edu School- 
    Login</title>
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
                <h4 class="inner-text-title pt-5">Login us</h4>
                <ul class="breadcrumbs-custom-path">
                    <li><a href="index.html">Home</a></li>
                    <li class="active"><i class="fas fa-angle-right"></i>Login</li>
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
                <h3 class="title-style">Login</h3>
            </div>
            <div class="row contact-block">
                <div class="col-md-7 contact-right">
                    <form action="" method="post" class="signin-form">
                        <div class="input-grids">
                            <div class="row">
                                
                                <%
            if(request.getParameter("loginbtn")!=null){
                String email1, password1;
                
                email1=request.getParameter("email");
                
                password1=request.getParameter("password1");
                
                
              
                    try{
                        Class.forName("com.mysql.cj.jdbc.Driver");
                        Connection myConnection=DriverManager.getConnection(PATH+PLACE,USERNAME, PASSWORD);
                        try{
                            PreparedStatement mystatement = myConnection.prepareStatement("select * from usertable where email1=? and password1=SHA(?)");
                            
                            mystatement.setString(1, email1);
                            mystatement.setString(2, password1 + SALT);
                            
                            ResultSet myresult=mystatement.executeQuery();
                            if(myresult.next()){
                                if(myresult.getString("usertype").equals("admin")){
                                    
                                    if(request.getParameter("rememberme")!=null){
                                        Cookie mycookie3=new Cookie("adminname", myresult.getString("name1"));
                                        mycookie3.setMaxAge(3600);
                                        response.addCookie(mycookie3);
                                    }
                                    session.setAttribute("adminname", myresult.getString("name1"));
                                    response.sendRedirect("adminpanel.jsp");
                                }
                                else{
                                    if(request.getParameter("rememberme")!=null){
                                        Cookie myCookie1=new Cookie("uname1", myresult.getString("name1"));
                                        myCookie1.setMaxAge(60*60*24*7);
                                        response.addCookie(myCookie1);
                                        
                                        Cookie myCookie2 = new Cookie("emailid", email1);
                                    myCookie2.setMaxAge(60*60*24*7);
                                    response.addCookie(myCookie2);
                                    }
                                    session.setAttribute("name",myresult.getString("name1"));
                                    session.setAttribute("email", email1);
                                    response.sendRedirect("welcome.jsp");
                                }
                               
                            }
                            else{
                                out.print("Incorrect username or password");
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
                        <label class="col-form-label"> Your Email</label>
                       <input type="email" name="email" id="email" placeholder="aasdf@gmail.com"
                                        class="contact-input" required="" />
                    </div>
                        <div class="form-group">
                            <label class="col-form-label">Your Password</label>
                         <input type="password" name="password1" id="password" placeholder="*****"
                                        class="contact-input" required="" />
                    </div>            
                                
                            </div>
                               
                                
                              
                        </div>
                        <input type="checkbox" name="rememberme" >Stay Signed In
                        <div class="text-start">
                           
                            <br>
                            <br>
                            <button class="btn btn-style btn-style-3" name="loginbtn">Login</button>
                        </div>
                    </form>
                    
                    
                </div>
               
        </section>
    
    <%@include file="footer.jsp"%>
    </body>

</html>