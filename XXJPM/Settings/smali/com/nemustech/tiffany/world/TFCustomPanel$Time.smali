.class public Lcom/nemustech/tiffany/world/TFCustomPanel$Time;
.super Ljava/lang/Object;
.source "TFCustomPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemustech/tiffany/world/TFCustomPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Time"
.end annotation


# static fields
.field public static final ELAPSE:I = 0x32


# instance fields
.field protected mDuration:I

.field protected mElapse:I

.field protected mTickAccum:I

.field protected mTicks:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 476
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 477
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/world/TFCustomPanel$Time;->start(I)V

    .line 478
    return-void
.end method


# virtual methods
.method public getDuration()I
    .locals 1

    .prologue
    .line 532
    iget v0, p0, Lcom/nemustech/tiffany/world/TFCustomPanel$Time;->mDuration:I

    return v0
.end method

.method public getElapse()I
    .locals 1

    .prologue
    .line 526
    iget v0, p0, Lcom/nemustech/tiffany/world/TFCustomPanel$Time;->mElapse:I

    return v0
.end method

.method public getTicks()I
    .locals 1

    .prologue
    .line 520
    iget v0, p0, Lcom/nemustech/tiffany/world/TFCustomPanel$Time;->mTicks:I

    return v0
.end method

.method public hasEnded()Z
    .locals 2

    .prologue
    .line 513
    iget v0, p0, Lcom/nemustech/tiffany/world/TFCustomPanel$Time;->mTicks:I

    iget v1, p0, Lcom/nemustech/tiffany/world/TFCustomPanel$Time;->mDuration:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public start(I)V
    .locals 1
    .parameter "duration"

    .prologue
    .line 485
    const/16 v0, 0x32

    invoke-virtual {p0, p1, v0}, Lcom/nemustech/tiffany/world/TFCustomPanel$Time;->start(II)V

    .line 486
    return-void
.end method

.method public start(II)V
    .locals 1
    .parameter "duration"
    .parameter "elapse"

    .prologue
    const/4 v0, 0x0

    .line 491
    iput v0, p0, Lcom/nemustech/tiffany/world/TFCustomPanel$Time;->mTickAccum:I

    .line 492
    iput p2, p0, Lcom/nemustech/tiffany/world/TFCustomPanel$Time;->mElapse:I

    .line 493
    iput p1, p0, Lcom/nemustech/tiffany/world/TFCustomPanel$Time;->mDuration:I

    .line 494
    iput v0, p0, Lcom/nemustech/tiffany/world/TFCustomPanel$Time;->mTicks:I

    .line 495
    return-void
.end method

.method public update(I)Z
    .locals 3
    .parameter "tickPassed"

    .prologue
    const/4 v2, 0x0

    .line 501
    iget v0, p0, Lcom/nemustech/tiffany/world/TFCustomPanel$Time;->mTickAccum:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/nemustech/tiffany/world/TFCustomPanel$Time;->mTickAccum:I

    .line 502
    iget v0, p0, Lcom/nemustech/tiffany/world/TFCustomPanel$Time;->mTickAccum:I

    iget v1, p0, Lcom/nemustech/tiffany/world/TFCustomPanel$Time;->mElapse:I

    if-ge v0, v1, :cond_0

    move v0, v2

    .line 506
    :goto_0
    return v0

    .line 504
    :cond_0
    iput v2, p0, Lcom/nemustech/tiffany/world/TFCustomPanel$Time;->mTickAccum:I

    .line 505
    iget v0, p0, Lcom/nemustech/tiffany/world/TFCustomPanel$Time;->mTicks:I

    iget v1, p0, Lcom/nemustech/tiffany/world/TFCustomPanel$Time;->mElapse:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/nemustech/tiffany/world/TFCustomPanel$Time;->mTicks:I

    .line 506
    const/4 v0, 0x1

    goto :goto_0
.end method
