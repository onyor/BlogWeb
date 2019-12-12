<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="AdminProjelerim.aspx.cs" Inherits="AdminProjelerim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <form id="Form1" runat="server">
        <table class="table table-bordered">
            <tr>
                <th>ID</th>
                <th>PROJE ADI</th>
                <th>AÇIKLAMA</th>
            </tr>
            <tbody>
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <tr>
                            <th><%# Eval("ID")%></th>
                            <td><%# Eval("PROJELER")%></td>
                            <td><%# Eval("ACIKLAMALAR")%></td>
                            <td>
                                <asp:HyperLink NavigateUrl='<%# "AdminProjelerimSil.Aspx?ID=" + Eval("ID") %>' ID="HyperLink1" runat="server"
                                    CssClass="btn btn-danger">Sil</asp:HyperLink>
                                <asp:HyperLink NavigateUrl='<%# "AdminProjelerimGuncelle.Aspx?ID=" + Eval("ID") %>' ID="HyperLink2" runat="server"
                                    CssClass="btn btn-warning">Güncelle</asp:HyperLink>
                            </td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </tbody>
        </table>
        <asp:HyperLink NavigateUrl="~/AdminProjelerimEkle.Aspx" ID="HyperLink3" runat="server" CssClass="btn btn-info">PROJE EKLE</asp:HyperLink>
    </form>
</asp:Content>

