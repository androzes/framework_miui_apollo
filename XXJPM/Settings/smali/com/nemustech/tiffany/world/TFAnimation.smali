.class public abstract Lcom/nemustech/tiffany/world/TFAnimation;
.super Ljava/lang/Object;
.source "TFAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nemustech/tiffany/world/TFAnimation$AnimationEventListener;
    }
.end annotation


# static fields
.field public static final RESET:I = 0x0

.field public static final START:I = 0x1

.field public static final STOP:I = 0x2

.field private static final TAG:Ljava/lang/String; = "TFAnimation"


# instance fields
.field protected mActiveSubject:Lcom/nemustech/tiffany/world/TFObject;

.field private mAnimationEventListener:Lcom/nemustech/tiffany/world/TFAnimation$AnimationEventListener;

.field protected mDuration:I

.field protected mElapse:I

.field protected mState:I

.field protected mSubject:Lcom/nemustech/tiffany/world/TFObject;

.field protected mTicks:I

.field protected mTime:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFAnimation;->reset()V

    .line 13
    return-void
.end method


# virtual methods
.method public abstract OnFrame()V
.end method

.method public abstract OnStart()Z
.end method

.method public abstract OnStop()Z
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/nemustech/tiffany/world/TFAnimation;->mDuration:I

    return v0
.end method

.method public getSubject()Lcom/nemustech/tiffany/world/TFObject;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFAnimation;->mSubject:Lcom/nemustech/tiffany/world/TFObject;

    return-object v0
.end method

.method public getT()F
    .locals 3

    .prologue
    .line 49
    iget v1, p0, Lcom/nemustech/tiffany/world/TFAnimation;->mTime:I

    int-to-float v1, v1

    iget v2, p0, Lcom/nemustech/tiffany/world/TFAnimation;->mDuration:I

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 50
    .local v0, t:F
    const/high16 v1, 0x3f80

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 51
    const/high16 v0, 0x3f80

    .line 52
    :cond_0
    return v0
.end method

.method public getTime()I
    .locals 2

    .prologue
    .line 40
    iget v0, p0, Lcom/nemustech/tiffany/world/TFAnimation;->mTime:I

    iget v1, p0, Lcom/nemustech/tiffany/world/TFAnimation;->mDuration:I

    if-le v0, v1, :cond_0

    .line 41
    iget v0, p0, Lcom/nemustech/tiffany/world/TFAnimation;->mDuration:I

    .line 42
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/nemustech/tiffany/world/TFAnimation;->mTime:I

    goto :goto_0
.end method

.method public hasEnded()Z
    .locals 2

    .prologue
    .line 159
    iget v0, p0, Lcom/nemustech/tiffany/world/TFAnimation;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasStarted()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 153
    iget v0, p0, Lcom/nemustech/tiffany/world/TFAnimation;->mState:I

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/world/TFAnimation;->reset(Z)V

    .line 101
    return-void
.end method

.method public reset(Z)V
    .locals 3
    .parameter "tryStop"

    .prologue
    const/4 v2, 0x0

    .line 108
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/nemustech/tiffany/world/TFAnimation;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFAnimation;->stop()V

    .line 111
    :cond_0
    iput v2, p0, Lcom/nemustech/tiffany/world/TFAnimation;->mState:I

    .line 112
    iput v2, p0, Lcom/nemustech/tiffany/world/TFAnimation;->mDuration:I

    .line 113
    iput v2, p0, Lcom/nemustech/tiffany/world/TFAnimation;->mTime:I

    .line 114
    const/16 v0, 0x1e

    iput v0, p0, Lcom/nemustech/tiffany/world/TFAnimation;->mElapse:I

    .line 115
    iput v2, p0, Lcom/nemustech/tiffany/world/TFAnimation;->mTicks:I

    .line 116
    return-void
.end method

.method public setAnimationEventListener(Lcom/nemustech/tiffany/world/TFAnimation$AnimationEventListener;)V
    .locals 0
    .parameter "animationListener"

    .prologue
    .line 194
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFAnimation;->mAnimationEventListener:Lcom/nemustech/tiffany/world/TFAnimation$AnimationEventListener;

    .line 195
    return-void
.end method

.method public setDuration(I)V
    .locals 2
    .parameter "duration"

    .prologue
    .line 24
    iget v0, p0, Lcom/nemustech/tiffany/world/TFAnimation;->mState:I

    if-eqz v0, :cond_0

    .line 25
    const-string v0, "TFAnimation"

    const-string v1, "setDuration: invalid state"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    :goto_0
    return-void

    .line 28
    :cond_0
    iput p1, p0, Lcom/nemustech/tiffany/world/TFAnimation;->mDuration:I

    goto :goto_0
.end method

.method public start()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 61
    iget v0, p0, Lcom/nemustech/tiffany/world/TFAnimation;->mState:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/nemustech/tiffany/world/TFAnimation;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 62
    const-string v0, "TFAnimation"

    const-string v1, "start: invalid state"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/nemustech/tiffany/world/TFAnimation;->mState:I

    .line 67
    iput v2, p0, Lcom/nemustech/tiffany/world/TFAnimation;->mTime:I

    .line 68
    iput v2, p0, Lcom/nemustech/tiffany/world/TFAnimation;->mTicks:I

    .line 70
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFAnimation;->OnStart()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFAnimation;->mAnimationEventListener:Lcom/nemustech/tiffany/world/TFAnimation$AnimationEventListener;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFAnimation;->mAnimationEventListener:Lcom/nemustech/tiffany/world/TFAnimation$AnimationEventListener;

    invoke-interface {v0, p0}, Lcom/nemustech/tiffany/world/TFAnimation$AnimationEventListener;->onAnimationStart(Lcom/nemustech/tiffany/world/TFAnimation;)V

    goto :goto_0
.end method

.method public stop()V
    .locals 3

    .prologue
    const-string v2, "TFAnimation"

    .line 84
    iget v0, p0, Lcom/nemustech/tiffany/world/TFAnimation;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 85
    const-string v0, "TFAnimation"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stop: invalid state at state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nemustech/tiffany/world/TFAnimation;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/nemustech/tiffany/world/TFAnimation;->mState:I

    .line 89
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFAnimation;->OnStop()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    const-string v0, "TFAnimation"

    const-string v0, "onstop listener is being called"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFAnimation;->mAnimationEventListener:Lcom/nemustech/tiffany/world/TFAnimation$AnimationEventListener;

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFAnimation;->mAnimationEventListener:Lcom/nemustech/tiffany/world/TFAnimation$AnimationEventListener;

    invoke-interface {v0, p0}, Lcom/nemustech/tiffany/world/TFAnimation$AnimationEventListener;->onAnimationEnd(Lcom/nemustech/tiffany/world/TFAnimation;)V

    .line 94
    :cond_1
    return-void
.end method

.method public update(I)Z
    .locals 3
    .parameter "tickPassed"

    .prologue
    const/4 v2, 0x0

    .line 122
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFAnimation;->hasStarted()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    .line 132
    :goto_0
    return v0

    .line 124
    :cond_0
    invoke-virtual {p0, p1}, Lcom/nemustech/tiffany/world/TFAnimation;->updateTime(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 125
    iget v0, p0, Lcom/nemustech/tiffany/world/TFAnimation;->mTime:I

    iget v1, p0, Lcom/nemustech/tiffany/world/TFAnimation;->mDuration:I

    if-lt v0, v1, :cond_1

    .line 126
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFAnimation;->stop()V

    move v0, v2

    .line 127
    goto :goto_0

    .line 130
    :cond_1
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFAnimation;->OnFrame()V

    .line 132
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public updateTime(I)Z
    .locals 4
    .parameter "tickPassed"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 140
    iget v0, p0, Lcom/nemustech/tiffany/world/TFAnimation;->mState:I

    if-eq v0, v3, :cond_0

    move v0, v2

    .line 147
    :goto_0
    return v0

    .line 142
    :cond_0
    iget v0, p0, Lcom/nemustech/tiffany/world/TFAnimation;->mTicks:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/nemustech/tiffany/world/TFAnimation;->mTicks:I

    .line 143
    iget v0, p0, Lcom/nemustech/tiffany/world/TFAnimation;->mTicks:I

    iget v1, p0, Lcom/nemustech/tiffany/world/TFAnimation;->mElapse:I

    if-ge v0, v1, :cond_1

    move v0, v2

    .line 144
    goto :goto_0

    .line 145
    :cond_1
    iget v0, p0, Lcom/nemustech/tiffany/world/TFAnimation;->mTicks:I

    iget v1, p0, Lcom/nemustech/tiffany/world/TFAnimation;->mElapse:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/nemustech/tiffany/world/TFAnimation;->mTicks:I

    .line 146
    iget v0, p0, Lcom/nemustech/tiffany/world/TFAnimation;->mTime:I

    iget v1, p0, Lcom/nemustech/tiffany/world/TFAnimation;->mElapse:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/nemustech/tiffany/world/TFAnimation;->mTime:I

    move v0, v3

    .line 147
    goto :goto_0
.end method
