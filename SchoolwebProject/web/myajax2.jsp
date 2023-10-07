<%@ page import="java.sql.*" %>
<%@ include file="vars.jsp" %>
<%
    if(request.getParameter("studentid")!=null)
    {
    String studentid = request.getParameter("studentid");
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection myconnection = DriverManager.getConnection(PATH + PLACE, USERNAME, PASSWORD);

        try {
            PreparedStatement mystatement = myconnection.prepareStatement("DELETE FROM student WHERE studentid=?");
            mystatement.setString(1, studentid);

        
            if (mystatement.executeUpdate()> 0) {
                out.print("1"); // Successful deletion
            } else {
                out.print("0"); // No rows affected (could mean no record with the provided ID)
            }
        } catch (Exception e) {
            out.print("Error in Query due to " + e.getMessage());
        } finally {
            if (myconnection != null) {
                myconnection.close(); // Close the connection after use
            }
        }
    } catch (Exception e) {
        out.print("Error in Connection due to " + e.getMessage());
    }
    



}

else if(request.getParameter("teacherid")!=null)
    {
    String teachid = request.getParameter("teacherid");
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection myconnection = DriverManager.getConnection(PATH + PLACE, USERNAME, PASSWORD);

        try {
            PreparedStatement mystatement = myconnection.prepareStatement("DELETE FROM teacher WHERE teachid=?");
            mystatement.setString(1, teachid);

             
            if ( mystatement.executeUpdate()> 0) {
                out.print("1"); // Successful deletion
            } else {
                out.print("0"); // No rows affected (could mean no record with the provided ID)
            }
        } catch (Exception e) {
            out.print("Error in Query due to " + e.getMessage());
        } finally {
            if (myconnection != null) {
                myconnection.close(); // Close the connection after use
            }
        }
    } catch (Exception e) {
        out.print("Error in Connection due to " + e.getMessage());
    }
    



}
else if(request.getParameter("department")!=null)
    {
    String depart1 = request.getParameter("department");
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection myconnection = DriverManager.getConnection(PATH + PLACE, USERNAME, PASSWORD);

        try {
            PreparedStatement mystatement = myconnection.prepareStatement("DELETE FROM nonteaching WHERE nonteachid=?");
            mystatement.setString(1, depart1);

             
            if ( mystatement.executeUpdate()> 0) {
                out.print("1"); // Successful deletion
            } else {
                out.print("0"); // No rows affected (could mean no record with the provided ID)
            }
        } catch (Exception e) {
            out.print("Error in Query due to " + e.getMessage());
        } finally {
            if (myconnection != null) {
                myconnection.close(); // Close the connection after use
            }
        }
    } catch (Exception e) {
        out.print("Error in Connection due to " + e.getMessage());
    }
    
}


else if(request.getParameter("studentid1")!=null)
    {
    String stuuid1 = request.getParameter("studentid1");
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection myconnection = DriverManager.getConnection(PATH + PLACE, USERNAME, PASSWORD);

        try {
            PreparedStatement mystatement = myconnection.prepareStatement("DELETE FROM fees WHERE studentid=?");
            mystatement.setString(1, stuuid1);

             
            if ( mystatement.executeUpdate()> 0) {
                out.print("1"); // Successful deletion
            } else {
                out.print("0"); // No rows affected (could mean no record with the provided ID)
            }
        } catch (Exception e) {
            out.print("Error in Query due to " + e.getMessage());
        } finally {
            if (myconnection != null) {
                myconnection.close(); // Close the connection after use
            }
        }
    } catch (Exception e) {
        out.print("Error in Connection due to " + e.getMessage());
    }
    
}



%>