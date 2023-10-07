package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class adminheader_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write('\n');

    if(session.getAttribute("adminname")==null)
    {
    response.sendRedirect("login.jsp");
}


      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!-- header -->\n");
      out.write("    <header id=\"site-header\" class=\"fixed-top\">\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <nav class=\"navbar navbar-expand-lg navbar-light\">\n");
      out.write("                <a class=\"navbar-brand\" href=\"index.html\"><i class=\"fas fa-graduation-cap\"></i>Edu School\n");
      out.write("                </a>\n");
      out.write("                <button class=\"navbar-toggler collapsed\" type=\"button\" data-bs-toggle=\"collapse\"\n");
      out.write("                    data-bs-target=\"#navbarScroll\" aria-controls=\"navbarScroll\" aria-expanded=\"false\"\n");
      out.write("                    aria-label=\"Toggle navigation\">\n");
      out.write("                    <span class=\"navbar-toggler-icon fa icon-expand fa-bars\"></span>\n");
      out.write("                    <span class=\"navbar-toggler-icon fa icon-close fa-times\"></span>\n");
      out.write("                </button>\n");
      out.write("                <div class=\"collapse navbar-collapse\" id=\"navbarScroll\">\n");
      out.write("                    <ul class=\"navbar-nav ms-auto my-2 my-lg-0 navbar-nav-scroll\">\n");
      out.write("                        <li class=\"nav-item\">\n");
      out.write("                            <a class=\"nav-link active\" aria-current=\"page\" href=\"index.jsp\">Home</a>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"nav-item dropdown\">\n");
      out.write("                            <a class=\"nav-link dropdown-toggle\" href=\"#\" id=\"navbarDarkDropdownMenulink\" role=\"button\" data-bs-toggle=\"dropdown\" aria-expanded=\"false\">Add</a>\n");
      out.write("                            <ul class=\"dropdown-menu dropdown-menu-dark\" aria-labelledy=\"navbardarkdropdownMenuLink\">\n");
      out.write("                                <li><a class=\"dropdown-item\" href=\"add.jsp\" style=\"color:black\">Add Student</a></li>\n");
      out.write("                                <li><a class=\"dropdown-item\" href=\"addteacher.jsp\" style=\"color:black\">Add Teacher</a></li>\n");
      out.write("                                <li><a class=\"dropdown-item\" href=\"nonteachadd.jsp\" style=\"color:black\">Add Non teaching Staff</a></li>\n");
      out.write("                                <li><a class=\"dropdown-item\" href=\"fee.jsp\" style=\"color:black\">Fees</a></li>\n");
      out.write("                            </ul>\n");
      out.write("                        </li>\n");
      out.write("                       <li class=\"nav-item dropdown\">\n");
      out.write("                        <a class=\"nav-link dropdown-toggle\" href=\"#\" id=\"navbarDarkDropdownMenuLink2\" role=\"button\"\n");
      out.write("                            data-bs-toggle=\"dropdown\" aria-expanded=\"false\">List</a>\n");
      out.write("                        <ul class=\"dropdown-menu dropdown-menu-dark\" aria-labelledby=\"navbarDarkDropdownMenuLink2\">\n");
      out.write("                            <li><a class=\"dropdown-item\" href=\"studentlist.jsp\" style=\"color:black\">Student</a></li>\n");
      out.write("                            <li><a class=\"dropdown-item\" href=\"teacherlist.jsp\" style=\"color:black\">Teacher</a></li>\n");
      out.write("                            <li><a class=\"dropdown-item\" href=\"nonteacherlist.jsp\" style=\"color:black\">Non-teaching Staff</a></li>\n");
      out.write("                            <li><a class=\"dropdown-item\" href=\"feeslist.jsp\" style=\"color:black\">Fees</a></li>\n");
      out.write("                        </ul>\n");
      out.write("                    </li>\n");
      out.write("\n");
      out.write("                        ");

                        if(session.getAttribute("adminname")== null)
                        {
                        
      out.write("\n");
      out.write("                        \n");
      out.write("                        <li class=\"nav-item\">\n");
      out.write("                            <a class=\"nav-link\" href=\"register.jsp\">Register</a>\n");
      out.write("                        </li> \n");
      out.write("                        <li class=\"nav-item\">\n");
      out.write("                            <a class=\"nav-link\" href=\"login.jsp\">Login</a>\n");
      out.write("                        </li>\n");
      out.write("                        ");

                            }
else{

      out.write("\n");
      out.write("\n");
      out.write("                        ");

                            }

      out.write("\n");
      out.write("                        \n");
      out.write("                        <li class=\"nav-item\">\n");
      out.write("                            <a class=\"nav-link\" href=\"logout.jsp\">Logout</a>\n");
      out.write("                        </li>\n");
      out.write("                         \n");
      out.write("                    </ul>\n");
      out.write("                    <!-- search-right -->\n");
      out.write("                    <div class=\"header-search position-relative\">\n");
      out.write("                        <div class=\"search-right mx-lg-2\">\n");
      out.write("                            <a href=\"#search\" class=\"btn search-btn p-0\" title=\"search\">\n");
      out.write("                                <i class=\"fas fa-search\"></i></a>\n");
      out.write("                            <!-- search popup -->\n");
      out.write("                            <div id=\"search\" class=\"pop-overlay\">\n");
      out.write("                                <div class=\"popup\">\n");
      out.write("                                    <form action=\"#search\" method=\"GET\" class=\"search-box\">\n");
      out.write("                                        <input type=\"search\" placeholder=\"Enter Keyword...\" name=\"search\"\n");
      out.write("                                            required=\"required\" autofocus=\"\">\n");
      out.write("                                        <button type=\"submit\" class=\"btn\"><span class=\"fas fa-search\"\n");
      out.write("                                                aria-hidden=\"true\"></span></button>\n");
      out.write("                                    </form>\n");
      out.write("                                </div>\n");
      out.write("                                <a class=\"close\" href=\"#close\">?</a>\n");
      out.write("                            </div>\n");
      out.write("                            <!-- //search popup -->\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <!--//search-right-->\n");
      out.write("                </div>\n");
      out.write("                <!-- toggle switch for light and dark theme -->\n");
      out.write("                <div class=\"cont-ser-position\">\n");
      out.write("                    <nav class=\"navigation\">\n");
      out.write("                        <div class=\"theme-switch-wrapper\">\n");
      out.write("                            <label class=\"theme-switch\" for=\"checkbox\">\n");
      out.write("                                <input type=\"checkbox\" id=\"checkbox\">\n");
      out.write("                                <div class=\"mode-container\">\n");
      out.write("                                    <i class=\"gg-sun\"></i>\n");
      out.write("                                    <i class=\"gg-moon\"></i>\n");
      out.write("                                </div>\n");
      out.write("                            </label>\n");
      out.write("                        </div>\n");
      out.write("                    </nav>\n");
      out.write("                </div>\n");
      out.write("                <!-- //toggle switch for light and dark theme -->\n");
      out.write("            </nav>\n");
      out.write("        </div>\n");
      out.write("    </header>\n");
      out.write("    <!-- //header -->");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
