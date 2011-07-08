package com.android.launcher2; class SymmetricalLinearTween$1 {/*

.class Lcom/android/launcher2/SymmetricalLinearTween$1;
.super Ljava/lang/Object;
.source "SymmetricalLinearTween.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/SymmetricalLinearTween;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/SymmetricalLinearTween;


# direct methods
.method constructor <init>(Lcom/android/launcher2/SymmetricalLinearTween;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/launcher2/SymmetricalLinearTween$1;->this$0:Lcom/android/launcher2/SymmetricalLinearTween;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/high16 v14, 0x3f80

    .line 92
    #v14=(Integer);
    iget-object v12, p0, Lcom/android/launcher2/SymmetricalLinearTween$1;->this$0:Lcom/android/launcher2/SymmetricalLinearTween;

    #v12=(Reference);
    iget-wide v0, v12, Lcom/android/launcher2/SymmetricalLinearTween;->mBase:J

    .line 93
    .local v0, base:J
    #v0=(LongLo);v1=(LongHi);
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 94
    .local v8, now:J
    #v8=(LongLo);v9=(LongHi);
    sub-long v2, v8, v0

    .line 95
    .local v2, diff:J
    #v2=(LongLo);v3=(LongHi);
    iget-object v12, p0, Lcom/android/launcher2/SymmetricalLinearTween$1;->this$0:Lcom/android/launcher2/SymmetricalLinearTween;

    iget v4, v12, Lcom/android/launcher2/SymmetricalLinearTween;->mDuration:I

    .line 96
    .local v4, duration:I
    #v4=(Integer);
    long-to-float v12, v2

    #v12=(Float);
    int-to-float v13, v4

    #v13=(Float);
    div-float v11, v12, v13

    .line 97
    .local v11, val:F
    #v11=(Float);
    iget-object v12, p0, Lcom/android/launcher2/SymmetricalLinearTween$1;->this$0:Lcom/android/launcher2/SymmetricalLinearTween;

    #v12=(Reference);
    iget-boolean v12, v12, Lcom/android/launcher2/SymmetricalLinearTween;->mDirection:Z

    #v12=(Boolean);
    if-nez v12, :cond_0

    .line 98
    sub-float v11, v14, v11

    .line 100
    :cond_0
    cmpl-float v12, v11, v14

    #v12=(Byte);
    if-lez v12, :cond_4

    .line 101
    const/high16 v11, 0x3f80

    .line 105
    :cond_1
    :goto_0
    #v11=(Integer);
    iget-object v12, p0, Lcom/android/launcher2/SymmetricalLinearTween$1;->this$0:Lcom/android/launcher2/SymmetricalLinearTween;

    #v12=(Reference);
    iget v10, v12, Lcom/android/launcher2/SymmetricalLinearTween;->mValue:F

    .line 106
    .local v10, old:F
    #v10=(Integer);
    iget-object v12, p0, Lcom/android/launcher2/SymmetricalLinearTween$1;->this$0:Lcom/android/launcher2/SymmetricalLinearTween;

    iput v11, v12, Lcom/android/launcher2/SymmetricalLinearTween;->mValue:F

    .line 107
    iget-object v12, p0, Lcom/android/launcher2/SymmetricalLinearTween$1;->this$0:Lcom/android/launcher2/SymmetricalLinearTween;

    iget-object v12, v12, Lcom/android/launcher2/SymmetricalLinearTween;->mCallback:Lcom/android/launcher2/TweenCallback;

    invoke-interface {v12, v11, v10}, Lcom/android/launcher2/TweenCallback;->onTweenValueChanged(FF)V

    .line 108
    const-wide/16 v12, 0x21

    #v12=(LongLo);v13=(LongHi);
    div-long v12, v2, v12

    long-to-int v5, v12

    .line 109
    .local v5, frame:I
    #v5=(Integer);
    add-int/lit8 v12, v5, 0x1

    #v12=(Integer);
    mul-int/lit8 v12, v12, 0x21

    int-to-long v12, v12

    #v12=(LongLo);
    add-long v6, v0, v12

    .line 110
    .local v6, next:J
    #v6=(LongLo);v7=(LongHi);
    int-to-long v12, v4

    cmp-long v12, v2, v12

    #v12=(Byte);
    if-gez v12, :cond_2

    .line 111
    iget-object v12, p0, Lcom/android/launcher2/SymmetricalLinearTween$1;->this$0:Lcom/android/launcher2/SymmetricalLinearTween;

    #v12=(Reference);
    iget-object v12, v12, Lcom/android/launcher2/SymmetricalLinearTween;->mHandler:Landroid/os/Handler;

    invoke-virtual {v12, p0, v6, v7}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 113
    :cond_2
    #v12=(Conflicted);
    int-to-long v12, v4

    #v12=(LongLo);
    cmp-long v12, v2, v12

    #v12=(Byte);
    if-ltz v12, :cond_3

    .line 114
    iget-object v12, p0, Lcom/android/launcher2/SymmetricalLinearTween$1;->this$0:Lcom/android/launcher2/SymmetricalLinearTween;

    #v12=(Reference);
    iget-object v12, v12, Lcom/android/launcher2/SymmetricalLinearTween;->mCallback:Lcom/android/launcher2/TweenCallback;

    invoke-interface {v12}, Lcom/android/launcher2/TweenCallback;->onTweenFinished()V

    .line 115
    iget-object v12, p0, Lcom/android/launcher2/SymmetricalLinearTween$1;->this$0:Lcom/android/launcher2/SymmetricalLinearTween;

    const/4 v13, 0x0

    #v13=(Null);
    iput-boolean v13, v12, Lcom/android/launcher2/SymmetricalLinearTween;->mRunning:Z

    .line 117
    :cond_3
    #v12=(Conflicted);v13=(Conflicted);
    return-void

    .line 102
    .end local v5           #frame:I
    .end local v6           #next:J
    .end local v10           #old:F
    :cond_4
    #v5=(Uninit);v6=(Uninit);v7=(Uninit);v10=(Uninit);v11=(Float);v12=(Byte);v13=(Float);
    const/4 v12, 0x0

    #v12=(Null);
    cmpg-float v12, v11, v12

    #v12=(Byte);
    if-gez v12, :cond_1

    .line 103
    const/4 v11, 0x0

    #v11=(Null);
    goto :goto_0
.end method

*/}
