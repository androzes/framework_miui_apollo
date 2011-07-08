.class Lcom/android/server/KeyInputQueue$QueuedEvent;
.super Ljava/lang/Object;
.source "KeyInputQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/KeyInputQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "QueuedEvent"
.end annotation


# instance fields
.field classType:I

.field event:Ljava/lang/Object;

.field flags:I

.field inQueue:Z

.field inputDevice:Lcom/android/server/InputDevice;

.field next:Lcom/android/server/KeyInputQueue$QueuedEvent;

.field prev:Lcom/android/server/KeyInputQueue$QueuedEvent;

.field whenNano:J


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method copyFrom(Lcom/android/server/KeyInputQueue$QueuedEvent;)V
    .locals 2
    .parameter "that"

    .prologue
    .line 166
    iget-object v0, p1, Lcom/android/server/KeyInputQueue$QueuedEvent;->inputDevice:Lcom/android/server/InputDevice;

    iput-object v0, p0, Lcom/android/server/KeyInputQueue$QueuedEvent;->inputDevice:Lcom/android/server/InputDevice;

    .line 167
    iget-wide v0, p1, Lcom/android/server/KeyInputQueue$QueuedEvent;->whenNano:J

    iput-wide v0, p0, Lcom/android/server/KeyInputQueue$QueuedEvent;->whenNano:J

    .line 168
    iget v0, p1, Lcom/android/server/KeyInputQueue$QueuedEvent;->flags:I

    iput v0, p0, Lcom/android/server/KeyInputQueue$QueuedEvent;->flags:I

    .line 169
    iget v0, p1, Lcom/android/server/KeyInputQueue$QueuedEvent;->classType:I

    iput v0, p0, Lcom/android/server/KeyInputQueue$QueuedEvent;->classType:I

    .line 170
    iget-object v0, p1, Lcom/android/server/KeyInputQueue$QueuedEvent;->event:Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/server/KeyInputQueue$QueuedEvent;->event:Ljava/lang/Object;

    .line 171
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QueuedEvent{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/KeyInputQueue$QueuedEvent;->event:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
