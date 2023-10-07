package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class profile_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"UTF-8\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("    <title>Profile Page</title>\n");
      out.write("     <link href=\"https://fonts.googleapis.com/css2?family=Ubuntu:wght@300;400;500;700&display=swap\" rel=\"stylesheet\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"assets/css/style-starter.css\">\n");
      out.write("        \n");
      out.write("         <link href=\"https://fonts.googleapis.com/css?family=Lora:400,400i,700,700i&amp;subset=cyrillic,cyrillic-ext,latin-ext,vietnamese\"\n");
      out.write("        rel=\"stylesheet\">\n");
      out.write("    <link href=\"https://fonts.googleapis.com/css?family=Dosis:200,300,400,500,600,700,800&amp;subset=latin-ext\"\n");
      out.write("        rel=\"stylesheet\">\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("    <div class=\"profile-container\">\n");
      out.write("        <center>\n");
      out.write("            <form>\n");
      out.write("        <h1>Your Profile</h1>\n");
      out.write("        <br>\n");
      out.write("        <img src=\"assets/images/avtar.jpeg\" alt=\"Profile Picture\" class=\"profile-image\" id=\"profile-image\">\n");
      out.write("        <div class=\"upload-button\">\n");
      out.write("            <label for=\"image-upload\" class=\"update-button\">Upload Image</label>\n");
      out.write("            <input class=\"profile-image\" type=\"file\" id=\"image-upload\" accept=\"image/*\">\n");
      out.write("        </div>\n");
      out.write("        </center>\n");
      out.write("        <div class=\"profile-details\">\n");
      out.write("            <strong> <label for=\"name\">Name:</label> </strong>\n");
      out.write("           \n");
      out.write("            ");

                                     if(session.getAttribute("name")!=null){
                         out.print(session.getAttribute("name").toString());
                         
                        }
                                     
      out.write("\n");
      out.write("                                     <br>\n");
      out.write("                                     <br>\n");
      out.write("                                     <strong>  <label for=\"email\">Email:</label> </strong>\n");
      out.write("             ");

                                     if(session.getAttribute("name")!=null){
                         out.print(session.getAttribute("email").toString());
                         
                        }
                                     
      out.write("\n");
      out.write("                                     <br>\n");
      out.write("                                     <br>\n");
      out.write("          <strong>  <label for=\"name\">School Name:</label> </strong>\n");
      out.write("            Edu School\n");
      out.write("            <br>\n");
      out.write("            <br>\n");
      out.write("           <strong> <label for=\"email\">School Address:</label> </strong>\n");
      out.write("            Edu School, 10001, 5th Avenue, #06 lane street, NY - 62617.\n");
      out.write("           \n");
      out.write("        </div>\n");
      out.write("                                     <br>\n");
      out.write("                                     <center>                    \n");
      out.write("                                         <input class=\"update-button\" type=\"submit\" value=\"Update Profile\"></input>\n");
      out.write("                                     </center>\n");
      out.write("             </form>\n");
      out.write("    </div>\n");
      out.write("    \n");
      out.write("      <script>\n");
      out.write("       \n");
      out.write("        document.getElementById('image-upload').addEventListener('change', function () {\n");
      out.write("            const image = document.getElementById('profile-image');\n");
      out.write("            const file = this.files[0];\n");
      out.write("            if (file) {\n");
      out.write("                const reader = new FileReader();\n");
      out.write("                reader.onload = function (e) {\n");
      out.write("                    image.src = e.target.result;\n");
      out.write("                };\n");
      out.write("                reader.readAsDataURL(file);\n");
      out.write("            }\n");
      out.write("        });\n");
      out.write("    </script>\n");
      out.write("</body>\n");
      out.write("</html>\n");
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
