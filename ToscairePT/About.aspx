<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="ToscairePT.About" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <table><tr><td>
                    <header>
                   Systems
               </header>
                    <asp:Chart ID="Chart1" runat="server">
            <Series>
                <asp:Series Name="Default"></asp:Series>
            </Series>
            <ChartAreas>
                <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
            </ChartAreas>
        </asp:Chart></td>
     <th>
        <asp:GridView ID="GridView1" runat="server"></asp:GridView>
        </th>
     </tr>
    <tr><td>

               
                
                     <Header>
                   Systems
               </Header>
                    <asp:Chart ID="Chart3" runat="server">
            <Series>
                <asp:Series Name="Default"></asp:Series>
            </Series>
            <ChartAreas>
                <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
            </ChartAreas>
        </asp:Chart></td>
        <th>
        <asp:GridView ID="GridView3" runat="server"></asp:GridView>
         </th>
        </tr>
   <tr><td>

                <Header>
                   Systems
               </Header>
                
                    <asp:Chart ID="Chart2" runat="server">
            <Series>
                <asp:Series Name="Default"></asp:Series>
            </Series>
            <ChartAreas>
                <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
            </ChartAreas>
        </asp:Chart></td>
     <td>
        <asp:GridView ID="GridView2" runat="server"></asp:GridView>
         </td>
        
                
    </tr></table>       
</asp:Content>