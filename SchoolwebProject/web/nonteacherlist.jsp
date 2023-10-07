<!DOCTYPE HTML>
<html lang="zxx">

<head>
    <title>Edu School - List</title>
    <!-- Meta tag Keywords -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="UTF-8" />
    <meta name="keywords" content="My School Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
    
    <!-- //Meta tag Keywords -->

    <!-- Custom-Files -->
    <link href="assets/css/bootstrap.css" rel='stylesheet' type='text/css' />
    <!-- Bootstrap-CSS -->
    <link href="assets/css/style.css" rel='stylesheet' type='text/css' />
    <!-- Style-CSS -->
    <link href="assets/css/font-awesome.min.css" rel="stylesheet">
    <!-- Font-Awesome-Icons-CSS -->
    <!-- //Custom-Files -->
    
    <link href="https://fonts.googleapis.com/css2?family=Ubuntu:wght@300;400;500;700&display=swap" rel="stylesheet">
    <!-- Template CSS Style link -->
    <link rel="stylesheet" href="assets/css/style-starter.css">

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
                <h4 class="inner-text-title pt-5">Non Teaching Staff List</h4>
                <ul class="breadcrumbs-custom-path">
                    <li><a href="index.html">Home</a></li>
                    <li class="active"><i class="fas fa-angle-right"></i>Non Teaching Staff</li>
                </ul>
            </div>
        </div>
    </section>

   <!-- inner banner -->
   <section class="w3l-contact py-5" id="contact">
    <div class="col-md-3 contact-right">
    <div class="input-grids">
        <div class="row">
            <form method="get">
               <div class="form-group">
                    <label class="col-form-label" ><h1>Department</h1>
                                </label>
                <select name="sub" class="form-control" id="depart">
                    <option value="">Choose Department</option>
                    <% 
                    try {
                        Class.forName("com.mysql.cj.jdbc.Driver");
                        Connection myConnection = DriverManager.getConnection(PATH + PLACE, USERNAME, PASSWORD);

                        PreparedStatement mystatement = myConnection.prepareStatement("SELECT DISTINCT department FROM nonteaching");
                        ResultSet myresult = mystatement.executeQuery();

                        while (myresult.next()) {
                            out.print("<option>" + myresult.getString("department") + "</option>");
                        }
                    } catch (Exception e) {
                        out.print("Error in query or connection: " + e.getMessage());
                    }
                    %>
                </select>
                 <br><!-- comment -->
                
               </div>
                
                
            </form>
        </div>
    </div>
</div>
                    <br><!-- comment -->
                    <br><!-- comment -->
                     <div class="container"> 
    <div class="row justify-content-center"> 
        <div class="col-md-12" id="resultbox"></div>
    </div>
                        <br><!-- comment -->
                        <br>
<%
if (request.getParameter("submit") != null) {
    String selecteddepart = request.getParameter("sub");
    if (selecteddepart != null && !selecteddepart.isEmpty()) {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection myConnection = DriverManager.getConnection(PATH + PLACE, USERNAME, PASSWORD);

            PreparedStatement mystatement = myConnection.prepareStatement("SELECT * FROM nonteaching WHERE department=?");
            mystatement.setString(1, selecteddepart);
          session.setAttribute("department",selecteddepart);
 
            ResultSet myresult = mystatement.executeQuery();
            if (myresult.next()) {
                out.print("<div class='col-md-12 contact-right'>"
                        + "<div class='input-grids'>"
                        + "<div class='table-responsive-sm text-center'>"
                        + "<table class='table table-hover table-bordered'>"
                        + "<tr>"
                        + "<td>Name</td>"
                        + "<td>Staff Login Id</td>" 
                        + "<td>Email</td>"
                        + "<td>Phone</td>"
                        + "<td>Gender</td>"    
                        + "<td>Qualification</td>"
                        + "<td>DoB</td>"  
                        + "<td>Salary</td>"
                        + "<td>Department</td>"
                      + "<td>Address</td>"
                         + "<td>Joining date</td>"
                        + "<td>Update</td>"
                        + "<td>Delete</td>"
                        + "</tr>");

                       
                do {
                    out.print("<tr><td>" + myresult.getString("name1") + "</td><td>"
                            + myresult.getString("loginid") + "</td>"
                            + "<td>" + myresult.getString("email") + "</td><td>"
                            + myresult.getString("phone") + "</td>"
                            + "<td>" + myresult.getString("gender1") + "</td><td>"  
                            + myresult.getString("quali") + "</td>"
                            + "<td>" + myresult.getString("dob") + "</td>"  
                            + "<td>" + myresult.getString("adress") + "</td>"
                            + "<td>" + myresult.getString("department") + "</td>"
                            + "<td>" + myresult.getString("salary") + "</td>"
                            + "<td>" + myresult.getString("joining") + "</td>"                       
                            + "<td><a href=updatenonTeach.jsp?nonteachid=" + myresult.getString("nonteachid") + "><img src='assets/images/update1.png'></a></td>"
                            + "<td><a href=deletenonteach.jsp?nonteachid=" + myresult.getString("nonteachid") + "><img src='assets/images/delete.png'></a></td>"
                            + "</tr>");
                } while (myresult.next());

                 
            } else {
                out.print("<div>No records found for Departmentt " + selecteddepart + "</div>");
            }
        } catch (Exception e) {
            out.print("Error in query or connection: " + e.getMessage());
        }
    } else {
        out.print("<div>Please select a valid Department and click 'Go' to view the data.</div>");
    }
}
%>
</table>
   </div></div></div>
    <!-- //inner banner -->

    <br>
</section>
  <%@include file="footer.jsp" %>
  
  <script type="text/javascript">
        $(document).ready(function () {
            $("#depart").change(function () {
                

                var depart1 = $(this).val();
                $.ajax({
                    method: "POST",
                    url: "myajax.jsp",
                    data: { department: depart1 }
                }).done(function (msg) {
                    $("#resultbox").html(msg);
                });
            });
            });
            
    </script>
</body>

  
</html>