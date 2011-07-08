.class public final Lcom/android/server/status/DateView;
.super Landroid/widget/TextView;
.source "DateView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DateView"


# instance fields
.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mUpdating:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/status/DateView;->mUpdating:Z

    .line 40
    new-instance v0, Lcom/android/server/status/DateView$1;

    invoke-direct {v0, p0}, Lcom/android/server/status/DateView$1;-><init>(Lcom/android/server/status/DateView;)V

    iput-object v0, p0, Lcom/android/server/status/DateView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/status/DateView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/server/status/DateView;->updateClock()V

    return-void
.end method

.method private final updateClock()V
    .locals 2

    .prologue
    .line 73
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 76
    .local v0, now:Ljava/util/Date;
    iget-object v1, p0, Lcom/android/server/status/DateView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/status/DateView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    return-void
.end method


# virtual methods
.method protected getSuggestedMinimumWidth()I
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 57
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 58
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 62
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 63
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/status/DateView;->setUpdates(Z)V

    .line 64
    return-void
.end method

.method setUpdates(Z)V
    .locals 4
    .parameter "update"

    .prologue
    const/4 v3, 0x0

    .line 81
    iget-boolean v1, p0, Lcom/android/server/status/DateView;->mUpdating:Z

    if-eq p1, v1, :cond_0

    .line 82
    iput-boolean p1, p0, Lcom/android/server/status/DateView;->mUpdating:Z

    .line 83
    if-eqz p1, :cond_1

    .line 85
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 86
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 87
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 88
    iget-object v1, p0, Lcom/android/server/status/DateView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/status/DateView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 89
    invoke-direct {p0}, Lcom/android/server/status/DateView;->updateClock()V

    .line 94
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    iget-object v1, p0, Lcom/android/server/status/DateView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/status/DateView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method
