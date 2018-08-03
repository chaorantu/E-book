using System;
using System.Collections.Generic;
using System.Web;

namespace test2
{
    public class Userstable
    {
        /// <summary>
        /// 用户ID
        /// </summary>
        public int UID { get; set; }
        /// <summary>
        /// 用户姓名
        /// </summary>
        public string UName { get; set; }
        /// <summary>
        /// 用户密码
        /// </summary>
        public string UPws { get; set; }
        /// <summary>
        /// 用户邮箱
        /// </summary>
        public string Umailbox { get; set; }
        /// <summary>
        /// 用户问题
        /// </summary>
        public string UPasswordproblem { get; set; }
        /// <summary>
        /// 用户密码
        /// </summary>
        public string UPasswordanswer { get; set; }
    }
}