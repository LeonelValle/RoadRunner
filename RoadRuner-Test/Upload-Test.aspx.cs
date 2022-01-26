using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RoadRuner_Test
{
    public partial class Upload_Test : System.Web.UI.Page
    {
        Conexion con = new Conexion();
        protected void Page_Load(object sender, EventArgs e)
        {
            txt_Result.Focus();
        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            if (txt_Result.Text.Trim() != "")
            {
                if (!con.Existe("select count(*) from tb_test where SN = '" + txt_Result.Text.Trim() + "'"))
                {
                    con.Crud("insert into tb_test values('" + txt_Result.Text.Trim() + "','" + DateTime.Now + "')");
                    txt_Result.Text = "";
                    txt_Result.Focus();

                }
                else
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Data Already Exist!');", true);
            }
            else
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Empty Data!');", true);
        }
    }
}