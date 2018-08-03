using System;
using System.Collections.Generic;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace test2
{
    public class DBHelper
    {
        /// <summary>
        ///连接字符串
        /// </summary>
        private static string connectionString = "Data Source=TCR-PC\\SQLEXPRESS;Initial Catalog=test;User ID=sa;Password=tcr1994";

        public static int ExecuteNonQuery(string sql, params SqlParameter[] param)
        {
            return ExecuteNonQuery(sql, CommandType.Text, param);
        }
        /// <summary>
        /// 执行T-SQL语句，并返回影响行数
        /// </summary>
        /// <param name="sql">T-SQL语句</param>
        /// <param name="param">参数列表</param>
        /// <returns>影响行数</returns>
        public static int ExecuteNonQuery(string sql, CommandType type, params SqlParameter[] param)
        {
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = type;
                cmd.Connection = conn;
                cmd.CommandText = sql;

                if (param != null)
                    cmd.Parameters.AddRange(param);
                try
                {
                    conn.Open();
                    return cmd.ExecuteNonQuery();
                }
                catch //(Exception ex)可以使用日志方式存储，此处没有日志系统，所以直接注释，不做记录
                {
                    return -1;
                }
                finally
                {
                    cmd.Parameters.Clear();
                }
            }
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="sql"></param>
        /// <param name="param"></param>
        /// <returns></returns>
        public static SqlDataReader ExecuteReader(string sql, CommandType type, params SqlParameter[] param)
        {
            SqlConnection conn = new SqlConnection(connectionString);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = type;
            cmd.CommandText = sql;
            cmd.Connection = conn;

            if (param != null) cmd.Parameters.AddRange(param);

            try
            {
                conn.Open();
                return cmd.ExecuteReader(System.Data.CommandBehavior.CloseConnection);
            }
            catch
            {
                return null;
            }
        }
        /// <summary>
        /// 
        /// </summary>
        /// <param name="sql"></param>
        /// <param name="param"></param>
        /// <returns></returns>
        
        public static SqlDataReader ExecuteReader(string sql)
        {
            SqlConnection conn = new SqlConnection(connectionString);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = sql;
            cmd.Connection = conn;

            try
            {
                conn.Open();
                return cmd.ExecuteReader(System.Data.CommandBehavior.CloseConnection);
            }
            catch
            {
                return null;
            }
        }

        public static SqlDataAdapter ExecuteSelect(string sql)
        {
            SqlConnection conn = new SqlConnection(connectionString);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = sql;
            cmd.Connection = conn;

            try
            {
                conn.Open();
                SqlDataAdapter adpt = new SqlDataAdapter(cmd);
                return adpt;
            }
            catch
            {
                return null;
            }
        }
        public static int ExecuteScalar(string sql)
        {
            SqlConnection conn = new SqlConnection(connectionString);
            conn.Open();
            SqlCommand cmd = new SqlCommand(sql,conn);
            int i= Convert.ToInt32(cmd.ExecuteScalar());
            return i;
            
        }
    }
}