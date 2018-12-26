<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Enterprise.UI.Default" %>

<%@ Register Src="~/MusicMenu.ascx" TagPrefix="uc1" TagName="MusicMenu" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
<link rel="stylesheet" href="fonts/iconfont.css"/>
<link rel="stylesheet" type="text/css" media="screen" href="css/reset.css" />
<link rel="stylesheet" type="text/css" media="screen" href="css/player.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <uc1:MusicMenu runat="server" ID="MusicMenu" />
        </div>
    </form>
 <script src="js/utill.js"></script>
<script src="js/jquery.min.js"></script>
<script src="js/player.js"></script>
</body>
</html>
