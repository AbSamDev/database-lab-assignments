// Need To Modify Search Function

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
            savingData();

        }

        private void Form1_Load(object sender, EventArgs e)
        {
            // TODO: This line of code loads data into the 'lab6TaskDataSet.myAPP' table. You can move, or remove it, as needed.
            this.myAPPTableAdapter.Fill(this.lab6TaskDataSet.myAPP);

        }

        private void SaveButton_MouseClick(object sender, MouseEventArgs e)
        {
            savingData();
        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void Deleting()
        {
            SqlConnection con = new SqlConnection("Data Source=SAMAD\\SQLEXPRESS;Initial Catalog=Lab6Task;Integrated Security=True");
            con.Open();

            SqlCommand cmd = new SqlCommand("DELETE FROM myApp WHERE cnic = @a ", con);
            cmd.Parameters.AddWithValue("@a", CNICBox.Text);

            cmd.ExecuteNonQuery();
            MessageBox.Show("Deleeteeed");
            populating();
        }

        private void populating()
        {
            SqlConnection con = new SqlConnection("Data Source=SAMAD\\SQLEXPRESS;Initial Catalog=Lab6Task;Integrated Security=True");
            con.Open();

            SqlCommand cmd = new SqlCommand("SELECT* FROM myApp", con);
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            adapter.Fill(ds);
            dataGridView1.DataSource = null;
            dataGridView1.Rows.Clear();
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                string name = ds.Tables[0].Rows[i].ItemArray[0].ToString();
                string cnic = ds.Tables[0].Rows[i].ItemArray[1].ToString();
                string email = ds.Tables[0].Rows[i].ItemArray[2].ToString();
                string contact = ds.Tables[0].Rows[i].ItemArray[3].ToString();

                DataGridViewRow abc = new DataGridViewRow();
                abc.CreateCells(dataGridView1);
                abc.Cells[0].Value = name;
                abc.Cells[1].Value = cnic;
                abc.Cells[2].Value = email;
                abc.Cells[3].Value = contact;
                dataGridView1.Rows.Add(abc);

            }
            con.Close();


        }

        private void savingData()
        {
            SqlConnection con = new SqlConnection("Data Source=SAMAD\\SQLEXPRESS;Initial Catalog=Lab6Task;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("INSERT INTO myApp values (@a, @b, @c, @d)", con);
            cmd.Parameters.AddWithValue("@a", NameBox.Text);
            cmd.Parameters.AddWithValue("@b", CNICBox.Text);
            cmd.Parameters.AddWithValue("@c", EmailBox.Text);
            cmd.Parameters.AddWithValue("@d", ContactBox.Text);

            cmd.ExecuteNonQuery();
            MessageBox.Show("Data is saved succesfully");

            NameBox.Text = "";
            CNICBox.Text = "";
            EmailBox.Text = "";
            ContactBox.Text = "";
            con.Close();
            
        }


       

        private void button2_Click(object sender, EventArgs e)
        { 
            Deleting();
        }

        private void dataGridView1_CellEnter_1(object sender, DataGridViewCellEventArgs e)
        {
                if (e.RowIndex + 1 == dataGridView1.Rows.Count) return;
                DataGridViewRow row = dataGridView1.Rows[e.RowIndex];
                NameBox.Text = row.Cells[0].Value.ToString();
                CNICBox.Text = row.Cells[1].Value.ToString();
                EmailBox.Text = row.Cells[2].Value.ToString();
                ContactBox.Text = row.Cells[3].Value.ToString();
        }

        private void SearchButton_MouseClick(object sender, MouseEventArgs e)
        {
            Searching();
        }
        private void Searching()
        { 
                SqlConnection con = new SqlConnection("Data Source=SAMAD\\SQLEXPRESS;Initial Catalog=Lab6Task;Integrated Security=True");
                con.Open();

                SqlCommand cmd = new SqlCommand("SELECT* FROM myApp WHERE cnic = @a OR email = @a OR contact = @a", con);
            cmd.Parameters.AddWithValue("@a", CNICBox.Text);
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                adapter.Fill(ds);
                dataGridView1.DataSource = null;
                dataGridView1.Rows.Clear();
                for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                {
                    string name = ds.Tables[0].Rows[i].ItemArray[0].ToString();
                    string cnic = ds.Tables[0].Rows[i].ItemArray[1].ToString();
                    string email = ds.Tables[0].Rows[i].ItemArray[2].ToString();
                    string contact = ds.Tables[0].Rows[i].ItemArray[3].ToString();

                    DataGridViewRow abc = new DataGridViewRow();
                    abc.CreateCells(dataGridView1);
                    abc.Cells[0].Value = name;
                    abc.Cells[1].Value = cnic;
                    abc.Cells[2].Value = email;
                    abc.Cells[3].Value = contact;
                    dataGridView1.Rows.Add(abc);

                }
                con.Close();


        }

        private void button3_Click(object sender, EventArgs e)
        {
            updating();
        }

        private void updating()
        {
            SqlConnection con = new SqlConnection("Data Source=SAMAD\\SQLEXPRESS;Initial Catalog=Lab6Task;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("UPDATE myApp SET name = @a, email = @c, contact = @d where cnic = @b", con);
            cmd.Parameters.AddWithValue("@a", NameBox.Text);
            cmd.Parameters.AddWithValue("@b", CNICBox.Text);
            cmd.Parameters.AddWithValue("@c", EmailBox.Text);
            cmd.Parameters.AddWithValue("@d", ContactBox.Text);

            cmd.ExecuteNonQuery();
            MessageBox.Show("Data is updated succesfully");

            NameBox.Text = "";
            CNICBox.Text = "";
            EmailBox.Text = "";
            ContactBox.Text = "";
            con.Close();


        }

    }
 
}
