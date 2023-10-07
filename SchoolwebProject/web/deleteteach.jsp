<%@page import="java.sql.*"%>
<%@include file="vars.jsp" %>

<%
    if (request.getParameter("teachid") != null) {
    
        String tid = request.getParameter("teachid");

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            try (Connection myConnection = DriverManager.getConnection(PATH + PLACE, USERNAME, PASSWORD)) 
            {
                try {
                    PreparedStatement mystatement = myConnection.prepareStatement("DELETE FROM teacher WHERE teachid=?");
                    mystatement.setString(1, tid);
                    if (mystatement.executeUpdate() > 0) {
                        response.sendRedirect("teacherlist.jsp?subject=" + session.getAttribute("subject").toString());
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
