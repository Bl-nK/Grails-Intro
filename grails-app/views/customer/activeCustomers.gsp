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
    <g:else>
        <h2>No customers. Tis a sad day.</h2>
    </g:else>
</body>
</html>