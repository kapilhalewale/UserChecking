<%@page import="utility.ConnectionProvider"%>
<%@ page import="java.sql.*"%>  
<%
String user=request.getParameter("id");
String password=request.getParameter("pwd");

Connection con=	ConnectionProvider.getCon();
PreparedStatement ps=con.prepareStatement("select employeeid,password from employee where employeeID=?");  
ps.setString(1,user);  
ResultSet rs=ps.executeQuery();  
if(rs.next()){  
			out.print("<font color='red' >User Name is Exist please choose some other name</font>");
}else{
			out.print("<font color='green' >User Name is Availble Please Proceed</font>");

}
%>