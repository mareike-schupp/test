<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %> 
<%
  String levelParam = request.getParameter("level");
  Integer level = levelParam == null ? 0 : Integer.parseInt(levelParam);
%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script src="http://code.jquery.com/jquery-1.10.2.js"></script>
    <title>JSP Demo</title>
  </head>
  <body>
    <% 
      Class.forName("com.mysql.jdbc.Driver");
      java.sql.Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/lernplattform_benutzer", "root", "iforgot");
      Statement stmt = conn.createStatement();
      ResultSet rs = stmt.executeQuery("SELECT * FROM englisch WHERE level = " + level + ";");
      while(rs.next()){
        int id  = rs.getInt("id");
        String deutsch = rs.getString("deutsch");
        String englisch = rs.getString("englisch");
    
        out.println(String.format("%d, %s - %s<br>", id, deutsch, englisch));
      }
      //STEP 6: Clean-up environment
      rs.close();
      stmt.close();
      conn.close();
    %>
  </body>
</html>
