using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class User : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["RoleID"] == null)
            {
                Util.ShowMessage("用户登录超时，请重新登录！", "Login.aspx");
            }
            else
            {
                int roleID = Convert.ToInt16(Session["RoleID"].ToString());
                AvatarImage.ImageUrl = Session["Avatar"].ToString();                
                switch (roleID)
                {
                    // Administrator
                    case 1:
                        UserPanel.Visible = true;
                        ArticlePanel.Visible = true;
                        ShowPanel.Visible = true;
                        ProfilePanel.Visible = true;
                        CatPanel.Visible = true;
                        break;
                    // Editor
                    case 2:
                        UserPanel.Visible = false;
                        CatPanel.Visible = false;
                        ArticlePanel.Visible = true;
                        ShowPanel.Visible = true;
                        ProfilePanel.Visible = true;
                        break;
                    // Contributor
                    case 3:
                        UserPanel.Visible = false;
                        CatPanel.Visible = false;
                        ArticlePanel.Visible = true;
                        ShowPanel.Visible = true;
                        ProfilePanel.Visible = true;
                        break;
                    // Author
                    case 4:
                        UserPanel.Visible = false;
                        CatPanel.Visible = false;
                        ArticlePanel.Visible = true;
                        ShowPanel.Visible = true;
                        ProfilePanel.Visible = true;
                        break;
                    // User
                    case 5:
                        UserPanel.Visible = false;
                        CatPanel.Visible = false;
                        ArticlePanel.Visible = false;
                        ProfilePanel.Visible = true;
                        ShowPanel.Visible = true;
                        break;
                    default:
                        UserPanel.Visible = false;
                        CatPanel.Visible = false;
                        ArticlePanel.Visible = false;
                        ProfilePanel.Visible = false;
                        ShowPanel.Visible = false;
                        break;

                }
            }
        }
        
    }
}
  

