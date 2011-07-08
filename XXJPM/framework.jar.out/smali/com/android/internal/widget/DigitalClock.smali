.class public Lcom/android/internal/widget/DigitalClock;
.super Landroid/widget/RelativeLayout;
.source "DigitalClock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/DigitalClock$FormatChangeObserver;,
        Lcom/android/internal/widget/DigitalClock$AmPm;
    }
.end annotation


# static fields
.field private static final M12:Ljava/lang/String; = "h:mm"

.field private static final M24:Ljava/lang/String; = "kk:mm"


# instance fields
.field private mAmPm:Lcom/android/internal/widget/DigitalClock$AmPm;

.field private mAttached:Z

.field private mCalendar:Ljava/util/Calendar;

.field private mFormat:Ljava/lang/String;

.field private mFormatChangeObserver:Landroid/database/ContentObserver;

.field private final mHandler:Landroid/os/Handler;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLive:Z

.field private mTimeDisplay:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 109
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/DigitalClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 113
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/DigitalClock;->mLive:Z

    .line 56
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/DigitalClock;->mHandler:Landroid/os/Handler;

    .line 57
    new-instance v0, Lcom/android/internal/widget/DigitalClock$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/DigitalClock$1;-><init>(Lcom/android/internal/widget/DigitalClock;)V

    iput-object v0, p0, Lcom/android/internal/widget/DigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 114
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/widget/DigitalClock;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/android/internal/widget/DigitalClock;->mLive:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/internal/widget/DigitalClock;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/internal/widget/DigitalClock;->mCalendar:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/internal/widget/DigitalClock;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/internal/widget/DigitalClock;->updateTime()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/widget/DigitalClock;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/internal/widget/DigitalClock;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/widget/DigitalClock;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/internal/widget/DigitalClock;->setDateFormat()V

    return-void
.end method

.method private setDateFormat()V
    .locals 4

    .prologue
    const-string v3, "h:mm"

    .line 183
    invoke-virtual {p0}, Lcom/android/internal/widget/DigitalClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "kk:mm"

    :goto_0
    iput-object v0, p0, Lcom/android/internal/widget/DigitalClock;->mFormat:Ljava/lang/String;

    .line 185
    iget-object v0, p0, Lcom/android/internal/widget/DigitalClock;->mAmPm:Lcom/android/internal/widget/DigitalClock$AmPm;

    iget-object v1, p0, Lcom/android/internal/widget/DigitalClock;->mFormat:Ljava/lang/String;

    const-string v2, "h:mm"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DigitalClock$AmPm;->setShowAmPm(Z)V

    .line 186
    return-void

    .line 183
    :cond_0
    const-string v0, "h:mm"

    move-object v0, v3

    goto :goto_0
.end method

.method private updateTime()V
    .locals 4

    .prologue
    .line 173
    iget-boolean v1, p0, Lcom/android/internal/widget/DigitalClock;->mLive:Z

    if-eqz v1, :cond_0

    .line 174
    iget-object v1, p0, Lcom/android/internal/widget/DigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 177
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/DigitalClock;->mFormat:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/widget/DigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 178
    .local v0, newTime:Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/android/internal/widget/DigitalClock;->mTimeDisplay:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v1, p0, Lcom/android/internal/widget/DigitalClock;->mAmPm:Lcom/android/internal/widget/DigitalClock$AmPm;

    iget-object v2, p0, Lcom/android/internal/widget/DigitalClock;->mCalendar:Ljava/util/Calendar;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/DigitalClock$AmPm;->setIsMorning(Z)V

    .line 180
    return-void

    .line 179
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 130
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 132
    iget-boolean v1, p0, Lcom/android/internal/widget/DigitalClock;->mAttached:Z

    if-eqz v1, :cond_0

    .line 150
    :goto_0
    return-void

    .line 133
    :cond_0
    iput-boolean v4, p0, Lcom/android/internal/widget/DigitalClock;->mAttached:Z

    .line 135
    iget-boolean v1, p0, Lcom/android/internal/widget/DigitalClock;->mLive:Z

    if-eqz v1, :cond_1

    .line 137
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 138
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 139
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 140
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 141
    iget-object v1, p0, Lcom/android/internal/widget/DigitalClock;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/widget/DigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 145
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_1
    new-instance v1, Lcom/android/internal/widget/DigitalClock$FormatChangeObserver;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/DigitalClock$FormatChangeObserver;-><init>(Lcom/android/internal/widget/DigitalClock;)V

    iput-object v1, p0, Lcom/android/internal/widget/DigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    .line 146
    iget-object v1, p0, Lcom/android/internal/widget/DigitalClock;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/internal/widget/DigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 149
    invoke-direct {p0}, Lcom/android/internal/widget/DigitalClock;->updateTime()V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 154
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 156
    iget-boolean v0, p0, Lcom/android/internal/widget/DigitalClock;->mAttached:Z

    if-nez v0, :cond_0

    .line 164
    :goto_0
    return-void

    .line 157
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/DigitalClock;->mAttached:Z

    .line 159
    iget-boolean v0, p0, Lcom/android/internal/widget/DigitalClock;->mLive:Z

    if-eqz v0, :cond_1

    .line 160
    iget-object v0, p0, Lcom/android/internal/widget/DigitalClock;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/widget/DigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/DigitalClock;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/DigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 118
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 120
    const v0, 0x10201c7

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/DigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/widget/DigitalClock;->mTimeDisplay:Landroid/widget/TextView;

    .line 121
    iget-object v0, p0, Lcom/android/internal/widget/DigitalClock;->mTimeDisplay:Landroid/widget/TextView;

    const-string v1, "/system/fonts/Clockopia.ttf"

    invoke-static {v1}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 122
    new-instance v0, Lcom/android/internal/widget/DigitalClock$AmPm;

    const-string v1, "/system/fonts/DroidSans-Bold.ttf"

    invoke-static {v1}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/widget/DigitalClock$AmPm;-><init>(Landroid/view/View;Landroid/graphics/Typeface;)V

    iput-object v0, p0, Lcom/android/internal/widget/DigitalClock;->mAmPm:Lcom/android/internal/widget/DigitalClock$AmPm;

    .line 123
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/DigitalClock;->mCalendar:Ljava/util/Calendar;

    .line 125
    invoke-direct {p0}, Lcom/android/internal/widget/DigitalClock;->setDateFormat()V

    .line 126
    return-void
.end method

.method setLive(Z)V
    .locals 0
    .parameter "live"

    .prologue
    .line 189
    iput-boolean p1, p0, Lcom/android/internal/widget/DigitalClock;->mLive:Z

    .line 190
    return-void
.end method

.method updateTime(Ljava/util/Calendar;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/internal/widget/DigitalClock;->mCalendar:Ljava/util/Calendar;

    .line 169
    invoke-direct {p0}, Lcom/android/internal/widget/DigitalClock;->updateTime()V

    .line 170
    return-void
.end method
