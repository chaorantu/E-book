using System;
using System.Collections.Generic;
using System.Web;
using System.Text;
using System.Data.SqlClient;
using System.Data;

namespace test2.DAL
{
    public class UserstableViesr
    {
        List<Userstable> UT = new List<Userstable>();
        public int GetNum()
        {
            String sql="SELECT COUNT(*) FROM Resource";
            if (DBHelper.ExecuteScalar(sql) > 0)
            {
                return DBHelper.ExecuteScalar(sql);
            }
            return 0;

        }
        public int GetNumByName(string bookname)
        {
            String sql = "select count(*) from Resource where BookName like '%"+bookname+"%'";
            if (DBHelper.ExecuteScalar(sql) > 0)
            {
                return DBHelper.ExecuteScalar(sql);
            }
            return 0;

        }
        public int GetNumByAuthor(string author)
        {
            String sql = "select count(*) from Resource where Author like '%"+author+"%'";
            if (DBHelper.ExecuteScalar(sql) > 0)
            {
                return DBHelper.ExecuteScalar(sql);
            }
            return 0;
        }
        public int GetNumByType(string booktype)
        {
            String sql = "select count(*) from Resource where BookType='"+booktype+"'";
            if (DBHelper.ExecuteScalar(sql) > 0)
            {
                return DBHelper.ExecuteScalar(sql);
            }
            return 0;
        }
        public bool GetUser(string UName,string Pws)
        {
            StringBuilder sb = new StringBuilder("SELECT * FROM t1 WHERE Name='");
            sb.Append(UName);
            sb.Append("'  AND Password='");
            sb.Append(Pws);
            sb.Append("'");
            using (SqlDataReader dr = DBHelper.ExecuteReader(sb.ToString()))
            {
                while (dr.Read())
                {
                    Userstable ut = new Userstable();
                    ut.UName = dr["Name"].ToString();
                    if (ut.UName.Equals(UName))
                    {
                        return true;
                    }
                }
            }
            return false;
        }
        public DataSet GetBookInfo(string Bookname)
        {
            String sql = "select BookName,Author,Introduction,Date,PicPath,BookPath,BookType from Resource where BookName='"+Bookname+"'";
            DataSet ds = new DataSet();
            SqlDataAdapter adpt = DBHelper.ExecuteSelect(sql);
            adpt.Fill(ds);
            return ds;
        }

        
        public String GetBookPath(string BookName)
        {
            string sql = "select BookPath from Resource where BookName='" + BookName + "'";
            DataSet ds = new DataSet();
            SqlDataAdapter adpt = DBHelper.ExecuteSelect(sql);
            adpt.Fill(ds);
            return ds.Tables[0].Rows[0][0].ToString();
        }

        public DataSet GetInfo()
        {   
            String sql="select BookName,PicPath from Resource";
            DataSet ds = new DataSet();
            SqlDataAdapter adpt = DBHelper.ExecuteSelect(sql);
            adpt.Fill(ds);
            return ds;
        }
        public DataSet GetInfoByDate()
        {
            String sql = "select BookName,PicPath from Resource order by Date";
            DataSet ds = new DataSet();
            SqlDataAdapter adpt = DBHelper.ExecuteSelect(sql);
            adpt.Fill(ds);
            return ds;
        }
        public DataSet GetInfoByName(string BookName)
        {
            String sql = "select BookName,PicPath from Resource where BookName like'%"+BookName+"%'";
            DataSet ds = new DataSet();
            SqlDataAdapter adpt = DBHelper.ExecuteSelect(sql);
            adpt.Fill(ds);
            return ds;
        }
        public DataSet GetInfoByType(string BookType)
        {
            String sql = "select BookName,PicPath from Resource where BookType='"+BookType+"'";
            DataSet ds = new DataSet();
            SqlDataAdapter adpt = DBHelper.ExecuteSelect(sql);
            adpt.Fill(ds);
            return ds;
        }
        public DataSet GetInfoByAuthor(string Author)
        {
            String sql = "select BookName,PicPath from Resource where Author like'%"+Author+"%'";
            DataSet ds = new DataSet();
            SqlDataAdapter adpt = DBHelper.ExecuteSelect(sql);
            adpt.Fill(ds);
            return ds;
        }
     

        public bool InsetUserInfo(string UName, string UPws)
        {
            string sql = string.Format("INSERT INTO t1([Name],[Password])VALUES('{0}','{1}');",UName,UPws);
            if (DBHelper.ExecuteNonQuery(sql)>0)
            {
                return true;
            }
            return false;
        }
        public bool UploadResource(string UName,string BookName ,string Author,string Introduction,String Date,string PicPath,string BookPath,string BookType)
        {
            string sql=string.Format("insert into Resource([Name],[BookName],[Author],[Introduction],[Date],[PicPath],[BookPath],[BookType])values('{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}');",UName,BookName ,Author,Introduction,Date,PicPath,BookPath,BookType);
            if (DBHelper.ExecuteNonQuery(sql) > 0)
            {
                return true;
            }
            return false;
        }
    }
}