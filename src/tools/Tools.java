package tools;

public class Tools {

	public String getS(String str){  //���ڴ���������������
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
