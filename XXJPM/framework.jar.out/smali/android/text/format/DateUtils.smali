.class public Landroid/text/format/DateUtils;
.super Ljava/lang/Object;
.source "DateUtils.java"


# static fields
.field public static final ABBREV_MONTH_FORMAT:Ljava/lang/String; = "%b"

.field public static final ABBREV_WEEKDAY_FORMAT:Ljava/lang/String; = "%a"

.field public static final DAY_IN_MILLIS:J = 0x5265c00L

.field private static final FAST_FORMAT_HMMSS:Ljava/lang/String; = "%1$d:%2$02d:%3$02d"

.field private static final FAST_FORMAT_MMSS:Ljava/lang/String; = "%1$02d:%2$02d"

.field public static final FORMAT_12HOUR:I = 0x40

.field public static final FORMAT_24HOUR:I = 0x80

.field public static final FORMAT_ABBREV_ALL:I = 0x80000

.field public static final FORMAT_ABBREV_MONTH:I = 0x10000

.field public static final FORMAT_ABBREV_RELATIVE:I = 0x40000

.field public static final FORMAT_ABBREV_TIME:I = 0x4000

.field public static final FORMAT_ABBREV_WEEKDAY:I = 0x8000

.field public static final FORMAT_CAP_AMPM:I = 0x100

.field public static final FORMAT_CAP_MIDNIGHT:I = 0x1000

.field public static final FORMAT_CAP_NOON:I = 0x400

.field public static final FORMAT_CAP_NOON_MIDNIGHT:I = 0x1400

.field public static final FORMAT_NO_MIDNIGHT:I = 0x800

.field public static final FORMAT_NO_MONTH_DAY:I = 0x20

.field public static final FORMAT_NO_NOON:I = 0x200

.field public static final FORMAT_NO_NOON_MIDNIGHT:I = 0xa00

.field public static final FORMAT_NO_YEAR:I = 0x8

.field public static final FORMAT_NUMERIC_DATE:I = 0x20000

.field public static final FORMAT_SHOW_DATE:I = 0x10

.field public static final FORMAT_SHOW_TIME:I = 0x1

.field public static final FORMAT_SHOW_WEEKDAY:I = 0x2

.field public static final FORMAT_SHOW_YEAR:I = 0x4

.field public static final FORMAT_UTC:I = 0x2000

.field public static final HOUR_IN_MILLIS:J = 0x36ee80L

.field public static final HOUR_MINUTE_24:Ljava/lang/String; = "%H:%M"

.field public static final LENGTH_LONG:I = 0xa

.field public static final LENGTH_MEDIUM:I = 0x14

.field public static final LENGTH_SHORT:I = 0x1e

.field public static final LENGTH_SHORTER:I = 0x28

.field public static final LENGTH_SHORTEST:I = 0x32

.field public static final MINUTE_IN_MILLIS:J = 0xea60L

.field public static final MONTH_DAY_FORMAT:Ljava/lang/String; = "%-d"

.field public static final MONTH_FORMAT:Ljava/lang/String; = "%B"

.field public static final NUMERIC_MONTH_FORMAT:Ljava/lang/String; = "%m"

.field public static final SECOND_IN_MILLIS:J = 0x3e8L

.field private static final TIME_PADDING:C = '0'

.field private static final TIME_SEPARATOR:C = ':'

.field public static final WEEKDAY_FORMAT:Ljava/lang/String; = "%A"

.field public static final WEEK_IN_MILLIS:J = 0x240c8400L

.field public static final YEAR_FORMAT:Ljava/lang/String; = "%Y"

.field public static final YEAR_FORMAT_TWO_DIGITS:Ljava/lang/String; = "%g"

.field public static final YEAR_IN_MILLIS:J = 0x7528ad000L

.field private static final sAmPm:[I

.field private static final sDaysLong:[I

.field private static final sDaysMedium:[I

.field private static final sDaysShort:[I

.field private static final sDaysShortest:[I

.field private static sElapsedFormatHMMSS:Ljava/lang/String;

.field private static sElapsedFormatMMSS:Ljava/lang/String;

.field private static sLastConfig:Landroid/content/res/Configuration;

.field private static final sLock:Ljava/lang/Object;

.field private static final sMonthsLong:[I

.field private static final sMonthsMedium:[I

.field private static final sMonthsShortest:[I

.field private static final sMonthsStandaloneLong:[I

.field private static sNowTime:Landroid/text/format/Time;

.field private static sStatusTimeFormat:Ljava/text/DateFormat;

.field private static sThenTime:Landroid/text/format/Time;

.field public static final sameMonthTable:[I

.field public static final sameYearTable:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x10

    const/16 v2, 0xc

    const/4 v1, 0x7

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/text/format/DateUtils;->sLock:Ljava/lang/Object;

    .line 39
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/text/format/DateUtils;->sDaysLong:[I

    .line 48
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroid/text/format/DateUtils;->sDaysMedium:[I

    .line 57
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Landroid/text/format/DateUtils;->sDaysShort:[I

    .line 66
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Landroid/text/format/DateUtils;->sDaysShortest:[I

    .line 75
    new-array v0, v2, [I

    fill-array-data v0, :array_4

    sput-object v0, Landroid/text/format/DateUtils;->sMonthsStandaloneLong:[I

    .line 89
    new-array v0, v2, [I

    fill-array-data v0, :array_5

    sput-object v0, Landroid/text/format/DateUtils;->sMonthsLong:[I

    .line 103
    new-array v0, v2, [I

    fill-array-data v0, :array_6

    sput-object v0, Landroid/text/format/DateUtils;->sMonthsMedium:[I

    .line 117
    new-array v0, v2, [I

    fill-array-data v0, :array_7

    sput-object v0, Landroid/text/format/DateUtils;->sMonthsShortest:[I

    .line 131
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_8

    sput-object v0, Landroid/text/format/DateUtils;->sAmPm:[I

    .line 204
    new-array v0, v3, [I

    fill-array-data v0, :array_9

    sput-object v0, Landroid/text/format/DateUtils;->sameYearTable:[I

    .line 230
    new-array v0, v3, [I

    fill-array-data v0, :array_a

    sput-object v0, Landroid/text/format/DateUtils;->sameMonthTable:[I

    return-void

    .line 39
    nop

    :array_0
    .array-data 0x4
        0x4bt 0x0t 0x4t 0x1t
        0x4ct 0x0t 0x4t 0x1t
        0x4dt 0x0t 0x4t 0x1t
        0x4et 0x0t 0x4t 0x1t
        0x4ft 0x0t 0x4t 0x1t
        0x50t 0x0t 0x4t 0x1t
        0x51t 0x0t 0x4t 0x1t
    .end array-data

    .line 48
    :array_1
    .array-data 0x4
        0x52t 0x0t 0x4t 0x1t
        0x53t 0x0t 0x4t 0x1t
        0x54t 0x0t 0x4t 0x1t
        0x55t 0x0t 0x4t 0x1t
        0x56t 0x0t 0x4t 0x1t
        0x57t 0x0t 0x4t 0x1t
        0x58t 0x0t 0x4t 0x1t
    .end array-data

    .line 57
    :array_2
    .array-data 0x4
        0x59t 0x0t 0x4t 0x1t
        0x5at 0x0t 0x4t 0x1t
        0x5bt 0x0t 0x4t 0x1t
        0x5ct 0x0t 0x4t 0x1t
        0x5dt 0x0t 0x4t 0x1t
        0x5et 0x0t 0x4t 0x1t
        0x5ft 0x0t 0x4t 0x1t
    .end array-data

    .line 66
    :array_3
    .array-data 0x4
        0x60t 0x0t 0x4t 0x1t
        0x61t 0x0t 0x4t 0x1t
        0x62t 0x0t 0x4t 0x1t
        0x63t 0x0t 0x4t 0x1t
        0x64t 0x0t 0x4t 0x1t
        0x65t 0x0t 0x4t 0x1t
        0x66t 0x0t 0x4t 0x1t
    .end array-data

    .line 75
    :array_4
    .array-data 0x4
        0x1bt 0x0t 0x4t 0x1t
        0x1ct 0x0t 0x4t 0x1t
        0x1dt 0x0t 0x4t 0x1t
        0x1et 0x0t 0x4t 0x1t
        0x1ft 0x0t 0x4t 0x1t
        0x20t 0x0t 0x4t 0x1t
        0x21t 0x0t 0x4t 0x1t
        0x22t 0x0t 0x4t 0x1t
        0x23t 0x0t 0x4t 0x1t
        0x24t 0x0t 0x4t 0x1t
        0x25t 0x0t 0x4t 0x1t
        0x26t 0x0t 0x4t 0x1t
    .end array-data

    .line 89
    :array_5
    .array-data 0x4
        0x27t 0x0t 0x4t 0x1t
        0x28t 0x0t 0x4t 0x1t
        0x29t 0x0t 0x4t 0x1t
        0x2at 0x0t 0x4t 0x1t
        0x2bt 0x0t 0x4t 0x1t
        0x2ct 0x0t 0x4t 0x1t
        0x2dt 0x0t 0x4t 0x1t
        0x2et 0x0t 0x4t 0x1t
        0x2ft 0x0t 0x4t 0x1t
        0x30t 0x0t 0x4t 0x1t
        0x31t 0x0t 0x4t 0x1t
        0x32t 0x0t 0x4t 0x1t
    .end array-data

    .line 103
    :array_6
    .array-data 0x4
        0x33t 0x0t 0x4t 0x1t
        0x34t 0x0t 0x4t 0x1t
        0x35t 0x0t 0x4t 0x1t
        0x36t 0x0t 0x4t 0x1t
        0x37t 0x0t 0x4t 0x1t
        0x38t 0x0t 0x4t 0x1t
        0x39t 0x0t 0x4t 0x1t
        0x3at 0x0t 0x4t 0x1t
        0x3bt 0x0t 0x4t 0x1t
        0x3ct 0x0t 0x4t 0x1t
        0x3dt 0x0t 0x4t 0x1t
        0x3et 0x0t 0x4t 0x1t
    .end array-data

    .line 117
    :array_7
    .array-data 0x4
        0x3ft 0x0t 0x4t 0x1t
        0x40t 0x0t 0x4t 0x1t
        0x41t 0x0t 0x4t 0x1t
        0x42t 0x0t 0x4t 0x1t
        0x43t 0x0t 0x4t 0x1t
        0x44t 0x0t 0x4t 0x1t
        0x45t 0x0t 0x4t 0x1t
        0x46t 0x0t 0x4t 0x1t
        0x47t 0x0t 0x4t 0x1t
        0x48t 0x0t 0x4t 0x1t
        0x49t 0x0t 0x4t 0x1t
        0x4at 0x0t 0x4t 0x1t
    .end array-data

    .line 131
    :array_8
    .array-data 0x4
        0x67t 0x0t 0x4t 0x1t
        0x68t 0x0t 0x4t 0x1t
    .end array-data

    .line 204
    :array_9
    .array-data 0x4
        0x90t 0x0t 0x4t 0x1t
        0x91t 0x0t 0x4t 0x1t
        0x9dt 0x0t 0x4t 0x1t
        0x9ft 0x0t 0x4t 0x1t
        0x92t 0x0t 0x4t 0x1t
        0x94t 0x0t 0x4t 0x1t
        0x96t 0x0t 0x4t 0x1t
        0x98t 0x0t 0x4t 0x1t
        0x82t 0x0t 0x4t 0x1t
        0x83t 0x0t 0x4t 0x1t
        0x84t 0x0t 0x4t 0x1t
        0x85t 0x0t 0x4t 0x1t
        0x87t 0x0t 0x4t 0x1t
        0x88t 0x0t 0x4t 0x1t
        0x89t 0x0t 0x4t 0x1t
        0x86t 0x0t 0x4t 0x1t
    .end array-data

    .line 230
    :array_a
    .array-data 0x4
        0x9bt 0x0t 0x4t 0x1t
        0x9ct 0x0t 0x4t 0x1t
        0x9et 0x0t 0x4t 0x1t
        0x9at 0x0t 0x4t 0x1t
        0x93t 0x0t 0x4t 0x1t
        0x95t 0x0t 0x4t 0x1t
        0x97t 0x0t 0x4t 0x1t
        0x99t 0x0t 0x4t 0x1t
        0x82t 0x0t 0x4t 0x1t
        0x83t 0x0t 0x4t 0x1t
        0x84t 0x0t 0x4t 0x1t
        0x85t 0x0t 0x4t 0x1t
        0x87t 0x0t 0x4t 0x1t
        0x88t 0x0t 0x4t 0x1t
        0x89t 0x0t 0x4t 0x1t
        0x86t 0x0t 0x4t 0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static assign(Ljava/util/Calendar;Ljava/util/Calendar;)V
    .locals 2
    .parameter "lval"
    .parameter "rval"

    .prologue
    .line 934
    invoke-virtual {p0}, Ljava/util/Calendar;->clear()V

    .line 935
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 936
    return-void
.end method

.method public static formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;
    .locals 7
    .parameter "context"
    .parameter "startMillis"
    .parameter "endMillis"
    .parameter "flags"

    .prologue
    .line 959
    new-instance v1, Ljava/util/Formatter;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x32

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    .local v1, f:Ljava/util/Formatter;
    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    .line 960
    invoke-static/range {v0 .. v6}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJI)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJI)Ljava/util/Formatter;
    .locals 28
    .parameter "context"
    .parameter "formatter"
    .parameter "startMillis"
    .parameter "endMillis"
    .parameter "flags"

    .prologue
    .line 1117
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v17

    .line 1118
    .local v17, res:Landroid/content/res/Resources;
    and-int/lit8 v4, p6, 0x1

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    move/from16 v18, v4

    .line 1119
    .local v18, showTime:Z
    :goto_0
    and-int/lit8 v4, p6, 0x2

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    move/from16 v19, v4

    .line 1120
    .local v19, showWeekDay:Z
    :goto_1
    and-int/lit8 v4, p6, 0x4

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    move/from16 v20, v4

    .line 1121
    .local v20, showYear:Z
    :goto_2
    and-int/lit8 v4, p6, 0x8

    if-eqz v4, :cond_5

    const/4 v4, 0x1

    move v15, v4

    .line 1122
    .local v15, noYear:Z
    :goto_3
    move/from16 v0, p6

    and-int/lit16 v0, v0, 0x2000

    move v4, v0

    if-eqz v4, :cond_6

    const/4 v4, 0x1

    move v6, v4

    .line 1123
    .local v6, useUTC:Z
    :goto_4
    const v4, 0x88000

    and-int v4, v4, p6

    if-eqz v4, :cond_7

    const/4 v4, 0x1

    move v5, v4

    .line 1124
    .local v5, abbrevWeekDay:Z
    :goto_5
    const/high16 v4, 0x9

    and-int v4, v4, p6

    if-eqz v4, :cond_8

    const/4 v4, 0x1

    .line 1125
    .local v4, abbrevMonth:Z
    :goto_6
    and-int/lit8 v7, p6, 0x20

    if-eqz v7, :cond_9

    const/4 v7, 0x1

    move v13, v7

    .line 1126
    .local v13, noMonthDay:Z
    :goto_7
    const/high16 v7, 0x2

    and-int v7, v7, p6

    if-eqz v7, :cond_a

    const/4 v7, 0x1

    move/from16 v16, v7

    .line 1131
    .local v16, numericDate:Z
    :goto_8
    cmp-long v7, p2, p4

    if-nez v7, :cond_b

    const/4 v7, 0x1

    move v11, v7

    .line 1133
    .local v11, isInstant:Z
    :goto_9
    if-eqz v6, :cond_c

    new-instance v7, Landroid/text/format/Time;

    const-string v8, "UTC"

    invoke-direct {v7, v8}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    move-object/from16 v21, v7

    .line 1134
    .local v21, startDate:Landroid/text/format/Time;
    :goto_a
    move-object/from16 v0, v21

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 1138
    if-eqz v11, :cond_d

    .line 1139
    move-object/from16 p3, v21

    .line 1140
    .end local p2
    .local p3, endDate:Landroid/text/format/Time;
    const/16 p2, 0x0

    .local p2, dayDistance:I
    move-object/from16 p5, p3

    .line 1163
    .end local v6           #useUTC:Z
    .end local p3           #endDate:Landroid/text/format/Time;
    .end local p4
    .local p5, endDate:Ljava/lang/Object;
    :goto_b
    if-nez v11, :cond_1

    move-object/from16 v0, p5

    iget v0, v0, Landroid/text/format/Time;->hour:I

    move/from16 p3, v0

    move-object/from16 v0, p5

    iget v0, v0, Landroid/text/format/Time;->minute:I

    move/from16 p4, v0

    or-int p3, p3, p4

    move-object/from16 v0, p5

    iget v0, v0, Landroid/text/format/Time;->second:I

    move/from16 p4, v0

    or-int p3, p3, p4

    if-nez p3, :cond_1

    if-eqz v18, :cond_0

    const/16 p3, 0x1

    move/from16 v0, p2

    move/from16 v1, p3

    if-gt v0, v1, :cond_1

    .line 1166
    :cond_0
    move-object/from16 v0, p5

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 p2, v0

    .end local p2           #dayDistance:I
    const/16 p3, 0x1

    sub-int p2, p2, p3

    move/from16 v0, p2

    move-object/from16 v1, p5

    iput v0, v1, Landroid/text/format/Time;->monthDay:I

    .line 1167
    const/16 p2, 0x1

    move-object/from16 v0, p5

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 1170
    :cond_1
    move-object/from16 v0, v21

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v22, v0

    .line 1171
    .local v22, startDay:I
    move-object/from16 v0, v21

    iget v0, v0, Landroid/text/format/Time;->month:I

    move/from16 v23, v0

    .line 1172
    .local v23, startMonthNum:I
    move-object/from16 v0, v21

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 v27, v0

    .line 1174
    .local v27, startYear:I
    move-object/from16 v0, p5

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move v6, v0

    .line 1175
    .local v6, endDay:I
    move-object/from16 v0, p5

    iget v0, v0, Landroid/text/format/Time;->month:I

    move v7, v0

    .line 1176
    .local v7, endMonthNum:I
    move-object/from16 v0, p5

    iget v0, v0, Landroid/text/format/Time;->year:I

    move v10, v0

    .line 1178
    .local v10, endYear:I
    const-string p3, ""

    .line 1179
    .local p3, startWeekDayString:Ljava/lang/String;
    const-string p2, ""

    .line 1180
    .local p2, endWeekDayString:Ljava/lang/String;
    if-eqz v19, :cond_59

    .line 1181
    const-string p2, ""

    .line 1182
    .local p2, weekDayFormat:Ljava/lang/String;
    if-eqz v5, :cond_f

    .line 1183
    const-string p2, "%a"

    .line 1187
    :goto_c
    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1188
    if-eqz v11, :cond_10

    move-object/from16 p2, p3

    .local p2, endWeekDayString:Ljava/lang/String;
    :goto_d
    move-object/from16 v9, p2

    .end local p2           #endWeekDayString:Ljava/lang/String;
    .local v9, endWeekDayString:Ljava/lang/String;
    move-object/from16 v26, p3

    .line 1191
    .end local p3           #startWeekDayString:Ljava/lang/String;
    .local v26, startWeekDayString:Ljava/lang/String;
    :goto_e
    const-string p3, ""

    .line 1192
    .local p3, startTimeString:Ljava/lang/String;
    const-string p2, ""

    .line 1193
    .local p2, endTimeString:Ljava/lang/String;
    if-eqz v18, :cond_58

    .line 1194
    const-string p2, ""

    .line 1195
    .local p2, startTimeFormat:Ljava/lang/String;
    const-string v8, ""

    .line 1196
    .local v8, endTimeFormat:Ljava/lang/String;
    move/from16 v0, p6

    and-int/lit16 v0, v0, 0x80

    move/from16 p2, v0

    if-eqz p2, :cond_11

    .end local p2           #startTimeFormat:Ljava/lang/String;
    const/16 p2, 0x1

    move/from16 p3, p2

    .line 1197
    .local p3, force24Hour:Z
    :goto_f
    and-int/lit8 p2, p6, 0x40

    if-eqz p2, :cond_12

    const/16 p2, 0x1

    .line 1199
    .local p2, force12Hour:Z
    :goto_10
    if-eqz p3, :cond_13

    .line 1200
    const/16 p0, 0x1

    .line 1206
    .local p0, use24Hour:Z
    :goto_11
    if-eqz p0, :cond_15

    .line 1207
    const p0, 0x104006c

    move-object/from16 v0, v17

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local p0           #use24Hour:Z
    move-result-object p0

    .end local v8           #endTimeFormat:Ljava/lang/String;
    .local p0, endTimeFormat:Ljava/lang/String;
    move-object/from16 p2, p0

    .line 1278
    .end local v5           #abbrevWeekDay:Z
    .end local p3           #force24Hour:Z
    .local p2, startTimeFormat:Ljava/lang/String;
    :goto_12
    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1279
    .local p2, startTimeString:Ljava/lang/String;
    if-eqz v11, :cond_29

    move-object/from16 p0, p2

    .local p0, endTimeString:Ljava/lang/String;
    :goto_13
    move-object/from16 p4, p0

    .end local p0           #endTimeString:Ljava/lang/String;
    .local p4, endTimeString:Ljava/lang/String;
    move-object/from16 v12, p2

    .line 1286
    .end local p2           #startTimeString:Ljava/lang/String;
    .local v12, startTimeString:Ljava/lang/String;
    :goto_14
    if-eqz v20, :cond_2a

    move/from16 v5, v20

    .line 1303
    .end local v20           #showYear:Z
    .local v5, showYear:I
    :goto_15
    if-eqz v16, :cond_2e

    .line 1304
    const p0, 0x1040071

    move-object/from16 v0, v17

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .local p0, defaultDateFormat:Ljava/lang/String;
    move-object/from16 p2, p0

    .line 1335
    .end local p0           #defaultDateFormat:Ljava/lang/String;
    .local p2, defaultDateFormat:Ljava/lang/String;
    :goto_16
    if-eqz v19, :cond_37

    .line 1336
    if-eqz v18, :cond_36

    .line 1337
    const p0, 0x104008a

    move-object/from16 v0, v17

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .local p0, fullFormat:Ljava/lang/String;
    move-object/from16 p3, p0

    .line 1349
    .end local p0           #fullFormat:Ljava/lang/String;
    .local p3, fullFormat:Ljava/lang/String;
    :goto_17
    if-eqz v13, :cond_39

    move/from16 v0, v23

    move v1, v7

    if-ne v0, v1, :cond_39

    .line 1351
    const-string p0, "%s"

    const/16 p4, 0x1

    move/from16 v0, p4

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 p4, v0

    .end local p4           #endTimeString:Ljava/lang/String;
    const/16 p5, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    .end local p5           #endDate:Ljava/lang/Object;
    move-result-object p2

    .end local p2           #defaultDateFormat:Ljava/lang/String;
    aput-object p2, p4, p5

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p0

    move-object/from16 p1, p0

    move-object/from16 p0, p3

    .line 1487
    .end local v4           #abbrevMonth:Z
    .end local v5           #showYear:I
    .end local v10           #endYear:I
    .end local v13           #noMonthDay:Z
    .end local p1
    .end local p3           #fullFormat:Ljava/lang/String;
    .end local p6
    .restart local p0       #fullFormat:Ljava/lang/String;
    :goto_18
    return-object p1

    .line 1118
    .end local v6           #endDay:I
    .end local v7           #endMonthNum:I
    .end local v9           #endWeekDayString:Ljava/lang/String;
    .end local v11           #isInstant:Z
    .end local v12           #startTimeString:Ljava/lang/String;
    .end local v15           #noYear:Z
    .end local v16           #numericDate:Z
    .end local v18           #showTime:Z
    .end local v19           #showWeekDay:Z
    .end local v21           #startDate:Landroid/text/format/Time;
    .end local v22           #startDay:I
    .end local v23           #startMonthNum:I
    .end local v26           #startWeekDayString:Ljava/lang/String;
    .end local v27           #startYear:I
    .local p0, context:Landroid/content/Context;
    .restart local p1
    .local p2, startMillis:J
    .local p4, endMillis:J
    .restart local p6
    :cond_2
    const/4 v4, 0x0

    move/from16 v18, v4

    goto/16 :goto_0

    .line 1119
    .restart local v18       #showTime:Z
    :cond_3
    const/4 v4, 0x0

    move/from16 v19, v4

    goto/16 :goto_1

    .line 1120
    .restart local v19       #showWeekDay:Z
    :cond_4
    const/4 v4, 0x0

    move/from16 v20, v4

    goto/16 :goto_2

    .line 1121
    .restart local v20       #showYear:Z
    :cond_5
    const/4 v4, 0x0

    move v15, v4

    goto/16 :goto_3

    .line 1122
    .restart local v15       #noYear:Z
    :cond_6
    const/4 v4, 0x0

    move v6, v4

    goto/16 :goto_4

    .line 1123
    .local v6, useUTC:Z
    :cond_7
    const/4 v4, 0x0

    move v5, v4

    goto/16 :goto_5

    .line 1124
    .local v5, abbrevWeekDay:Z
    :cond_8
    const/4 v4, 0x0

    goto/16 :goto_6

    .line 1125
    .restart local v4       #abbrevMonth:Z
    :cond_9
    const/4 v7, 0x0

    move v13, v7

    goto/16 :goto_7

    .line 1126
    .restart local v13       #noMonthDay:Z
    :cond_a
    const/4 v7, 0x0

    move/from16 v16, v7

    goto/16 :goto_8

    .line 1131
    .restart local v16       #numericDate:Z
    :cond_b
    const/4 v7, 0x0

    move v11, v7

    goto/16 :goto_9

    .line 1133
    .restart local v11       #isInstant:Z
    :cond_c
    new-instance v7, Landroid/text/format/Time;

    invoke-direct {v7}, Landroid/text/format/Time;-><init>()V

    move-object/from16 v21, v7

    goto/16 :goto_a

    .line 1142
    .restart local v21       #startDate:Landroid/text/format/Time;
    :cond_d
    if-eqz v6, :cond_e

    new-instance v6, Landroid/text/format/Time;

    .end local v6           #useUTC:Z
    const-string v7, "UTC"

    invoke-direct {v6, v7}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1143
    .local v6, endDate:Landroid/text/format/Time;
    :goto_19
    move-object v0, v6

    move-wide/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 1144
    move-object/from16 v0, v21

    iget-wide v0, v0, Landroid/text/format/Time;->gmtoff:J

    move-wide v7, v0

    move-wide/from16 v0, p2

    move-wide v2, v7

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result p3

    .line 1145
    .end local p2           #startMillis:J
    .local p3, startJulianDay:I
    iget-wide v7, v6, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v0, p4

    move-wide v2, v7

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result p2

    .line 1146
    .local p2, endJulianDay:I
    sub-int p2, p2, p3

    .local p2, dayDistance:I
    move-object/from16 p5, v6

    .end local p4           #endMillis:J
    .restart local p5       #endDate:Ljava/lang/Object;
    goto/16 :goto_b

    .line 1142
    .end local p3           #startJulianDay:I
    .end local p5           #endDate:Ljava/lang/Object;
    .local v6, useUTC:Z
    .local p2, startMillis:J
    .restart local p4       #endMillis:J
    :cond_e
    new-instance v6, Landroid/text/format/Time;

    .end local v6           #useUTC:Z
    invoke-direct {v6}, Landroid/text/format/Time;-><init>()V

    goto :goto_19

    .line 1185
    .end local p4           #endMillis:J
    .local v6, endDay:I
    .restart local v7       #endMonthNum:I
    .restart local v10       #endYear:I
    .restart local v22       #startDay:I
    .restart local v23       #startMonthNum:I
    .restart local v27       #startYear:I
    .local p2, weekDayFormat:Ljava/lang/String;
    .local p3, startWeekDayString:Ljava/lang/String;
    .restart local p5       #endDate:Ljava/lang/Object;
    :cond_f
    const-string p2, "%A"

    goto/16 :goto_c

    .line 1188
    :cond_10
    move-object/from16 v0, p5

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_d

    .line 1196
    .end local p2           #weekDayFormat:Ljava/lang/String;
    .restart local v8       #endTimeFormat:Ljava/lang/String;
    .restart local v9       #endWeekDayString:Ljava/lang/String;
    .restart local v26       #startWeekDayString:Ljava/lang/String;
    .local p3, startTimeString:Ljava/lang/String;
    :cond_11
    const/16 p2, 0x0

    move/from16 p3, p2

    goto/16 :goto_f

    .line 1197
    .local p3, force24Hour:Z
    :cond_12
    const/16 p2, 0x0

    goto/16 :goto_10

    .line 1201
    .local p2, force12Hour:Z
    :cond_13
    if-eqz p2, :cond_14

    .line 1202
    const/16 p0, 0x0

    .local p0, use24Hour:Z
    goto/16 :goto_11

    .line 1204
    .local p0, context:Landroid/content/Context;
    :cond_14
    invoke-static/range {p0 .. p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result p0

    .local p0, use24Hour:Z
    goto/16 :goto_11

    .line 1210
    :cond_15
    const p0, 0x84000

    and-int p0, p0, p6

    if-eqz p0, :cond_17

    .end local p0           #use24Hour:Z
    const/16 p0, 0x1

    .line 1211
    .local p0, abbrevTime:Z
    :goto_1a
    move/from16 v0, p6

    and-int/lit16 v0, v0, 0x100

    move/from16 p2, v0

    if-eqz p2, :cond_18

    .end local p2           #force12Hour:Z
    const/16 p2, 0x1

    .line 1212
    .local p2, capAMPM:Z
    :goto_1b
    move/from16 v0, p6

    and-int/lit16 v0, v0, 0x200

    move/from16 p3, v0

    if-eqz p3, :cond_19

    .end local p3           #force24Hour:Z
    const/16 p3, 0x1

    move/from16 v14, p3

    .line 1213
    .local v14, noNoon:Z
    :goto_1c
    move/from16 v0, p6

    and-int/lit16 v0, v0, 0x400

    move/from16 p3, v0

    if-eqz p3, :cond_1a

    const/16 p3, 0x1

    move/from16 p4, p3

    .line 1214
    .local p4, capNoon:Z
    :goto_1d
    move/from16 v0, p6

    and-int/lit16 v0, v0, 0x800

    move/from16 p3, v0

    if-eqz p3, :cond_1b

    const/16 p3, 0x1

    move/from16 v12, p3

    .line 1215
    .local v12, noMidnight:Z
    :goto_1e
    move/from16 v0, p6

    and-int/lit16 v0, v0, 0x1000

    move/from16 p3, v0

    if-eqz p3, :cond_1c

    const/16 p3, 0x1

    .line 1217
    .local p3, capMidnight:Z
    :goto_1f
    move-object/from16 v0, v21

    iget v0, v0, Landroid/text/format/Time;->minute:I

    move v5, v0

    .end local v5           #abbrevWeekDay:Z
    if-nez v5, :cond_1d

    move-object/from16 v0, v21

    iget v0, v0, Landroid/text/format/Time;->second:I

    move v5, v0

    if-nez v5, :cond_1d

    const/4 v5, 0x1

    move/from16 v24, v5

    .line 1218
    .local v24, startOnTheHour:Z
    :goto_20
    move-object/from16 v0, p5

    iget v0, v0, Landroid/text/format/Time;->minute:I

    move v5, v0

    if-nez v5, :cond_1e

    move-object/from16 v0, p5

    iget v0, v0, Landroid/text/format/Time;->second:I

    move v5, v0

    if-nez v5, :cond_1e

    const/4 v5, 0x1

    .line 1219
    .local v5, endOnTheHour:Z
    :goto_21
    if-eqz p0, :cond_20

    if-eqz v24, :cond_20

    .line 1220
    if-eqz p2, :cond_1f

    .line 1221
    const v25, 0x10402cb

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 1237
    .local v25, startTimeFormat:Ljava/lang/String;
    :goto_22
    if-nez v11, :cond_57

    .line 1238
    if-eqz p0, :cond_23

    if-eqz v5, :cond_23

    .line 1239
    if-eqz p2, :cond_22

    .line 1240
    const p0, 0x10402cb

    move-object/from16 v0, v17

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local p0           #abbrevTime:Z
    move-result-object p0

    .line 1252
    .end local v8           #endTimeFormat:Ljava/lang/String;
    .local p0, endTimeFormat:Ljava/lang/String;
    :goto_23
    move-object/from16 v0, p5

    iget v0, v0, Landroid/text/format/Time;->hour:I

    move/from16 p2, v0

    .end local p2           #capAMPM:Z
    const/16 v8, 0xc

    move/from16 v0, p2

    move v1, v8

    if-ne v0, v1, :cond_26

    if-eqz v5, :cond_26

    if-nez v14, :cond_26

    .line 1253
    if-eqz p4, :cond_25

    .line 1254
    const p0, 0x1040306

    move-object/from16 v0, v17

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local p0           #endTimeFormat:Ljava/lang/String;
    move-result-object p0

    .line 1267
    .restart local p0       #endTimeFormat:Ljava/lang/String;
    :cond_16
    :goto_24
    move-object/from16 v0, v21

    iget v0, v0, Landroid/text/format/Time;->hour:I

    move/from16 p2, v0

    const/16 p3, 0xc

    move/from16 v0, p2

    move/from16 v1, p3

    if-ne v0, v1, :cond_56

    .end local p3           #capMidnight:Z
    if-eqz v24, :cond_56

    if-nez v14, :cond_56

    .line 1268
    if-eqz p4, :cond_28

    .line 1269
    const p2, 0x1040306

    move-object/from16 v0, v17

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .end local v25           #startTimeFormat:Ljava/lang/String;
    .local p2, startTimeFormat:Ljava/lang/String;
    goto/16 :goto_12

    .line 1210
    .end local v12           #noMidnight:Z
    .end local v14           #noNoon:Z
    .end local v24           #startOnTheHour:Z
    .end local p0           #endTimeFormat:Ljava/lang/String;
    .end local p4           #capNoon:Z
    .local v5, abbrevWeekDay:Z
    .restart local v8       #endTimeFormat:Ljava/lang/String;
    .local p2, force12Hour:Z
    .local p3, force24Hour:Z
    :cond_17
    const/16 p0, 0x0

    goto/16 :goto_1a

    .line 1211
    .end local p2           #force12Hour:Z
    .local p0, abbrevTime:Z
    :cond_18
    const/16 p2, 0x0

    goto/16 :goto_1b

    .line 1212
    .end local p3           #force24Hour:Z
    .local p2, capAMPM:Z
    :cond_19
    const/16 p3, 0x0

    move/from16 v14, p3

    goto/16 :goto_1c

    .line 1213
    .restart local v14       #noNoon:Z
    :cond_1a
    const/16 p3, 0x0

    move/from16 p4, p3

    goto/16 :goto_1d

    .line 1214
    .restart local p4       #capNoon:Z
    :cond_1b
    const/16 p3, 0x0

    move/from16 v12, p3

    goto/16 :goto_1e

    .line 1215
    .restart local v12       #noMidnight:Z
    :cond_1c
    const/16 p3, 0x0

    goto/16 :goto_1f

    .line 1217
    .end local v5           #abbrevWeekDay:Z
    .local p3, capMidnight:Z
    :cond_1d
    const/4 v5, 0x0

    move/from16 v24, v5

    goto/16 :goto_20

    .line 1218
    .restart local v24       #startOnTheHour:Z
    :cond_1e
    const/4 v5, 0x0

    goto/16 :goto_21

    .line 1223
    .local v5, endOnTheHour:Z
    :cond_1f
    const v25, 0x10402ca

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    .restart local v25       #startTimeFormat:Ljava/lang/String;
    goto/16 :goto_22

    .line 1226
    .end local v25           #startTimeFormat:Ljava/lang/String;
    :cond_20
    if-eqz p2, :cond_21

    .line 1227
    const v25, 0x104006e

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    .restart local v25       #startTimeFormat:Ljava/lang/String;
    goto/16 :goto_22

    .line 1229
    .end local v25           #startTimeFormat:Ljava/lang/String;
    :cond_21
    const v25, 0x104006d

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    .restart local v25       #startTimeFormat:Ljava/lang/String;
    goto/16 :goto_22

    .line 1242
    :cond_22
    const p0, 0x10402ca

    move-object/from16 v0, v17

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local p0           #abbrevTime:Z
    move-result-object p0

    .end local v8           #endTimeFormat:Ljava/lang/String;
    .local p0, endTimeFormat:Ljava/lang/String;
    goto/16 :goto_23

    .line 1245
    .restart local v8       #endTimeFormat:Ljava/lang/String;
    .local p0, abbrevTime:Z
    :cond_23
    if-eqz p2, :cond_24

    .line 1246
    const p0, 0x104006e

    move-object/from16 v0, v17

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local p0           #abbrevTime:Z
    move-result-object p0

    .end local v8           #endTimeFormat:Ljava/lang/String;
    .local p0, endTimeFormat:Ljava/lang/String;
    goto/16 :goto_23

    .line 1248
    .restart local v8       #endTimeFormat:Ljava/lang/String;
    .local p0, abbrevTime:Z
    :cond_24
    const p0, 0x104006d

    move-object/from16 v0, v17

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local p0           #abbrevTime:Z
    move-result-object p0

    .end local v8           #endTimeFormat:Ljava/lang/String;
    .local p0, endTimeFormat:Ljava/lang/String;
    goto/16 :goto_23

    .line 1256
    .end local p2           #capAMPM:Z
    :cond_25
    const p0, 0x1040305

    move-object/from16 v0, v17

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local p0           #endTimeFormat:Ljava/lang/String;
    move-result-object p0

    .restart local p0       #endTimeFormat:Ljava/lang/String;
    goto/16 :goto_24

    .line 1258
    :cond_26
    move-object/from16 v0, p5

    iget v0, v0, Landroid/text/format/Time;->hour:I

    move/from16 p2, v0

    if-nez p2, :cond_16

    if-eqz v5, :cond_16

    if-nez v12, :cond_16

    .line 1259
    if-eqz p3, :cond_27

    .line 1260
    const p0, 0x1040308

    move-object/from16 v0, v17

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local p0           #endTimeFormat:Ljava/lang/String;
    move-result-object p0

    .restart local p0       #endTimeFormat:Ljava/lang/String;
    goto/16 :goto_24

    .line 1262
    :cond_27
    const p0, 0x1040307

    move-object/from16 v0, v17

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local p0           #endTimeFormat:Ljava/lang/String;
    move-result-object p0

    .restart local p0       #endTimeFormat:Ljava/lang/String;
    goto/16 :goto_24

    .line 1271
    .end local p3           #capMidnight:Z
    :cond_28
    const p2, 0x1040305

    move-object/from16 v0, v17

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .end local v25           #startTimeFormat:Ljava/lang/String;
    .local p2, startTimeFormat:Ljava/lang/String;
    goto/16 :goto_12

    .line 1279
    .end local v5           #endOnTheHour:Z
    .end local v12           #noMidnight:Z
    .end local v14           #noNoon:Z
    .end local v24           #startOnTheHour:Z
    .end local p4           #capNoon:Z
    .local p2, startTimeString:Ljava/lang/String;
    :cond_29
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_13

    .line 1290
    .end local p0           #endTimeFormat:Ljava/lang/String;
    .end local p2           #startTimeString:Ljava/lang/String;
    .local v12, startTimeString:Ljava/lang/String;
    .local p4, endTimeString:Ljava/lang/String;
    :cond_2a
    if-eqz v15, :cond_2b

    .line 1292
    const/16 p0, 0x0

    .end local v20           #showYear:Z
    .local p0, showYear:Z
    move/from16 v5, p0

    .local v5, showYear:I
    goto/16 :goto_15

    .line 1293
    .end local v5           #showYear:I
    .end local p0           #showYear:Z
    .restart local v20       #showYear:Z
    :cond_2b
    move/from16 v0, v27

    move v1, v10

    if-eq v0, v1, :cond_2c

    .line 1294
    const/16 p0, 0x1

    .end local v20           #showYear:Z
    .restart local p0       #showYear:Z
    move/from16 v5, p0

    .restart local v5       #showYear:I
    goto/16 :goto_15

    .line 1297
    .end local v5           #showYear:I
    .end local p0           #showYear:Z
    .restart local v20       #showYear:Z
    :cond_2c
    new-instance p0, Landroid/text/format/Time;

    invoke-direct/range {p0 .. p0}, Landroid/text/format/Time;-><init>()V

    .line 1298
    .local p0, currentTime:Landroid/text/format/Time;
    invoke-virtual/range {p0 .. p0}, Landroid/text/format/Time;->setToNow()V

    .line 1299
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 p0, v0

    .end local p0           #currentTime:Landroid/text/format/Time;
    move/from16 v0, v27

    move/from16 v1, p0

    if-eq v0, v1, :cond_2d

    const/16 p0, 0x1

    .end local v20           #showYear:Z
    .local p0, showYear:Z
    :goto_25
    move/from16 v5, p0

    .restart local v5       #showYear:I
    goto/16 :goto_15

    .end local v5           #showYear:I
    .end local p0           #showYear:Z
    .restart local v20       #showYear:Z
    :cond_2d
    const/16 p0, 0x0

    goto :goto_25

    .line 1305
    .end local v20           #showYear:Z
    .restart local v5       #showYear:I
    :cond_2e
    if-eqz v5, :cond_32

    .line 1306
    if-eqz v4, :cond_30

    .line 1307
    if-eqz v13, :cond_2f

    .line 1308
    const p0, 0x104007f

    move-object/from16 v0, v17

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .local p0, defaultDateFormat:Ljava/lang/String;
    move-object/from16 p2, p0

    .end local p0           #defaultDateFormat:Ljava/lang/String;
    .local p2, defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_16

    .line 1310
    .end local p2           #defaultDateFormat:Ljava/lang/String;
    :cond_2f
    const p0, 0x1040079

    move-object/from16 v0, v17

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .restart local p0       #defaultDateFormat:Ljava/lang/String;
    move-object/from16 p2, p0

    .end local p0           #defaultDateFormat:Ljava/lang/String;
    .restart local p2       #defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_16

    .line 1313
    .end local p2           #defaultDateFormat:Ljava/lang/String;
    :cond_30
    if-eqz v13, :cond_31

    .line 1314
    const p0, 0x104007c

    move-object/from16 v0, v17

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .restart local p0       #defaultDateFormat:Ljava/lang/String;
    move-object/from16 p2, p0

    .end local p0           #defaultDateFormat:Ljava/lang/String;
    .restart local p2       #defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_16

    .line 1316
    .end local p2           #defaultDateFormat:Ljava/lang/String;
    :cond_31
    const p0, 0x1040074

    move-object/from16 v0, v17

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .restart local p0       #defaultDateFormat:Ljava/lang/String;
    move-object/from16 p2, p0

    .end local p0           #defaultDateFormat:Ljava/lang/String;
    .restart local p2       #defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_16

    .line 1320
    .end local p2           #defaultDateFormat:Ljava/lang/String;
    :cond_32
    if-eqz v4, :cond_34

    .line 1321
    if-eqz v13, :cond_33

    .line 1322
    const p0, 0x104007e

    move-object/from16 v0, v17

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .restart local p0       #defaultDateFormat:Ljava/lang/String;
    move-object/from16 p2, p0

    .end local p0           #defaultDateFormat:Ljava/lang/String;
    .restart local p2       #defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_16

    .line 1324
    .end local p2           #defaultDateFormat:Ljava/lang/String;
    :cond_33
    const p0, 0x104007d

    move-object/from16 v0, v17

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .restart local p0       #defaultDateFormat:Ljava/lang/String;
    move-object/from16 p2, p0

    .end local p0           #defaultDateFormat:Ljava/lang/String;
    .restart local p2       #defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_16

    .line 1327
    .end local p2           #defaultDateFormat:Ljava/lang/String;
    :cond_34
    if-eqz v13, :cond_35

    .line 1328
    const p0, 0x104007b

    move-object/from16 v0, v17

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .restart local p0       #defaultDateFormat:Ljava/lang/String;
    move-object/from16 p2, p0

    .end local p0           #defaultDateFormat:Ljava/lang/String;
    .restart local p2       #defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_16

    .line 1330
    .end local p2           #defaultDateFormat:Ljava/lang/String;
    :cond_35
    const p0, 0x104007a

    move-object/from16 v0, v17

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .restart local p0       #defaultDateFormat:Ljava/lang/String;
    move-object/from16 p2, p0

    .end local p0           #defaultDateFormat:Ljava/lang/String;
    .restart local p2       #defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_16

    .line 1339
    :cond_36
    const p0, 0x104008b

    move-object/from16 v0, v17

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .local p0, fullFormat:Ljava/lang/String;
    move-object/from16 p3, p0

    .end local p0           #fullFormat:Ljava/lang/String;
    .local p3, fullFormat:Ljava/lang/String;
    goto/16 :goto_17

    .line 1342
    .end local p3           #fullFormat:Ljava/lang/String;
    :cond_37
    if-eqz v18, :cond_38

    .line 1343
    const p0, 0x104008c

    move-object/from16 v0, v17

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .restart local p0       #fullFormat:Ljava/lang/String;
    move-object/from16 p3, p0

    .end local p0           #fullFormat:Ljava/lang/String;
    .restart local p3       #fullFormat:Ljava/lang/String;
    goto/16 :goto_17

    .line 1345
    .end local p3           #fullFormat:Ljava/lang/String;
    :cond_38
    const p0, 0x1040081

    move-object/from16 v0, v17

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .restart local p0       #fullFormat:Ljava/lang/String;
    move-object/from16 p3, p0

    .end local p0           #fullFormat:Ljava/lang/String;
    .restart local p3       #fullFormat:Ljava/lang/String;
    goto/16 :goto_17

    .line 1354
    :cond_39
    move/from16 v0, v27

    move v1, v10

    if-ne v0, v1, :cond_3a

    if-eqz v13, :cond_3b

    .line 1358
    :cond_3a
    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p6

    .line 1359
    .local p6, startDateString:Ljava/lang/String;
    move-object/from16 v0, p5

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1363
    .local p0, endDateString:Ljava/lang/String;
    const/16 p2, 0x6

    move/from16 v0, p2

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 p2, v0

    .end local p2           #defaultDateFormat:Ljava/lang/String;
    const/16 p5, 0x0

    aput-object v26, p2, p5

    .end local p5           #endDate:Ljava/lang/Object;
    const/16 p5, 0x1

    aput-object p6, p2, p5

    const/16 p5, 0x2

    aput-object v12, p2, p5

    const/16 p5, 0x3

    aput-object v9, p2, p5

    const/16 p5, 0x4

    aput-object p0, p2, p5

    const/16 p0, 0x5

    aput-object p4, p2, p0

    .end local p0           #endDateString:Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p0

    move-object/from16 p1, p0

    move-object/from16 p0, p3

    .end local p3           #fullFormat:Ljava/lang/String;
    .local p0, fullFormat:Ljava/lang/String;
    goto/16 :goto_18

    .line 1370
    .end local p0           #fullFormat:Ljava/lang/String;
    .restart local p2       #defaultDateFormat:Ljava/lang/String;
    .restart local p3       #fullFormat:Ljava/lang/String;
    .restart local p5       #endDate:Ljava/lang/Object;
    .local p6, flags:I
    :cond_3b
    if-eqz v16, :cond_40

    .line 1371
    const-string p0, "%m"

    .line 1378
    .local p0, monthFormat:Ljava/lang/String;
    :goto_26
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1379
    .local v8, startMonthString:Ljava/lang/String;
    const-string p3, "%-d"

    .end local p3           #fullFormat:Ljava/lang/String;
    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1380
    .local v4, startMonthDayString:Ljava/lang/String;
    const-string p3, "%Y"

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1382
    .local v10, startYearString:Ljava/lang/String;
    if-eqz v11, :cond_42

    const/16 p0, 0x0

    move-object/from16 p3, p0

    .line 1383
    .end local p0           #monthFormat:Ljava/lang/String;
    .local p3, endMonthString:Ljava/lang/String;
    :goto_27
    if-eqz v11, :cond_43

    const/16 p0, 0x0

    .line 1384
    .local p0, endMonthDayString:Ljava/lang/String;
    :goto_28
    if-eqz v11, :cond_44

    const/16 p5, 0x0

    .line 1386
    .end local v13           #noMonthDay:Z
    .local p5, endYearString:Ljava/lang/String;
    :goto_29
    move/from16 v0, v23

    move v1, v7

    if-eq v0, v1, :cond_45

    .line 1392
    const/16 p2, 0x0

    .line 1393
    .local p2, index:I
    if-eqz v19, :cond_3c

    const/16 p2, 0x1

    .line 1394
    :cond_3c
    if-eqz v5, :cond_3d

    add-int/lit8 p2, p2, 0x2

    .line 1395
    :cond_3d
    if-eqz v18, :cond_3e

    add-int/lit8 p2, p2, 0x4

    .line 1396
    :cond_3e
    if-eqz v16, :cond_3f

    add-int/lit8 p2, p2, 0x8

    .line 1397
    :cond_3f
    sget-object p6, Landroid/text/format/DateUtils;->sameYearTable:[I

    .end local p6           #flags:I
    aget p2, p6, p2

    .line 1398
    .local p2, resId:I
    move-object/from16 v0, v17

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 1402
    .local p2, fullFormat:Ljava/lang/String;
    const/16 p6, 0xa

    move/from16 v0, p6

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 p6, v0

    const/4 v5, 0x0

    aput-object v26, p6, v5

    .end local v5           #showYear:I
    const/4 v5, 0x1

    aput-object v8, p6, v5

    const/4 v5, 0x2

    aput-object v4, p6, v5

    const/4 v4, 0x3

    aput-object v10, p6, v4

    .end local v4           #startMonthDayString:Ljava/lang/String;
    const/4 v4, 0x4

    aput-object v12, p6, v4

    const/4 v4, 0x5

    aput-object v9, p6, v4

    const/4 v4, 0x6

    aput-object p3, p6, v4

    const/16 p3, 0x7

    aput-object p0, p6, p3

    .end local p3           #endMonthString:Ljava/lang/String;
    const/16 p0, 0x8

    aput-object p5, p6, p0

    .end local p0           #endMonthDayString:Ljava/lang/String;
    const/16 p0, 0x9

    aput-object p4, p6, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p6

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p0

    move-object/from16 p1, p0

    move-object/from16 p0, p2

    .end local p2           #fullFormat:Ljava/lang/String;
    .local p0, fullFormat:Ljava/lang/String;
    goto/16 :goto_18

    .line 1372
    .end local v8           #startMonthString:Ljava/lang/String;
    .end local p0           #fullFormat:Ljava/lang/String;
    .local v4, abbrevMonth:Z
    .restart local v5       #showYear:I
    .local v10, endYear:I
    .restart local v13       #noMonthDay:Z
    .local p2, defaultDateFormat:Ljava/lang/String;
    .local p3, fullFormat:Ljava/lang/String;
    .local p5, endDate:Ljava/lang/Object;
    .restart local p6       #flags:I
    :cond_40
    if-eqz v4, :cond_41

    .line 1373
    const p0, 0x10400a0

    move-object/from16 v0, v17

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .local p0, monthFormat:Ljava/lang/String;
    goto/16 :goto_26

    .line 1376
    .end local p0           #monthFormat:Ljava/lang/String;
    :cond_41
    const-string p0, "%B"

    .restart local p0       #monthFormat:Ljava/lang/String;
    goto/16 :goto_26

    .line 1382
    .end local p3           #fullFormat:Ljava/lang/String;
    .local v4, startMonthDayString:Ljava/lang/String;
    .restart local v8       #startMonthString:Ljava/lang/String;
    .local v10, startYearString:Ljava/lang/String;
    :cond_42
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    move-object/from16 p3, p0

    goto/16 :goto_27

    .line 1383
    .end local p0           #monthFormat:Ljava/lang/String;
    .local p3, endMonthString:Ljava/lang/String;
    :cond_43
    const-string p0, "%-d"

    move-object/from16 v0, p5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_28

    .line 1384
    .local p0, endMonthDayString:Ljava/lang/String;
    :cond_44
    const-string v13, "%Y"

    .end local v13           #noMonthDay:Z
    move-object/from16 v0, p5

    move-object v1, v13

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    goto/16 :goto_29

    .line 1409
    .local p5, endYearString:Ljava/lang/String;
    :cond_45
    move/from16 v0, v22

    move v1, v6

    if-eq v0, v1, :cond_4a

    .line 1411
    const/16 p2, 0x0

    .line 1412
    .local p2, index:I
    if-eqz v19, :cond_46

    const/16 p2, 0x1

    .line 1413
    :cond_46
    if-eqz v5, :cond_47

    add-int/lit8 p2, p2, 0x2

    .line 1414
    :cond_47
    if-eqz v18, :cond_48

    add-int/lit8 p2, p2, 0x4

    .line 1415
    :cond_48
    if-eqz v16, :cond_49

    add-int/lit8 p2, p2, 0x8

    .line 1416
    :cond_49
    sget-object p6, Landroid/text/format/DateUtils;->sameMonthTable:[I

    .end local p6           #flags:I
    aget p2, p6, p2

    .line 1417
    .local p2, resId:I
    move-object/from16 v0, v17

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 1421
    .local p2, fullFormat:Ljava/lang/String;
    const/16 p6, 0xa

    move/from16 v0, p6

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 p6, v0

    const/4 v5, 0x0

    aput-object v26, p6, v5

    .end local v5           #showYear:I
    const/4 v5, 0x1

    aput-object v8, p6, v5

    const/4 v5, 0x2

    aput-object v4, p6, v5

    const/4 v4, 0x3

    aput-object v10, p6, v4

    .end local v4           #startMonthDayString:Ljava/lang/String;
    const/4 v4, 0x4

    aput-object v12, p6, v4

    const/4 v4, 0x5

    aput-object v9, p6, v4

    const/4 v4, 0x6

    aput-object p3, p6, v4

    const/16 p3, 0x7

    aput-object p0, p6, p3

    .end local p3           #endMonthString:Ljava/lang/String;
    const/16 p0, 0x8

    aput-object p5, p6, p0

    .end local p0           #endMonthDayString:Ljava/lang/String;
    const/16 p0, 0x9

    aput-object p4, p6, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p6

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p0

    move-object/from16 p1, p0

    move-object/from16 p0, p2

    .end local p2           #fullFormat:Ljava/lang/String;
    .local p0, fullFormat:Ljava/lang/String;
    goto/16 :goto_18

    .line 1429
    .restart local v4       #startMonthDayString:Ljava/lang/String;
    .restart local v5       #showYear:I
    .local p0, endMonthDayString:Ljava/lang/String;
    .local p2, defaultDateFormat:Ljava/lang/String;
    .restart local p3       #endMonthString:Ljava/lang/String;
    .restart local p6       #flags:I
    :cond_4a
    and-int/lit8 p0, p6, 0x10

    if-eqz p0, :cond_4b

    .end local p0           #endMonthDayString:Ljava/lang/String;
    const/16 p0, 0x1

    .line 1432
    .local p0, showDate:Z
    :goto_2a
    if-nez v18, :cond_55

    if-nez p0, :cond_55

    if-nez v19, :cond_55

    const/16 p0, 0x1

    move/from16 p5, p0

    .line 1435
    .end local p0           #showDate:Z
    .local p5, showDate:I
    :goto_2b
    const-string p0, ""

    .line 1436
    .local p0, timeString:Ljava/lang/String;
    if-eqz v18, :cond_54

    .line 1439
    if-eqz v11, :cond_4c

    .line 1442
    move-object/from16 p0, v12

    move-object/from16 p4, p0

    .line 1452
    .end local p0           #timeString:Ljava/lang/String;
    .end local p3           #endMonthString:Ljava/lang/String;
    .end local p6           #flags:I
    .local p4, timeString:Ljava/lang/String;
    :goto_2c
    const-string p3, ""

    .line 1453
    .local p3, fullFormat:Ljava/lang/String;
    const-string p0, ""

    .line 1454
    .local p0, dateString:Ljava/lang/String;
    if-eqz p5, :cond_50

    .line 1455
    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1456
    if-eqz v19, :cond_4e

    .line 1457
    if-eqz v18, :cond_4d

    .line 1459
    const p2, 0x104008d

    move-object/from16 v0, v17

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local p2           #defaultDateFormat:Ljava/lang/String;
    move-result-object p2

    .line 1487
    .end local p3           #fullFormat:Ljava/lang/String;
    .local p2, fullFormat:Ljava/lang/String;
    :goto_2d
    const/16 p3, 0x3

    move/from16 v0, p3

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 p3, v0

    const/16 p5, 0x0

    aput-object p4, p3, p5

    .end local p5           #showDate:I
    const/16 p4, 0x1

    aput-object v26, p3, p4

    .end local p4           #timeString:Ljava/lang/String;
    const/16 p4, 0x2

    aput-object p0, p3, p4

    invoke-virtual/range {p1 .. p3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p0

    .end local p0           #dateString:Ljava/lang/String;
    move-object/from16 p1, p0

    move-object/from16 p0, p2

    .end local p2           #fullFormat:Ljava/lang/String;
    .local p0, fullFormat:Ljava/lang/String;
    goto/16 :goto_18

    .line 1429
    .end local p0           #fullFormat:Ljava/lang/String;
    .local p2, defaultDateFormat:Ljava/lang/String;
    .local p3, endMonthString:Ljava/lang/String;
    .local p4, endTimeString:Ljava/lang/String;
    .local p5, endYearString:Ljava/lang/String;
    .restart local p6       #flags:I
    :cond_4b
    const/16 p0, 0x0

    goto :goto_2a

    .line 1445
    .local p0, timeString:Ljava/lang/String;
    .local p5, showDate:I
    :cond_4c
    const p0, 0x1040080

    move-object/from16 v0, v17

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local p0           #timeString:Ljava/lang/String;
    move-result-object p0

    .line 1447
    .local p0, timeFormat:Ljava/lang/String;
    const/16 p3, 0x2

    move/from16 v0, p3

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 p3, v0

    .end local p3           #endMonthString:Ljava/lang/String;
    const/16 p6, 0x0

    aput-object v12, p3, p6

    .end local p6           #flags:I
    const/16 p6, 0x1

    aput-object p4, p3, p6

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .local p0, timeString:Ljava/lang/String;
    move-object/from16 p4, p0

    .end local p0           #timeString:Ljava/lang/String;
    .local p4, timeString:Ljava/lang/String;
    goto :goto_2c

    .line 1462
    .local p0, dateString:Ljava/lang/String;
    .local p3, fullFormat:Ljava/lang/String;
    :cond_4d
    const p2, 0x104008e

    move-object/from16 v0, v17

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local p2           #defaultDateFormat:Ljava/lang/String;
    move-result-object p2

    .end local p3           #fullFormat:Ljava/lang/String;
    .local p2, fullFormat:Ljava/lang/String;
    goto :goto_2d

    .line 1465
    .local p2, defaultDateFormat:Ljava/lang/String;
    .restart local p3       #fullFormat:Ljava/lang/String;
    :cond_4e
    if-eqz v18, :cond_4f

    .line 1467
    const p2, 0x1040078

    move-object/from16 v0, v17

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local p2           #defaultDateFormat:Ljava/lang/String;
    move-result-object p2

    .end local p3           #fullFormat:Ljava/lang/String;
    .local p2, fullFormat:Ljava/lang/String;
    goto :goto_2d

    .line 1470
    .local p2, defaultDateFormat:Ljava/lang/String;
    .restart local p3       #fullFormat:Ljava/lang/String;
    :cond_4f
    const-string p2, "%s"

    .end local p2           #defaultDateFormat:Ljava/lang/String;
    const/16 p4, 0x1

    move/from16 v0, p4

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 p4, v0

    .end local p4           #timeString:Ljava/lang/String;
    const/16 p5, 0x0

    aput-object p0, p4, p5

    .end local p5           #showDate:I
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p0

    .end local p0           #dateString:Ljava/lang/String;
    move-object/from16 p1, p0

    move-object/from16 p0, p3

    .end local p3           #fullFormat:Ljava/lang/String;
    .local p0, fullFormat:Ljava/lang/String;
    goto/16 :goto_18

    .line 1473
    .local p0, dateString:Ljava/lang/String;
    .restart local p2       #defaultDateFormat:Ljava/lang/String;
    .restart local p3       #fullFormat:Ljava/lang/String;
    .restart local p4       #timeString:Ljava/lang/String;
    .restart local p5       #showDate:I
    :cond_50
    if-eqz v19, :cond_52

    .line 1474
    if-eqz v18, :cond_51

    .line 1476
    const p2, 0x104008f

    move-object/from16 v0, v17

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local p2           #defaultDateFormat:Ljava/lang/String;
    move-result-object p2

    .end local p3           #fullFormat:Ljava/lang/String;
    .local p2, fullFormat:Ljava/lang/String;
    goto/16 :goto_2d

    .line 1479
    .local p2, defaultDateFormat:Ljava/lang/String;
    .restart local p3       #fullFormat:Ljava/lang/String;
    :cond_51
    const-string p0, "%s"

    .end local p0           #dateString:Ljava/lang/String;
    const/16 p2, 0x1

    move/from16 v0, p2

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 p2, v0

    .end local p2           #defaultDateFormat:Ljava/lang/String;
    const/16 p4, 0x0

    aput-object v26, p2, p4

    .end local p4           #timeString:Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p0

    move-object/from16 p1, p0

    move-object/from16 p0, p3

    .end local p3           #fullFormat:Ljava/lang/String;
    .local p0, fullFormat:Ljava/lang/String;
    goto/16 :goto_18

    .line 1481
    .local p0, dateString:Ljava/lang/String;
    .restart local p2       #defaultDateFormat:Ljava/lang/String;
    .restart local p3       #fullFormat:Ljava/lang/String;
    .restart local p4       #timeString:Ljava/lang/String;
    :cond_52
    if-eqz v18, :cond_53

    .line 1482
    const-string p0, "%s"

    .end local p0           #dateString:Ljava/lang/String;
    const/16 p2, 0x1

    move/from16 v0, p2

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 p2, v0

    .end local p2           #defaultDateFormat:Ljava/lang/String;
    const/16 p5, 0x0

    aput-object p4, p2, p5

    .end local p5           #showDate:I
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p0

    move-object/from16 p1, p0

    move-object/from16 p0, p3

    .end local p3           #fullFormat:Ljava/lang/String;
    .local p0, fullFormat:Ljava/lang/String;
    goto/16 :goto_18

    .local p0, dateString:Ljava/lang/String;
    .restart local p2       #defaultDateFormat:Ljava/lang/String;
    .restart local p3       #fullFormat:Ljava/lang/String;
    .restart local p5       #showDate:I
    :cond_53
    move-object/from16 p2, p3

    .end local p3           #fullFormat:Ljava/lang/String;
    .local p2, fullFormat:Ljava/lang/String;
    goto/16 :goto_2d

    .local p0, timeString:Ljava/lang/String;
    .local p2, defaultDateFormat:Ljava/lang/String;
    .local p3, endMonthString:Ljava/lang/String;
    .local p4, endTimeString:Ljava/lang/String;
    .restart local p6       #flags:I
    :cond_54
    move-object/from16 p4, p0

    .end local p0           #timeString:Ljava/lang/String;
    .local p4, timeString:Ljava/lang/String;
    goto/16 :goto_2c

    .local p0, showDate:Z
    .local p4, endTimeString:Ljava/lang/String;
    .local p5, endYearString:Ljava/lang/String;
    :cond_55
    move/from16 p5, p0

    .local p5, showDate:I
    goto/16 :goto_2b

    .end local v8           #startMonthString:Ljava/lang/String;
    .end local p2           #defaultDateFormat:Ljava/lang/String;
    .end local p3           #endMonthString:Ljava/lang/String;
    .local v4, abbrevMonth:Z
    .local v5, endOnTheHour:Z
    .local v10, endYear:I
    .local v12, noMidnight:Z
    .restart local v13       #noMonthDay:Z
    .restart local v14       #noNoon:Z
    .restart local v20       #showYear:Z
    .restart local v24       #startOnTheHour:Z
    .restart local v25       #startTimeFormat:Ljava/lang/String;
    .local p0, endTimeFormat:Ljava/lang/String;
    .local p4, capNoon:Z
    .local p5, endDate:Ljava/lang/Object;
    :cond_56
    move-object/from16 p2, v25

    .end local v25           #startTimeFormat:Ljava/lang/String;
    .local p2, startTimeFormat:Ljava/lang/String;
    goto/16 :goto_12

    .local v8, endTimeFormat:Ljava/lang/String;
    .restart local v25       #startTimeFormat:Ljava/lang/String;
    .local p0, abbrevTime:Z
    .local p2, capAMPM:Z
    .local p3, capMidnight:Z
    :cond_57
    move-object/from16 p0, v8

    .end local v8           #endTimeFormat:Ljava/lang/String;
    .local p0, endTimeFormat:Ljava/lang/String;
    goto/16 :goto_24

    .end local v12           #noMidnight:Z
    .end local v14           #noNoon:Z
    .end local v24           #startOnTheHour:Z
    .end local v25           #startTimeFormat:Ljava/lang/String;
    .end local p4           #capNoon:Z
    .local v5, abbrevWeekDay:Z
    .local p0, context:Landroid/content/Context;
    .local p2, endTimeString:Ljava/lang/String;
    .local p3, startTimeString:Ljava/lang/String;
    :cond_58
    move-object/from16 p4, p2

    .end local p2           #endTimeString:Ljava/lang/String;
    .local p4, endTimeString:Ljava/lang/String;
    move-object/from16 v12, p3

    .end local p3           #startTimeString:Ljava/lang/String;
    .local v12, startTimeString:Ljava/lang/String;
    goto/16 :goto_14

    .end local v9           #endWeekDayString:Ljava/lang/String;
    .end local v12           #startTimeString:Ljava/lang/String;
    .end local v26           #startWeekDayString:Ljava/lang/String;
    .end local p4           #endTimeString:Ljava/lang/String;
    .local p2, endWeekDayString:Ljava/lang/String;
    .local p3, startWeekDayString:Ljava/lang/String;
    :cond_59
    move-object/from16 v9, p2

    .end local p2           #endWeekDayString:Ljava/lang/String;
    .restart local v9       #endWeekDayString:Ljava/lang/String;
    move-object/from16 v26, p3

    .end local p3           #startWeekDayString:Ljava/lang/String;
    .restart local v26       #startWeekDayString:Ljava/lang/String;
    goto/16 :goto_e
.end method

.method public static formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "millis"
    .parameter "flags"

    .prologue
    .line 1533
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p1

    move v5, p3

    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatElapsedTime(J)Ljava/lang/String;
    .locals 1
    .parameter "elapsedSeconds"

    .prologue
    .line 648
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Landroid/text/format/DateUtils;->formatElapsedTime(Ljava/lang/StringBuilder;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatElapsedTime(Ljava/lang/StringBuilder;J)Ljava/lang/String;
    .locals 14
    .parameter "recycle"
    .parameter "elapsedSeconds"

    .prologue
    .line 659
    invoke-static {}, Landroid/text/format/DateUtils;->initFormatStrings()V

    .line 661
    const-wide/16 v2, 0x0

    .line 662
    .local v2, hours:J
    const-wide/16 v4, 0x0

    .line 663
    .local v4, minutes:J
    const-wide/16 v6, 0x0

    .line 665
    .local v6, seconds:J
    const-wide/16 v0, 0xe10

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 666
    const-wide/16 v0, 0xe10

    div-long v2, p1, v0

    .line 667
    const-wide/16 v0, 0xe10

    mul-long/2addr v0, v2

    sub-long/2addr p1, v0

    .line 669
    :cond_0
    const-wide/16 v0, 0x3c

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    .line 670
    const-wide/16 v0, 0x3c

    div-long v4, p1, v0

    .line 671
    const-wide/16 v0, 0x3c

    mul-long/2addr v0, v4

    sub-long/2addr p1, v0

    .line 673
    :cond_1
    move-wide v6, p1

    .line 676
    const-wide/16 p1, 0x0

    cmp-long p1, v2, p1

    if-lez p1, :cond_2

    .line 677
    .end local p1
    sget-object v1, Landroid/text/format/DateUtils;->sElapsedFormatHMMSS:Ljava/lang/String;

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Landroid/text/format/DateUtils;->formatElapsedTime(Ljava/lang/StringBuilder;Ljava/lang/String;JJJ)Ljava/lang/String;

    move-result-object p0

    .line 679
    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_2
    sget-object v9, Landroid/text/format/DateUtils;->sElapsedFormatMMSS:Ljava/lang/String;

    move-object v8, p0

    move-wide v10, v4

    move-wide v12, v6

    invoke-static/range {v8 .. v13}, Landroid/text/format/DateUtils;->formatElapsedTime(Ljava/lang/StringBuilder;Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static formatElapsedTime(Ljava/lang/StringBuilder;Ljava/lang/String;JJ)Ljava/lang/String;
    .locals 7
    .parameter "recycle"
    .parameter "format"
    .parameter "minutes"
    .parameter "seconds"

    .prologue
    const/16 v6, 0x30

    const/4 v5, 0x0

    const-wide/16 v3, 0xa

    .line 721
    const-string v1, "%1$02d:%2$02d"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 722
    move-object v0, p0

    .line 723
    .local v0, sb:Ljava/lang/StringBuilder;
    if-nez v0, :cond_0

    .line 724
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0           #sb:Ljava/lang/StringBuilder;
    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 728
    .restart local v0       #sb:Ljava/lang/StringBuilder;
    :goto_0
    cmp-long v1, p2, v3

    if-gez v1, :cond_1

    .line 729
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 733
    :goto_1
    rem-long v1, p2, v3

    invoke-static {v1, v2}, Landroid/text/format/DateUtils;->toDigitChar(J)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 734
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 735
    cmp-long v1, p4, v3

    if-gez v1, :cond_2

    .line 736
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 740
    :goto_2
    rem-long v1, p4, v3

    invoke-static {v1, v2}, Landroid/text/format/DateUtils;->toDigitChar(J)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 741
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 743
    .end local v0           #sb:Ljava/lang/StringBuilder;
    :goto_3
    return-object v1

    .line 726
    .restart local v0       #sb:Ljava/lang/StringBuilder;
    :cond_0
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

    .line 731
    :cond_1
    div-long v1, p2, v3

    invoke-static {v1, v2}, Landroid/text/format/DateUtils;->toDigitChar(J)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 738
    :cond_2
    div-long v1, p4, v3

    invoke-static {v1, v2}, Landroid/text/format/DateUtils;->toDigitChar(J)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 743
    .end local v0           #sb:Ljava/lang/StringBuilder;
    :cond_3
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x1

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3
.end method

.method private static formatElapsedTime(Ljava/lang/StringBuilder;Ljava/lang/String;JJJ)Ljava/lang/String;
    .locals 8
    .parameter "recycle"
    .parameter "format"
    .parameter "hours"
    .parameter "minutes"
    .parameter "seconds"

    .prologue
    const/16 v7, 0x3a

    const/16 v6, 0x30

    const/4 v5, 0x0

    const-wide/16 v3, 0xa

    .line 688
    const-string v1, "%1$d:%2$02d:%3$02d"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 689
    move-object v0, p0

    .line 690
    .local v0, sb:Ljava/lang/StringBuilder;
    if-nez v0, :cond_0

    .line 691
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0           #sb:Ljava/lang/StringBuilder;
    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 695
    .restart local v0       #sb:Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 696
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 697
    cmp-long v1, p4, v3

    if-gez v1, :cond_1

    .line 698
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 702
    :goto_1
    rem-long v1, p4, v3

    invoke-static {v1, v2}, Landroid/text/format/DateUtils;->toDigitChar(J)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 703
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 704
    cmp-long v1, p6, v3

    if-gez v1, :cond_2

    .line 705
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 709
    :goto_2
    rem-long v1, p6, v3

    invoke-static {v1, v2}, Landroid/text/format/DateUtils;->toDigitChar(J)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 710
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 712
    .end local v0           #sb:Ljava/lang/StringBuilder;
    :goto_3
    return-object v1

    .line 693
    .restart local v0       #sb:Ljava/lang/StringBuilder;
    :cond_0
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

    .line 700
    :cond_1
    div-long v1, p4, v3

    invoke-static {v1, v2}, Landroid/text/format/DateUtils;->toDigitChar(J)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 707
    :cond_2
    div-long v1, p6, v3

    invoke-static {v1, v2}, Landroid/text/format/DateUtils;->toDigitChar(J)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 712
    .end local v0           #sb:Ljava/lang/StringBuilder;
    :cond_3
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x1

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3
.end method

.method public static final formatSameDayTime(JJII)Ljava/lang/CharSequence;
    .locals 8
    .parameter "then"
    .parameter "now"
    .parameter "dateStyle"
    .parameter "timeStyle"

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 770
    new-instance v2, Ljava/util/GregorianCalendar;

    invoke-direct {v2}, Ljava/util/GregorianCalendar;-><init>()V

    .line 771
    .local v2, thenCal:Ljava/util/Calendar;
    invoke-virtual {v2, p0, p1}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 772
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    .line 773
    .local v3, thenDate:Ljava/util/Date;
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    .line 774
    .local v1, nowCal:Ljava/util/Calendar;
    invoke-virtual {v1, p2, p3}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 778
    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v4, v5, :cond_0

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v4, v5, :cond_0

    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 781
    invoke-static {p5}, Ljava/text/DateFormat;->getTimeInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    .line 785
    .local v0, f:Ljava/text/DateFormat;
    :goto_0
    invoke-virtual {v0, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 783
    .end local v0           #f:Ljava/text/DateFormat;
    :cond_0
    invoke-static {p4}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    .restart local v0       #f:Ljava/text/DateFormat;
    goto :goto_0
.end method

.method public static getAMPMString(I)Ljava/lang/String;
    .locals 3
    .parameter "ampm"

    .prologue
    .line 329
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 330
    .local v0, r:Landroid/content/res/Resources;
    sget-object v1, Landroid/text/format/DateUtils;->sAmPm:[I

    const/4 v2, 0x0

    sub-int v2, p0, v2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getDayOfWeekString(II)Ljava/lang/String;
    .locals 3
    .parameter "dayOfWeek"
    .parameter "abbrev"

    .prologue
    .line 309
    sparse-switch p1, :sswitch_data_0

    .line 315
    sget-object v0, Landroid/text/format/DateUtils;->sDaysMedium:[I

    .line 318
    .local v0, list:[I
    :goto_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 319
    .local v1, r:Landroid/content/res/Resources;
    const/4 v2, 0x1

    sub-int v2, p0, v2

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 310
    .end local v0           #list:[I
    .end local v1           #r:Landroid/content/res/Resources;
    :sswitch_0
    sget-object v0, Landroid/text/format/DateUtils;->sDaysLong:[I

    .restart local v0       #list:[I
    goto :goto_0

    .line 311
    .end local v0           #list:[I
    :sswitch_1
    sget-object v0, Landroid/text/format/DateUtils;->sDaysMedium:[I

    .restart local v0       #list:[I
    goto :goto_0

    .line 312
    .end local v0           #list:[I
    :sswitch_2
    sget-object v0, Landroid/text/format/DateUtils;->sDaysShort:[I

    .restart local v0       #list:[I
    goto :goto_0

    .line 313
    .end local v0           #list:[I
    :sswitch_3
    sget-object v0, Landroid/text/format/DateUtils;->sDaysShort:[I

    .restart local v0       #list:[I
    goto :goto_0

    .line 314
    .end local v0           #list:[I
    :sswitch_4
    sget-object v0, Landroid/text/format/DateUtils;->sDaysShortest:[I

    .restart local v0       #list:[I
    goto :goto_0

    .line 309
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
        0x1e -> :sswitch_2
        0x28 -> :sswitch_3
        0x32 -> :sswitch_4
    .end sparse-switch
.end method

.method public static getMonthString(II)Ljava/lang/String;
    .locals 3
    .parameter "month"
    .parameter "abbrev"

    .prologue
    .line 349
    sparse-switch p1, :sswitch_data_0

    .line 355
    sget-object v0, Landroid/text/format/DateUtils;->sMonthsMedium:[I

    .line 358
    .local v0, list:[I
    :goto_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 359
    .local v1, r:Landroid/content/res/Resources;
    const/4 v2, 0x0

    sub-int v2, p0, v2

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 350
    .end local v0           #list:[I
    .end local v1           #r:Landroid/content/res/Resources;
    :sswitch_0
    sget-object v0, Landroid/text/format/DateUtils;->sMonthsLong:[I

    .restart local v0       #list:[I
    goto :goto_0

    .line 351
    .end local v0           #list:[I
    :sswitch_1
    sget-object v0, Landroid/text/format/DateUtils;->sMonthsMedium:[I

    .restart local v0       #list:[I
    goto :goto_0

    .line 352
    .end local v0           #list:[I
    :sswitch_2
    sget-object v0, Landroid/text/format/DateUtils;->sMonthsMedium:[I

    .restart local v0       #list:[I
    goto :goto_0

    .line 353
    .end local v0           #list:[I
    :sswitch_3
    sget-object v0, Landroid/text/format/DateUtils;->sMonthsMedium:[I

    .restart local v0       #list:[I
    goto :goto_0

    .line 354
    .end local v0           #list:[I
    :sswitch_4
    sget-object v0, Landroid/text/format/DateUtils;->sMonthsShortest:[I

    .restart local v0       #list:[I
    goto :goto_0

    .line 349
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
        0x1e -> :sswitch_2
        0x28 -> :sswitch_3
        0x32 -> :sswitch_4
    .end sparse-switch
.end method

.method public static getRelativeDateTimeString(Landroid/content/Context;JJJI)Ljava/lang/CharSequence;
    .locals 12
    .parameter "c"
    .parameter "time"
    .parameter "minResolution"
    .parameter "transitionResolution"
    .parameter "flags"

    .prologue
    .line 548
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v10

    .line 550
    .local v10, r:Landroid/content/res/Resources;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 551
    .local v8, now:J
    sub-long v0, v8, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    .line 556
    .local v6, duration:J
    const-wide/32 v0, 0x240c8400

    cmp-long v0, p5, v0

    if-lez v0, :cond_1

    .line 557
    const-wide/32 p5, 0x240c8400

    .line 562
    :cond_0
    :goto_0
    const/4 v5, 0x1

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p1

    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v11

    .line 565
    .local v11, timeClause:Ljava/lang/CharSequence;
    cmp-long p5, v6, p5

    if-gez p5, :cond_2

    .end local p5
    move-wide v0, p1

    move-wide v2, v8

    move-wide v4, p3

    move/from16 v6, p7

    .line 566
    invoke-static/range {v0 .. v6}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    .end local v6           #duration:J
    move-result-object p0

    .line 567
    .local p0, relativeClause:Ljava/lang/CharSequence;
    const p1, 0x1040304

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    .end local p1
    const/4 p3, 0x0

    aput-object p0, p2, p3

    .end local p3
    const/4 p0, 0x1

    aput-object v11, p2, p0

    .end local p0           #relativeClause:Ljava/lang/CharSequence;
    invoke-virtual {v10, p1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 573
    .local p0, result:Ljava/lang/String;
    :goto_1
    return-object p0

    .line 558
    .end local v11           #timeClause:Ljava/lang/CharSequence;
    .restart local v6       #duration:J
    .local p0, c:Landroid/content/Context;
    .restart local p1
    .restart local p3
    .restart local p5
    :cond_1
    const-wide/32 v0, 0x5265c00

    cmp-long v0, p5, v0

    if-gez v0, :cond_0

    .line 559
    const-wide/32 p5, 0x5265c00

    goto :goto_0

    .line 569
    .end local p5
    .restart local v11       #timeClause:Ljava/lang/CharSequence;
    :cond_2
    const/4 p3, 0x0

    invoke-static {p0, p1, p2, p3}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(Landroid/content/Context;JZ)Ljava/lang/CharSequence;

    .end local p3
    move-result-object p0

    .line 570
    .local p0, dateClause:Ljava/lang/CharSequence;
    const p1, 0x1040077

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    .end local p1
    const/4 p3, 0x0

    aput-object p0, p2, p3

    const/4 p0, 0x1

    aput-object v11, p2, p0

    .end local p0           #dateClause:Ljava/lang/CharSequence;
    invoke-virtual {v10, p1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .local p0, result:Ljava/lang/String;
    goto :goto_1
.end method

.method private static final getRelativeDayString(Landroid/content/res/Resources;JJ)Ljava/lang/String;
    .locals 4
    .parameter "r"
    .parameter "day"
    .parameter "today"

    .prologue
    .line 587
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 588
    .local v1, startTime:Landroid/text/format/Time;
    invoke-virtual {v1, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 589
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 590
    .local v0, currentTime:Landroid/text/format/Time;
    invoke-virtual {v0, p3, p4}, Landroid/text/format/Time;->set(J)V

    .line 592
    iget-wide v1, v1, Landroid/text/format/Time;->gmtoff:J

    .end local v1           #startTime:Landroid/text/format/Time;
    invoke-static {p1, p2, v1, v2}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v1

    .line 593
    .local v1, startDay:I
    iget-wide v2, v0, Landroid/text/format/Time;->gmtoff:J

    invoke-static {p3, p4, v2, v3}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v0

    .line 595
    .local v0, currentDay:I
    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .end local v0           #currentDay:I
    move-result v0

    .line 596
    .local v0, days:I
    cmp-long p1, p3, p1

    if-lez p1, :cond_0

    .end local p1
    const/4 p1, 0x1

    .line 598
    .local p1, past:Z
    :goto_0
    const/4 p2, 0x1

    if-ne v0, p2, :cond_2

    .line 599
    if-eqz p1, :cond_1

    .line 600
    const p1, 0x1040069

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local p1           #past:Z
    move-result-object p0

    .line 616
    .end local p0
    .end local p3
    :goto_1
    return-object p0

    .line 596
    .restart local p0
    .restart local p3
    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    .line 602
    .restart local p1       #past:Z
    :cond_1
    const p1, 0x104006b

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local p1           #past:Z
    move-result-object p0

    goto :goto_1

    .line 604
    .restart local p1       #past:Z
    :cond_2
    if-nez v0, :cond_3

    .line 605
    const p1, 0x104006a

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local p1           #past:Z
    move-result-object p0

    goto :goto_1

    .line 609
    .restart local p1       #past:Z
    :cond_3
    if-eqz p1, :cond_4

    .line 610
    const p1, 0x10f0004

    .line 615
    .local p1, resId:I
    :goto_2
    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object p0

    .line 616
    .local p0, format:Ljava/lang/String;
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    .end local p1           #resId:I
    const/4 p2, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .end local p3
    aput-object p3, p1, p2

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 612
    .local p0, r:Landroid/content/res/Resources;
    .local p1, past:Z
    .restart local p3
    :cond_4
    const p1, 0x10f0008

    .local p1, resId:I
    goto :goto_2
.end method

.method public static getRelativeTimeSpanString(J)Ljava/lang/CharSequence;
    .locals 6
    .parameter "startTime"

    .prologue
    .line 403
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    move-wide v0, p0

    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJ)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getRelativeTimeSpanString(JJJ)Ljava/lang/CharSequence;
    .locals 7
    .parameter "time"
    .parameter "now"
    .parameter "minResolution"

    .prologue
    .line 419
    const v6, 0x10014

    .local v6, flags:I
    move-wide v0, p0

    move-wide v2, p2

    move-wide v4, p4

    .line 420
    invoke-static/range {v0 .. v6}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;
    .locals 6
    .parameter "time"
    .parameter "now"
    .parameter "minResolution"
    .parameter "flags"

    .prologue
    .line 445
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    .line 446
    .local v2, r:Landroid/content/res/Resources;
    const/high16 v0, 0xc

    and-int/2addr v0, p6

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 448
    .local v0, abbrevRelative:Z
    :goto_0
    cmp-long v1, p2, p0

    if-ltz v1, :cond_1

    const/4 v1, 0x1

    .line 449
    .local v1, past:Z
    :goto_1
    sub-long/2addr p2, p0

    invoke-static {p2, p3}, Ljava/lang/Math;->abs(J)J

    .end local p2
    move-result-wide p2

    .line 453
    .local p2, duration:J
    const-wide/32 v3, 0xea60

    cmp-long v3, p2, v3

    if-gez v3, :cond_5

    const-wide/32 v3, 0xea60

    cmp-long v3, p4, v3

    if-gez v3, :cond_5

    .line 454
    const-wide/16 p0, 0x3e8

    div-long p0, p2, p0

    .line 455
    .local p0, count:J
    if-eqz v1, :cond_3

    .line 456
    if-eqz v0, :cond_2

    .line 457
    const p2, 0x10f0009

    .line 519
    .end local p4
    .local p2, resId:I
    :goto_2
    long-to-int p3, p0

    invoke-virtual {v2, p2, p3}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object p2

    .line 520
    .local p2, format:Ljava/lang/String;
    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 p4, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    .end local p0           #count:J
    aput-object p0, p3, p4

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .end local v0           #abbrevRelative:Z
    .end local v1           #past:Z
    .end local p2           #format:Ljava/lang/String;
    :goto_3
    return-object p0

    .line 446
    .local p0, time:J
    .local p2, now:J
    .restart local p4
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 448
    .restart local v0       #abbrevRelative:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 459
    .restart local v1       #past:Z
    .local p0, count:J
    .local p2, duration:J
    :cond_2
    const/high16 p2, 0x10f

    .local p2, resId:I
    goto :goto_2

    .line 462
    .local p2, duration:J
    :cond_3
    if-eqz v0, :cond_4

    .line 463
    const p2, 0x10f000d

    .local p2, resId:I
    goto :goto_2

    .line 465
    .local p2, duration:J
    :cond_4
    const p2, 0x10f0005

    .local p2, resId:I
    goto :goto_2

    .line 468
    .local p0, time:J
    .local p2, duration:J
    :cond_5
    const-wide/32 v3, 0x36ee80

    cmp-long v3, p2, v3

    if-gez v3, :cond_9

    const-wide/32 v3, 0x36ee80

    cmp-long v3, p4, v3

    if-gez v3, :cond_9

    .line 469
    const-wide/32 p0, 0xea60

    div-long p0, p2, p0

    .line 470
    .local p0, count:J
    if-eqz v1, :cond_7

    .line 471
    if-eqz v0, :cond_6

    .line 472
    const p2, 0x10f000a

    .local p2, resId:I
    goto :goto_2

    .line 474
    .local p2, duration:J
    :cond_6
    const p2, 0x10f0001

    .local p2, resId:I
    goto :goto_2

    .line 477
    .local p2, duration:J
    :cond_7
    if-eqz v0, :cond_8

    .line 478
    const p2, 0x10f000e

    .local p2, resId:I
    goto :goto_2

    .line 480
    .local p2, duration:J
    :cond_8
    const p2, 0x10f0006

    .local p2, resId:I
    goto :goto_2

    .line 483
    .local p0, time:J
    .local p2, duration:J
    :cond_9
    const-wide/32 v3, 0x5265c00

    cmp-long v3, p2, v3

    if-gez v3, :cond_d

    const-wide/32 v3, 0x5265c00

    cmp-long v3, p4, v3

    if-gez v3, :cond_d

    .line 484
    const-wide/32 p0, 0x36ee80

    div-long p0, p2, p0

    .line 485
    .local p0, count:J
    if-eqz v1, :cond_b

    .line 486
    if-eqz v0, :cond_a

    .line 487
    const p2, 0x10f000b

    .local p2, resId:I
    goto :goto_2

    .line 489
    .local p2, duration:J
    :cond_a
    const p2, 0x10f0002

    .local p2, resId:I
    goto :goto_2

    .line 492
    .local p2, duration:J
    :cond_b
    if-eqz v0, :cond_c

    .line 493
    const p2, 0x10f000f

    .local p2, resId:I
    goto :goto_2

    .line 495
    .local p2, duration:J
    :cond_c
    const p2, 0x10f0007

    .local p2, resId:I
    goto :goto_2

    .line 498
    .local p0, time:J
    .local p2, duration:J
    :cond_d
    const-wide/32 v3, 0x240c8400

    cmp-long v3, p2, v3

    if-gez v3, :cond_11

    const-wide/32 v3, 0x240c8400

    cmp-long p4, p4, v3

    if-gez p4, :cond_11

    .line 499
    .end local p4
    const-wide/32 p0, 0x5265c00

    div-long p0, p2, p0

    .line 500
    .local p0, count:J
    if-eqz v1, :cond_f

    .line 501
    if-eqz v0, :cond_e

    .line 502
    const p2, 0x10f000c

    .local p2, resId:I
    goto/16 :goto_2

    .line 504
    .local p2, duration:J
    :cond_e
    const p2, 0x10f0004

    .local p2, resId:I
    goto/16 :goto_2

    .line 507
    .local p2, duration:J
    :cond_f
    if-eqz v0, :cond_10

    .line 508
    const p2, 0x10f0010

    .local p2, resId:I
    goto/16 :goto_2

    .line 510
    .local p2, duration:J
    :cond_10
    const p2, 0x10f0008

    .local p2, resId:I
    goto/16 :goto_2

    .line 516
    .local p0, time:J
    .local p2, duration:J
    :cond_11
    const/4 v0, 0x0

    move-wide v1, p0

    move-wide v3, p0

    move v5, p6

    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    .end local v0           #abbrevRelative:Z
    .end local v1           #past:Z
    move-result-object p0

    goto/16 :goto_3
.end method

.method public static getRelativeTimeSpanString(Landroid/content/Context;J)Ljava/lang/CharSequence;
    .locals 1
    .parameter "c"
    .parameter "millis"

    .prologue
    .line 1599
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(Landroid/content/Context;JZ)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getRelativeTimeSpanString(Landroid/content/Context;JZ)Ljava/lang/CharSequence;
    .locals 6
    .parameter "c"
    .parameter "millis"
    .parameter "withPreposition"

    .prologue
    .line 1553
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1554
    .local v0, now:J
    sub-long v2, v0, p1

    .line 1556
    .local v2, span:J
    sget-object v4, Landroid/text/format/DateUtils;->sNowTime:Landroid/text/format/Time;

    if-nez v4, :cond_0

    .line 1557
    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    sput-object v4, Landroid/text/format/DateUtils;->sNowTime:Landroid/text/format/Time;

    .line 1558
    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    sput-object v4, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    .line 1561
    :cond_0
    sget-object v4, Landroid/text/format/DateUtils;->sNowTime:Landroid/text/format/Time;

    invoke-virtual {v4, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 1562
    sget-object v0, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    .end local v0           #now:J
    invoke-virtual {v0, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 1566
    const-wide/32 v0, 0x5265c00

    cmp-long v0, v2, v0

    if-gez v0, :cond_1

    sget-object v0, Landroid/text/format/DateUtils;->sNowTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->weekDay:I

    sget-object v1, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    iget v1, v1, Landroid/text/format/Time;->weekDay:I

    if-ne v0, v1, :cond_1

    .line 1568
    const/4 v5, 0x1

    .local v5, flags:I
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p1

    .line 1569
    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object p2

    .line 1570
    .end local p1
    .local p2, result:Ljava/lang/String;
    const p1, 0x10402f6

    .line 1584
    .local p1, prepositionId:I
    :goto_0
    if-eqz p3, :cond_3

    .line 1585
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 1586
    .local p0, res:Landroid/content/res/Resources;
    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    .end local p3
    const/4 v0, 0x0

    aput-object p2, p3, v0

    invoke-virtual {p0, p1, p3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 1588
    .end local p2           #result:Ljava/lang/String;
    .local p0, result:Ljava/lang/String;
    :goto_1
    return-object p0

    .line 1571
    .end local v5           #flags:I
    .local p0, c:Landroid/content/Context;
    .local p1, millis:J
    .restart local p3
    :cond_1
    sget-object v0, Landroid/text/format/DateUtils;->sNowTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->year:I

    sget-object v1, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    iget v1, v1, Landroid/text/format/Time;->year:I

    if-eq v0, v1, :cond_2

    .line 1573
    const v5, 0x20014

    .restart local v5       #flags:I
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p1

    .line 1574
    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object p2

    .line 1577
    .end local p1           #millis:J
    .restart local p2       #result:Ljava/lang/String;
    const p1, 0x10402f5

    .line 1578
    .local p1, prepositionId:I
    goto :goto_0

    .line 1580
    .end local v5           #flags:I
    .end local p2           #result:Ljava/lang/String;
    .local p1, millis:J
    :cond_2
    const v5, 0x10010

    .restart local v5       #flags:I
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p1

    .line 1581
    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object p2

    .line 1582
    .end local p1           #millis:J
    .restart local p2       #result:Ljava/lang/String;
    const p1, 0x10402f5

    .local p1, prepositionId:I
    goto :goto_0

    :cond_3
    move-object p0, p2

    .end local p2           #result:Ljava/lang/String;
    .local p0, result:Ljava/lang/String;
    goto :goto_1
.end method

.method public static getStandaloneMonthString(II)Ljava/lang/String;
    .locals 3
    .parameter "month"
    .parameter "abbrev"

    .prologue
    .line 382
    sparse-switch p1, :sswitch_data_0

    .line 389
    sget-object v0, Landroid/text/format/DateUtils;->sMonthsMedium:[I

    .line 392
    .local v0, list:[I
    :goto_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 393
    .local v1, r:Landroid/content/res/Resources;
    const/4 v2, 0x0

    sub-int v2, p0, v2

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 383
    .end local v0           #list:[I
    .end local v1           #r:Landroid/content/res/Resources;
    :sswitch_0
    sget-object v0, Landroid/text/format/DateUtils;->sMonthsStandaloneLong:[I

    .line 384
    .restart local v0       #list:[I
    goto :goto_0

    .line 385
    .end local v0           #list:[I
    :sswitch_1
    sget-object v0, Landroid/text/format/DateUtils;->sMonthsMedium:[I

    .restart local v0       #list:[I
    goto :goto_0

    .line 386
    .end local v0           #list:[I
    :sswitch_2
    sget-object v0, Landroid/text/format/DateUtils;->sMonthsMedium:[I

    .restart local v0       #list:[I
    goto :goto_0

    .line 387
    .end local v0           #list:[I
    :sswitch_3
    sget-object v0, Landroid/text/format/DateUtils;->sMonthsMedium:[I

    .restart local v0       #list:[I
    goto :goto_0

    .line 388
    .end local v0           #list:[I
    :sswitch_4
    sget-object v0, Landroid/text/format/DateUtils;->sMonthsShortest:[I

    .restart local v0       #list:[I
    goto :goto_0

    .line 382
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
        0x1e -> :sswitch_2
        0x28 -> :sswitch_3
        0x32 -> :sswitch_4
    .end sparse-switch
.end method

.method private static initFormatStrings()V
    .locals 4

    .prologue
    .line 620
    sget-object v2, Landroid/text/format/DateUtils;->sLock:Ljava/lang/Object;

    monitor-enter v2

    .line 621
    :try_start_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 622
    .local v1, r:Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 623
    .local v0, cfg:Landroid/content/res/Configuration;
    sget-object v3, Landroid/text/format/DateUtils;->sLastConfig:Landroid/content/res/Configuration;

    if-eqz v3, :cond_0

    sget-object v3, Landroid/text/format/DateUtils;->sLastConfig:Landroid/content/res/Configuration;

    invoke-virtual {v3, v0}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 624
    :cond_0
    sput-object v0, Landroid/text/format/DateUtils;->sLastConfig:Landroid/content/res/Configuration;

    .line 625
    const/4 v3, 0x3

    invoke-static {v3}, Ljava/text/DateFormat;->getTimeInstance(I)Ljava/text/DateFormat;

    move-result-object v3

    sput-object v3, Landroid/text/format/DateUtils;->sStatusTimeFormat:Ljava/text/DateFormat;

    .line 626
    const v3, 0x1040309

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Landroid/text/format/DateUtils;->sElapsedFormatMMSS:Ljava/lang/String;

    .line 627
    const v3, 0x104030a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Landroid/text/format/DateUtils;->sElapsedFormatHMMSS:Ljava/lang/String;

    .line 629
    :cond_1
    monitor-exit v2

    .line 630
    return-void

    .line 629
    .end local v0           #cfg:Landroid/content/res/Configuration;
    .end local v1           #r:Landroid/content/res/Resources;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public static isToday(J)Z
    .locals 6
    .parameter "when"

    .prologue
    .line 804
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    .line 805
    .local v3, time:Landroid/text/format/Time;
    invoke-virtual {v3, p0, p1}, Landroid/text/format/Time;->set(J)V

    .line 807
    iget v2, v3, Landroid/text/format/Time;->year:I

    .line 808
    .local v2, thenYear:I
    iget v0, v3, Landroid/text/format/Time;->month:I

    .line 809
    .local v0, thenMonth:I
    iget v1, v3, Landroid/text/format/Time;->monthDay:I

    .line 811
    .local v1, thenMonthDay:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 812
    iget v4, v3, Landroid/text/format/Time;->year:I

    if-ne v2, v4, :cond_0

    iget v4, v3, Landroid/text/format/Time;->month:I

    if-ne v0, v4, :cond_0

    iget v4, v3, Landroid/text/format/Time;->monthDay:I

    if-ne v1, v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static isUTC(Ljava/lang/String;)Z
    .locals 4
    .parameter "s"

    .prologue
    const/16 v3, 0x5a

    const/4 v2, 0x1

    .line 824
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_0

    move v0, v2

    .line 831
    :goto_0
    return v0

    .line 827
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_1

    move v0, v2

    .line 829
    goto :goto_0

    .line 831
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static newCalendar(Z)Ljava/util/Calendar;
    .locals 1
    .parameter "zulu"

    .prologue
    .line 794
    if-eqz p0, :cond_0

    .line 795
    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 797
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    goto :goto_0
.end method

.method public static final timeString(J)Ljava/lang/CharSequence;
    .locals 2
    .parameter "millis"

    .prologue
    .line 638
    invoke-static {}, Landroid/text/format/DateUtils;->initFormatStrings()V

    .line 639
    sget-object v0, Landroid/text/format/DateUtils;->sStatusTimeFormat:Ljava/text/DateFormat;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static toDigitChar(J)C
    .locals 2
    .parameter "digit"

    .prologue
    .line 748
    const-wide/16 v0, 0x30

    add-long/2addr v0, p0

    long-to-int v0, v0

    int-to-char v0, v0

    return v0
.end method

.method public static writeDateTime(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 4
    .parameter "cal"

    .prologue
    .line 845
    const-string v2, "GMT"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 846
    .local v1, tz:Ljava/util/TimeZone;
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 847
    .local v0, c:Ljava/util/GregorianCalendar;
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 848
    const/4 v2, 0x1

    invoke-static {v0, v2}, Landroid/text/format/DateUtils;->writeDateTime(Ljava/util/Calendar;Z)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static writeDateTime(Ljava/util/Calendar;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 8
    .parameter "cal"
    .parameter "sb"

    .prologue
    const/16 v7, 0xc

    const/16 v6, 0xb

    const/4 v5, 0x5

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 888
    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 889
    .local v0, n:I
    const/4 v1, 0x3

    rem-int/lit8 v2, v0, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 890
    div-int/lit8 v0, v0, 0xa

    .line 891
    rem-int/lit8 v1, v0, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    invoke-virtual {p1, v4, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 892
    div-int/lit8 v0, v0, 0xa

    .line 893
    rem-int/lit8 v1, v0, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    invoke-virtual {p1, v3, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 894
    div-int/lit8 v0, v0, 0xa

    .line 895
    const/4 v1, 0x0

    rem-int/lit8 v2, v0, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 897
    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 898
    rem-int/lit8 v1, v0, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    invoke-virtual {p1, v5, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 899
    div-int/lit8 v0, v0, 0xa

    .line 900
    const/4 v1, 0x4

    rem-int/lit8 v2, v0, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 902
    invoke-virtual {p0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 903
    const/4 v1, 0x7

    rem-int/lit8 v2, v0, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 904
    div-int/lit8 v0, v0, 0xa

    .line 905
    const/4 v1, 0x6

    rem-int/lit8 v2, v0, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 907
    const/16 v1, 0x8

    const/16 v2, 0x54

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 909
    invoke-virtual {p0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 910
    const/16 v1, 0xa

    rem-int/lit8 v2, v0, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 911
    div-int/lit8 v0, v0, 0xa

    .line 912
    const/16 v1, 0x9

    rem-int/lit8 v2, v0, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 914
    invoke-virtual {p0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 915
    rem-int/lit8 v1, v0, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    invoke-virtual {p1, v7, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 916
    div-int/lit8 v0, v0, 0xa

    .line 917
    rem-int/lit8 v1, v0, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    invoke-virtual {p1, v6, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 919
    const/16 v1, 0xd

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 920
    const/16 v1, 0xe

    rem-int/lit8 v2, v0, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 921
    div-int/lit8 v0, v0, 0xa

    .line 922
    const/16 v1, 0xd

    rem-int/lit8 v2, v0, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 924
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static writeDateTime(Ljava/util/Calendar;Z)Ljava/lang/String;
    .locals 3
    .parameter "cal"
    .parameter "zulu"

    .prologue
    const/16 v1, 0x10

    const/16 v2, 0xf

    .line 863
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 864
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->ensureCapacity(I)V

    .line 865
    if-eqz p1, :cond_0

    .line 866
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 867
    const/16 v1, 0x5a

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 871
    :goto_0
    invoke-static {p0, v0}, Landroid/text/format/DateUtils;->writeDateTime(Ljava/util/Calendar;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 869
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0
.end method
