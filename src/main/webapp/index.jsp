<%@ page import="java.sql.*"%>
<html>
<head>
<title>JDBC Connection example</title>
</head>

<body>
<h1>JDBC Connection example</h1>

<%
  String user = "owncloud";
  String password = "123";
  
  try {
    java.sql.Connection con;
    Class.forName("com.mysql.jdbc.Driver");
    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/owncloud"+, user, password);
    out.println (db+ "database successfully opened.");
  }
  catch(SQLException e) {
    out.println("SQLException caught: " +e.getMessage());
  }
%>

</body>
</html>

