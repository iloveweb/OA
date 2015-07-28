function creatXHR () {
			if (typeof(XMLHttpRequest)!="undefined") {     
				return new XMLHttpRequest();         //���IE7���Ĵ������
			}else if (typeof ActiveXObject !="undefined") {
				if (typeof arguments.callee.activeXString!="string") {
					var versions=["MSXML2.XMLHttp.6.0","MSXML2.XMLHttp.3.0","MSXML2.XMLHttp"];
					for (var i=0,len=versions.length;i<len;i++) {
						try{
							var xhr = new ActiveXObject(versions[i]);//���IE7���°汾
							arguments.callee.activeXString=versions[i];
							return xhr;
						}catch(e){
							//TODO handle the exception
						}
					}
				}
				return new ActiveXObject(arguments.callee.activeXString);
			 }else{
			 	throw new Error("No XHR object available");
			 }
	  }