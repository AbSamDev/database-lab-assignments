using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Lab6Task
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            string NameBoxx = NameBox.Text;
            string CNICBoxx = CNICBox.Text;
            string EmailBoxx = EmailBox.Text;
            string ContactBoxx = ContactBox.Text;

            SqlConnection con = new SqlConnection("Data Source=SAMAD\\SQLEXPRESS;Initial Catalog=Lab6Task;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("INSERT INTO myApp values (@a, @b, @c, @d)", con);
            cmd.Parameters.AddWithValue("@a", NameBoxx);
            cmd.Parameters.AddWithValue("@b", CNICBoxx);
            cmd.Parameters.AddWithValue("@c", EmailBoxx);
            cmd.Parameters.AddWithValue("@d", ContactBoxx);
            cmd.ExecuteNonQuery();
            MessageBox.Show("Data is saved succesfully");
            con.Close();





        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }

        private void SaveButton_MouseClick(object sender, MouseEventArgs e)
        {

        }
    }
}
