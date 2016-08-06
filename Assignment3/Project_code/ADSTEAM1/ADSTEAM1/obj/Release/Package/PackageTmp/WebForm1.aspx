<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="ADSTEAM1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        hr { 
    display: block;
   
    margin-bottom: 0em;
    margin-left: auto;
    margin-right: auto;
    border-style: inset;
    border-width: 1px;
border-color : red;
} 
    </style>
     <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
<div class="container-fluid">
<div class="row">
<div class="col-sm-8"  >
  <h1><font color="red">ADS_Assignment3 : Will customer churn?</font></h1>
  </div>
  <div class="col-sm-4" >

</div>
</div>
</div>

<hr></hr>
  <div class="container-fluid">
  
<h5>Please fill out this form completely. Wait after submit? may result in a processing delay</h5>
</div>
 <div class="container-fluid">
 <h4 ><font color="red"><b> Input Parameters: 
     <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
     </b> </font></h4>
     
<hr>
        <div class="row">

<div class="col-sm-4"  >
    <div class="form-group" role="form">
      <label for="State">State:</label>
       
                    <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
<asp:ListItem>AL</asp:ListItem>
<asp:ListItem>AK</asp:ListItem>
<asp:ListItem>AZ</asp:ListItem>
<asp:ListItem>AR</asp:ListItem>
<asp:ListItem>CA</asp:ListItem>
<asp:ListItem>CO</asp:ListItem>
<asp:ListItem>CT</asp:ListItem>
<asp:ListItem>DE</asp:ListItem>
<asp:ListItem>FL</asp:ListItem>
<asp:ListItem>GA</asp:ListItem>
<asp:ListItem>HI</asp:ListItem>
<asp:ListItem>ID</asp:ListItem>
<asp:ListItem>IL</asp:ListItem>
<asp:ListItem>IN</asp:ListItem>
<asp:ListItem>IA</asp:ListItem>
<asp:ListItem>KS</asp:ListItem>
<asp:ListItem>KY</asp:ListItem>
<asp:ListItem>LA</asp:ListItem>
<asp:ListItem>ME</asp:ListItem>
<asp:ListItem>MD</asp:ListItem>
<asp:ListItem>MA</asp:ListItem>
<asp:ListItem>MI</asp:ListItem>
<asp:ListItem>MN</asp:ListItem>
<asp:ListItem>MS</asp:ListItem>
<asp:ListItem>MO</asp:ListItem>
<asp:ListItem>MT</asp:ListItem>
<asp:ListItem>NE</asp:ListItem>
<asp:ListItem>NV</asp:ListItem>
<asp:ListItem>NH</asp:ListItem>
<asp:ListItem>NJ</asp:ListItem>
<asp:ListItem>NM</asp:ListItem>
<asp:ListItem>NY</asp:ListItem>
<asp:ListItem>NC</asp:ListItem>
<asp:ListItem>ND</asp:ListItem>
<asp:ListItem>OH</asp:ListItem>
<asp:ListItem>OK</asp:ListItem>
<asp:ListItem>OR</asp:ListItem>
<asp:ListItem>PA</asp:ListItem>
<asp:ListItem>RI</asp:ListItem>
<asp:ListItem>SC</asp:ListItem>
<asp:ListItem>SD</asp:ListItem>
<asp:ListItem>TN</asp:ListItem>
<asp:ListItem>TX</asp:ListItem>
<asp:ListItem>UT</asp:ListItem>
<asp:ListItem>VT</asp:ListItem>
<asp:ListItem>VA</asp:ListItem>
<asp:ListItem>WA</asp:ListItem>
<asp:ListItem>DC</asp:ListItem>
<asp:ListItem>WV</asp:ListItem>
<asp:ListItem>WI</asp:ListItem>
<asp:ListItem>WY</asp:ListItem>

     </asp:DropDownList>
    </div>
	 </div>
	<div class="col-sm-4"  >
    <div class="form-group" role="form">
      <label for="account length">account length:</label>
       <asp:TextBox ID="TextBox2" type="number" min="0"  runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator id="RequiredFieldValidator2" runat="server"
                    ControlToValidate="TextBox2"
                    ErrorMessage="AccountLength is a required field."
                    ForeColor="Red">
                    </asp:RequiredFieldValidator>
	   </div>
    </div>
	<div class="col-sm-4 >
	 <div class="form-group" role="form">
      <label for="area code">area code:</label>
      <asp:TextBox ID="TextBox3" type="number" min="0"   runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator id="RequiredFieldValidator3" runat="server"
                    ControlToValidate="TextBox3"
                    ErrorMessage="AreaCode is a required field."
                    ForeColor="Red">
                    </asp:RequiredFieldValidator>
    </div>
 </div>
            </div>
<div class="row">

<div class="col-sm-4"  >
    <div class="form-group" role="form">
      <label for="phone number">Phone number:</label>
      <asp:TextBox ID="TextBox4" type="number" min="0"  runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator id="RequiredFieldValidator4" runat="server"
                    ControlToValidate="TextBox4"
                    ErrorMessage="Phone number is a required field."
                    ForeColor="Red">
                    </asp:RequiredFieldValidator>
    </div>
	 </div>
	<div class="col-sm-4"  >
    <div class="form-group" role="form">
      <label for="international plan">International plan?</label>
<asp:RadioButtonList ID="iPlan" runat="server">
    <asp:ListItem Text="yes" Value="yes" />
    <asp:ListItem Text="no" Value="no" Selected="True"  />
</asp:RadioButtonList>
	   </div>
    </div>
	<div class="col-sm-4 >
	 <div class="form-group" role="form">
      <label for="voice mail plan">Voice mail plan:</label>
     <asp:RadioButtonList ID="vmp" runat="server">
    <asp:ListItem Text="yes" Value="yes" />
    <asp:ListItem Text="no" Value="no" Selected="True"  />
</asp:RadioButtonList>
    </div>
 </div>
    </div>
<div class="row">

<div class="col-sm-4"  >
    <div class="form-group" role="form">
      <label for="number vmail messages">Number vmail messages:</label>
      <asp:TextBox ID="TextBox7" type="number" min="0" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator id="RequiredFieldValidator7" runat="server"
                    ControlToValidate="TextBox7"
                    ErrorMessage="Number vmail messages is a required field."
                    ForeColor="Red">
                    </asp:RequiredFieldValidator>
    </div>
	 </div>
	<div class="col-sm-4"  >
    <div class="form-group" role="form">
      <label for="total day minutes">Total day minutes:</label>
      <asp:TextBox ID="TextBox8" type="number" min="0" step="0.01" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator id="RequiredFieldValidator8" runat="server"
                    ControlToValidate="TextBox8"
                    ErrorMessage="Total day minutes is a required field."
                    ForeColor="Red">
                    </asp:RequiredFieldValidator>
	   </div>
    </div>
	<div class="col-sm-4 >
	 <div class="form-group" role="form">
      <label for="total day calls">Total day calls:</label>
      <asp:TextBox ID="TextBox9" type="number" min="0"  runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator id="RequiredFieldValidator9" runat="server"
                    ControlToValidate="TextBox9"
                    ErrorMessage="Total day calls is a required field."
                    ForeColor="Red">
                    </asp:RequiredFieldValidator>
    </div>
 </div>
    </div>
<div class="row">

<div class="col-sm-4"  >
    <div class="form-group" role="form">
      <label for="total day charge">Total day charge:</label>
      <asp:TextBox ID="TextBox10" type="number" min="0" step=".01" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator id="RequiredFieldValidator10" runat="server"
                    ControlToValidate="TextBox10"
                    ErrorMessage="Total day charge is a required field."
                    ForeColor="Red">
                    </asp:RequiredFieldValidator>	
    </div>
	 </div>
	<div class="col-sm-4"  >
    <div class="form-group" role="form">
      <label for="total eve minutes">Total eve minutes:</label>
       <asp:TextBox ID="TextBox11" type="number" min="0" step="0.01" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator id="RequiredFieldValidator11" runat="server"
                    ControlToValidate="TextBox11"
                    ErrorMessage="Total eve minutes is a required field."
                    ForeColor="Red">
                    </asp:RequiredFieldValidator>
    </div>
	<div class="col-sm-4 >
	 <div class="form-group" role="form">
      <label for="total eve calls">Total eve calls:</label>
      <asp:TextBox ID="TextBox12" type="number" min="0" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator id="RequiredFieldValidator12" runat="server"
                    ControlToValidate="TextBox12"
                    ErrorMessage="Total eve calls is a required field."
                    ForeColor="Red">
                    </asp:RequiredFieldValidator>
    </div>
 </div>
 </div>
<div class="row">

<div class="col-sm-4"  >
    <div class="form-group" role="form">
      <label for="total eve charge">Total eve charge:</label>
      <asp:TextBox ID="TextBox13" type="number" min="0" step="0.01" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator id="RequiredFieldValidator13" runat="server"
                    ControlToValidate="TextBox13"
                    ErrorMessage="Total eve charge is a required field."
                    ForeColor="Red">
                    </asp:RequiredFieldValidator>
    </div>
	 </div>
	<div class="col-sm-4"  >
    <div class="form-group" role="form">
      <label for="total night minutes">Total night minutes:</label>
       <asp:TextBox ID="TextBox14" type="number" min="0" step="0.01" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator id="RequiredFieldValidator14" runat="server"
                    ControlToValidate="TextBox14"
                    ErrorMessage="Total night minutes is a required field."
                    ForeColor="Red">
                    </asp:RequiredFieldValidator>
	   </div>
    </div>
	<div class="col-sm-4 >
	 <div class="form-group" role="form">
      <label for="total night calls">Total night calls:</label>
      <asp:TextBox ID="TextBox15"  type="number" min="0" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator id="RequiredFieldValidator15" runat="server"
                    ControlToValidate="TextBox15"
                    ErrorMessage="Total night calls is a required field."
                    ForeColor="Red">
                    </asp:RequiredFieldValidator>
    </div>
 </div>
</div>

<div class="row">

<div class="col-sm-4"  >
    <div class="form-group" role="form">
      <label for="total night charge">Total night charge:</label>
      <asp:TextBox ID="TextBox16" type="number" min="0" step="0.01" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator id="RequiredFieldValidator16" runat="server"
                    ControlToValidate="TextBox16"
                    ErrorMessage="Total night charge is a required field."
                    ForeColor="Red">
                    </asp:RequiredFieldValidator>
    </div>
	 </div>
	<div class="col-sm-4"  >
    <div class="form-group" role="form">
      <label for="total intl minutes">Total intl minutes:</label>
      <asp:TextBox ID="TextBox17"  type="number" min="0" step="0.01" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator id="RequiredFieldValidator17" runat="server"
                    ControlToValidate="TextBox17"
                    ErrorMessage="Total intl minutes is a required field."
                    ForeColor="Red">
                    </asp:RequiredFieldValidator>
	   </div>
    </div>
	<div class="col-sm-4 >
	 <div class="form-group" role="form">
      <label for="total intl calls">Total intl calls:</label>
      <asp:TextBox ID="TextBox18" type="number" min="0"  runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator id="RequiredFieldValidator18" runat="server"
                    ControlToValidate="TextBox18"
                    ErrorMessage="Total intl calls is a required field."
                    ForeColor="Red">
                    </asp:RequiredFieldValidator>
    </div>
 </div>
</div>

  <div class="row">

<div class="col-sm-4"  >
    <div class="form-group" role="form">
      <label for="total intl charge">Total intl charge:</label>
      <asp:TextBox ID="TextBox19" type="number" min="0" step="0.01" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator id="RequiredFieldValidator19" runat="server"
                    ControlToValidate="TextBox19"
                    ErrorMessage="Total intl charge is a required field."
                    ForeColor="Red">
                    </asp:RequiredFieldValidator>
    </div>
	 </div>
	<div class="col-sm-4"  >
    <div class="form-group" role="form">
      <label for="number customer service calls">Number customer service calls:</label>
      <asp:TextBox ID="TextBox20" type="number" min="0" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator id="RequiredFieldValidator20" runat="server"
                    ControlToValidate="TextBox20"
                    ErrorMessage="Number customer service calls is a required field."
                    ForeColor="Red">
                    </asp:RequiredFieldValidator>
	   </div>
    </div>

  
 </div>
   <div class="container-fluid">
  
<h5>Please hit submit and wait for result.</h5>
</div>


    
    <div>
    
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
       
        <asp:Button ID="btnOK" runat="server" OnClick="Button1_Click" Text="Submit" />
        </p>
        <p>
            Scored Label --> 
            <asp:Label ID="output" runat="server" Text=""></asp:Label>
            </p>
        <p>
            &nbsp;</p>
          <p>
            Scored Probabilities --> 
            <asp:Label ID="outputsp" runat="server" Text=""></asp:Label>
            </p>
          <p>
            &nbsp;</p>
    </div>
    </form>
</body>
</html>
