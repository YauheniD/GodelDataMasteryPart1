using System;
using System.Data;
using System.IO;
using System.Runtime.Serialization.Formatters.Binary;
using System.Data.SqlClient;
using System.Configuration;


namespace TestQueryProject
{
    class Helper
    {
        public static DataTable ExecuteSqlFile(string connectionString, string filePath)
        {
            FileInfo file = new FileInfo(filePath);

            string queryString = file.OpenText().ReadToEnd();

            DataTable table = new DataTable();

            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {

                    using (var command = new SqlCommand(queryString, connection))
                    {
                        SqlDataAdapter adapt = new SqlDataAdapter(command);

                        connection.Open();
                        adapt.Fill(table);
                        connection.Close();
                    }
                }
            }

            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }

            return table;
        }
        public static bool AreTablesTheSame(DataTable tbl1, DataTable tbl2)
        {
            if (tbl1.Rows.Count != tbl2.Rows.Count || tbl1.Columns.Count != tbl2.Columns.Count)
            {
                Console.WriteLine("Mismatch row [" + tbl1.Rows.Count.ToString() + "/" + tbl2.Rows.Count.ToString() + "]; column count [" + tbl1.Columns.Count.ToString() + "/" + tbl2.Columns.Count.ToString() + "]");
                return false;
            }

            for (int i = 0; i < tbl1.Rows.Count; i++)
            {
                for (int c = 0; c < tbl1.Columns.Count; c++)
                {
                    if (!Equals(tbl1.Rows[i][c], tbl2.Rows[i][c]))
                    {
                        Console.WriteLine("Mismatch Value: [" + tbl1.Rows[i][c].ToString() + " / " + tbl2.Rows[i][c].ToString() + "]");
                        return false;
                    }
                }
            }
            return true;
        }
        public static DataTable ConvertBinToDataTable(string strFilePath)
        {
            FileStream fs = new FileStream(strFilePath, FileMode.Open);
            BinaryFormatter bf = new BinaryFormatter();
            DataTable dt = (DataTable)bf.Deserialize(fs);
            fs.Close();
            return dt;
        }
        public static String ConnectionString()
        {
            String connectionString = "";
            foreach (ConnectionStringSettings conStr in ConfigurationManager.ConnectionStrings)
            {
                try
                {
                    using (SqlConnection connection = new SqlConnection(conStr.ConnectionString))
                    {
                        connection.Open();
                        connectionString = conStr.ConnectionString;
                        connection.Close();
                    }
                }
                catch { }
            }
            return connectionString;
        }
    }
}
