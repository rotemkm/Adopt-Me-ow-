using System;
using System.Data;
using System.Text;
using System.Web;
using System.Web.UI;

namespace AdoptMeow
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        public string tablePrint = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            // Use StringBuilder for efficiency
            StringBuilder sb = new StringBuilder();

            sb.Append("<thead><tr>");

            string query = "SELECT * FROM users";
            DataTable dt = SQLHelper.SelectData(query);

            // Add table headers
            foreach (DataColumn column in dt.Columns)
            {
                sb.AppendFormat("<th>{0}</th>", column.ColumnName);
            }

            sb.Append("</tr></thead><tbody>");

            // Add table rows
            foreach (DataRow row in dt.Rows)
            {
                sb.Append("<tr>");
                foreach (var item in row.ItemArray)
                {
                    sb.AppendFormat("<td>{0}</td>", item);
                }
                sb.Append("</tr>");
            }

            sb.Append("</tbody>");

            tablePrint = sb.ToString();
        }
    }
}