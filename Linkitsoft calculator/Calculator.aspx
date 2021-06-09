<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Calculator.aspx.cs" Inherits="Linkitsoft_calculator.Calculator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Calculator</title>
    <script>

		//function that display value
		function dis(val) {
			document.getElementById("result").value += val
		}

		//function that evaluates the digit and return result
		function solve() {
			let x = document.getElementById("result").value
			let y = eval(x)
			document.getElementById("result").value = y
		}

		//function that clear the display
		function clr() {
			document.getElementById("result").value = ""
		}
	</script>
</head>
<body>
    <form id="form1" runat="server">
		<div class="row justify-content-center">
				<div class="col-md-6 text-center mb-5" >
		<h2 class="title" style="color:black">Linkitsoft Calculator</h2>
					</div>
					</div>

				<asp:Table ID="calculatortable" runat="server" CssClass="row justify-content-center">
					<asp:tableRow>
						<asp:TableCell ColumnSpan="3"><input type="text" id="result" /></asp:TableCell>
						<asp:TableCell><input type="button" value="c" onclick="clr()" /></asp:TableCell>
					</asp:tableRow>
				
				<asp:tableRow>
					<asp:TableCell><input style="color:aqua" type="button" value="1" onclick="dis('1')"/></asp:TableCell>
					<asp:TableCell><input style="color:blueviolet" type="button" value="2" onclick="dis('2')"/></asp:TableCell>
					<asp:TableCell><input style="color:darkslateblue" type="button" value="3" onclick="dis('3')"/></asp:TableCell>
					<asp:TableCell><input style="color:chartreuse" type="button" value="/" onclick="dis('/')"/></asp:TableCell>
				</asp:tableRow>

					<asp:TableRow>
						<asp:TableCell><input style="color:goldenrod" type="button" value="4" onclick="dis('4')"/></asp:TableCell>
						<asp:TableCell><input style="color:greenyellow" type="button" value="5" onclick="dis('5')"/></asp:TableCell>
						<asp:TableCell><input style="color:lawngreen" type="button" value="6" onclick="dis('6')"/></asp:TableCell>
						<asp:TableCell><input style="color:olive" type="button" value="-" onclick="dis('-')"/></asp:TableCell>
					</asp:TableRow>

					<asp:TableRow>
						<asp:TableCell><input style="color:royalblue" type="button" value="7" onclick="dis('7')"/></asp:TableCell>
						<asp:TableCell><input style="color:darkblue" type="button" value="8" onclick="dis('8')"/></asp:TableCell>
						<asp:TableCell><input style="color:mediumslateblue" type="button" value="9" onclick="dis('9')"/></asp:TableCell>
						<asp:TableCell><input style="color:mediumvioletred" type="button" value="+" onclick="dis('+')"/></asp:TableCell>
					</asp:TableRow>

					<asp:TableRow>
						<asp:TableCell><input style="color:firebrick" type="button" value="." onclick="dis('.')"/></asp:TableCell>
						<asp:TableCell><input style="color:deeppink" type="button" value="0" onclick="dis('0')"/></asp:TableCell>
						<asp:TableCell><input style="color:springgreen" type="button" value="=" onclick="solve()" /></asp:TableCell>
						<asp:TableCell><input style="color:magenta" type="button" value="*" onclick="dis('*')" /></asp:TableCell>
					</asp:TableRow>

        
</asp:Table>
    </form>
</body>
</html>
