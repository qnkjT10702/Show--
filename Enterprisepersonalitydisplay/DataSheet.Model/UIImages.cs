using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataSheet.Model
{
    /// <summary>
    /// 前端页面图片存储名
    /// </summary>
    public class UIImages
    {
        /// <summary>
        /// 图片Id
        /// </summary>
        public int ImgId { get; set; }
        /// <summary>
        /// 图片名
        /// </summary>
        public string ImgName { get; set; }
        /// <summary>
        /// 图片相对路径
        /// </summary>
        public string ImgSrc { get; set; }
        /// <summary>
        /// 图片功能分布描述
        /// </summary>
        public string ImgFunc { get; set; } 

    }
}
