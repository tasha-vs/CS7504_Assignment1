using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

namespace Assignment1_Sec4DevOps
{
    public partial class UserRegistrationForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            labelMessage.Text = "";
        }

        protected void phoneTxtBx_TextChanged(object sender, EventArgs e)
        {

        }

        protected void item6Btn_Click(object sender, EventArgs e)
        {

            SqlCommand command;

            SqlConnection conn;

            String queryTable;

            conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

            conn.Open();

            queryTable = "INSERT into User (FullName, LoginID, Password, Address, City, State, Phone) values (@fullName, @loginID, @password, @address, @city, @state, @phone);";

            command = new SqlCommand(queryTable, conn);

            command.Parameters.AddWithValue("@fullName", fullNameTxtBx.Text);
            command.Parameters.AddWithValue("@loginID", loginIDTxtBx.Text);
            command.Parameters.AddWithValue("@password", passwordTxtBx.Text);
            command.Parameters.AddWithValue("@address", addressTxtBx.Text);
            command.Parameters.AddWithValue("@city", cityTxtBx.Text);
            command.Parameters.AddWithValue("@state", stateTxtBx.Text);
            command.Parameters.AddWithValue("@phone", phoneTxtBx.Text);

            command.ExecuteNonQuery();

            command.Dispose();

            conn.Close();

            if (Page.IsValid)
            {
                labelMessage.Text = "Your registration has been processed.";
                fullNameTxtBx.Text = " ";
                loginIDTxtBx.Text = " ";
                passwordTxtBx.Text = " ";
                addressTxtBx.Text = " ";
                cityTxtBx.Text = " ";
                stateTxtBx.Text = " ";
                phoneTxtBx.Text = " ";

            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            fullNameTxtBx.Text = " ";
            loginIDTxtBx.Text = " ";
            passwordTxtBx.Text = " ";
            addressTxtBx.Text = " ";
            cityTxtBx.Text = " ";
            stateTxtBx.Text = " ";
            phoneTxtBx.Text = " ";
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}