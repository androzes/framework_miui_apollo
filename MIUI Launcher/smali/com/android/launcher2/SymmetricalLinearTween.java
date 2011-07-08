package com.android.launcher2; class SymmetricalLinearTween {/*

.class Lcom/android/launcher2/SymmetricalLinearTween;
.super Ljava/lang/Object;
.source "SymmetricalLinearTween.java"


# instance fields
.field mBase:J

.field mCallback:Lcom/android/launcher2/TweenCallback;

.field mDirection:Z

.field mDuration:I

.field mHandler:Landroid/os/Handler;

.field mRunning:Z

.field mTick:Ljava/lang/Runnable;

.field mValue:F


# direct methods
.method public constructor <init>(ZILcom/android/launcher2/TweenCallback;)V
    .locals 1
    .parameter "initial"
    .parameter "duration"
    .parameter "callback"

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    #p0=(Reference);
    new-instance v0, Lcom/android/launcher2/SymmetricalLinearTween$1;

    #v0=(UninitRef);
    invoke-direct {v0, p0}, Lcom/android/launcher2/SymmetricalLinearTween$1;-><init>(Lcom/android/launcher2/SymmetricalLinearTween;)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/launcher2/SymmetricalLinearTween;->mTick:Ljava/lang/Runnable;

    .line 46
    if-eqz p1, :cond_0

    const/high16 v0, 0x3f80

    :goto_0
    #v0=(Integer);
    iput v0, p0, Lcom/android/launcher2/SymmetricalLinearTween;->mValue:F

    .line 47
    iput-boolean p1, p0, Lcom/android/launcher2/SymmetricalLinearTween;->mDirection:Z

    .line 48
    iput p2, p0, Lcom/android/launcher2/SymmetricalLinearTween;->mDuration:I

    .line 49
    iput-object p3, p0, Lcom/android/launcher2/SymmetricalLinearTween;->mCallback:Lcom/android/launcher2/TweenCallback;

    .line 50
    new-instance v0, Landroid/os/Handler;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/launcher2/SymmetricalLinearTween;->mHandler:Landroid/os/Handler;

    .line 51
    return-void

    .line 46
    :cond_0
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method


# virtual methods
.method public start(Z)V
    .locals 2
    .parameter "direction"

    .prologue
    .line 60
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    #v0=(LongLo);v1=(LongHi);
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/launcher2/SymmetricalLinearTween;->start(ZJ)V

    .line 61
    return-void
.end method

.method public start(ZJ)V
    .locals 10
    .parameter "direction"
    .parameter "baseTime"

    .prologue
    .line 73
    iget-boolean v6, p0, Lcom/android/launcher2/SymmetricalLinearTween;->mDirection:Z

    #v6=(Boolean);
    if-eq p1, v6, :cond_0

    .line 74
    iget-boolean v6, p0, Lcom/android/launcher2/SymmetricalLinearTween;->mRunning:Z

    if-nez v6, :cond_1

    .line 75
    iput-wide p2, p0, Lcom/android/launcher2/SymmetricalLinearTween;->mBase:J

    .line 76
    const/4 v6, 0x1

    #v6=(One);
    iput-boolean v6, p0, Lcom/android/launcher2/SymmetricalLinearTween;->mRunning:Z

    .line 77
    iget-object v6, p0, Lcom/android/launcher2/SymmetricalLinearTween;->mCallback:Lcom/android/launcher2/TweenCallback;

    #v6=(Reference);
    invoke-interface {v6}, Lcom/android/launcher2/TweenCallback;->onTweenStarted()V

    .line 78
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    #v6=(LongLo);v7=(LongHi);
    const-wide/16 v8, 0x21

    #v8=(LongLo);v9=(LongHi);
    add-long v2, v6, v8

    .line 79
    .local v2, next:J
    #v2=(LongLo);v3=(LongHi);
    iget-object v6, p0, Lcom/android/launcher2/SymmetricalLinearTween;->mHandler:Landroid/os/Handler;

    #v6=(Reference);
    iget-object v7, p0, Lcom/android/launcher2/SymmetricalLinearTween;->mTick:Ljava/lang/Runnable;

    #v7=(Reference);
    invoke-virtual {v6, v7, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 86
    .end local v2           #next:J
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);
    iput-boolean p1, p0, Lcom/android/launcher2/SymmetricalLinearTween;->mDirection:Z

    .line 88
    :cond_0
    #v8=(Conflicted);v9=(Conflicted);
    return-void

    .line 82
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Boolean);v7=(Uninit);v8=(Uninit);v9=(Uninit);
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 83
    .local v4, now:J
    #v4=(LongLo);v5=(LongHi);
    iget-wide v6, p0, Lcom/android/launcher2/SymmetricalLinearTween;->mBase:J

    #v6=(LongLo);v7=(LongHi);
    sub-long v0, v4, v6

    .line 84
    .local v0, diff:J
    #v0=(LongLo);v1=(LongHi);
    add-long v6, v4, v0

    iget v8, p0, Lcom/android/launcher2/SymmetricalLinearTween;->mDuration:I

    #v8=(Integer);
    int-to-long v8, v8

    #v8=(LongLo);v9=(LongHi);
    sub-long/2addr v6, v8

    iput-wide v6, p0, Lcom/android/launcher2/SymmetricalLinearTween;->mBase:J

    goto :goto_0
.end method

*/}
