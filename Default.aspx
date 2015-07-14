<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CRUD_NET3._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CRUD Example - NET 3</title>
    <link href="Content/bootstrap.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="container">
        <h1>
            CRUD Example</h1>
        <h3>
            WebForms NET 3
        </h3>
        <div class="row" style="border-top-width: 15px; padding-top: 15px;">
            <div class="row-height">
                <div class="col-xs-6 col-height">
                    <div class="inside">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" DataKeyNames="CustomerId"
                            OnRowDataBound="OnRowDataBound" OnRowEditing="OnRowEditing" OnRowCancelingEdit="OnRowCancelingEdit"
                            OnRowUpdating="OnRowUpdating" OnRowDeleting="OnRowDeleting" EmptyDataText="No records has been added."
                            CssClass="table table-striped table-bordered table-condensed">
                            <Columns>
                                <asp:TemplateField HeaderText="Name" ItemStyle-Width="150">
                                    <ItemTemplate>
                                        <asp:Label ID="lblName" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txtName" runat="server" Text='<%# Eval("Name") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Country" ItemStyle-Width="150">
                                    <ItemTemplate>
                                        <asp:Label ID="lblCountry" runat="server" Text='<%# Eval("Country") %>'></asp:Label>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txtCountry" runat="server" Text='<%# Eval("Country") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                </asp:TemplateField>
                                <asp:CommandField ButtonType="Link" ShowEditButton="true" ShowDeleteButton="true"
                                    ItemStyle-Width="150" />
                            </Columns>
                        </asp:GridView>
                        <table class="table table-striped table-bordered table-condensed" border="1" cellpadding="0"
                            cellspacing="0" style="border-collapse: collapse">
                            <tr>
                                <td style="width: 150px">
                                    Name:<br />
                                    <asp:TextBox ID="txtName" runat="server" Width="140" />
                                </td>
                                <td style="width: 150px">
                                    Country:<br />
                                    <asp:TextBox ID="txtCountry" runat="server" Width="140" />
                                </td>
                                <td style="width: 100px" class="centertd">
                                    <asp:Button Style="width: 77px; height: 47px;" class="btn btn-default" ID="btnAdd"
                                        runat="server" Text="Add" OnClick="Insert" />
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <footer>
            <p>© 2015 - CRUD WebForms Example .NET 3 by <a href="http://aacosta.com.mx/" target="_blank"> Antonio Acosta Murillo</a></p>
        </footer>
    </div>
    </form>
</body>
<script src="Scripts/jquery-2.1.4.js" type="text/javascript"></script>
<script src="Scripts/bootstrap.js" type="text/javascript"></script>
</html>
