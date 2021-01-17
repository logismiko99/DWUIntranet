using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace DWUIntranet
{
    class Connection
    {
        private static SqlConnection DBConnection = new SqlConnection();
        private static SqlTransaction Transaction;

        //public static string Server;
        //public static string Database;
        //public static string User;
        //public static string Password;
        //public static int CounterNo;
        //public static string LocationID;

        #region " Open/Close Connection "

        public static SqlConnection GetConnection()
        {
            try
            {
                if (DBConnection.State == ConnectionState.Closed)
                {

                    //DBConnection = new SqlConnection("Data Source=HP-R208TX\\SERVER;Initial Catalog=customer_reg_db;Integrated Security=True");
                    //DBConnection = new SqlConnection("Data Source=HP-R208TX\\SERVER;Initial Catalog=customer_reg_db;Persist Security Info=True;User ID=sa;Password=1234");
                    DBConnection = new SqlConnection("Data Source=DESKTOP-VA8KULD\\SQL2016;Initial Catalog=RHYDHM" +
                        ";Persist Security Info=True;User ID=sa;Password=4544");
                    //DBConnection = new SqlConnection("Data Source=SUPUN\\SQL2012;Initial Catalog=customer_reg_db;Integrated Security=True");
                    //DBConnection = new SqlConnection(Properties.Settings.Default.NWSDB_PCConnectionString);

                    //DBConnection = new SqlConnection("Data Source=DESKTOP-KV08D0M\\SQL2016;Initial Catalog=RHYDHM" +
                    //    ";Persist Security Info=True;User ID=sa;Password=1234");

                    DBConnection.Open();


                }
                return DBConnection;
            }
            catch (Exception Ex)
            {
                throw Ex;
            }
        }

        public static void CloseConnection()
        {
            try
            {
                if (DBConnection.State == System.Data.ConnectionState.Open)
                {
                    DBConnection.Close();
                }
            }
            catch (Exception Ex)
            {
                throw Ex;
            }
        }

        #endregion

        #region " Begin/Commit Transaction "

        public static void BegingTransaction()
        {
            GetConnection();
            Transaction = DBConnection.BeginTransaction();
        }

        public static void CommitTransaction()
        {
            Transaction.Commit();
            CloseConnection();
            Transaction = null;
        }

        public static void RollBack()
        {
            if (Transaction != null)
            {
                Transaction.Rollback();
                CloseConnection();
                Transaction = null;
            }
        }

        #endregion

        #region " ExecuteSqlCommand "

        public void ExecuteSqlCommand(SqlCommand SqlCmd)
        {
            try
            {
                GetConnection();
                SqlCmd.Connection = DBConnection;
                SqlCmd.Transaction = Transaction;
                SqlCmd.ExecuteNonQuery();
            }
            catch (Exception Ex)
            {
                throw Ex;
            }
        }

        public void ExecuteSqlCommand(string strSqlCmd)
        {
            SqlCommand SqlCmd = new SqlCommand();
            try
            {
                SqlCmd.Connection = DBConnection;
                SqlCmd.Transaction = Transaction;
                SqlCmd.CommandText = strSqlCmd;
                SqlCmd.ExecuteNonQuery();
            }
            catch (Exception Ex)
            {
                throw Ex;
            }
        }

        #endregion

        #region " Get DataSet "

        public DataSet GetDataSet(SqlCommand SqlCmd)
        {
            DataSet SqlDS = new DataSet();
            try
            {
                SqlCmd.Connection = GetConnection();
                SqlDataAdapter Sqldap = new SqlDataAdapter(SqlCmd);
                Sqldap.Fill(SqlDS);
                return SqlDS;
            }
            catch (Exception Ex)
            {
                throw Ex;
            }
            finally
            {
                CloseConnection();
            }
        }

        public DataSet GetDataSet(string SqlCmd)
        {
            DataSet SqlDS = new DataSet();
            try
            {
                SqlDataAdapter Sqldap = new SqlDataAdapter(SqlCmd, GetConnection());

                Sqldap.Fill(SqlDS);
                return SqlDS;
            }
            catch (Exception Ex)
            {
                throw Ex;
            }
            finally
            {
                CloseConnection();
            }
        }

        public DataSet GetDataSet(string SqlCmd, string TableName)
        {
            DataSet SqlDS = new DataSet();
            try
            {
                SqlDataAdapter Sqldap = new SqlDataAdapter(SqlCmd, GetConnection());

                Sqldap.Fill(SqlDS, TableName);
                return SqlDS;
            }
            catch (Exception Ex)
            {
                throw Ex;
            }
            finally
            {
                CloseConnection();
            }
        }

        public DataSet GetDataSet(SqlCommand SqlCmd, string TableName)
        {
            DataSet SqlDS = new DataSet();
            try
            {
                CloseConnection();
                SqlCmd.Connection = GetConnection();
                SqlDataAdapter Sqldap = new SqlDataAdapter(SqlCmd);
                Sqldap.Fill(SqlDS, TableName);
                return SqlDS;
            }
            catch (Exception Ex)
            {
                throw Ex;
            }
            finally
            {
                CloseConnection();
            }
        }

        #endregion

        #region " Get DataTable "

        public DataTable GetDataTable(string SqlCmd, string TableName)
        {
            DataSet SqlDS = new DataSet();
            SqlCommandBuilder Sqlcb = new SqlCommandBuilder();
            try
            {
                SqlDataAdapter Sqldap = new SqlDataAdapter(SqlCmd, GetConnection());
                Sqldap.FillSchema(SqlDS, SchemaType.Source, TableName);
                Sqlcb.DataAdapter = Sqldap;
                Sqldap.Fill(SqlDS, TableName);
                return SqlDS.Tables[TableName];
            }
            catch (Exception Ex)
            {
                throw Ex;
            }
            finally
            {
                CloseConnection();
            }
        }

        public DataTable GetDataTable(SqlCommand SqlCmd, string TableName)
        {
            DataTable dt = new DataTable(TableName);
            try
            {
                SqlCmd.Connection = GetConnection();
                dt.Load(SqlCmd.ExecuteReader());
                return dt;
            }
            catch (Exception Ex)
            {
                return null;
            }
            finally
            {
                CloseConnection();
            }
        }

        public DataTable GetDataTable(SqlCommand SqlCmd)
        {
            DataSet SqlDS = new DataSet();
            SqlCommandBuilder Sqlcb = new SqlCommandBuilder();
            try
            {
                SqlCmd.Connection = GetConnection();
                SqlDataAdapter Sqldap = new SqlDataAdapter(SqlCmd);
                Sqldap.FillSchema(SqlDS, SchemaType.Source);
                Sqlcb.DataAdapter = Sqldap;
                Sqldap.Fill(SqlDS);
                return SqlDS.Tables[0];
            }
            catch (Exception Ex)
            {
                return null;
            }
            finally
            {
                CloseConnection();
            }
        }

        public void FillDataTable(SqlCommand SqlCmd, DataTable dt)
        {
            try
            {
                SqlDataAdapter daData = new SqlDataAdapter();
                SqlCmd.Connection = GetConnection();
                daData.SelectCommand = SqlCmd;
                daData.Fill(dt);
            }
            catch (Exception Ex)
            {
                throw Ex;
            }
            finally
            {
                CloseConnection();
            }
        }
        #endregion
    }
}
