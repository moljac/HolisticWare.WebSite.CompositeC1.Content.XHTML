<%@ Page language="c#" %>
<%@ Import Namespace="System.Data" %>

<script runat="server">
private void Page_Load(object sender, System.EventArgs e)
{
	// generate the chart image url everytime the page loads, provided the number of points
	// entered is valid
	NumberPoints_Rangevalidator.Validate();
	if (NumberPoints_Rangevalidator.IsValid)
	{
		NPlotChart_Image.ImageUrl = "ChartGenerator.ashx?number=" + NumberPoints_TextBox.Text + "&title=" + HttpUtility.UrlEncode(Title_TextBox.Text);
	}
}
</script>


<HTML>
    <head>
		<meta http-equiv="imagetoolbar" content="no" />
		<title>ASP.NET Dynamic Chart Generation Example with NPlot</title>
    </head>
	<body>
		<form method="post" runat="server">
			<h2>Dynamic Chart Generation Example</h2>
			<table cellpadding=0 cellspacing=5>
				<tr>
					<td>Chart Title:</td>
					<td><asp:TextBox id="Title_TextBox" Text="Default Title" runat="server" /></td>
				</tr>
				<tr>
					<td>Number of Points:</td>
					<td>
						<asp:TextBox id="NumberPoints_TextBox" Text="20" runat="server" /> &nbsp;
						<asp:RangeValidator
							ControlToValidate="NumberPoints_TextBox"
							MinimumValue="2"
							MaximumValue="200"
							Type="Integer"
							EnableClientScript="false"
							Text="The number of points must be between 2 and 200"
							runat="server" ID="NumberPoints_Rangevalidator"/>
					</td>
				</tr>
				<tr>
					<td colspan="2"><asp:Button ID="submit_button" Text="regenerate chart" Runat="server" /></td>
				</tr>
			</table>
			<br>
			<asp:Image id="NPlotChart_Image" runat="server" /><br>
			<br>
			Download the source code for this example <a href="nplot_web_example.zip">here</a>.
		</form>
	</body>
</HTML>

