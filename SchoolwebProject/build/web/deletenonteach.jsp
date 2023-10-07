<%@page import="java.sql.*"%>
<%@include file="vars.jsp" %>

<%
    if (request.getParameter("nonteachid") != null) {
    
        String nontid = request.getParameter("nonteachid");

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            try (Connection myConnection = DriverManager.getConnection(PATH + PLACE, USERNAME, PASSWORD)) 
            {
                try {
                    PreparedStatement mystatement = myConnection.prepareStatement("DELETE FROM nonteaching WHERE nonteachid=?");
                    mystatement.setString(1, nontid);
                    if (mystatement.executeUpdate() > 0) {
                        response.sendRedirect("nonteacherlist.jsp?department=" + session.getAttribute("department").toString());
                    } else {
                        out.print("Error occurred. Try again later.");
                    }
                } catch (Exception e) {
                   
                    out.print("<label class='col-form-label'>" + "Error in query due to " + e.getMessage() + "</label>");
                }
            }
        } catch (Exception e) {
            
            out.print("<label class='col-form-label'>" + "Error in Connection due to " + e.getMessage() + "</label>");
        }
    }
%>
