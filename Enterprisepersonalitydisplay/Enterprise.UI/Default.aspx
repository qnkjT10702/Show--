<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Enterprise.UI.Default" %>

<%@ Register Src="~/playMicOne.ascx" TagPrefix="uc1" TagName="playMicOne" %>
<%@ Register Src="~/MusicPaly2.ascx" TagPrefix="uc1" TagName="MusicPaly2" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style>
  .btnCollestSty {
    width: 44px;
    height: 50px;
    background-image: url("../Imgs/Collect1.png");
    background-size:89px;
    background-position:-2px 70px;
    position: relative;
    left: 873px;
    top: -38px;
     border-color:transparent;
    background-color:transparent;
}
.btnDownLoadSty {
    width: 44px;
    height: 50px;
    background-image: url("../Imgs/DownLoad.png");
    background-size: 89px;
    background-position: -2px 66px;
    position: relative;
    left: 897px;
    top: -41px;
    border-color:transparent;
    background-color:transparent;
}
    .btnDownLoadSty:hover {
        background-position: 223px 66px;
    }
    .btnCollestSty:hover {
        background-position: 220px 70px;
    }
    </style>
</head>
<body>
    <form id="form1" runat="server">
            <uc1:playMicOne runat="server" ID="playMicOne" />
        <div>
            <asp:Panel ID="Panel1" runat="server">
             
            </asp:Panel>
            
        </div>
           
    </form>
    
</body>
</html>
