using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class trangchu : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = "";
        
    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        
        string sp = e.CommandArgument.ToString();
        if (Session["user"] == null)
        {
            Label1.Text = "<h3>Cần đăng nhập user mới thêm được giỏ hàng!</h3>";
        }
        else
        {
            Label1.Text = "";
            if (Session["sanpham"] == null)
            {
                int n = 0;
                ArrayList dssanpham = new ArrayList();
                ArrayList dssl = new ArrayList();
                Session["giohang"] = 1;
                Session["n"] = n;
                dssanpham.Add(sp);
                Session["sanpham"] = dssanpham;
                dssl.Add("1");
                Session["sl"] = dssl;
                Session["n"] = 1;
            }
            else
            {
                int dem = 0;
                String k1 = Session["n"].ToString();
                int n = int.Parse(k1);

                Session["giohang"] = 1;
                ArrayList dssanpham = (ArrayList)Session["sanpham"];
                ArrayList dssl = (ArrayList)Session["sl"];
                for (int i = 0; i < n; i++)
                    if (dssanpham[i].ToString() == sp.ToString())
                    {
                        int k = int.Parse(dssl[i].ToString());
                        k += 1;
                        dssl[i] = k.ToString();
                        dem += 1;
                    }
                if (dem == 0)
                {
                    dssanpham.Add(sp);
                    int sl = 1;
                    dssl.Add(sl);
                    Session["sl"] = dssl;
                    n += 1;
                    Session["n"] = n.ToString();
                }
            }
        }
        
    }
}