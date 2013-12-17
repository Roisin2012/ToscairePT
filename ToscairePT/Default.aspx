<%@ Page Title="Individual" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ToscairePT._Default" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>
<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1><%= Title %>.</h1>
                
            </hgroup>
           
        </div>
    </section>
</asp:Content>

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
