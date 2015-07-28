package tools;

public class Tools {

	public String getS(String str){  //用于处理中文乱码问题
		   try{
		       byte b[]=str.getBytes("ISO-8859-1");
		       str=new String(b,"utf-8");
		       return str;
		   }
		   catch(Exception e){
		      e.printStackTrace();
		      return "error";
		   }
	}
}
