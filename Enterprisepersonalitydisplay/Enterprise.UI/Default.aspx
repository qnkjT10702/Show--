<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Enterprise.UI.Default" %>

<%@ Register Src="~/playMicOne.ascx" TagPrefix="uc1" TagName="playMicOne" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>

</head>
<body>
    <form id="form1" runat="server">
            <uc1:playMicOne runat="server" ID="playMicOne" />
    </form>

</body>
</html>
