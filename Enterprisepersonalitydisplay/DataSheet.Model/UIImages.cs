using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataSheet.Model
{
   public  class UIImages
    {
        //前端页面图片存储名
        public int ImgId { get; set; } //图片Id
        public string ImgName { get; set; } //图片名
        public string ImgSrc { get; set; } //图片相对路径
        public string ImgFunc { get; set; } //图片功能分布描述

    }
}
