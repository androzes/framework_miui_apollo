.class Lcom/android/server/KeyInputQueue$VirtualKey;
.super Ljava/lang/Object;
.source "KeyInputQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/KeyInputQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VirtualKey"
.end annotation


# instance fields
.field centerx:I

.field centery:I

.field height:I

.field hitBottom:I

.field hitLeft:I

.field hitRight:I

.field hitTop:I

.field lastDevice:Lcom/android/server/InputDevice;

.field lastKeycode:I

.field scancode:I

.field width:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method checkHit(II)Z
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 205
    iget v0, p0, Lcom/android/server/KeyInputQueue$VirtualKey;->hitLeft:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/android/server/KeyInputQueue$VirtualKey;->hitRight:I

    if-gt p1, v0, :cond_0

    iget v0, p0, Lcom/android/server/KeyInputQueue$VirtualKey;->hitTop:I

    if-lt p2, v0, :cond_0

    iget v0, p0, Lcom/android/server/KeyInputQueue$VirtualKey;->hitBottom:I

    if-gt p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method computeHitRect(Lcom/android/server/InputDevice;II)V
    .locals 11
    .parameter "dev"
    .parameter "dw"
    .parameter "dh"

    .prologue
    .line 210
    iget-object v10, p0, Lcom/android/server/KeyInputQueue$VirtualKey;->lastDevice:Lcom/android/server/InputDevice;

    if-ne p1, v10, :cond_0

    .line 236
    :goto_0
    return-void

    .line 217
    :cond_0
    iput-object p1, p0, Lcom/android/server/KeyInputQueue$VirtualKey;->lastDevice:Lcom/android/server/InputDevice;

    .line 219
    iget-object v10, p1, Lcom/android/server/InputDevice;->absX:Lcom/android/server/InputDevice$AbsoluteInfo;

    iget v6, v10, Lcom/android/server/InputDevice$AbsoluteInfo;->minValue:I

    .line 220
    .local v6, minx:I
    iget-object v10, p1, Lcom/android/server/InputDevice;->absX:Lcom/android/server/InputDevice$AbsoluteInfo;

    iget v4, v10, Lcom/android/server/InputDevice$AbsoluteInfo;->maxValue:I

    .line 222
    .local v4, maxx:I
    iget v10, p0, Lcom/android/server/KeyInputQueue$VirtualKey;->width:I

    div-int/lit8 v2, v10, 0x2

    .line 223
    .local v2, halfw:I
    iget v10, p0, Lcom/android/server/KeyInputQueue$VirtualKey;->centerx:I

    sub-int v3, v10, v2

    .line 224
    .local v3, left:I
    iget v10, p0, Lcom/android/server/KeyInputQueue$VirtualKey;->centerx:I

    add-int v8, v10, v2

    .line 225
    .local v8, right:I
    mul-int v10, v3, v4

    sub-int/2addr v10, v6

    div-int/2addr v10, p2

    add-int/2addr v10, v6

    iput v10, p0, Lcom/android/server/KeyInputQueue$VirtualKey;->hitLeft:I

    .line 226
    mul-int v10, v8, v4

    sub-int/2addr v10, v6

    div-int/2addr v10, p2

    add-int/2addr v10, v6

    iput v10, p0, Lcom/android/server/KeyInputQueue$VirtualKey;->hitRight:I

    .line 228
    iget-object v10, p1, Lcom/android/server/InputDevice;->absY:Lcom/android/server/InputDevice$AbsoluteInfo;

    iget v7, v10, Lcom/android/server/InputDevice$AbsoluteInfo;->minValue:I

    .line 229
    .local v7, miny:I
    iget-object v10, p1, Lcom/android/server/InputDevice;->absY:Lcom/android/server/InputDevice$AbsoluteInfo;

    iget v5, v10, Lcom/android/server/InputDevice$AbsoluteInfo;->maxValue:I

    .line 231
    .local v5, maxy:I
    iget v10, p0, Lcom/android/server/KeyInputQueue$VirtualKey;->height:I

    div-int/lit8 v1, v10, 0x2

    .line 232
    .local v1, halfh:I
    iget v10, p0, Lcom/android/server/KeyInputQueue$VirtualKey;->centery:I

    sub-int v9, v10, v1

    .line 233
    .local v9, top:I
    iget v10, p0, Lcom/android/server/KeyInputQueue$VirtualKey;->centery:I

    add-int v0, v10, v1

    .line 234
    .local v0, bottom:I
    mul-int v10, v9, v5

    sub-int/2addr v10, v7

    div-int/2addr v10, p3

    add-int/2addr v10, v7

    iput v10, p0, Lcom/android/server/KeyInputQueue$VirtualKey;->hitTop:I

    .line 235
    mul-int v10, v0, v5

    sub-int/2addr v10, v7

    div-int/2addr v10, p3

    add-int/2addr v10, v7

    iput v10, p0, Lcom/android/server/KeyInputQueue$VirtualKey;->hitBottom:I

    goto :goto_0
.end method
