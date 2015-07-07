<%--
  Created by IntelliJ IDEA.
  User: brandon
  Date: 7/7/15
  Time: 6:35 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main">
</head>

<body>
    <g:if test="${customers}">
        <table>
            <tr>
                <th>Name</th>
                <th>Address</th>
                <th>Contacts</th>
            </tr>
            <g:each in="${customers}">
                <tr>
                    <td>${it?.name}</td>
                    <td>${it?.address}</td>
                    <td>${it?.contacts.size()}</td>
                </tr>
            </g:each>
        </table>
    </g:if>
</body>
</html>