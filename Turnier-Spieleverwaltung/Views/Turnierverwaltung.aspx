<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Turnierverwaltung.aspx.cs" Inherits="Turnier_Spieleverwaltung.Views.Turnierverwaltung" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
          <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="https://unpkg.com/@lottiefiles/lottie-player@latest/dist/lottie-player.js"></script>

    <title>Turnierverwaltung</title>
    <style type="text/css">
        .form-contro {}
        .form-control {}
    </style>
</head>
<body>
    <form id="form1" runat="server">
      
               <div>
                            <nav id="navbar" runat="server" class="navbar navbar-expand-lg navbar-light bg-light">
                      <a class="navbar-brand" href="http://localhost:44380/Views/Gate">Turnierverwaltung</a>
                      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                      </button>
                      <div class="collapse navbar-collapse" id="navbarText">
                        <ul class="navbar-nav mr-auto">
                          <li class="nav-item active">
                            <a class="nav-link" href="http://localhost:44380/Views/Gate">Home <span class="sr-only">(current)</span></a>
                          </li>
                          <li class="nav-item">
                            <a class="nav-link" href="http://localhost:44330/Views/Personenverwaltung">Personenverwaltung</a>
                          </li>
                          <li class="nav-item">
                            <a class="nav-link" href="http://localhost:44362/Views/Mannschaftsverwaltung">Mannschaftsverwaltung</a>
                          </li>
                            <li class="nav-item">
                            <a class="nav-link" href="http://localhost:56208/Views/Turnierverwaltung">Turnierverwaltung</a>
                          </li>
                        </ul>
                      </div>
                    </nav>
               </div>

            <div class="jumbotron row">
                  <div class="col-md-6">
                      <h1>
                          <br id="abstand" runat="server"/>
                          <asp:Label ID="Label1" runat="server" Text="Turnierverwaltung"></asp:Label></h1>


                
      
                <asp:Button ID="btnabmelden" class="btn btn-primary"  runat="server" Text="Turnier einfügen" Height="45px" Width="170px" OnClick="btnabmelden_Click" />
                <div runat="server" id="Turnierauswaehlen">
                    <asp:RadioButtonList ID="RadioButtonList1" CssClass="" runat="server">
                        <asp:ListItem>Personenturnier</asp:ListItem>
                        <asp:ListItem>Mannschaftsturnier</asp:ListItem>
                    </asp:RadioButtonList>
                  <asp:Button ID="abrechenbtn" class="btn btn-danger"  runat="server" Text="Abbrechen" Height="37px" Width="105px" OnClick="abrechenbtn_Click"  />
                  <asp:Button ID="weietrbtn" class="btn btn-primary"  runat="server" Text="Weiter" Height="37px" Width="105px" OnClick="weietrbtn_Click"  />


                 </div>

                <div runat="server" id="personenTu">
                    Sportart Auswählen:
                    <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server" Height="44px" Width="171px">
                         <asp:ListItem>Fußball</asp:ListItem>
                         <asp:ListItem>Handball</asp:ListItem>
                         <asp:ListItem>Tennis</asp:ListItem>
                    </asp:DropDownList>
                    Turniername:
                    <asp:TextBox ID="Turniernametxt" CssClass="form-control" runat="server"></asp:TextBox>
                    <br />
                    Mtglieder auswählen:
                    <asp:CheckBoxList ID="CheckBoxList1" runat="server"></asp:CheckBoxList>
                </div>

                <div runat="server" id="MannschaftsTu">
                     Sportart Auswählen:
                    <asp:DropDownList ID="DropDownList2" CssClass="form-control" runat="server" Height="44px" Width="171px">
                         <asp:ListItem>Fußball</asp:ListItem>
                         <asp:ListItem>Handball</asp:ListItem>
                         <asp:ListItem>Tennis</asp:ListItem>
                    </asp:DropDownList>
                    Turniername:
                    <asp:TextBox ID="Turniernametxt1" CssClass="form-control" runat="server"></asp:TextBox>
                    <br />
                    Mannschaftsauswählen:
                    <asp:CheckBoxList ID="Mannschaftscheck" runat="server"></asp:CheckBoxList>
                </div>

                         <asp:Button ID="abbrechen_btn" class="btn btn-danger"  runat="server" Text="Abbrechen" Height="37px" Width="105px" OnClick="abrechenbtn_Click"  />
                  <asp:Button ID="speichern_btn" class="btn btn-primary"  runat="server" Text="Speichern" Height="37px" Width="105px" />         

                  </div>

                    <div id="loginnbox" runat="server" class="col-md-4">
                        <lottie-player src="https://assets6.lottiefiles.com/packages/lf20_Lcwy20.json"  background="transparent"  speed="1"  style="width: 600px; height: 300px;"  loop autoplay>

                        </lottie-player>
                    </div>     

                <br />
            </div>

          <asp:Table ID="Table5"  class="table table-bordered table-hover" runat="server" BorderStyle="Inset" BackColor="White" ForeColor="Black">
        <asp:TableRow>
                    <asp:TableCell BorderColor="Black" BorderStyle="Solid"  BorderWidth="2">ID</asp:TableCell>
                    <asp:TableCell BorderColor="Black" BorderStyle="Solid"  BorderWidth="2">Name</asp:TableCell>
                    <asp:TableCell BorderColor="Black" BorderStyle="Solid"  BorderWidth="2">Sportart</asp:TableCell> 

                    <asp:TableCell BorderColor="Black" BorderStyle="Solid"  BorderWidth="2">mitglieder</asp:TableCell>
                    <asp:TableCell BorderColor="Black" BorderStyle="Solid"  BorderWidth="2"></asp:TableCell>
                    <asp:TableCell BorderColor="Black" BorderStyle="Solid" BorderWidth="2"></asp:TableCell>

              </asp:TableRow>
         </asp:Table>
        
    </form>
</body>
</html>
