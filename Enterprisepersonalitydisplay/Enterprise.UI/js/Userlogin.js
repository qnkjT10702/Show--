
			//获取DOMduix
			//获取大登录界面的大div
			var denglu=document.getElementById("denglu");
			
			//获取span标签里面的登录
			
			var spanone=denglu.children[0];
			
			//获取span标签里面的注册
			var spantwo=denglu.children[1];
			
			//获取username
			
			var username=document.getElementById("username");
			
			var userbutton=document.getElementById("userbutton")
			
			var usernam=document.getElementById("usernam");
			var userbutto=document.getElementById("userbutto")
			
			spantwo.onmousemove=function(){
				username.style.display='none';
				userbutton.style.display='none'
				usernam.style.display='block';
				userbutto.style.display='block'
			}
			spanone.onmousemove=function(){
				username.style.display='block';
				userbutton.style.display='block'
				usernam.style.display='none';
				userbutto.style.display='none'
			}
			
			//拖拽对话框
			my$("title").onmousedown=function(e){
				var spanx=e.clientX-my$("login").offsetLeft;
				var spany=e.clientY-my$("login").offsetTop;
				
				
				document.onmousemove=function(e){
				var x=e.clientX-spanx+270;
				var y=e.clientY-spany-80;
				
				my$("login").style.left=x+'px'
				my$("login").style.top=y+'px'
			}
		}
			//鼠标松开，清除鼠标按下事件
			document.onmouseup=function(){
				document.onmousemove=null;
			}
			
		//注册验证
		//第一个为id参数，第二个是正则参数，第三个是用户输入的值
		//用户名
		
		asckcheag("name",/^[a-z]\w{5,17}$/,"你输入格式不正确,请重新输入")
		//密码
		asckcheag("password", /^(?![0-6]+$)(?![a-zA-Z]+$)[0-6A-Za-z]{0,6}$/,"你输入的格式不正确,	请重新输入")
		
		//邮箱验证
		
		asckcheag("emali",/^[A-Za-z\d]+([-_.][A-Za-z\d]+)*@([A-Za-z\d]+[-.])+[A-Za-z\d]{2,4}$ /,"你输入的格式有误")
		function asckcheag(elements,reg,liuliu){
				var elemt=document.getElementById(elements);
				elemt.onblur=function(){
					var span=this.nextElementSibling;
					//判断一下
					if(!reg.test(this.value)){
						span.innerHTML=liuliu;
						span.className="regs"
					}
					else{
						span.innerHTML="";
						span.className=""
					}
				}
			}