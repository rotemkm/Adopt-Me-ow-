using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;

namespace AdoptMeow
{
    public partial class MasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Application["count"] == null)
            {
                Session["check"] = true;
                Application["count"] = 1;
            }
            else
            {
                if (Session["check"] == null)
                {
                    Application["count"] = (int)Application["count"] + 1;
                    Session["check"] = true;
                }
            }
        }
        public DataSet ds = new DataSet();
        public SqlDataAdapter adapter = new SqlDataAdapter();
        public string ConnStr()
        {
            return @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Users\user\Documents\Server1.mdf;Integrated Security=True;Connect Timeout=30";
        }
        public DataSet GetDataSet(string strSql)
        {
            ds = new DataSet();
            SqlConnection conn = new SqlConnection(ConnStr());
            adapter = new SqlDataAdapter(strSql, conn);
            conn.Open();
            adapter.Fill(ds);
            conn.Close();
            return ds;
        }
        public string PrintDataSet(DataSet ds)
        {
            string tableStr = "<table border='1'>";
            tableStr += "<tr><th>Username</th><th>Password</th><th>Email</th></tr>";

            foreach (DataRow row in ds.Tables[0].Rows)
            {
                tableStr += "<tr>";
                tableStr += "<td>" + row["username"].ToString() + "</td>";
                tableStr += "<td>" + row["password"].ToString() + "</td>";
                tableStr += "<td>" + row["email"].ToString() + "</td>";
                tableStr += "</tr>";
            }
            tableStr += "</table>";

            return tableStr; // מחזיר HTML כתוכן
        }

        public void ListOfUsers()
        {
            String sqlAllUsers = "SELECT * FROM [dbo].[Table]";
            ds = GetDataSet(sqlAllUsers);
            PrintDataSet(ds);
        }
        public int InsertUpdateDelete(string strSql)
        {
            SqlConnection conn = new SqlConnection(ConnStr());
            SqlCommand cmd = new SqlCommand(strSql, conn);
            conn.Open();
            int rowsEffected = 0;
            try
            {
                rowsEffected = cmd.ExecuteNonQuery();
            }
            catch (SqlException ex)
            {
                // Handle exception
                Response.Write("SQL Error: " + ex.Message);
            }
            finally
            {
                conn.Close();
            }
            return rowsEffected;
        }
        public Object GetScalar(string strSql)
        {
            SqlConnection conn = new SqlConnection(ConnStr());
            SqlCommand cmd = new SqlCommand(strSql, conn);
            conn.Open();
            Object obj = cmd.ExecuteScalar();
            conn.Close();
            return obj;
        }
        public bool IsUserExsits(string email)
        {
            String sqlAllUsers = "SELECT * FROM [dbo].[Table] WHERE userEmail = '" + email + "'";
            DataSet ds = GetDataSet(sqlAllUsers);
            if (ds.Tables[0].Rows.Count > 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        //  public int InsertUser(string name, string lastname, string password, string email, string gender,string birthDate, string type)
        public int InsertUser(string name, string lastname)

        {
            // String sqlInsertUser = "INSERT INTO [dbo].[Table] (name, lastname, password, email, gender, date of birth, type) VALUES ('" + name + "', N'" + lastname + "', '" + password + "', " + email + ", N'" + "', '" + gender + "', N'" + "', '" + type + "')";
            String sqlInsertUser = "INSERT INTO [dbo].[Table] (name, lastname) VALUES ('" + name + "', N'" + lastname + "')";

            return InsertUpdateDelete(sqlInsertUser);
        }
    }
}