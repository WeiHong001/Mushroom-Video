package com.kotlin.basiclib.utils;

import android.text.TextUtils;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

/** Legacy date APIs; default Locale/time zone, leniency and display quirks are retained. */
public class DateUtil {
    private static long lastClickTime;
    private static long lastClickTime2;
    private static final ThreadLocal<SimpleDateFormat> dateFormater4 = new ThreadLocal<SimpleDateFormat>() {
        @Override protected SimpleDateFormat initialValue() { return new SimpleDateFormat("MM-dd"); }
    };
    private static final ThreadLocal<SimpleDateFormat> dateFormater5 = new ThreadLocal<SimpleDateFormat>() {
        @Override protected SimpleDateFormat initialValue() { return new SimpleDateFormat("yyyyMMdd"); }
    };
    private static final ThreadLocal<SimpleDateFormat> dateFormater2 = new ThreadLocal<SimpleDateFormat>() {
        @Override protected SimpleDateFormat initialValue() { return new SimpleDateFormat("yyyy-MM-dd"); }
    };
    private static final ThreadLocal<SimpleDateFormat> dateFormater3 = new ThreadLocal<SimpleDateFormat>() {
        @Override protected SimpleDateFormat initialValue() { return new SimpleDateFormat("yyyy-MM-dd HH:mm"); }
    };

    public DateUtil() { }

    public static long IntToLong(int seconds) { return ((long) seconds) * 1000; }

    public static String getTime(long timestamp) {
        if (timestamp == 0) return "";
        try {
            Date date = new Date(timestamp);
            Calendar now = Calendar.getInstance();
            ThreadLocal<SimpleDateFormat> formatter = dateFormater2;
            if (formatter.get().format(now.getTime()).equals(formatter.get().format(date))) {
                int hours = (int) ((now.getTimeInMillis() - date.getTime()) / 3600000);
                if (hours == 0) return Math.max((now.getTimeInMillis() - date.getTime()) / 60000, 1L) + "分钟前";
                return hours + "小时前";
            }
            int days = (int) ((now.getTimeInMillis() / 86400000) - (date.getTime() / 86400000));
            if (days == 0) {
                int hours = (int) ((now.getTimeInMillis() - date.getTime()) / 3600000);
                if (hours == 0) return Math.max((now.getTimeInMillis() - date.getTime()) / 60000, 1L) + "分钟前";
                return hours + "小时前";
            }
            if (days == 1) return "昨天" + stampToDate(String.valueOf(timestamp), "HH:mm");
            if (days <= 1 || days > 10) return days > 10 ? formatter.get().format(date) : "";
            return days + "天前";
        } catch (Exception error) {
            error.printStackTrace();
            return "";
        }
    }

    public static String getDateToString(long timestamp) {
        Date date = new Date(timestamp);
        int year = Integer.valueOf(new SimpleDateFormat("yyyy").format(date));
        int day = Integer.valueOf(new SimpleDateFormat("d").format(date));
        Date now = new Date(System.currentTimeMillis());
        int currentYear = Integer.valueOf(new SimpleDateFormat("yyyy").format(now));
        int currentDay = Integer.valueOf(new SimpleDateFormat("d").format(now));
        String result = "昨";
        // The original compares day-of-month here, including its year-boundary behavior.
        if (currentYear - year != 1) {
            int difference = currentDay - day;
            result = difference != 1 ? difference == -1 ? "明" : "" : "昨";
            if (difference == 0) return "今";
        } else {
            if (currentDay != 1) return "";
            int days = 366;
            if (year % 400 != 0 && (year % 4 != 0 || year % 100 == 0)) days = 365;
            if (day != days) result = "";
        }
        return result;
    }

    public static String getRecentChDay(long timestamp) {
        try {
            Calendar now = Calendar.getInstance();
            long elapsedToday = ((now.get(11) * 3600) + (now.get(12) * 60) + now.get(13)) * 1000;
            long difference = now.getTimeInMillis() - timestamp;
            if (difference < -elapsedToday) return "明";
            if (difference < elapsedToday) return "今";
            if (difference < 86400000 + elapsedToday) return "昨";
            return difference < elapsedToday + 172800000 ? "前" : "";
        } catch (Exception error) {
            error.printStackTrace();
            return "";
        }
    }

    public static long getTimestampByDateTime(String value) {
        try { return Timestamp.valueOf(value).getTime(); }
        catch (Exception error) { error.printStackTrace(); return 0L; }
    }

    public static synchronized boolean isFastClick() {
        long now = System.currentTimeMillis();
        if (now - lastClickTime < 1000) return true;
        lastClickTime = now;
        return false;
    }

    public static synchronized boolean isFastClick2() {
        long now = System.currentTimeMillis();
        if (now - lastClickTime2 < 2000) return true;
        lastClickTime2 = now;
        return false;
    }

    public static String stampToDate(String value, String pattern) {
        return new SimpleDateFormat(pattern).format(new Date(new Long(value).longValue()));
    }

    public static String transForDate(String value) {
        return TextUtils.isEmpty(value) ? "" : new SimpleDateFormat("yyyy-MM-dd").format(new Date(new Long(value).longValue()));
    }

    public static String getStrTime(String value) {
        return value == null || "".equals(value) ? "" : new SimpleDateFormat("yyyy-MM-dd").format(new Date(Long.valueOf(value).longValue()));
    }

    public static String getMonthByLong(String value) {
        return value == null || "".equals(value) ? "" : new SimpleDateFormat("MM").format(new Date(Long.valueOf(value).longValue()));
    }

    public static String getMonthTime(String value) {
        return value == null || "".equals(value) ? "" : new SimpleDateFormat("yyyy-MM").format(new Date(Long.valueOf(value).longValue()));
    }

    public static String getOnlyMonth(String value) {
        return value == null || "".equals(value) ? "" : new SimpleDateFormat("MM").format(new Date(Long.valueOf(value).longValue()));
    }

    public static String getShunfengTime(String value) {
        Date date = strToDate(value);
        Calendar target = Calendar.getInstance();
        Calendar now = Calendar.getInstance();
        target.setTime(date);
        int targetDay = target.get(6);
        int currentDay = now.get(6);
        if (targetDay == currentDay) return "今天 " + new SimpleDateFormat("HH:mm").format(target.getTime());
        if (targetDay == currentDay + 1) return "明天 " + new SimpleDateFormat("HH:mm").format(target.getTime());
        return new SimpleDateFormat("MM-dd HH:mm").format(target.getTime());
    }

    public static Date strToDate(String value) {
        return new SimpleDateFormat("yyyy-MM-dd HH:mm").parse(value, new ParsePosition(0));
    }

    public static String getCarStrTime(String value) {
        if (value.length() == 10) value = value + "000";
        try { return new SimpleDateFormat("yyyy-MM-dd HH:mm").format(new Date(Long.valueOf(value).longValue())); }
        catch (NumberFormatException error) { error.printStackTrace(); return null; }
    }

    public static long getLongTimeByFullTime(String value) {
        if (TextUtils.isEmpty(value)) return 0L;
        try { return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(value).getTime(); }
        catch (ParseException error) { error.printStackTrace(); return 1111L; }
    }

    public static long getLongTimeByDay(String value) {
        try { return new SimpleDateFormat("yyyy-MM-dd").parse(value).getTime(); }
        catch (ParseException error) { error.printStackTrace(); return 1111L; }
    }

    public static String getCurrentYear() { return Calendar.getInstance().get(1) + ""; }
    public static String getCurrentMonth() { return (Calendar.getInstance().get(2) + 1) + ""; }
    public static String getCurrentDay() { return new SimpleDateFormat("yyyyMMdd").format(new Date(System.currentTimeMillis())); }

    public static String numToUpper(int number) {
        String[] digits = {"○", "一", "二", "三", "四", "五", "六", "七", "八", "九"};
        String result = "";
        for (char digit : String.valueOf(number).toCharArray()) result = result + digits[Integer.parseInt(digit + "")];
        return result;
    }

    public static String monthToUppder(int number) {
        if (number < 10) return numToUpper(number);
        if (number == 10) return "十";
        return "十" + numToUpper(number - 10);
    }

    public static String dayToUppder(int number) {
        if (number < 20) return monthToUppder(number);
        char[] digits = String.valueOf(number).toCharArray();
        if (digits[1] == '0') return numToUpper(Integer.parseInt(digits[0] + "")) + "十";
        return numToUpper(Integer.parseInt(digits[0] + "")) + "十" + numToUpper(Integer.parseInt(digits[1] + ""));
    }

    public static String getWeekOfDate(String value) {
        int day = 0;
        String[] days = new String[0];
        try {
            days = new String[]{"星期日", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六"};
            Calendar calendar = Calendar.getInstance();
            calendar.setTimeInMillis(Long.valueOf(value).longValue());
            int index = calendar.get(7) - 1;
            if (index >= 0) day = index;
        } catch (NumberFormatException error) { error.printStackTrace(); }
        return days[day];
    }

    public static String getTimeShowYandM(Long timestamp) {
        return new SimpleDateFormat("yyyy年MM月").format(new Date(timestamp.longValue()));
    }

    public static String getLongTime(Long timestamp) {
        return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date(timestamp.longValue()));
    }

    public static String getPlayTime(Long timestamp) {
        return new SimpleDateFormat(" HH:mm:ss").format(new Date(timestamp.longValue()));
    }

    public static String getTimeShowYearMonthDay(Date date) { return dateFormater5.get().format(date); }

    public static String formatTime(Long duration) {
        long value = duration.longValue();
        long days = value / 86400000;
        long hours = (value - days * 86400000) / 3600000;
        long minutes = (value - days * 86400000 - hours * 3600000) / 60000;
        long seconds = (value - days * 86400000 - hours * 3600000 - minutes * 60000) / 1000;
        StringBuffer result = new StringBuffer();
        if (hours > 0) result.append(hours + ":");
        if (minutes >= 10) result.append(minutes + ":");
        else if (minutes < 10 && minutes > 0) result.append("0" + minutes + ":");
        else result.append("00:");
        if (seconds >= 10) result.append(seconds);
        // The original checks minutes here: sub-10-second clips at minute zero show 00.
        else if (seconds < 10 && minutes > 0) result.append("0" + seconds);
        else result.append("00");
        return result.toString();
    }

    public static String getTimeShowMonthDay(Date date) { return dateFormater4.get().format(date); }

    public static long getTimestampByYearMonthDay(String value) {
        try { return Timestamp.valueOf(value + " 00:00:00").getTime(); }
        catch (Exception error) { error.printStackTrace(); return 0L; }
    }

    public static long getTimestampByYearMDHM(String value) {
        try { return Timestamp.valueOf(value + ":00").getTime(); }
        catch (Exception error) { error.printStackTrace(); return 0L; }
    }
}
