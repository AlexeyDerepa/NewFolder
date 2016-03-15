<%@ Page Language="C#" %>
<%@ Import Namespace="System.Drawing" %><%-- добавляем пространства имен --%>



<!DOCTYPE html>

<script runat="server">
        
    protected void Button2_Click(object sender, EventArgs e)
    {
        ClientScript//это свойство страницы для добавдения и регистрации с
            .RegisterStartupScript(
            this.GetType()//
            ,"alert"//
            ,"alert('Hello ASP.NET');"//
            ,true//
            );
    }

    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
        Button2.BackColor = Color.Red;
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = "Current time " + DateTime.Now.ToLongTimeString();
    }

    protected void CheckBox2_CheckedChanged(object sender, EventArgs e)
    {
        Label1.ForeColor = Color.Red;
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<%--    <script language="javascript"></script>--%>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <input id="Button1" type="button" value="button" onclick ="alert('asdf')"/>
        <asp:Button ID="Button2" runat="server" Text="C#" OnClick="Button2_Click" />
        <asp:CheckBox ID="CheckBox1" runat="server" OnCheckedChanged="CheckBox1_CheckedChanged" 
            AutoPostBack="true"  
            />
        <%-- AutoPostBack="true"  отправка запроса на сервер--%>
        <br />
        <asp:Label ID="Label1" runat="server" Text="Label" EnableViewState="false"></asp:Label>
        <br />
        <asp:CheckBox ID="CheckBox2" runat="server" OnCheckedChanged="CheckBox2_CheckedChanged" 
            AutoPostBack="true"
            />
    </div>
    </form>
</body>
</html>
