package com.kotlin.basiclib.utils;

import android.text.TextUtils;
import com.google.android.exoplayer2.ExoPlayer;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

/* JADX INFO: loaded from: classes2.dex */
public class DateUtil {
    private static long lastClickTime;
    private static long lastClickTime2;
    private static final ThreadLocal<SimpleDateFormat> dateFormater4 = new ThreadLocal<SimpleDateFormat>() { // from class: com.kotlin.basiclib.utils.DateUtil.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        public SimpleDateFormat initialValue() {
            return new SimpleDateFormat("MM-dd");
        }
    };
    private static final ThreadLocal<SimpleDateFormat> dateFormater5 = new ThreadLocal<SimpleDateFormat>() { // from class: com.kotlin.basiclib.utils.DateUtil.2
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        public SimpleDateFormat initialValue() {
            return new SimpleDateFormat("yyyyMMdd");
        }
    };
    private static final ThreadLocal<SimpleDateFormat> dateFormater2 = new ThreadLocal<SimpleDateFormat>() { // from class: com.kotlin.basiclib.utils.DateUtil.3
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        public SimpleDateFormat initialValue() {
            return new SimpleDateFormat("yyyy-MM-dd");
        }
    };
    private static final ThreadLocal<SimpleDateFormat> dateFormater3 = new ThreadLocal<SimpleDateFormat>() { // from class: com.kotlin.basiclib.utils.DateUtil.4
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        public SimpleDateFormat initialValue() {
            return new SimpleDateFormat("yyyy-MM-dd HH:mm");
        }
    };

    public static long IntToLong(int i) {
        return ((long) i) * 1000;
    }

    public static String getTime(long j) {
        String str;
        if (j == 0) {
            return "";
        }
        try {
            Date date = new Date(j);
            Calendar calendar = Calendar.getInstance();
            ThreadLocal<SimpleDateFormat> threadLocal = dateFormater2;
            if (threadLocal.get().format(calendar.getTime()).equals(threadLocal.get().format(date))) {
                int timeInMillis = (int) ((calendar.getTimeInMillis() - date.getTime()) / 3600000);
                if (timeInMillis == 0) {
                    return Math.max((calendar.getTimeInMillis() - date.getTime()) / 60000, 1L) + "分钟前";
                }
                return timeInMillis + "小时前";
            }
            int timeInMillis2 = (int) ((calendar.getTimeInMillis() / 86400000) - (date.getTime() / 86400000));
            if (timeInMillis2 == 0) {
                int timeInMillis3 = (int) ((calendar.getTimeInMillis() - date.getTime()) / 3600000);
                if (timeInMillis3 == 0) {
                    str = Math.max((calendar.getTimeInMillis() - date.getTime()) / 60000, 1L) + "分钟前";
                } else {
                    str = timeInMillis3 + "小时前";
                }
                return str;
            }
            if (timeInMillis2 == 1) {
                return "昨天" + stampToDate(String.valueOf(j), "HH:mm");
            }
            if (timeInMillis2 <= 1 || timeInMillis2 > 10) {
                return timeInMillis2 > 10 ? threadLocal.get().format(date) : "";
            }
            return timeInMillis2 + "天前";
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    public static String getDateToString(long j) {
        Date date = new Date(j);
        int iIntValue = Integer.valueOf(new SimpleDateFormat("yyyy").format(date)).intValue();
        int iIntValue2 = Integer.valueOf(new SimpleDateFormat("d").format(date)).intValue();
        Date date2 = new Date(System.currentTimeMillis());
        int iIntValue3 = Integer.valueOf(new SimpleDateFormat("yyyy").format(date2)).intValue();
        int iIntValue4 = Integer.valueOf(new SimpleDateFormat("d").format(date2)).intValue();
        String str = "昨";
        if (iIntValue3 - iIntValue != 1) {
            int i = iIntValue4 - iIntValue2;
            str = i != 1 ? i == -1 ? "明" : "" : "昨";
            if (i == 0) {
                return "今";
            }
        } else {
            if (iIntValue4 != 1) {
                return "";
            }
            int i2 = 366;
            if (iIntValue % 400 != 0 && (iIntValue % 4 != 0 || iIntValue % 100 == 0)) {
                i2 = 365;
            }
            if (iIntValue2 != i2) {
                str = "";
            }
        }
        return str;
    }

    public static String getRecentChDay(long j) {
        try {
            Calendar calendar = Calendar.getInstance();
            long j2 = ((calendar.get(11) * ACache.TIME_HOUR) + (calendar.get(12) * 60) + calendar.get(13)) * 1000;
            long timeInMillis = calendar.getTimeInMillis() - j;
            if (timeInMillis < (-j2)) {
                return "明";
            }
            if (timeInMillis < j2) {
                return "今";
            }
            if (timeInMillis < 86400000 + j2) {
                return "昨";
            }
            return timeInMillis < j2 + 172800000 ? "前" : "";
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    public static long getTimestampByDateTime(String str) {
        try {
            return Timestamp.valueOf(str).getTime();
        } catch (Exception e) {
            e.printStackTrace();
            return 0L;
        }
    }

    public static synchronized boolean isFastClick() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - lastClickTime < 1000) {
            return true;
        }
        lastClickTime = jCurrentTimeMillis;
        return false;
    }

    public static synchronized boolean isFastClick2() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - lastClickTime2 < ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS) {
            return true;
        }
        lastClickTime2 = jCurrentTimeMillis;
        return false;
    }

    public static String stampToDate(String str, String str2) {
        return new SimpleDateFormat(str2).format(new Date(new Long(str).longValue()));
    }

    public static String transForDate(String str) {
        return TextUtils.isEmpty(str) ? "" : new SimpleDateFormat("yyyy-MM-dd").format(new Date(new Long(str).longValue()));
    }

    public static String getStrTime(String str) {
        return (str == null || "".equals(str)) ? "" : new SimpleDateFormat("yyyy-MM-dd").format(new Date(Long.valueOf(str).longValue()));
    }

    public static String getMonthByLong(String str) {
        return (str == null || "".equals(str)) ? "" : new SimpleDateFormat("MM").format(new Date(Long.valueOf(str).longValue()));
    }

    public static String getMonthTime(String str) {
        return (str == null || "".equals(str)) ? "" : new SimpleDateFormat("yyyy-MM").format(new Date(Long.valueOf(str).longValue()));
    }

    public static String getOnlyMonth(String str) {
        return (str == null || "".equals(str)) ? "" : new SimpleDateFormat("MM").format(new Date(Long.valueOf(str).longValue()));
    }

    public static String getShunfengTime(String str) {
        Date dateStrToDate = strToDate(str);
        Calendar calendar = Calendar.getInstance();
        Calendar calendar2 = Calendar.getInstance();
        calendar.setTime(dateStrToDate);
        int i = calendar.get(6);
        int i2 = calendar2.get(6);
        if (i == i2) {
            return "今天 " + new SimpleDateFormat("HH:mm").format(calendar.getTime());
        }
        if (i == i2 + 1) {
            return "明天 " + new SimpleDateFormat("HH:mm").format(calendar.getTime());
        }
        return new SimpleDateFormat("MM-dd HH:mm").format(calendar.getTime());
    }

    public static Date strToDate(String str) {
        return new SimpleDateFormat("yyyy-MM-dd HH:mm").parse(str, new ParsePosition(0));
    }

    public static String getCarStrTime(String str) {
        if (str.length() == 10) {
            str = str + "000";
        }
        try {
            return new SimpleDateFormat("yyyy-MM-dd HH:mm").format(new Date(Long.valueOf(str).longValue()));
        } catch (NumberFormatException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static long getLongTimeByFullTime(String str) {
        if (TextUtils.isEmpty(str)) {
            return 0L;
        }
        try {
            return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(str).getTime();
        } catch (ParseException e) {
            e.printStackTrace();
            return 1111L;
        }
    }

    public static long getLongTimeByDay(String str) {
        try {
            return new SimpleDateFormat("yyyy-MM-dd").parse(str).getTime();
        } catch (ParseException e) {
            e.printStackTrace();
            return 1111L;
        }
    }

    public static String getCurrentYear() {
        return Calendar.getInstance().get(1) + "";
    }

    public static String getCurrentMonth() {
        return (Calendar.getInstance().get(2) + 1) + "";
    }

    public static String getCurrentDay() {
        return new SimpleDateFormat("yyyyMMdd").format(new Date(System.currentTimeMillis()));
    }

    public static String numToUpper(int i) {
        String[] strArr = {"○", "一", "二", "三", "四", "五", "六", "七", "八", "九"};
        String string = "";
        for (char c : String.valueOf(i).toCharArray()) {
            StringBuilder sb = new StringBuilder();
            sb.append(string);
            sb.append(strArr[Integer.parseInt(c + "")]);
            string = sb.toString();
        }
        return string;
    }

    public static String monthToUppder(int i) {
        if (i < 10) {
            return numToUpper(i);
        }
        if (i == 10) {
            return "十";
        }
        return "十" + numToUpper(i - 10);
    }

    public static String dayToUppder(int i) {
        if (i < 20) {
            return monthToUppder(i);
        }
        char[] charArray = String.valueOf(i).toCharArray();
        if (charArray[1] == '0') {
            return numToUpper(Integer.parseInt(charArray[0] + "")) + "十";
        }
        return numToUpper(Integer.parseInt(charArray[0] + "")) + "十" + numToUpper(Integer.parseInt(charArray[1] + ""));
    }

    public static String getWeekOfDate(String str) {
        int i = 0;
        String[] strArr = new String[0];
        try {
            strArr = new String[]{"星期日", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六"};
            Calendar calendar = Calendar.getInstance();
            calendar.setTimeInMillis(Long.valueOf(str).longValue());
            int i2 = calendar.get(7) - 1;
            if (i2 >= 0) {
                i = i2;
            }
        } catch (NumberFormatException e) {
            e.printStackTrace();
        }
        return strArr[i];
    }

    public static String getTimeShowYandM(Long l) {
        return new SimpleDateFormat("yyyy年MM月").format(new Date(l.longValue()));
    }

    public static String getLongTime(Long l) {
        return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date(l.longValue()));
    }

    public static String getPlayTime(Long l) {
        return new SimpleDateFormat(" HH:mm:ss").format(new Date(l.longValue()));
    }

    public static String getTimeShowYearMonthDay(Date date) {
        return dateFormater5.get().format(date);
    }

    public static String formatTime(Long l) {
        Integer num = 1000;
        Integer numValueOf = Integer.valueOf(num.intValue() * 60);
        Integer numValueOf2 = Integer.valueOf(numValueOf.intValue() * 60);
        Integer numValueOf3 = Integer.valueOf(numValueOf2.intValue() * 24);
        Long lValueOf = Long.valueOf(l.longValue() / ((long) numValueOf3.intValue()));
        Long lValueOf2 = Long.valueOf((l.longValue() - (lValueOf.longValue() * ((long) numValueOf3.intValue()))) / ((long) numValueOf2.intValue()));
        Long lValueOf3 = Long.valueOf(((l.longValue() - (lValueOf.longValue() * ((long) numValueOf3.intValue()))) - (lValueOf2.longValue() * ((long) numValueOf2.intValue()))) / ((long) numValueOf.intValue()));
        Long lValueOf4 = Long.valueOf((((l.longValue() - (lValueOf.longValue() * ((long) numValueOf3.intValue()))) - (lValueOf2.longValue() * ((long) numValueOf2.intValue()))) - (lValueOf3.longValue() * ((long) numValueOf.intValue()))) / ((long) num.intValue()));
        StringBuffer stringBuffer = new StringBuffer();
        if (lValueOf2.longValue() > 0) {
            stringBuffer.append(lValueOf2 + ":");
        }
        if (lValueOf3.longValue() >= 10) {
            stringBuffer.append(lValueOf3 + ":");
        } else if (lValueOf3.longValue() < 10 && lValueOf3.longValue() > 0) {
            stringBuffer.append("0" + lValueOf3 + ":");
        } else {
            stringBuffer.append("00:");
        }
        if (lValueOf4.longValue() >= 10) {
            stringBuffer.append(lValueOf4);
        } else if (lValueOf4.longValue() < 10 && lValueOf3.longValue() > 0) {
            stringBuffer.append("0" + lValueOf4);
        } else {
            stringBuffer.append("00");
        }
        return stringBuffer.toString();
    }

    public static String getTimeShowMonthDay(Date date) {
        return dateFormater4.get().format(date);
    }

    public static long getTimestampByYearMonthDay(String str) {
        try {
            return Timestamp.valueOf(str + " 00:00:00").getTime();
        } catch (Exception e) {
            e.printStackTrace();
            return 0L;
        }
    }

    public static long getTimestampByYearMDHM(String str) {
        try {
            return Timestamp.valueOf(str + ":00").getTime();
        } catch (Exception e) {
            e.printStackTrace();
            return 0L;
        }
    }
}
