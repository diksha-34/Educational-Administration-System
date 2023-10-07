


<!DOCTYPE HTML>
<html lang="zxx">

<head>
    <title>Edu School - list</title>
    <!-- Meta tag Keywords -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="UTF-8" />
    <meta name="keywords" content="My School Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
    
    <!-- //Meta tag Keywords -->

   
    
    <link href="https://fonts.googleapis.com/css2?family=Ubuntu:wght@300;400;500;700&display=swap" rel="stylesheet">
    <!-- Template CSS Style link -->
    <link rel="stylesheet" href="assets/css/style-starter.css">
<script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
    <!-- Web-Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Lora:400,400i,700,700i&amp;subset=cyrillic,cyrillic-ext,latin-ext,vietnamese"
        rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Dosis:200,300,400,500,600,700,800&amp;subset=latin-ext" rel="stylesheet">
    <!-- //Web-Fonts -->
    <%@page import="java.sql.*" %>
    <%@include file="vars.jsp" %>
</head>

<body>
    <%@include file="adminheader.jsp" %>
    
     <section class="inner-banner py-5">
        <div class="w3l-breadcrumb py-lg-5">
            <div class="container pt-4 pb-sm-4">
                <h4 class="inner-text-title pt-5">Student List</h4>
                <ul class="breadcrumbs-custom-path">
                    <li><a href="index.html">Home</a></li>
                    <li class="active"><i class="fas fa-angle-right"></i>Students</li>
                </ul>
            </div>
        </div>
    </section>

   <!-- inner banner -->
   <section class="w3l-contact py-5" id="contact" >
    <div class="col-md-3 contact-right">
    <div class="input-grids">
        <div class="row justify-content-center">
            <form method="get">
               <div class="form-group">
                    <label class="col-form-label"><h1>Class</h1></label>
                    <select name="sclass" class="form-control" id="sclass">
                        <option value="">Choose Class</option>

                        <% 
                        try {
                            Class.forName("com.mysql.cj.jdbc.Driver");
                            Connection myConnection = DriverManager.getConnection(PATH + PLACE, USERNAME, PASSWORD);

                            PreparedStatement mystatement = myConnection.prepareStatement("SELECT DISTINCT sclass FROM student");
                            ResultSet myresult = mystatement.executeQuery();

                            while (myresult.next()) {
                                out.print("<option>" + myresult.getString("sclass") + "</option>");
                            }
                        } catch (Exception e) {
                            out.print("Error in query or connection: " + e.getMessage());
                        }
                        %>
                    </select>
                    <br>

                    <select name="sectionbox" id="sectionbox" class="form-control">
                        <option>Choose Class first</option>
                    </select>
               </div>
            </form>
        </div>
    </div>
</div>
<br> 
<br>

<div class="container"> 
    <div class="row justify-content-center"> 
        <div class="col-md-12" id="resultbox"></div>
    </div>
</div>
       <br><!-- comment -->
                    <br>
                    <br>
    <!-- //inner banner -->
    <br>
</section>
  <%@include file="footer.jsp" %>
  
 <script type="text/javascript">
        $(document).ready(function () {
            $("#sclass").change(function () {
                $("#resultbox").html("");

                var sclass1 = $(this).val(); // Use $(this) to refer to the element that triggered the event
                $.ajax({
                    method: "POST",
                    url: "myajax.jsp",
                    data: { sclass: sclass1 }
                }).done(function (msg) {
                    $("#sectionbox").html(msg);
                });
            });

            // Attach change event handler to the section selection dropdown
            $("#sectionbox").change(function () {
                var sclass1 = $("#sclass").val();
                var section = $(this).val(); // Use $(this) to refer to the element that triggered the event
                $.ajax({
                    method: "POST",
                    url: "myajax.jsp",
                    data: { sclass2: sclass1, s_section: section }
                }).done(function (msg) {
                    $("#resultbox").html(msg);
                });
            });
        });
    </script>
</body>

 
</html>