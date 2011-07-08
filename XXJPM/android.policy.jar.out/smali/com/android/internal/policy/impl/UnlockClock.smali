.class public Lcom/android/internal/policy/impl/UnlockClock;
.super Landroid/widget/RelativeLayout;
.source "UnlockClock.java"


# static fields
.field private static final AMPMDATA:I = 0x2

.field private static final DBG:Z = false

.field private static final DRAWABLE_AM:I = 0x0

.field private static final DRAWABLE_PM:I = 0x1

.field private static final MONTHDATA:I = 0x0

.field private static final MONTH_DOT_DAY:Ljava/lang/String; = "."

.field private static final STRING_KOREAN_WEEK:Ljava/lang/String; = "\uc694\uc77c"

.field private static final TAG:Ljava/lang/String; = "UnlockClock"

.field private static final WEEKDATA:I = 0x1


# instance fields
.field private am_pmInt:I

.field private dayInt:I

.field private dayWeekInt:I

.field private hourInt:I

.field private is24hourMode:Z

.field private locale_kr:Ljava/util/Locale;

.field private mAmPm1:Landroid/widget/ImageView;

.field private mAmPmLayout:Landroid/widget/RelativeLayout;

.field private mColon1:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private mCreatedInPortrait:Z

.field private mDate1:Landroid/widget/TextView;

.field private mDateLayout:Landroid/widget/RelativeLayout;

.field private mHour1:Landroid/widget/ImageView;

.field private mHour2:Landroid/widget/ImageView;

.field private mHourModeChecked:Z

.field private mMinute1:Landroid/widget/ImageView;

.field private mMinute2:Landroid/widget/ImageView;

.field private mPluggedIn:Z

.field private mRightNow:Ljava/util/Calendar;

.field private mTimeLayout:Landroid/widget/RelativeLayout;

.field private mWeek1:Landroid/widget/TextView;

.field private minInt:I

.field private monthInt:I

.field private strArrMonths:[Ljava/lang/String;

.field private strArrWeeks:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 4
    .parameter "context"
    .parameter "createdInPortrait"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 104
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 91
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/UnlockClock;->mPluggedIn:Z

    .line 92
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/UnlockClock;->mHourModeChecked:Z

    .line 106
    iput-object p1, p0, Lcom/android/internal/policy/impl/UnlockClock;->mContext:Landroid/content/Context;

    .line 109
    iput-boolean p2, p0, Lcom/android/internal/policy/impl/UnlockClock;->mCreatedInPortrait:Z

    .line 114
    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockClock;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 115
    .local v0, inflater:Landroid/view/LayoutInflater;
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/UnlockClock;->mCreatedInPortrait:Z

    if-eqz v2, :cond_0

    .line 116
    const v2, 0x1090076

    invoke-virtual {v0, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 124
    :goto_0
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 126
    .local v1, params:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/UnlockClock;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/UnlockClock;->mRightNow:Ljava/util/Calendar;

    .line 130
    const v2, 0x102022e

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/UnlockClock;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/UnlockClock;->mDateLayout:Landroid/widget/RelativeLayout;

    .line 131
    const v2, 0x1020231

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/UnlockClock;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/UnlockClock;->mTimeLayout:Landroid/widget/RelativeLayout;

    .line 132
    const v2, 0x1020237

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/UnlockClock;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/UnlockClock;->mAmPmLayout:Landroid/widget/RelativeLayout;

    .line 135
    const v2, 0x102022f

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/UnlockClock;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/UnlockClock;->mDate1:Landroid/widget/TextView;

    .line 136
    const v2, 0x1020230

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/UnlockClock;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/UnlockClock;->mWeek1:Landroid/widget/TextView;

    .line 137
    const v2, 0x1020232

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/UnlockClock;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/UnlockClock;->mHour1:Landroid/widget/ImageView;

    .line 138
    const v2, 0x1020233

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/UnlockClock;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/UnlockClock;->mHour2:Landroid/widget/ImageView;

    .line 139
    const v2, 0x1020234

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/UnlockClock;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/UnlockClock;->mColon1:Landroid/widget/ImageView;

    .line 140
    const v2, 0x1020235

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/UnlockClock;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/UnlockClock;->mMinute1:Landroid/widget/ImageView;

    .line 141
    const v2, 0x1020236

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/UnlockClock;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/UnlockClock;->mMinute2:Landroid/widget/ImageView;

    .line 142
    const v2, 0x1020238

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/UnlockClock;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/UnlockClock;->mAmPm1:Landroid/widget/ImageView;

    .line 147
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/UnlockClock;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v2, p0, Lcom/android/internal/policy/impl/UnlockClock;->locale_kr:Ljava/util/Locale;

    .line 150
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x107000b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/UnlockClock;->strArrWeeks:[Ljava/lang/String;

    .line 151
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x107000c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/UnlockClock;->strArrMonths:[Ljava/lang/String;

    .line 154
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/UnlockClock;->refreshTimeAndDateDisplay()V

    .line 156
    return-void

    .line 119
    .end local v1           #params:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    const v2, 0x1090077

    invoke-virtual {v0, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_0
.end method

.method private changeTimeType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "hourString"
    .parameter "minString"
    .parameter "am_pmString"

    .prologue
    const/4 v4, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const-string v5, ""

    .line 248
    new-array v0, v4, [I

    .line 249
    .local v0, choiceHourNumber:[I
    new-array v1, v4, [I

    .line 257
    .local v1, choiceMinNumber:[I
    const-string v4, ""

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 258
    .local v2, timePattern1:[Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {p2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 260
    .local v3, timePattern2:[Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/UnlockClock;->exchangeStringToDrawable([Ljava/lang/String;)[I

    move-result-object v0

    .line 261
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/UnlockClock;->exchangeStringToDrawable([Ljava/lang/String;)[I

    move-result-object v1

    .line 263
    iget-object v4, p0, Lcom/android/internal/policy/impl/UnlockClock;->mHour1:Landroid/widget/ImageView;

    aget v5, v0, v6

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 264
    iget-object v4, p0, Lcom/android/internal/policy/impl/UnlockClock;->mHour2:Landroid/widget/ImageView;

    aget v5, v0, v7

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 265
    iget-object v4, p0, Lcom/android/internal/policy/impl/UnlockClock;->mColon1:Landroid/widget/ImageView;

    const v5, 0x1080394

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 266
    iget-object v4, p0, Lcom/android/internal/policy/impl/UnlockClock;->mMinute1:Landroid/widget/ImageView;

    aget v5, v1, v6

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 267
    iget-object v4, p0, Lcom/android/internal/policy/impl/UnlockClock;->mMinute2:Landroid/widget/ImageView;

    aget v5, v1, v7

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 268
    return-void
.end method

.method private checkMinValue(I)Ljava/lang/String;
    .locals 3
    .parameter "minIntLocal"

    .prologue
    .line 303
    const/16 v1, 0xa

    if-ge p1, v1, :cond_0

    .line 304
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 308
    .local v0, minString:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 306
    .end local v0           #minString:Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #minString:Ljava/lang/String;
    goto :goto_0
.end method

.method private exchangeStringToDrawable([Ljava/lang/String;)[I
    .locals 7
    .parameter "timePattern"

    .prologue
    .line 273
    const/16 v6, 0xa

    new-array v5, v6, [I

    fill-array-data v5, :array_0

    .line 282
    .local v5, unlock_clocks:[I
    const/4 v6, 0x4

    new-array v0, v6, [I

    .line 284
    .local v0, choiceNumber:[I
    array-length v4, p1

    .line 286
    .local v4, k:I
    const/4 v2, 0x1

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 288
    :try_start_0
    aget-object v6, p1, v2

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 292
    .local v3, j:I
    :goto_1
    aget v6, v5, v3

    aput v6, v0, v2

    .line 286
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 289
    .end local v3           #j:I
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 290
    .local v1, e:Ljava/lang/NumberFormatException;
    const/4 v3, 0x0

    .restart local v3       #j:I
    goto :goto_1

    .line 295
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .end local v3           #j:I
    :cond_0
    return-object v0

    .line 273
    :array_0
    .array-data 0x4
        0x7et 0x3t 0x8t 0x1t
        0x80t 0x3t 0x8t 0x1t
        0x82t 0x3t 0x8t 0x1t
        0x84t 0x3t 0x8t 0x1t
        0x86t 0x3t 0x8t 0x1t
        0x88t 0x3t 0x8t 0x1t
        0x8at 0x3t 0x8t 0x1t
        0x8ct 0x3t 0x8t 0x1t
        0x8et 0x3t 0x8t 0x1t
        0x90t 0x3t 0x8t 0x1t
    .end array-data
.end method

.method private setAMPMDrawable(I)V
    .locals 3
    .parameter "am_pmString"

    .prologue
    .line 228
    const/4 v0, 0x0

    .line 230
    .local v0, choiceAMPM:I
    if-nez p1, :cond_0

    .line 231
    const v0, 0x1080392

    .line 238
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/UnlockClock;->mAmPm1:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 239
    iget-object v1, p0, Lcom/android/internal/policy/impl/UnlockClock;->mAmPmLayout:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 241
    return-void

    .line 232
    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 233
    const v0, 0x1080396

    goto :goto_0

    .line 236
    :cond_1
    const-string v1, "UnlockClock"

    const-string v2, "Not AM_PM mode"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private transformDataIntToString([Ljava/lang/String;II)Ljava/lang/String;
    .locals 1
    .parameter "dataSet"
    .parameter "datedata"
    .parameter "datatype"

    .prologue
    .line 330
    const/4 v0, 0x1

    if-eq p3, v0, :cond_0

    .line 331
    add-int/lit8 p2, p2, 0x1

    .line 334
    :cond_0
    aget-object v0, p1, p2

    return-object v0
.end method

.method private transformHourData(I)Ljava/lang/String;
    .locals 2
    .parameter "hourIntLocal"

    .prologue
    .line 317
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/UnlockClock;->is24hourMode:Z

    if-nez v1, :cond_2

    .line 318
    const/16 v1, 0xc

    if-le p1, v1, :cond_1

    add-int/lit8 p1, p1, -0xc

    .line 320
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/UnlockClock;->checkMinValue(I)Ljava/lang/String;

    move-result-object v0

    .line 326
    .local v0, hourString:Ljava/lang/String;
    :goto_1
    return-object v0

    .line 319
    .end local v0           #hourString:Ljava/lang/String;
    :cond_1
    if-nez p1, :cond_0

    const/16 p1, 0xc

    goto :goto_0

    .line 324
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/UnlockClock;->checkMinValue(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #hourString:Ljava/lang/String;
    goto :goto_1
.end method


# virtual methods
.method protected refreshTimeAndDateDisplay()V
    .locals 15

    .prologue
    const/4 v12, 0x1

    const-string v14, "ko_KR"

    const-string v13, "UnlockClock"

    .line 172
    const-string v0, ""

    .line 174
    .local v0, am_pmString:Ljava/lang/String;
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/UnlockClock;->mHourModeChecked:Z

    if-nez v9, :cond_0

    .line 175
    iput-boolean v12, p0, Lcom/android/internal/policy/impl/UnlockClock;->mHourModeChecked:Z

    .line 176
    iget-object v9, p0, Lcom/android/internal/policy/impl/UnlockClock;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/UnlockClock;->is24hourMode:Z

    .line 180
    :cond_0
    iget-object v9, p0, Lcom/android/internal/policy/impl/UnlockClock;->mRightNow:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 182
    const-string v9, "UnlockClock"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "GMT_update mRightNow.getTimeZone().getID() == "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/policy/impl/UnlockClock;->mRightNow:Ljava/util/Calendar;

    invoke-virtual {v10}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v13, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const-string v9, "persist.sys.timezone"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 184
    .local v1, current:Ljava/lang/String;
    const-string v9, "UnlockClock"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "GMT_update current == "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", TimeZone.getTimeZone(current).getID() == "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v13, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v9, p0, Lcom/android/internal/policy/impl/UnlockClock;->mRightNow:Ljava/util/Calendar;

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 188
    iget-object v9, p0, Lcom/android/internal/policy/impl/UnlockClock;->mRightNow:Ljava/util/Calendar;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->get(I)I

    move-result v9

    iput v9, p0, Lcom/android/internal/policy/impl/UnlockClock;->monthInt:I

    .line 189
    iget-object v9, p0, Lcom/android/internal/policy/impl/UnlockClock;->mRightNow:Ljava/util/Calendar;

    const/4 v10, 0x5

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->get(I)I

    move-result v9

    iput v9, p0, Lcom/android/internal/policy/impl/UnlockClock;->dayInt:I

    .line 190
    iget-object v9, p0, Lcom/android/internal/policy/impl/UnlockClock;->mRightNow:Ljava/util/Calendar;

    const/4 v10, 0x7

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->get(I)I

    move-result v9

    iput v9, p0, Lcom/android/internal/policy/impl/UnlockClock;->dayWeekInt:I

    .line 191
    iget-object v9, p0, Lcom/android/internal/policy/impl/UnlockClock;->mRightNow:Ljava/util/Calendar;

    const/16 v10, 0xb

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->get(I)I

    move-result v9

    iput v9, p0, Lcom/android/internal/policy/impl/UnlockClock;->hourInt:I

    .line 192
    iget-object v9, p0, Lcom/android/internal/policy/impl/UnlockClock;->mRightNow:Ljava/util/Calendar;

    const/16 v10, 0xc

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->get(I)I

    move-result v9

    iput v9, p0, Lcom/android/internal/policy/impl/UnlockClock;->minInt:I

    .line 193
    iget-object v9, p0, Lcom/android/internal/policy/impl/UnlockClock;->mRightNow:Ljava/util/Calendar;

    const/16 v10, 0x9

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->get(I)I

    move-result v9

    iput v9, p0, Lcom/android/internal/policy/impl/UnlockClock;->am_pmInt:I

    .line 195
    iget-object v9, p0, Lcom/android/internal/policy/impl/UnlockClock;->strArrMonths:[Ljava/lang/String;

    iget v10, p0, Lcom/android/internal/policy/impl/UnlockClock;->monthInt:I

    const/4 v11, 0x0

    invoke-direct {p0, v9, v10, v11}, Lcom/android/internal/policy/impl/UnlockClock;->transformDataIntToString([Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v7

    .line 196
    .local v7, monthString:Ljava/lang/String;
    iget v9, p0, Lcom/android/internal/policy/impl/UnlockClock;->dayInt:I

    invoke-direct {p0, v9}, Lcom/android/internal/policy/impl/UnlockClock;->checkMinValue(I)Ljava/lang/String;

    move-result-object v2

    .line 197
    .local v2, dayString:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/internal/policy/impl/UnlockClock;->strArrWeeks:[Ljava/lang/String;

    iget v10, p0, Lcom/android/internal/policy/impl/UnlockClock;->dayWeekInt:I

    invoke-direct {p0, v9, v10, v12}, Lcom/android/internal/policy/impl/UnlockClock;->transformDataIntToString([Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v4

    .line 198
    .local v4, dayWeekString:Ljava/lang/String;
    iget v9, p0, Lcom/android/internal/policy/impl/UnlockClock;->hourInt:I

    invoke-direct {p0, v9}, Lcom/android/internal/policy/impl/UnlockClock;->transformHourData(I)Ljava/lang/String;

    move-result-object v5

    .line 199
    .local v5, hourString:Ljava/lang/String;
    iget v9, p0, Lcom/android/internal/policy/impl/UnlockClock;->minInt:I

    invoke-direct {p0, v9}, Lcom/android/internal/policy/impl/UnlockClock;->checkMinValue(I)Ljava/lang/String;

    move-result-object v6

    .line 201
    .local v6, minString:Ljava/lang/String;
    iget v9, p0, Lcom/android/internal/policy/impl/UnlockClock;->monthInt:I

    add-int/lit8 v9, v9, 0x1

    invoke-direct {p0, v9}, Lcom/android/internal/policy/impl/UnlockClock;->checkMinValue(I)Ljava/lang/String;

    move-result-object v8

    .line 202
    .local v8, monthString_kr:Ljava/lang/String;
    iget v9, p0, Lcom/android/internal/policy/impl/UnlockClock;->dayInt:I

    invoke-direct {p0, v9}, Lcom/android/internal/policy/impl/UnlockClock;->checkMinValue(I)Ljava/lang/String;

    move-result-object v3

    .line 204
    .local v3, dayString_kr:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/internal/policy/impl/UnlockClock;->locale_kr:Ljava/util/Locale;

    invoke-virtual {v9}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "ko_KR"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    iget-object v9, p0, Lcom/android/internal/policy/impl/UnlockClock;->locale_kr:Ljava/util/Locale;

    invoke-virtual {v9}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "ja_JP"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 205
    iget-object v9, p0, Lcom/android/internal/policy/impl/UnlockClock;->mDate1:Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    iget-object v9, p0, Lcom/android/internal/policy/impl/UnlockClock;->mWeek1:Landroid/widget/TextView;

    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    :goto_0
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/UnlockClock;->is24hourMode:Z

    if-nez v9, :cond_3

    .line 219
    iget v9, p0, Lcom/android/internal/policy/impl/UnlockClock;->am_pmInt:I

    invoke-direct {p0, v9}, Lcom/android/internal/policy/impl/UnlockClock;->setAMPMDrawable(I)V

    .line 224
    :goto_1
    invoke-direct {p0, v5, v6, v0}, Lcom/android/internal/policy/impl/UnlockClock;->changeTimeType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    return-void

    .line 208
    :cond_1
    iget-object v9, p0, Lcom/android/internal/policy/impl/UnlockClock;->mDate1:Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    iget-object v9, p0, Lcom/android/internal/policy/impl/UnlockClock;->locale_kr:Ljava/util/Locale;

    invoke-virtual {v9}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "ko_KR"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 210
    iget-object v9, p0, Lcom/android/internal/policy/impl/UnlockClock;->mWeek1:Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\uc694\uc77c"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 212
    :cond_2
    iget-object v9, p0, Lcom/android/internal/policy/impl/UnlockClock;->mWeek1:Landroid/widget/TextView;

    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 222
    :cond_3
    iget-object v9, p0, Lcom/android/internal/policy/impl/UnlockClock;->mAmPmLayout:Landroid/widget/RelativeLayout;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method public resetClockInfo(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
    .locals 1
    .parameter "updateMonitor"

    .prologue
    .line 159
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDevicePluggedIn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/UnlockClock;->mPluggedIn:Z

    .line 160
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/UnlockClock;->refreshTimeAndDateDisplay()V

    .line 161
    return-void
.end method
