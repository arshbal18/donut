<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="DonutShop.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
 <style>
             @import url(https://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css);

     body {
           background-image:url("https://wallpaperaccess.com/full/739859.jpg"); background-repeat:no-repeat; background-position:center; background-size:cover; padding:10px;
      
  margin: 0;
  padding: 0;
  background-color: #17a2b8;
  height: 100vh;
}
#login .container #login-row #login-column #login-box {
  margin-top: 120px;
  max-width: 600px;
  height: 320px;
  border: 1px solid #9C9C9C;
  background-color: #EAEAEA;
}
#login .container #login-row #login-column #login-box #login-form {
  padding: 20px;
}
#login .container #login-row #login-column #login-box #login-form #register-link {
  margin-top: -85px;
}

    </style></head>
   
<body>
    <form id="form1" runat="server">
        <div>
             <div id="login">
        <h3 class="text-center text-black pt-5">Donut Shop</h3>
        <div class="container">
            <div id="login-row" class="row justify-content-center align-items-center">
                <div id="login-column" class="col-md-6">
                    <div id="login-box" class="col-md-12">
                        <form id="login-form" class="form" >
                            <asp:Label ID="Label3" runat="server" Text="Username"  Font-Size="Medium" ForeColor="black"></asp:Label>
       
            <br />
       
            <asp:TextBox class="form-control" ID="Donutlogin" runat="server"   BorderStyle="None" Height="20px" Width="124px"></asp:TextBox>
      
        <br />
      
        <asp:Label ID="Label1" runat="server" Text="Password"  Font-Size="Medium" ForeColor="black"></asp:Label>
        <br />
        <asp:TextBox class="form-control" ID="Donutpass" runat="server" Width="138px"  BorderStyle="None" Height="24px"></asp:TextBox>
       
            <br />
        <br />
       
            <asp:Button ID="loginDonut" runat="server" Text="Login Here"  BorderStyle="None" Height="27px" Width="107px" OnClick="loginDonut_Click"  />
                    <asp:Button ID="Donutregister" runat="server" Text="Register Here"  BorderStyle="None"   Height="27px" Width="121px" OnClick="Donutregister_Click" />

            <br />

        </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
        </div>
    </form>
</body>
</html>
