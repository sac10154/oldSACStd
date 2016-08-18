/**
 * 
 */
package jp.co.sacn.util;

/**
 * @author gotoumasahiko
 *
 */
public class StringUtils {

    private StringUtils() {};
    
    /**
    * 文字列をnullチェック
    *
    * @param text 文字列
    * @return true/false
    */
    public static boolean isNull(String text) {
        if(text == null){
            return true;
        }
        if(text.isEmpty() || "".equals(text)){
            return true;
        }
        
        return false;
    }    
}
