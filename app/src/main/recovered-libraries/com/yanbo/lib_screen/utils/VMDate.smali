.class public Lcom/yanbo/lib_screen/utils/VMDate;
.super Ljava/lang/Object;
.source "VMDate.java"


# static fields
.field private static final DAY:J = 0x5265c00L

.field private static final HOUR:J = 0x36ee80L

.field private static final MINUTE:J = 0xea60L

.field private static final MONTH:J = 0x9fa52400L

.field private static final ThreeDAY:J = 0xf731400L

.field private static final TwoDAY:J = 0xa4cb800L

.field private static final WEEK:J = 0x240c8400L

.field private static final YEAR:J = 0x77bbdb000L

.field public static sdfFilename:Ljava/text/SimpleDateFormat;

.field public static sdfNoYear:Ljava/text/SimpleDateFormat;

.field public static sdfNormal:Ljava/text/SimpleDateFormat;

.field public static sdfOnlyDate:Ljava/text/SimpleDateFormat;

.field public static sdfOnlyDateNoDay:Ljava/text/SimpleDateFormat;

.field public static sdfOnlyDateNoYear:Ljava/text/SimpleDateFormat;

.field public static sdfOnlyTime:Ljava/text/SimpleDateFormat;

.field public static sdfUTC:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy/MM/dd HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yanbo/lib_screen/utils/VMDate;->sdfNormal:Ljava/text/SimpleDateFormat;

    .line 32
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyyMMdd_HHmmssSSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yanbo/lib_screen/utils/VMDate;->sdfFilename:Ljava/text/SimpleDateFormat;

    .line 33
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yanbo/lib_screen/utils/VMDate;->sdfUTC:Ljava/text/SimpleDateFormat;

    .line 34
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM/dd HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yanbo/lib_screen/utils/VMDate;->sdfNoYear:Ljava/text/SimpleDateFormat;

    .line 35
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy/MM/dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yanbo/lib_screen/utils/VMDate;->sdfOnlyDate:Ljava/text/SimpleDateFormat;

    .line 36
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy\u6708MM\u65e5"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yanbo/lib_screen/utils/VMDate;->sdfOnlyDateNoDay:Ljava/text/SimpleDateFormat;

    .line 37
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM/dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yanbo/lib_screen/utils/VMDate;->sdfOnlyDateNoYear:Ljava/text/SimpleDateFormat;

    .line 38
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yanbo/lib_screen/utils/VMDate;->sdfOnlyTime:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static converDateTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 83
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    .line 84
    new-instance p2, Ljava/text/SimpleDateFormat;

    invoke-direct {p2, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 86
    invoke-virtual {p0}, Ljava/text/ParseException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static currentDateTime()Ljava/lang/String;
    .locals 2

    .line 53
    sget-object v0, Lcom/yanbo/lib_screen/utils/VMDate;->sdfNormal:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static currentMilli()J
    .locals 2

    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static currentUTCDateTime()Ljava/lang/String;
    .locals 2

    .line 60
    sget-object v0, Lcom/yanbo/lib_screen/utils/VMDate;->sdfUTC:Ljava/text/SimpleDateFormat;

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 61
    sget-object v0, Lcom/yanbo/lib_screen/utils/VMDate;->sdfUTC:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static filenameDateTime()Ljava/lang/String;
    .locals 2

    .line 70
    sget-object v0, Lcom/yanbo/lib_screen/utils/VMDate;->sdfFilename:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static fromTimeString(Ljava/lang/String;)J
    .locals 7

    const-string v0, "."

    .line 129
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 130
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    const-string v0, ":"

    .line 132
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 133
    array-length v1, v0

    const/4 v3, 0x3

    if-ne v1, v3, :cond_1

    .line 136
    aget-object p0, v0, v2

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0xe10

    mul-long v1, v1, v3

    const/4 p0, 0x1

    .line 137
    aget-object p0, v0, p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    const-wide/16 v5, 0x3c

    mul-long v3, v3, v5

    const/4 p0, 0x2

    .line 138
    aget-object p0, v0, p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    add-long/2addr v1, v3

    add-long/2addr v1, v5

    return-wide v1

    .line 134
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t parse time string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getRelativeTime(J)Ljava/lang/String;
    .locals 4

    .line 210
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 213
    invoke-static {v0, v1, p0, p1}, Lcom/yanbo/lib_screen/utils/VMDate;->isSameDate(JJ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 215
    invoke-static {p0, p1}, Lcom/yanbo/lib_screen/utils/VMDate;->long2Time(J)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-wide/32 v2, 0x5265c00

    add-long/2addr v2, p0

    .line 216
    invoke-static {v0, v1, v2, v3}, Lcom/yanbo/lib_screen/utils/VMDate;->isSameDate(JJ)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u6628\u5929 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Lcom/yanbo/lib_screen/utils/VMDate;->long2Time(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-wide/32 v2, 0xa4cb800

    add-long/2addr v2, p0

    .line 219
    invoke-static {v0, v1, v2, v3}, Lcom/yanbo/lib_screen/utils/VMDate;->isSameDate(JJ)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u524d\u5929 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Lcom/yanbo/lib_screen/utils/VMDate;->long2Time(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-wide v2, 0x77bbdb000L

    add-long/2addr v2, p0

    .line 222
    invoke-static {v0, v1, v2, v3}, Lcom/yanbo/lib_screen/utils/VMDate;->isSameDate(JJ)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 224
    invoke-static {p0, p1}, Lcom/yanbo/lib_screen/utils/VMDate;->long2Normal(J)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 227
    :cond_3
    invoke-static {p0, p1}, Lcom/yanbo/lib_screen/utils/VMDate;->long2NormalNoYear(J)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static isSameDate(JJ)Z
    .locals 2

    const-wide/32 v0, 0x5265c00

    .line 241
    div-long/2addr p0, v0

    .line 242
    div-long/2addr p2, v0

    cmp-long v0, p0, p2

    if-nez v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static long2Date(J)Ljava/lang/String;
    .locals 1

    .line 179
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 180
    sget-object p0, Lcom/yanbo/lib_screen/utils/VMDate;->sdfOnlyDate:Ljava/text/SimpleDateFormat;

    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static long2DateNoDay(J)Ljava/lang/String;
    .locals 1

    .line 199
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 200
    sget-object p0, Lcom/yanbo/lib_screen/utils/VMDate;->sdfOnlyDateNoDay:Ljava/text/SimpleDateFormat;

    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static long2DateNoYear(J)Ljava/lang/String;
    .locals 1

    .line 189
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 190
    sget-object p0, Lcom/yanbo/lib_screen/utils/VMDate;->sdfOnlyDateNoYear:Ljava/text/SimpleDateFormat;

    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static long2Normal(J)Ljava/lang/String;
    .locals 1

    .line 159
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 160
    sget-object p0, Lcom/yanbo/lib_screen/utils/VMDate;->sdfNormal:Ljava/text/SimpleDateFormat;

    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static long2NormalNoYear(J)Ljava/lang/String;
    .locals 1

    .line 169
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 170
    sget-object p0, Lcom/yanbo/lib_screen/utils/VMDate;->sdfNoYear:Ljava/text/SimpleDateFormat;

    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static long2Time(J)Ljava/lang/String;
    .locals 1

    .line 149
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 150
    sget-object p0, Lcom/yanbo/lib_screen/utils/VMDate;->sdfOnlyTime:Ljava/text/SimpleDateFormat;

    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static milliFormUTC(Ljava/lang/String;)J
    .locals 4

    .line 97
    invoke-static {p0}, Lcom/yanbo/lib_screen/utils/VMStr;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    return-wide v1

    .line 101
    :cond_0
    :try_start_0
    sget-object v0, Lcom/yanbo/lib_screen/utils/VMDate;->sdfUTC:Ljava/text/SimpleDateFormat;

    const-string v3, "UTC"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 102
    sget-object v0, Lcom/yanbo/lib_screen/utils/VMDate;->sdfUTC:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    .line 103
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p0

    .line 105
    invoke-virtual {p0}, Ljava/text/ParseException;->printStackTrace()V

    return-wide v1
.end method

.method public static toTimeString(J)Ljava/lang/String;
    .locals 6

    const-wide/16 v0, 0x3c

    .line 116
    rem-long v2, p0, v0

    .line 117
    div-long v4, p0, v0

    rem-long/2addr v4, v0

    const-wide/16 v0, 0xe10

    .line 118
    div-long/2addr p0, v0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 119
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 p1, 0x0

    aput-object p0, v0, p1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v0, p1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 p1, 0x2

    aput-object p0, v0, p1

    const-string p0, "%02d:%02d:%02d"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
