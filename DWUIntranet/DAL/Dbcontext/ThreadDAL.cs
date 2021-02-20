using System;
using System.Data;
using System.Data.SqlClient;

public class ThreadDAL
{
    private SqlConnection sqlconnection = null;
    private SqlCommand sqlcommand = null;
    string role;


    public ThreadDAL()
    {
        sqlconnection = new SqlConnection();
        sqlconnection.ConnectionString = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["DbConnection"].ToString();
    }

    public string AddNewThread(string uid, string subcode, string text)
    {
        try
        {
            sqlcommand = new SqlCommand();
            sqlcommand.Connection = sqlconnection;
            sqlcommand.CommandText = "AddNewThread";
            sqlcommand.CommandType = CommandType.StoredProcedure;
            sqlcommand.Parameters.Add("@title", SqlDbType.Text).Value = text;
            sqlcommand.Parameters.Add("@text", SqlDbType.Text).Value = text;
            sqlcommand.Parameters.Add("@uname", SqlDbType.VarChar).Value = text;
            sqlcommand.Parameters.Add("@subcode", SqlDbType.Int).Value = subcode;
            sqlcommand.Parameters.Add("@path", SqlDbType.Text).Value = text;
            sqlcommand.Parameters.Add("@allow", SqlDbType.Char).Value = uid;
            sqlcommand.Parameters.Add("@subcribe", SqlDbType.Char).Value = subcode;
            sqlcommand.ExecuteNonQuery();
            return null;
        }
        catch (Exception ex)
        {
            return ex.Message;
        }
        finally
        {
            if (sqlconnection.State == ConnectionState.Open)
                sqlconnection.Close();
        }
    }

    public string AddReply(string uid, string tid, string text)
    {
        try
        {
            sqlconnection.Open();
            SqlCommand cmd = new SqlCommand("AddReply", sqlconnection);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@uid", SqlDbType.Int).Value = uid;
            cmd.Parameters.Add("@tid", SqlDbType.Int).Value = tid;
            cmd.Parameters.Add("@text", SqlDbType.Text).Value = text;
            cmd.ExecuteNonQuery();
            return null;
        }
        catch (Exception ex)
        {
            return ex.Message;
        }
        finally
        {
            if (sqlconnection.State == ConnectionState.Open)
                sqlconnection.Close();
        }
    }

    public DataSet Search(string cond)
    {
        SqlConnection con = new SqlConnection(sqlconnection.ConnectionString);
        try
        {
            SqlDataAdapter da = new SqlDataAdapter(" SELECT t.tid, u.uid, u.fullname, s.subname, CONVERT(varchar(30), t.text) AS text, t.dp, dbo.GetReplyCount(t.tid) AS noreplys FROM threads AS t INNER JOIN  users AS u ON t.uid = u.uid INNER JOIN  subjects AS s ON t.subcode = s.subcode WHERE (t.sno = 1) AND " + cond, con);
            DataSet ds = new DataSet();
            da.Fill(ds, "threads");
            return ds;
        }
        catch (Exception ex)
        {
            return null;
        }
    }

}
