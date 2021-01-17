using DAL.Models;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class Dbutility
    {
        private SqlConnection sqlconnection = null;
        private SqlCommand sqlcommand = null;
        string role;


        public Dbutility()
        {
            sqlconnection = new SqlConnection();
            sqlconnection.ConnectionString = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["DbConnection"].ToString();
        }

        //get user role
        public string getrole(string username)
        {
            try
            {
                sqlcommand = new SqlCommand();
                sqlcommand.Connection = sqlconnection;
                sqlcommand.CommandText = "SP_GET_USERROLE";
                sqlcommand.CommandType = System.Data.CommandType.StoredProcedure;
                sqlcommand.Parameters.Add("@USERNAME", username);
                sqlconnection.Open();
                SqlDataReader rd = sqlcommand.ExecuteReader();

                while (rd.Read())
                {

                    role = rd["role_desc"].ToString();
                }
            }
            catch (Exception)
            {

                throw;
            }

            finally
            {
                if (sqlconnection.State == System.Data.ConnectionState.Open)
                    sqlconnection.Close();
                sqlcommand.Dispose();
            }
            return role;
        }

        public PageContent getpagecontent(string pageid)
        {
            PageContent c;
            try
            {
                sqlcommand = new SqlCommand();
                sqlcommand.Connection = sqlconnection;
                sqlcommand.CommandText = "SP_GET_CONTENT";
                sqlcommand.CommandType = System.Data.CommandType.StoredProcedure;
                sqlcommand.Parameters.Add("@pageid", pageid);
                sqlconnection.Open();
                SqlDataReader rd = sqlcommand.ExecuteReader();
                c = new PageContent();

                while (rd.Read())
                {

                    c.Title = rd["cont_title_other"].ToString();
                    c.Name = rd["cont_subtitle"].ToString();
                    c.MainContent = rd["cont_desc"].ToString();
                }
            }
            catch (Exception)
            {

                throw;
            }

            finally
            {
                if (sqlconnection.State == System.Data.ConnectionState.Open)
                    sqlconnection.Close();
                sqlcommand.Dispose();
            }
            return c;
        }
    }
}


