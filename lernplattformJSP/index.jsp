<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="com.example.Vocab"%>
<%
  String levelParam = request.getParameter("level");
  Integer level = levelParam == null ? 0 : Integer.parseInt(levelParam);

  Class.forName("com.mysql.jdbc.Driver");
  java.sql.Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/lernplattform_benutzer", "root", "iforgot");
  PreparedStatement pstmt = conn.prepareStatement("SELECT * FROM englisch WHERE level = ?;");
  pstmt.setInt(1, level);
  ResultSet rs = pstmt.executeQuery();
  List<String> vocab = new ArrayList<String>();
  while(rs.next()){
    int id  = rs.getInt("id");
    String german = rs.getString("deutsch");
    String english = rs.getString("englisch");
    vocab.add(english);
  }
  rs.close();
  pstmt.close();
  conn.close();
%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script src="http://code.jquery.com/jquery-1.10.2.js"></script>
    <title>JSP Demo</title>
  </head>
  <body>
    <ul>
    <% for (String english : vocab) { %>
      <li><%= english %></li>
    <% } %>
    </ul>
  </body>
</html>
