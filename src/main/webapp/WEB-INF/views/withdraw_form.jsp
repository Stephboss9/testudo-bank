<%--@elvariable id="user" type="net.testudobank.User"--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<t:genericpage>
    <jsp:attribute name="header">
      <title>Deposit Form</title>
    <style type="text/css">
        label {
            display: inline-block;
            width: 200px;
            margin: 5px;
            text-align: left;
        }

        input[type=text], input[type=password], select {
            width: 200px;
        }

        input[type=radio] {
            display: inline-block;
            margin-left: 45px;
        }

        input[type=checkbox] {
            display: inline-block;
            margin-right: 190px;
        }

        button {
            padding: 10px;
            margin: 10px;
        }
    </style>
    </jsp:attribute>
    <jsp:body>
        <div class="container text-center">
            <form:form action="withdraw" method="post" modelAttribute="user">

                <form:label path="amountToWithdraw">Amount to Withdraw ($):</form:label>
                <form:input path="amountToWithdraw"/><br/>

                <form:button type="submit" class="btn btn-primary">Withdraw</form:button>
            </form:form>
        </div>
    </jsp:body>
</t:genericpage>