<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="AdminDeneyimlerim.aspx.cs" Inherits="AdminDeneyimlerim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <form id="Form1" runat="Server">
        <table class="table table-bordered">
            <tr>
                <th>ID</th>
                <th>BAŞLIK</th>
                <th>ALT BAŞLIK</th>
                <th>AÇIKLAMA</th>
                <th>TARİH BAŞ</th>
                <th>TARİH SON</th>
                <th>İŞLEMLER</th>
            </tr>
            <tbody>
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <tr>
                            <th><%# Eval("ID")%></th>
                            <td><%# Eval("BASLIK")%></td>
                            <td><%# Eval("ALTBASLIK")%></td>
                            <td><%# Eval("ACIKLAMA")%></td>
                            <td><%# Eval("TARIH_BAS")%></td>
                            <td><%# Eval("TARIH_SON")%></td>
                            <td>
                                <asp:HyperLink NavigateUrl='<%# "AdminDeneyimlerimSil.Aspx?ID=" + Eval("ID") %>' ID="HyperLink1" runat="server"
                                    CssClass="btn btn-danger">Sil</asp:HyperLink>
                                <asp:HyperLink NavigateUrl='<%# "AdminDeneyimlerimGuncelle.Aspx?ID=" + Eval("ID") %>' ID="HyperLink2" runat="server"
                                    CssClass="btn btn-warning">Güncelle</asp:HyperLink>
                            </td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </tbody>
        </table>
        <asp:HyperLink NavigateUrl="~/AdminDeneyimlerimEkle.Aspx" ID="HyperLink3" runat="server" CssClass="btn btn-info">EĞİTİM EKLE</asp:HyperLink>
    </form>
</asp:Content>
