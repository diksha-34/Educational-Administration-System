
<%@ page language="java" import="java.sql.*" %>
<%@ include file="vars.jsp" %>


<%
    if(request.getParameter("email") != null){
String email1 = request.getParameter("email");
try {
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection myConnection = DriverManager.getConnection(PATH + PLACE, USERNAME, PASSWORD);
    try {
        PreparedStatement mystatement = myConnection.prepareStatement("SELECT * FROM usertable WHERE email1 = ?");
        mystatement.setString(1, email1);
        ResultSet myresult = mystatement.executeQuery();

        if (myresult.next()) {
           out.print("Email Id Already Exist");
        } else { 
        out.print("UserName is Available");
           
        }
    } catch (Exception e) {
        out.print("<label class='col-form-label'>" + "Error in query due to " + e.getMessage() + "</label>");
    }
} catch (Exception e) {
    out.print("<label class='col-form-label'>" + "Error in Connection due to " + e.getMessage() + "</label>");
}
    }
    
    
    
    
 else if (request.getParameter("sclass") != null) {
    String sclass = request.getParameter("sclass");
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection myConnection = DriverManager.getConnection(PATH + PLACE, USERNAME, PASSWORD);
        try {
            PreparedStatement mystatement = myConnection.prepareStatement("SELECT DISTINCT(s_section) FROM student WHERE sclass=? ORDER BY s_section");
            mystatement.setString(1, sclass);
            ResultSet myresult = mystatement.executeQuery();

            if (myresult.next()) {
              
                out.print("<option value=''>Choose Section</option>");

                do {
                    out.print("<option>" + myresult.getString("s_section") + "</option>");
                } while (myresult.next());

                out.print("</select>");
            } else {
                out.print("Sections not available for this class");
            }
        } catch (Exception e) {
            out.print("<label class='col-form-label'>Error in query due to " + e.getMessage() + "</label>");
        } finally {
            myConnection.close();
        }
    } catch (Exception e) {
        out.print("<label class='col-form-label'>Error in Connection due to " + e.getMessage() + "</label>");
    }
}


else if (request.getParameter("sclass2") != null && request.getParameter("s_section") != null) {
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection myconnection = DriverManager.getConnection(PATH + PLACE, USERNAME, PASSWORD);

        try {
            PreparedStatement mystatement = myconnection.prepareStatement("SELECT * FROM student WHERE sclass=? AND s_section=?");
            mystatement.setString(1, request.getParameter("sclass2"));
            mystatement.setString(2, request.getParameter("s_section"));

            ResultSet myresult = mystatement.executeQuery();
            if (myresult.next()) {
            
                out.print("<div class='col-md-12 contact-right'>");
                out.print("<div class='input-grids'>"
                        + "<div class='table-responsive-sm'>"
                        + "<table class='table table-hover table-bordered'> "
                        + "<tr>"
                        + "<td>Roll No</td>"
                        + "<td>Name</td>"
                        + "<td>Email ID</td>"
                        + "<td>Phone</td>"
                        + "<td>Gender</td>"
                        + "<td>Father's Name</td>"
                        + "<td>Mother's Name</td>"
                        + "<td>Date of Birth</td>"
                        + "<td>Class</td>"
                        + "<td>Section</td>"
                        + "<td>Update</td>"
                         + "<td>Delete</td>"
                        + "</tr>");

                do {
                    out.print("<tr><td>" + myresult.getString("rollno") + "</td><td>"
                            + myresult.getString("name1") + "</td>"
                            + "<td>" + myresult.getString("email1") + "</td><td>"
                            + myresult.getString("phone") + "</td>"
                            + "<td>" + myresult.getString("gender1") + "</td><td>"
                            + myresult.getString("fname") + "</td>"
                            + "<td>" + myresult.getString("mname") + "</td>"
                            + "<td>" + myresult.getString("dob") + "</td>"
                            + "<td>" + myresult.getString("sclass") + "</td>"
                            + "<td>" + myresult.getString("s_section") + "</td>"
                            + "<td><a href='update.jsp?studentid=" + myresult.getString("studentid") + "'><img src='assets/images/update1.png'></a></td>"
                            + "<td><a href='#' class='student' stuid=" + myresult.getString("studentid") + "><img src='assets/images/delete.png'></a></td>"
                            + "</tr>");
                } while (myresult.next());

                out.print("</table>");
            } else {
                out.print("No Records found");
            }

        } catch (Exception e) {
            out.print("Error in Query due to " + e.getMessage());
        }
    } catch (Exception e) {
        out.print("Error in Connection due to " + e.getMessage());
    }
}





 else if (request.getParameter("subject") != null) {
    
   
try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection myConnection = DriverManager.getConnection(PATH + PLACE, USERNAME, PASSWORD);

            PreparedStatement mystatement = myConnection.prepareStatement("SELECT * FROM teacher WHERE subject=?");
            mystatement.setString(1,request.getParameter("subject"));
         session.setAttribute("subject",request.getParameter("subject") );
 
            ResultSet myresult = mystatement.executeQuery();
            if (myresult.next()) {
                out.print("<div class='col-md-12 contact-right' >"
                        + "<div class='input-grids'>"
                        + "<div class='table-responsive-sm text-center'>"
                        + "<table class='table table-hover table-bordered'>"
                        + "<tr>"
                        + "<th>Name</th>"
                        + "<th>Login Id</th>" 
                        + "<th>Email</th>"
                        + "<th>Phone</th>"
                        + "<th>Gender</th>"    
                        + "<th>Qualification</th>"
                        + "<th>DoB</th>"
                        + "<th>Subject</th>"
                        + "<th>Address</th>"
                        + "<th>Joining date</th>"
                        + "<th>Update</th>"
                        + "<th>Delete</th>"
                        + "</tr>");

                do {
                    out.print("<tr><td>" + myresult.getString("name1") + "</td><td>"
                            + myresult.getString("loginid") + "</td>"
                            + "<td>" + myresult.getString("email") + "</td><td>"
                            + myresult.getString("phone") + "</td>"
                            + "<td>" + myresult.getString("gender1") + "</td><td>"  
                            + myresult.getString("quali") + "</td>"
                            + "<td>" + myresult.getString("dob") + "</td>"
                            + "<td>" + myresult.getString("subject") + "</td>"
                            + "<td>" + myresult.getString("adress") + "</td>"
                            + "<td>" + myresult.getString("joining") + "</td>"                       
                            + "<td><a href=updateTeach.jsp?teachid=" + myresult.getString("teachid") + "><img src='assets/images/update1.png'></a></td>"
                            + "<td><a href='#' class='teacher' teid= "+ myresult.getString("teachid") + "><img src='assets/images/delete.png'></a></td>"
                            + "</tr>");
                } while (myresult.next());
out.print("</table>");
                 
            } else {
                out.print("No records found for Subject ");
            }
        } catch (Exception e) {
            out.print("Error in query or connection: " + e.getMessage());
        }
    } 
    

else if (request.getParameter("department") != null) {
    
   
try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection myConnection = DriverManager.getConnection(PATH + PLACE, USERNAME, PASSWORD);

            PreparedStatement mystatement = myConnection.prepareStatement("SELECT * FROM nonteaching WHERE department=?");
            mystatement.setString(1,request.getParameter("department"));
         session.setAttribute("department",request.getParameter("department") );
 
            ResultSet myresult = mystatement.executeQuery();
            if (myresult.next()) {
                out.print("<div class='col-md-12 contact-right'>"
                        + "<div class='input-grids'>"
                        + "<div class='table-responsive-sm'>"
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
                            + "<td><a href='#' class='dept' dept1=" + myresult.getString("nonteachid") + "><img src='assets/images/delete.png'></a></td>"
                            + "</tr>");
                } while (myresult.next());

                 
            } else {
                out.print("No records found for Departmentt ");
            }
        } catch (Exception e) {
            out.print("Error in query or connection: " + e.getMessage());
        }
    } 

    
               
    else if(request.getParameter("studentid") != null) {
        
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection myConnection = DriverManager.getConnection(PATH + PLACE, USERNAME, PASSWORD);

            PreparedStatement mystatement = myConnection.prepareStatement("SELECT * FROM fees WHERE studentid=?");
           mystatement.setString(1,request.getParameter("studentid"));
         session.setAttribute("studentid",request.getParameter("studentid") );
            
            
            ResultSet myresult = mystatement.executeQuery();
            if (myresult.next()) {
                out.print( "<div class='table-responsive'>"
                        + "<table class='table table-hover table-bordered'>"
                        + "<tr>"
                       + "<td>Student Id</td>"
                       + "<td>Roll No</td>"
                        + "<td>Total Amount</td>"
                        + "<td>Installment1</td>"
                         + "<td>Installment1_Date</td>"
                         + "<td>Installment2</td>"
                         + "<td>Installment2_Date</td>"
                         + "<td>Installment3</td>"
                         + "<td>Installment3_Date</td>"
                         + "<td>Installment4</td>"
                         + "<td>Installment4_Date</td>"
                         + "<td>Transportation Charges</td>"
                        + "<td>Update</td>"
                         + "<td>Delete</td>"
                        + "</tr>");

                do {
                    out.print("<tr><td>" + myresult.getString("studentid") + "</td><td>"
                            + myresult.getString("Rollno") + "</td>"
                            + "<td>" + myresult.getString("total_amount") + "</td><td>"
                            + myresult.getString("installment1") + "</td>"
                            + "<td>" + myresult.getString("installment1_date") + "</td><td>"
                            + myresult.getString("installment2") + "</td>"
                            + "<td>" + myresult.getString("installment2_date") + "</td>"
                            + "<td>" + myresult.getString("installment3") + "</td>"
                            + "<td>" + myresult.getString("installment3_date") + "</td>"
                            + "<td>" + myresult.getString("installment4") + "</td>"
                             + "<td>" + myresult.getString("installment4_date") + "</td>"
                             + "<td>" + myresult.getString("tcharges") + "</td>"
                            + "<td><a href=updatefees.jsp?uniqueid=" + myresult.getString("uniqueid") + "><img src='assets/images/update1.png'></a></td>"
                            + "<td><a href='#' class='stid' stuuid=" + myresult.getString("uniqueid") + "><img src='assets/images/delete.png'></a></td>"
                            + "</tr>");
                } while (myresult.next());
               out.print("</table>");
                 
            } else {
                out.print("No records found for Student ID ");
            }
        } catch (Exception e) {
            out.print("Error in query or connection: " + e.getMessage());
        }
    } 

       

%>





<script type="text/javascript">
    $(document).ready(function(){
        $(".student").click(function(e){
            e.preventDefault();
            var answer = confirm("Do you really want to delete?");
            if (answer) {
                var parenttr = $(this).parent().parent();
                var studentid = $(this).attr("stuid");
                $.ajax({
                    method: "POST",
                    url: "myajax2.jsp",
                    data: { studentid: studentid }
                })
                .done(function(msg){
                    if ($.trim(msg) === "1") {
                        $(parenttr).css("background-color","red");
                $(parenttr).slideUp(500,function(){
                     $(parenttr).remove();
                });
                    }
                });
            }
        });
        
        $(".teacher").click(function(e){
            e.preventDefault();
            var answer = confirm("Do you really want to delete?");
            if (answer) {
                var parenttr = $(this).parent().parent();
                var teacherid = $(this).attr("teid");
                $.ajax({
                    method: "POST",
                    url: "myajax2.jsp",
                    data: { teacherid: teacherid}
                })
                .done(function(msg){
                    if ($.trim(msg) === "1") {
                        $(parenttr).css("background-color","red");
                $(parenttr).slideUp(500,function(){
                     $(parenttr).remove();
                });
                       
                    }
                });
            }
        });
        
         $(".dept").click(function(e){
            e.preventDefault();
            var answer = confirm("Do you really want to delete?");
            if (answer) {
                var parenttr = $(this).parent().parent();
                var department1 = $(this).attr("dept1");
                $.ajax({
                    method: "POST",
                    url: "myajax2.jsp",
                    data: { department: department1}
                })
                .done(function(msg){
                    if ($.trim(msg) === "1") {
                       $(parenttr).css("background-color","red");
                $(parenttr).slideUp(500,function(){
                     $(parenttr).remove();
                });
                    }
                });
            }
        });
        
         $(".stid").click(function(e){
            e.preventDefault();
            var answer = confirm("Do you really want to delete?");
            if (answer) {
                var parenttr = $(this).parent().parent();
                var studentid1 = $(this).attr("stuuid");
                $.ajax({
                    method: "POST",
                    url: "myajax2.jsp",
                    data: { studentid1: studentid1}
                })
                .done(function(msg){
                    if ($.trim(msg) === "1") {
                        $(parenttr).css("background-color","red");
                $(parenttr).slideUp(500,function(){
                     $(parenttr).remove();
                });
                    }
                });
            }
        });
    });
</script>
