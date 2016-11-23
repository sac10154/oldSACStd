/**
 * 
 */
package jp.co.sacn.web.taglib;

import javax.servlet.jsp.tagext.TagSupport;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.JspException;

import java.io.IOException;
import java.util.Calendar;
 
/**
 * @author gotoumasahiko
 *
 */
@SuppressWarnings("serial")
public class CalendarTag extends TagSupport{
    private String year = "";
    private String month = "";
 
    private final int DAYS_WEEK = 7;  //週の日数
 
    public void setYear(String year) {
        this.year = year;
    }
 
    public void setMonth(String month) {
        this.month = month;
    }
 
    public int doStartTag() throws JspException {
 
        try {
            int intYear;
            int intMonth;
 
            JspWriter writer = pageContext.getOut();
 
            //パラメータが数字かどうかチェック
            try {
                intYear = Integer.parseInt(this.year);
                intMonth = Integer.parseInt(this.month);
            } catch (NumberFormatException e) {
                writer.print("パラメータが数字以外のため表示できません");
                return SKIP_BODY;
            }
 
            //月が1から12かどうかチェック
            if ((intMonth < 1) || (intMonth > 12)) {
                writer.print("月が1から12以外のため表示できません");
                return SKIP_BODY;
            }

            writer.println("<div class=\"calendar-link\"><a href=\"#\">");
            writer.println("<span class=\"glyphicon glyphicon-chevron-left\" aria-hidden=\"true\" onclick=\"javascript:location.href='./year_calendar.htm'\">");
            writer.println(intYear + "年" + intMonth + "月");
            writer.println("</span></a></div>");
 
            //一番上の曜日部分を作成
            writeHeader(writer);
 
            Calendar calendar1 = Calendar.getInstance();

            Calendar calendar2 = Calendar.getInstance();
            calendar2.set(intYear, intMonth - 1, 1);
 
            //月初の曜日をもとに月初までの空部分を作成
            //※初日が日曜でない場合のみこの処理が必要
            int weekOfFirstDay =calendar2.get(Calendar.DAY_OF_WEEK);
            if (weekOfFirstDay != Calendar.SUNDAY) {
                writer.print("<tr>");
                for (int i = 1; i < weekOfFirstDay; i++) {
                    writer.print("<td></td>");
                }
            }
 
            //末日まで作成
            int endDay = calendar2.getActualMaximum(Calendar.DATE);
            while ((calendar2.get(Calendar.DATE) <= endDay) &&
                   (calendar2.get(Calendar.MONTH) == intMonth - 1)) {
                int week = calendar2.get(Calendar.DAY_OF_WEEK);
                if ( week == Calendar.SUNDAY ) {
                    writer.print("<tr>");
                }
                if (calendar1.compareTo(calendar2) == 0){
                    writer.print("<td class=\"text-center info\">");
                } else {
                    writer.print("<td class=\"text-center\">");
                }
                if ( week == Calendar.SUNDAY ) {
                    writer.print("<span class='text-danger'>");
                } else if ( week == Calendar.SATURDAY ) {
                    writer.print("<span class='text-info'>");
                }
                if ( week == Calendar.SUNDAY || week == Calendar.SATURDAY ) {
                    writer.print("<a href='#'>" + calendar2.get(Calendar.DATE) + "</a></span></td>");
                } else {
                    writer.print("<a href='#'>" + calendar2.get(Calendar.DATE) + "</a></td>");
                }
                if ( week == Calendar.SATURDAY ) {
                    writer.println("</tr>");
                }
                calendar2.add(Calendar.DATE, 1);
            }
 
            //末日の曜日をもとに末日以降の空部分を作成
            //※末日が土曜でない場合のみこの処理が必要
            calendar2.add(Calendar.DATE, -1);
                //上のwhile文で末日+1になっているので戻す
            int weekOfEndDay = calendar2.get(Calendar.DAY_OF_WEEK);
            if (weekOfEndDay != Calendar.SATURDAY) {
                for (int j = 1; j <= DAYS_WEEK - calendar2.get(Calendar.DAY_OF_WEEK); j++) {
                    writer.print("<td></td>");
                }
                writer.println("</tr>");
            }
 
            writer.println("</table>");
        } catch (IOException e) {
            throw new JspException(e);
        }
        return SKIP_BODY;
    }
 
    public int doEndTag() throws JspException {
       return EVAL_PAGE;
    }
 
 
    //カレンダーの曜日部分を作成
    private void writeHeader(JspWriter writer) throws JspException {
 
        try {
            writer.print("<table class='table table-striped table-hover'>");
            writer.print("<tr><td class=\"text-center\"><span class='text-danger'>日</span></td>");
            writer.print("<td class=\"text-center\">月</td>");
            writer.print("<td class=\"text-center\">火</td>");
            writer.print("<td class=\"text-center\">水</td>");
            writer.print("<td class=\"text-center\">木</td>");
            writer.print("<td class=\"text-center\">金</td>");
            writer.println("<td class=\"text-center\"><span class='text-info'>土</span></td></tr>");
        } catch (IOException e) {
            throw new JspException(e);
        }
 
    }
 
}
