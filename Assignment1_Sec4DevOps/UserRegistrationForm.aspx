<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserRegistrationForm.aspx.cs" Inherits="Assignment1_Sec4DevOps.UserRegistrationForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 228px;
        }
        .auto-style3 {
            width: 228px;
            height: 49px;
        }
        .auto-style4 {
            height: 49px;
            width: 148px;
        }
        .auto-style5 {
            height: 97px;
            width: 148px;
        }
        .auto-style6 {
            width: 228px;
            height: 97px;
        }
        .auto-style8 {
            margin-left: 22px;
        }
        .auto-style9 {
            margin-left: 28px;
        }
        .auto-style10 {
            text-align: left;
            font-size: xx-large;
        }
        .auto-style11 {
            width: 281px;
            height: 49px;
        }
        .auto-style12 {
            width: 281px;
        }
        .auto-style13 {
            width: 281px;
            height: 97px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <p class="auto-style10">
            <strong>User Registration System</strong></p>
        <p>
            &nbsp;</p>
        <table style="width: 54%; height: 352px; background-color: #FFCCFF; font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif; font-size: x-small;" border="1" id="RegFormID">
            <tr>
                <td id="lblFullName" class="auto-style4"><strong>Full Name*:</strong></td>
                <td class="auto-style3">
                    <asp:TextBox ID="fullNameTxtBx" runat="server" Width="231px"></asp:TextBox>
                </td>
                <td class="auto-style11" id="fullNameValidator">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="fullNameTxtBx" ErrorMessage="Please enter a full name" Font-Bold="True" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td id="lblLoginID" class="auto-style4"><strong>Login ID*:</strong></td>
                <td class="auto-style1">
                    <asp:TextBox ID="loginIDTxtBx" runat="server" Width="231px"></asp:TextBox>
                </td>
                <td id="loginIDValidator" class="auto-style12">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="loginIDTxtBx" Display="Dynamic" ErrorMessage="Please enter a login ID" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td id="lblPassword" class="auto-style5"><strong>Password*:</strong></td>
                <td class="auto-style6">
                    <asp:TextBox ID="passwordTxtBx" runat="server" Width="231px"></asp:TextBox>
                </td>
                <td class="auto-style13">
                    <asp:RequiredFieldValidator ID="passwordValidator" runat="server" ControlToValidate="passwordTxtBx" Display="Dynamic" ErrorMessage="Please enter a password" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td id="lblAddress" class="auto-style4">Address:</td>
                <td class="auto-style3">
                    <asp:TextBox ID="addressTxtBx" runat="server" Width="231px"></asp:TextBox>
                </td>
                <td class="auto-style11">
                    <strong>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="addressTxtBx" Display="Dynamic" ErrorMessage="Please enter a valid address" ForeColor="Red" ValidationExpression="[a-z,A-Z,0-9] *"></asp:RegularExpressionValidator>
                    </strong></td>
            </tr>
            <tr>
                <td id="lbCity" class="auto-style4">City:</td>
                <td class="auto-style1">
                    <asp:TextBox ID="cityTxtBx" runat="server" Width="231px"></asp:TextBox>
                </td>
                <td class="auto-style12">
                    <strong>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="cityTxtBx" Display="Dynamic" ErrorMessage="Please enter a valid city" ForeColor="Red" ValidationExpression="[a-z,A-Z] *"></asp:RegularExpressionValidator>
                    </strong></td>
            </tr>
            <tr>
                <td id="lblState" class="auto-style4">State:</td>
                <td class="auto-style1">
                    <asp:TextBox ID="stateTxtBx" runat="server" Width="231px"></asp:TextBox>
                </td>
                <td class="auto-style12"><strong>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="stateTxtBx" Display="Dynamic" ErrorMessage="Please enter a valid state" ForeColor="Red" ValidationExpression="[a-z,A-Z] *"></asp:RegularExpressionValidator>
                    </strong></td>
            </tr>
            <tr>
                <td id="lblPhone" class="auto-style4">Phone:</td>
                <td class="auto-style1">
                    <asp:TextBox ID="phoneTxtBx" runat="server" OnTextChanged="phoneTxtBx_TextChanged" Width="231px"></asp:TextBox>
                </td>
                <td class="auto-style12"><strong>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="phoneTxtBx" Display="Dynamic" ErrorMessage="Please enter a valid phone number" ForeColor="Red" ValidationExpression="[0-9] *"></asp:RegularExpressionValidator>
                    </strong></td>
            </tr>
            <tr>
                <td id="lblFirstName4" class="auto-style4"><strong id="l">
                    <asp:Label ID="labelMessage" runat="server" ForeColor="#003300">*Required Field</asp:Label>
                    </strong></td>
                <td class="auto-style1">
                    <asp:Button ID="btnSubmit" runat="server" OnClick="item6Btn_Click" Text="Submit" Width="86px" BackColor="#CEE7F4" BorderColor="#66CCFF" BorderWidth="2px" CssClass="auto-style8" />
                    <asp:Button ID="btnCancel" runat="server" BackColor="#CEE7F4" BorderColor="#66CCFF" BorderWidth="2px" CssClass="auto-style9" OnClick="btnCancel_Click" Text="Cancel" Width="86px" CausesValidation="False" />
                </td>
                <td class="auto-style12">&nbsp;</td>
            </tr>
            <tr>
                <td id="lblFirstName5" class="auto-style4">
                    &nbsp;</td>
                <td class="auto-style1">
                    <strong>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="fullNameTxtBx" Display="Dynamic" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="[a-z,A-Z ] *">Please enter a valid name</asp:RegularExpressionValidator>
                    </strong></td>
                <td class="auto-style12">&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
