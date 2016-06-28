package teststring;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.io.FileUtils;

public class Test { 
	//保存敏感词到map集合
	  public Map<String,String> sensitiveWord(String str){
		  Map<String,String> wordAndLevel = new HashMap<String,String>();
		  String[] sensitiveWords=str.trim().split("\\.");
		  System.out.println("关键词数组长度："+sensitiveWords.length);
		  String s="";
		  for(int i =0;i<sensitiveWords.length;i++){
			  s=sensitiveWords[i];
			  String[] sensi = s.split(",");
			  System.out.println(sensi[0]);
			  wordAndLevel.put(sensi[0].trim(), sensi[sensi.length-1].trim());
		  }
		  return wordAndLevel;
	  }
	  
	  public Map<String,String> sensitiveWordFromFile(String filePath){
		  Map<String,String> sensitiveWord = new HashMap<String,String>();
		  try {
			List<String> list = FileUtils.readLines(new File(filePath),"GBK");
			for(String s:list){
				if(!"".equals(s)){
					String[] arr = s.split("=");
					sensitiveWord.put(arr[0], arr[1]);
				}
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
		  return sensitiveWord;
	  }
	  
	  public boolean writerSensitiveWord(String sensitiveWord,String filePath){
		  
		 
		  Map<String,String> sensitiveWordMap = sensitiveWord(sensitiveWord);
		  Map<String,String> sensitiveWordFromFileMap = sensitiveWordFromFile(filePath);
		  List<String> temp = new ArrayList<String>();
		  List<String> sensitiveList = new ArrayList<String>();
		  for(String s:sensitiveWordMap.keySet()){
			  sensitiveList.add(s);
			  for(String s1:sensitiveWordFromFileMap.keySet()){
				  if(s1.equals(s)){
					  temp.add(s);
				  }
			  }
		  }
		  sensitiveList.removeAll(temp);
		  for(int i = 0;i<sensitiveList.size();i++){
			  String key = sensitiveList.get(i);
			  String value = sensitiveWordMap.get(key);
			  String word = key+"="+value;
			  sensitiveList.set(i, word);
		  }
		  try {
			  //"D:/SensitiveWord.txt"
			FileUtils.writeLines(new File(filePath), "GBK",sensitiveList,true);
			return true;
		} catch (IOException e) {
			e.printStackTrace();
		}
		  return false;
	  }
	  
    public static void main(String args[]){//测试敏感词过滤             
    	String word = "";
        FilteredResult res=WordFilterUtil.filterHtml(word, '*'); 
        System.out.println("优先级："+res.getLevel());//检测到的敏感词中最高优先级的值 0为最小  
        System.out.println("过滤后的："+res.getFilteredContent().toString());//过滤后的字符串  
        System.out.println("敏感词列表："+res.getBadWords());//敏感词列表  
        System.out.println("原始字符串："+res.getOriginalContent());//原始字符串  
        String word1 = " 黑火药的配方,3.黑火药的制作,2.黑火药比例,3.";
        String filePath = "D:/SensitiveWord.txt";
        Test t = new Test();
        boolean b = t.writerSensitiveWord(word1,filePath);
        System.out.println(b);
    }  
  
} 