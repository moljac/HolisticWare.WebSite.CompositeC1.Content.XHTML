<%@ Control Language="C#" AutoEventWireup="true" Inherits="Encoding" %>
<asp:Label ID="Label1" runat="server" Text="Label">Input text...</asp:Label>
<br />
<asp:TextBox ID="TextBox1" runat="server" Width="100%"></asp:TextBox>
<br/>
<asp:Label ID="Label2" runat="server" Text="Label">Input text...</asp:Label>
<br />
<asp:TextBox ID="TextBox2" runat="server" Width="100%"></asp:TextBox>
<br/>
<asp:Label ID="Label3" runat="server" Text="Label">Input text...</asp:Label>
<br />
<asp:TextBox ID="TextBox3" runat="server" Width="100%"></asp:TextBox>
<br/>
<asp:Button ID="Button1" runat="server" Text="Button" onclick="Button1_Click" />

<script runat="server">
protected void Button1_Click(object sender, EventArgs e)
{
TextBox1.Text = "Hello Web";
}
</script>