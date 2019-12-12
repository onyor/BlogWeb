<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="AdminHobilerim.aspx.cs" Inherits="AdminHobilerim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <form id="Form1" runat="server">
        <table class="table table-bordered">
            <tr>
                <td>ID</td>
                <td>HOBİLER</td>
            </tr>
            <tbody>
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <tr>
                            <th><%#Eval("ID") %></th>
                            <td><%#Eval("HOBI") %></td>
                            <td>
                                <asp:HyperLink NavigateUrl='<%# "AdminHobilerimSil.Aspx?ID=" + Eval("ID") %>' ID="HyperLink1" runat="server" 
                                    CssClass="btn btn-danger">Sil</asp:HyperLink>
                                <asp:HyperLink NavigateUrl='<%# "AdminHobilerimGuncelle.Aspx?ID=" + Eval("ID") %>' ID="HyperLink2" runat="server" 
                                    CssClass="btn btn-warning">Güncelle</asp:HyperLink>
                            </td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </tbody>
        </table>
        <asp:HyperLink NavigateUrl="~/AdminHobilerimEkle.aspx" ID="HyperLink3" runat="server" CssClass="btn btn-info">HOBİ EKLE</asp:HyperLink>
    </form>
</asp:Content>

