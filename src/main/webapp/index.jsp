<%@ page import="java.lang.reflect.Array" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="student.student1.Student" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Student </title>
</head>
<body>
<%
    List<Student> studentLists = new ArrayList<>();
    studentLists.add(new Student("John", "1-11-2000", "USA", "image/John.webp"));
    studentLists.add(new Student("Gong", "2-12-1999", "China", "image/Gong.jpg"));
    studentLists.add(new Student("Harley", "7-10-1998", "Colombia", "image/Harley.jpg"));
    studentLists.add(new Student("Kay", "22-1-1997", "France", "image/Kay.jpg"));
    studentLists.add(new Student("Lily", "11-12-2003", "Germany", "image/Lily.jpg"));
    pageContext.setAttribute("studentList",studentLists);
%>
<form>
    <table class="table" style width="100%" border="1px">
        <tr>
            <h1>Danh sách sinh viên</h1>
        </tr>
        <tr>
            <td>Tên</td>
            <td>Ngày sinh</td>
            <td>Địa chỉ</td>
            <td>Ảnh</td>
        </tr>
       <c:forEach var="st" items="#{studentList}">
           <tr>
               <td><c:out value="${st.name}"></c:out> </td>
               <td><c:out value="${st.birthDay}"></c:out> </td>
               <td><c:out value="${st.address}"></c:out> </td>
               <td align="center"><img width="220" height="220" src="${st.img}"></td>
               
           </tr>
           
           
       </c:forEach>

        



    </table>

</form>
</body>
</html>