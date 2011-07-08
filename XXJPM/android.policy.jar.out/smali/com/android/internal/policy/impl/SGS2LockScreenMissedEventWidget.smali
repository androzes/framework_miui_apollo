.class public Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget;
.super Landroid/widget/RelativeLayout;
.source "SGS2LockScreenMissedEventWidget.java"

# interfaces
.implements Lcom/android/internal/widget/SlidingTab$OnTriggerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget$NotiMode;
    }
.end annotation


# static fields
.field private static final MISSED_EVENT_CHANGED:Ljava/lang/String; = "com.android.server.NotificationManagerService.NotificationArrived"

.field private static final TAG:Ljava/lang/String; = "SGS2LockScreenMissedEventWidget"


# instance fields
.field private final CALL_PKG:Ljava/lang/String;

.field private final DEBUG:Z

.field private final DEFAULT_MISSED_EVENT_COUNT_TEXT:Ljava/lang/String;

.field private final EMAIL_PKG:Ljava/lang/String;

.field private final MISSED_EVENT_UPDATE:I

.field private MSG_PKG:Ljava/lang/String;

.field private final NOTI_NONE_COUNT:I

.field private final REQ_INDEX_CALL_EMAIL:I

.field private final REQ_INDEX_MSG:I

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mHandler:Landroid/os/Handler;

.field private mMainLayout:Landroid/widget/RelativeLayout;

.field private mMissedCallCount:I

.field private mMissedEventHandle:Landroid/widget/LinearLayout;

.field private mMissedMsgCount:I

.field private mSelector:Lcom/android/internal/widget/SlidingTab;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 8
    .parameter "context"
    .parameter "callback"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 87
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 46
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget;->DEBUG:Z

    .line 54
    const-string v3, "com.android.phone"

    iput-object v3, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget;->CALL_PKG:Ljava/lang/String;

    .line 55
    const-string v3, "com.android.mms"

    iput-object v3, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget;->MSG_PKG:Ljava/lang/String;

    .line 56
    const-string v3, "com.android.email"

    iput-object v3, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget;->EMAIL_PKG:Ljava/lang/String;

    .line 60
    const/16 v3, 0x12c2

    iput v3, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget;->MISSED_EVENT_UPDATE:I

    .line 61
    iput v5, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget;->REQ_INDEX_CALL_EMAIL:I

    .line 62
    const/16 v3, 0x7b

    iput v3, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget;->REQ_INDEX_MSG:I

    .line 63
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget;->NOTI_NONE_COUNT:I

    .line 64
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    .line 67
    iput v6, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget;->mMissedCallCount:I

    .line 68
    iput v6, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget;->mMissedMsgCount:I

    .line 69
    const-string v3, "0"

    iput-object v3, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget;->DEFAULT_MISSED_EVENT_COUNT_TEXT:Ljava/lang/String;

    .line 73
    new-instance v3, Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget$1;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget$1;-><init>(Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget;->mHandler:Landroid/os/Handler;

    .line 89
    iput-object p2, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "clock_position"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 93
    .local v2, layoutPosition:I
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 95
    .local v1, inflater:Landroid/view/LayoutInflater;
    if-ne v2, v7, :cond_1

    .line 96
    const v3, 0x109009f

    invoke-virtual {v1, v3, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 104
    :cond_0
    :goto_0
    const v3, 0x10202f0

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    .line 105
    iget-object v3, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 111
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 112
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v3, "com.android.server.NotificationManagerService.NotificationArrived"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 114
    new-instance v3, Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget$2;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget$2;-><init>(Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 125
    iget-object v3, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 128
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget;->init()V

    .line 129
    return-void

    .line 98
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_1
    if-nez v2, :cond_2

    .line 99
    const v3, 0x10900a0

    invoke-virtual {v1, v3, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_0

    .line 100
    :cond_2
    if-ne v2, v5, :cond_0

    .line 101
    const v3, 0x109009e

    invoke-virtual {v1, v3, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private init()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v2, 0x1

    const-string v5, "0"

    .line 139
    const-string v0, "SGS2LockScreenMissedEventWidget"

    const-string v1, "Controller Initiation Running!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const v0, 0x10201cc

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/SlidingTab;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget;->mSelector:Lcom/android/internal/widget/SlidingTab;

    .line 143
    iget-object v0, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget;->mSelector:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v0, v2, v2}, Lcom/android/internal/widget/SlidingTab;->setHoldAfterTrigger(ZZ)V

    .line 145
    iget-object v0, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget;->mSelector:Lcom/android/internal/widget/SlidingTab;

    const v1, 0x1080562

    const v2, 0x108055e

    const v3, 0x1080559

    const v4, 0x108055b

    const-string v6, "0"

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/SlidingTab;->setLeftTabResources(IIIILjava/lang/CharSequence;)V

    .line 149
    iget-object v0, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget;->mSelector:Lcom/android/internal/widget/SlidingTab;

    const v1, 0x1080571

    const v2, 0x108055f

    const v3, 0x108055a

    const v4, 0x108055c

    const-string v6, "0"

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/SlidingTab;->setRightTabResources(IIIILjava/lang/CharSequence;)V

    .line 153
    iget-object v0, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget;->mSelector:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/SlidingTab;->setOnTriggerListener(Lcom/android/internal/widget/SlidingTab$OnTriggerListener;)V

    .line 154
    iget-object v0, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget;->mSelector:Lcom/android/internal/widget/SlidingTab;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SlidingTab;->setVisibility(I)V

    .line 155
    iget-object v0, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget;->mSelector:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v0, v7}, Lcom/android/internal/widget/SlidingTab;->setLeftVisibility(I)V

    .line 156
    iget-object v0, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget;->mSelector:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v0, v7}, Lcom/android/internal/widget/SlidingTab;->setRightVisibility(I)V

    .line 158
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget;->updateMissedEvent()V

    .line 160
    return-void
.end method

.method private sendIntent(Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget$NotiMode;)V
    .locals 4
    .parameter "notiMode"

    .prologue
    .line 355
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget;->getIntentMissedEvent(Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget$NotiMode;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 356
    .local v0, intent:Landroid/app/PendingIntent;
    if-eqz v0, :cond_0

    .line 358
    :try_start_0
    const-string v1, "SGS2LockScreenMissedEventWidget"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendintent = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    :cond_0
    :goto_0
    return-void

    .line 360
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private updateMissedEvent()V
    .locals 13

    .prologue
    const/16 v6, 0x3e7

    const/4 v12, 0x4

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 208
    const/4 v4, 0x0

    .line 209
    .local v4, visibility:I
    const/4 v2, 0x0

    .line 210
    .local v2, nCallCount:I
    const/4 v3, 0x0

    .line 211
    .local v3, nMsgCount:I
    const/4 v0, 0x0

    .line 212
    .local v0, bUpdatedCallCount:Z
    const/4 v1, 0x0

    .line 214
    .local v1, bUpdatedMsgCount:Z
    sget-object v5, Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget$NotiMode;->MissedCall:Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget$NotiMode;

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget;->getNumMissedEvent(Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget$NotiMode;)I

    move-result v2

    .line 215
    sget-object v5, Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget$NotiMode;->MissedMsg:Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget$NotiMode;

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget;->getNumMissedEvent(Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget$NotiMode;)I

    move-result v3

    .line 217
    iget v5, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget;->mMissedCallCount:I

    if-le v2, v5, :cond_3

    .line 218
    const/4 v0, 0x1

    .line 219
    if-le v2, v6, :cond_2

    .line 220
    iput v6, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget;->mMissedCallCount:I

    .line 226
    :goto_0
    iget v5, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget;->mMissedMsgCount:I

    if-le v3, v5, :cond_5

    .line 227
    const/4 v1, 0x1

    .line 228
    if-le v3, v6, :cond_4

    .line 229
    iput v6, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget;->mMissedMsgCount:I

    .line 235
    :goto_1
    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    .line 236
    :cond_0
    iget v5, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget;->mMissedCallCount:I

    if-ne v5, v11, :cond_6

    .line 237
    iget-object v5, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget;->mSelector:Lcom/android/internal/widget/SlidingTab;

    const v6, 0x10403fc

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/SlidingTab;->setLeftHintText(I)V

    .line 240
    :goto_2
    iget v5, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget;->mMissedMsgCount:I

    if-ne v5, v11, :cond_7

    .line 241
    iget-object v5, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget;->mSelector:Lcom/android/internal/widget/SlidingTab;

    const v6, 0x10403fd

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/SlidingTab;->setRightHintText(I)V

    .line 245
    :goto_3
    iget-object v5, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget;->mSelector:Lcom/android/internal/widget/SlidingTab;

    iget v6, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget;->mMissedCallCount:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/SlidingTab;->setLeftIconText(Ljava/lang/CharSequence;)V

    .line 246
    iget-object v5, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget;->mSelector:Lcom/android/internal/widget/SlidingTab;

    iget v6, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget;->mMissedMsgCount:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/SlidingTab;->setRightIconText(Ljava/lang/CharSequence;)V

    .line 248
    iget v5, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget;->mMissedCallCount:I

    if-lez v5, :cond_8

    iget v5, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget;->mMissedMsgCount:I

    if-lez v5, :cond_8

    .line 249
    iget-object v5, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget;->mSelector:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v5, v10}, Lcom/android/internal/widget/SlidingTab;->setLeftVisibility(I)V

    .line 250
    iget-object v5, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget;->mSelector:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v5, v10}, Lcom/android/internal/widget/SlidingTab;->setRightVisibility(I)V

    .line 265
    :cond_1
    :goto_4
    return-void

    .line 222
    :cond_2
    iput v2, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget;->mMissedCallCount:I

    goto :goto_0

    .line 224
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 231
    :cond_4
    iput v3, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget;->mMissedMsgCount:I

    goto :goto_1

    .line 233
    :cond_5
    const/4 v1, 0x0

    goto :goto_1

    .line 239
    :cond_6
    iget-object v5, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget;->mSelector:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x10403fe

    new-array v8, v11, [Ljava/lang/Object;

    iget v9, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget;->mMissedCallCount:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/SlidingTab;->setLeftHintText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 243
    :cond_7
    iget-object v5, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget;->mSelector:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x104041f

    new-array v8, v11, [Ljava/lang/Object;

    iget v9, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget;->mMissedMsgCount:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/SlidingTab;->setRightHintText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 252
    :cond_8
    iget v5, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget;->mMissedCallCount:I

    if-lez v5, :cond_9

    .line 253
    iget-object v5, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget;->mSelector:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v5, v10}, Lcom/android/internal/widget/SlidingTab;->setLeftVisibility(I)V

    .line 254
    iget-object v5, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget;->mSelector:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v5, v12}, Lcom/android/internal/widget/SlidingTab;->setRightVisibility(I)V

    goto :goto_4

    .line 255
    :cond_9
    iget v5, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget;->mMissedMsgCount:I

    if-lez v5, :cond_a

    .line 256
    iget-object v5, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget;->mSelector:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v5, v12}, Lcom/android/internal/widget/SlidingTab;->setLeftVisibility(I)V

    .line 257
    iget-object v5, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget;->mSelector:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v5, v10}, Lcom/android/internal/widget/SlidingTab;->setRightVisibility(I)V

    goto :goto_4

    .line 259
    :cond_a
    iget-object v5, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget;->mSelector:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v5, v12}, Lcom/android/internal/widget/SlidingTab;->setLeftVisibility(I)V

    .line 260
    iget-object v5, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget;->mSelector:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v5, v12}, Lcom/android/internal/widget/SlidingTab;->setRightVisibility(I)V

    goto :goto_4
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    .line 163
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 164
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 166
    const-string v0, "SGS2LockScreenMissedEventWidget"

    const-string v1, "cleanUp()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    return-void
.end method

.method public getIntentMissedEvent(Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget$NotiMode;)Landroid/app/PendingIntent;
    .locals 7
    .parameter "mode"

    .prologue
    const/4 v6, 0x0

    .line 280
    const/4 v0, -0x1

    .line 281
    .local v0, index:I
    const/4 v3, 0x1

    .line 282
    .local v3, reqNum:I
    const-string v2, "com.android.phone"

    .line 284
    .local v2, pkg:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget;->mContext:Landroid/content/Context;

    const-string v5, "notification"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 287
    .local v1, mNM:Landroid/app/NotificationManager;
    sget-object v4, Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget$NotiMode;->MissedCall:Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget$NotiMode;

    if-ne p1, v4, :cond_0

    .line 288
    const-string v2, "com.android.phone"

    .line 297
    :goto_0
    invoke-virtual {v1, v2, v3}, Landroid/app/NotificationManager;->getEventIndexWithReq(Ljava/lang/String;I)I

    move-result v0

    .line 299
    const/4 v4, -0x1

    if-ne v0, v4, :cond_3

    move-object v4, v6

    .line 302
    :goto_1
    return-object v4

    .line 289
    :cond_0
    sget-object v4, Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget$NotiMode;->MissedMsg:Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget$NotiMode;

    if-ne p1, v4, :cond_1

    .line 290
    iget-object v2, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget;->MSG_PKG:Ljava/lang/String;

    .line 291
    const/16 v3, 0x7b

    goto :goto_0

    .line 292
    :cond_1
    sget-object v4, Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget$NotiMode;->MissedEMail:Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget$NotiMode;

    if-ne p1, v4, :cond_2

    .line 293
    const-string v2, "com.android.email"

    goto :goto_0

    :cond_2
    move-object v4, v6

    .line 295
    goto :goto_1

    .line 302
    :cond_3
    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->getEventIntent(I)Landroid/app/PendingIntent;

    move-result-object v4

    goto :goto_1
.end method

.method public getNumMissedEvent(Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget$NotiMode;)I
    .locals 9
    .parameter "mode"

    .prologue
    const/4 v7, 0x0

    const-string v8, "SGS2LockScreenMissedEventWidget"

    .line 306
    const/4 v1, -0x1

    .line 307
    .local v1, index:I
    const/4 v4, 0x1

    .line 308
    .local v4, reqNum:I
    const/4 v0, 0x0

    .line 309
    .local v0, count:I
    const-string v3, "com.android.phone"

    .line 311
    .local v3, pkg:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget;->mContext:Landroid/content/Context;

    const-string v6, "notification"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 313
    .local v2, mNM:Landroid/app/NotificationManager;
    if-nez v2, :cond_0

    move v5, v7

    .line 335
    :goto_0
    return v5

    .line 316
    :cond_0
    sget-object v5, Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget$NotiMode;->MissedCall:Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget$NotiMode;

    if-ne p1, v5, :cond_1

    .line 317
    const-string v3, "com.android.phone"

    .line 326
    :goto_1
    invoke-virtual {v2, v3, v4}, Landroid/app/NotificationManager;->getEventIndexWithReq(Ljava/lang/String;I)I

    move-result v1

    .line 327
    const-string v5, "SGS2LockScreenMissedEventWidget"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "missed event mode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    const-string v5, "SGS2LockScreenMissedEventWidget"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "missed event index: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    const/4 v5, -0x1

    if-ne v1, v5, :cond_4

    move v5, v7

    .line 331
    goto :goto_0

    .line 318
    :cond_1
    sget-object v5, Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget$NotiMode;->MissedMsg:Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget$NotiMode;

    if-ne p1, v5, :cond_2

    .line 319
    iget-object v3, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget;->MSG_PKG:Ljava/lang/String;

    .line 320
    const/16 v4, 0x7b

    goto :goto_1

    .line 321
    :cond_2
    sget-object v5, Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget$NotiMode;->MissedEMail:Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget$NotiMode;

    if-ne p1, v5, :cond_3

    .line 322
    const-string v3, "com.android.email"

    goto :goto_1

    :cond_3
    move v5, v7

    .line 324
    goto :goto_0

    .line 333
    :cond_4
    invoke-virtual {v2, v1}, Landroid/app/NotificationManager;->getEventCount(I)I

    move-result v0

    .line 334
    const-string v5, "SGS2LockScreenMissedEventWidget"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "missed event count: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v0

    .line 335
    goto :goto_0
.end method

.method protected handleMissedEventUpdate()V
    .locals 0

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget;->updateMissedEvent()V

    .line 133
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget;->invalidate()V

    .line 134
    return-void
.end method

.method public hasMissedEventCount()Z
    .locals 1

    .prologue
    .line 268
    iget v0, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget;->mMissedCallCount:I

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget;->mMissedMsgCount:I

    if-lez v0, :cond_1

    .line 269
    :cond_0
    const/4 v0, 0x1

    .line 271
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMissedEventRemained()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 340
    iget-object v1, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 343
    .local v0, mNM:Landroid/app/NotificationManager;
    if-nez v0, :cond_0

    move v1, v5

    .line 351
    :goto_0
    return v1

    .line 346
    :cond_0
    const-string v1, "com.android.phone"

    invoke-virtual {v0, v1, v3}, Landroid/app/NotificationManager;->getEventIndexWithReq(Ljava/lang/String;I)I

    move-result v1

    if-le v1, v4, :cond_1

    move v1, v3

    .line 347
    goto :goto_0

    .line 348
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget;->MSG_PKG:Ljava/lang/String;

    const/16 v2, 0x7b

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->getEventIndexWithReq(Ljava/lang/String;I)I

    move-result v1

    if-le v1, v4, :cond_2

    move v1, v3

    .line 349
    goto :goto_0

    :cond_2
    move v1, v5

    .line 351
    goto :goto_0
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 1
    .parameter "v"
    .parameter "grabbedState"

    .prologue
    .line 202
    if-nez p2, :cond_0

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 205
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 171
    const-string v0, "SGS2LockScreenMissedEventWidget"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 178
    const-string v0, "SGS2LockScreenMissedEventWidget"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget;->updateMissedEvent()V

    .line 181
    return-void
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 1
    .parameter "v"
    .parameter "whichHandle"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget;->mSelector:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v0}, Lcom/android/internal/widget/SlidingTab;->cancelAnimation()V

    .line 192
    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 193
    sget-object v0, Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget$NotiMode;->MissedCall:Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget$NotiMode;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget;->sendIntent(Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget$NotiMode;)V

    .line 197
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 198
    return-void

    .line 194
    :cond_2
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 195
    sget-object v0, Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget$NotiMode;->MissedMsg:Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget$NotiMode;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget;->sendIntent(Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget$NotiMode;)V

    goto :goto_0
.end method

.method public setControllerVisibility(Z)V
    .locals 2
    .parameter "bIsStop"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_0

    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 185
    return-void

    .line 184
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
