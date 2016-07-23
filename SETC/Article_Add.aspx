<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="Article_Add.aspx.cs" Inherits="Article_Add" %>
<%@ Register TagPrefix="CE" Namespace="CuteEditor" Assembly="CuteEditor" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="clear"></div>
<asp:Label ID="RandomID" runat="server" Text="" Visible="false"></asp:Label>
<asp:Label ID="IDLabel" runat="server" Text="" Visible="false"></asp:Label>
<asp:Timer ID="Timer1" OnTick="Timer1_Tick" runat="server" Interval="2000" Enabled="false" />
<div id="CurrentPosition">当前位置：<a href="Article_Man.aspx">文章管理</a> >> <a href="#">发表新文章</a></div>
<p>&nbsp;</p>

<table width="100%" align="left" id="RegistTable">
    <tr><td width="120" align="center"><asp:Button ID="Button1" runat="server" Text=" 保存草稿 " CssClass="Button" onclick="Button1_Click" /></td>
    <td width="200" align="left">        
        <asp:Button ID="Button2" runat="server" Text=" 文章预览 " CssClass="Button" onclick="Button2_Click" />        
    </td>
    <td width="120" align="left"><asp:Button ID="Button3" runat="server" Text=" 发表文章 " CssClass="Button" onclick="Button3_Click" />&nbsp;</td>
    <td width="200">&nbsp;</td>
    </tr>
    <tr>
    <td width="120">&nbsp;</td>
    <td align="left" colspan="3"><asp:Label ID="ResultLabel" runat="server" 
            Font-Bold="True" ForeColor="#00CC00"></asp:Label></td>    
    </tr>
    <tr><td width="120">文章标题：</td>
    <td width="300" align="left" colspan="3"><asp:TextBox ID="TitleTB" runat="server" MaxLength="30" CssClass="TextBox" Width="560"></asp:TextBox></td>
    
    </tr>    
    <tr><td width="120">&nbsp;</td>
    <td align="left" colspan="3"><div id="div4" style="font-size:12px;color:#999;"> 文章标题，请勿超过20个字符</div></td>    
    </tr>
    <tr><td width="120">文章分类：</td>
    <td width="200" align="left">

        <asp:DropDownList ID="Cats" runat="server" Height="24" AutoPostBack="True" 
            onselectedindexchanged="Cats_SelectedIndexChanged">
        </asp:DropDownList>
        &nbsp;&nbsp;
        <asp:DropDownList ID="Subs" runat="server" Height="24">
        </asp:DropDownList>
        
    </td>
    <td align="left">文章排序：</td>
    <td align="left"><asp:TextBox ID="Orders" runat="server" CssClass="TextBox" Text="1"></asp:TextBox>
        </td>
    </tr>    
    <tr><td>发表日期：</td><td>
        <asp:TextBox ID="CDT_TextBox" runat="server" CssClass="TextBox"></asp:TextBox>&nbsp;2012-1-1
        </td><td>&nbsp;</td>
    <td align="left"><div id="div1" style="font-size:12px;color:#999;">如果需要文章置顶，排序值需><asp:Label ID="MaxOrders" runat="server" Text="0"></asp:Label></div></td>    
    </tr>
    <tr>
    <td align="left" colspan="4">
        <CE:Editor id="Editor1" EditorWysiwygModeCss="example.css" runat="server" Width="100%" Height="600">
    <FrameStyle BackColor="White" BorderColor="#DDDDDD" BorderStyle="Solid" BorderWidth="1px" CssClass="CuteEditorFrame" Height="100%" Width="100%" />
    </CE:Editor>
<FRAMESTYLE Width="100%" Height="100%" BorderWidth="1px" BorderStyle="Solid" BorderColor="#DDDDDD" CssClass="CuteEditorFrame" BackColor="White"></FRAMESTYLE>
    </td>
    </tr>   
    <tr><td colspan="4">&nbsp;</td>      
    </tr>    

        
    </table>
<script type="text/javascript">
    function ShowMyDiv1() {
        alert(MyDiv1.style.display);
        if (MyDiv1.style.display = "block") {
            MyDiv1.style.display = "none";
        }
        else {
            MyDiv1.style.display = "block";
        }
    }
</script>
<div class="clear"></div>
</asp:Content>

