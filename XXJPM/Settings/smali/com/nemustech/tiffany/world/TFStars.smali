.class public Lcom/nemustech/tiffany/world/TFStars;
.super Lcom/nemustech/tiffany/world/TFModel;
.source "TFStars.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TFStars"


# instance fields
.field protected mColors:Ljava/nio/FloatBuffer;

.field protected mCount:I

.field protected mDefaultColor:[F

.field protected mDepth:F

.field protected mPoints:Ljava/nio/FloatBuffer;

.field protected mRandom:Ljava/util/Random;

.field protected mUseDefaultColor:Z


# direct methods
.method public constructor <init>(FF)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 47
    const/high16 v0, 0x3f80

    invoke-direct {p0, p1, p2, v0}, Lcom/nemustech/tiffany/world/TFStars;-><init>(FFF)V

    .line 48
    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 3
    .parameter "width"
    .parameter "height"
    .parameter "depth"

    .prologue
    const/4 v1, 0x0

    const v2, 0x3f4ccccd

    .line 27
    invoke-direct {p0}, Lcom/nemustech/tiffany/world/TFModel;-><init>()V

    .line 28
    iput p1, p0, Lcom/nemustech/tiffany/world/TFStars;->mWidth:F

    .line 29
    iput p2, p0, Lcom/nemustech/tiffany/world/TFStars;->mHeight:F

    .line 30
    iput p3, p0, Lcom/nemustech/tiffany/world/TFStars;->mDepth:F

    .line 31
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFStars;->mRandom:Ljava/util/Random;

    .line 32
    iput-object v1, p0, Lcom/nemustech/tiffany/world/TFStars;->mPoints:Ljava/nio/FloatBuffer;

    .line 33
    iput-object v1, p0, Lcom/nemustech/tiffany/world/TFStars;->mColors:Ljava/nio/FloatBuffer;

    .line 34
    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFStars;->mDefaultColor:[F

    .line 35
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFStars;->mDefaultColor:[F

    const/4 v1, 0x0

    aput v2, v0, v1

    .line 36
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFStars;->mDefaultColor:[F

    const/4 v1, 0x1

    aput v2, v0, v1

    .line 37
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFStars;->mDefaultColor:[F

    const/4 v1, 0x2

    aput v2, v0, v1

    .line 38
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFStars;->mDefaultColor:[F

    const/4 v1, 0x3

    const/high16 v2, 0x3f80

    aput v2, v0, v1

    .line 39
    return-void
.end method

.method private allocBuffer(I)Ljava/nio/FloatBuffer;
    .locals 2
    .parameter "size"

    .prologue
    .line 167
    mul-int/lit8 v0, p1, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected deployColors()V
    .locals 11

    .prologue
    const v10, 0x3f333333

    const v9, 0x3e4ccccd

    const/4 v8, 0x0

    .line 130
    iget-object v5, p0, Lcom/nemustech/tiffany/world/TFStars;->mColors:Ljava/nio/FloatBuffer;

    if-nez v5, :cond_0

    .line 164
    :goto_0
    return-void

    .line 133
    :cond_0
    iget-object v5, p0, Lcom/nemustech/tiffany/world/TFStars;->mRandom:Ljava/util/Random;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/util/Random;->setSeed(J)V

    .line 134
    iget-object v5, p0, Lcom/nemustech/tiffany/world/TFStars;->mColors:Ljava/nio/FloatBuffer;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 135
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    iget v5, p0, Lcom/nemustech/tiffany/world/TFStars;->mCount:I

    mul-int/lit8 v5, v5, 0x8

    div-int/lit8 v5, v5, 0xa

    if-ge v3, v5, :cond_1

    .line 136
    iget-object v5, p0, Lcom/nemustech/tiffany/world/TFStars;->mRandom:Ljava/util/Random;

    invoke-virtual {v5}, Ljava/util/Random;->nextFloat()F

    move-result v2

    .line 137
    .local v2, c:F
    iget-object v5, p0, Lcom/nemustech/tiffany/world/TFStars;->mColors:Ljava/nio/FloatBuffer;

    invoke-virtual {v5, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 138
    iget-object v5, p0, Lcom/nemustech/tiffany/world/TFStars;->mColors:Ljava/nio/FloatBuffer;

    invoke-virtual {v5, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 139
    iget-object v5, p0, Lcom/nemustech/tiffany/world/TFStars;->mColors:Ljava/nio/FloatBuffer;

    invoke-virtual {v5, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 140
    iget-object v5, p0, Lcom/nemustech/tiffany/world/TFStars;->mColors:Ljava/nio/FloatBuffer;

    const/high16 v6, 0x3f80

    invoke-virtual {v5, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 135
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 143
    .end local v2           #c:F
    :cond_1
    const/4 v3, 0x0

    :goto_2
    iget v5, p0, Lcom/nemustech/tiffany/world/TFStars;->mCount:I

    mul-int/lit8 v5, v5, 0x1

    div-int/lit8 v5, v5, 0xa

    if-ge v3, v5, :cond_2

    .line 145
    iget-object v5, p0, Lcom/nemustech/tiffany/world/TFStars;->mRandom:Ljava/util/Random;

    invoke-virtual {v5}, Ljava/util/Random;->nextFloat()F

    move-result v4

    .line 146
    .local v4, r:F
    iget-object v5, p0, Lcom/nemustech/tiffany/world/TFStars;->mRandom:Ljava/util/Random;

    invoke-virtual {v5}, Ljava/util/Random;->nextFloat()F

    move-result v0

    .line 147
    .local v0, a:F
    iget-object v5, p0, Lcom/nemustech/tiffany/world/TFStars;->mColors:Ljava/nio/FloatBuffer;

    invoke-virtual {v5, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 148
    iget-object v5, p0, Lcom/nemustech/tiffany/world/TFStars;->mColors:Ljava/nio/FloatBuffer;

    invoke-virtual {v5, v8}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 149
    iget-object v5, p0, Lcom/nemustech/tiffany/world/TFStars;->mColors:Ljava/nio/FloatBuffer;

    invoke-virtual {v5, v8}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 150
    iget-object v5, p0, Lcom/nemustech/tiffany/world/TFStars;->mColors:Ljava/nio/FloatBuffer;

    mul-float v6, v0, v9

    add-float/2addr v6, v10

    invoke-virtual {v5, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 143
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 153
    .end local v0           #a:F
    .end local v4           #r:F
    :cond_2
    const/4 v3, 0x0

    :goto_3
    iget v5, p0, Lcom/nemustech/tiffany/world/TFStars;->mCount:I

    mul-int/lit8 v5, v5, 0x1

    div-int/lit8 v5, v5, 0xa

    if-ge v3, v5, :cond_3

    .line 155
    iget-object v5, p0, Lcom/nemustech/tiffany/world/TFStars;->mRandom:Ljava/util/Random;

    invoke-virtual {v5}, Ljava/util/Random;->nextFloat()F

    move-result v1

    .line 156
    .local v1, b:F
    iget-object v5, p0, Lcom/nemustech/tiffany/world/TFStars;->mRandom:Ljava/util/Random;

    invoke-virtual {v5}, Ljava/util/Random;->nextFloat()F

    move-result v2

    .line 157
    .restart local v2       #c:F
    iget-object v5, p0, Lcom/nemustech/tiffany/world/TFStars;->mRandom:Ljava/util/Random;

    invoke-virtual {v5}, Ljava/util/Random;->nextFloat()F

    move-result v0

    .line 158
    .restart local v0       #a:F
    iget-object v5, p0, Lcom/nemustech/tiffany/world/TFStars;->mColors:Ljava/nio/FloatBuffer;

    invoke-virtual {v5, v8}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 159
    iget-object v5, p0, Lcom/nemustech/tiffany/world/TFStars;->mColors:Ljava/nio/FloatBuffer;

    invoke-virtual {v5, v8}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 160
    iget-object v5, p0, Lcom/nemustech/tiffany/world/TFStars;->mColors:Ljava/nio/FloatBuffer;

    invoke-virtual {v5, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 161
    iget-object v5, p0, Lcom/nemustech/tiffany/world/TFStars;->mColors:Ljava/nio/FloatBuffer;

    mul-float v6, v0, v9

    add-float/2addr v6, v10

    invoke-virtual {v5, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 153
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 163
    .end local v0           #a:F
    .end local v1           #b:F
    .end local v2           #c:F
    :cond_3
    iget-object v5, p0, Lcom/nemustech/tiffany/world/TFStars;->mColors:Ljava/nio/FloatBuffer;

    invoke-virtual {v5}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    goto/16 :goto_0
.end method

.method protected deployStars()V
    .locals 8

    .prologue
    const/high16 v7, 0x3f00

    .line 117
    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFStars;->mRandom:Ljava/util/Random;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/util/Random;->setSeed(J)V

    .line 118
    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFStars;->mPoints:Ljava/nio/FloatBuffer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 119
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v4, p0, Lcom/nemustech/tiffany/world/TFStars;->mCount:I

    if-ge v0, v4, :cond_0

    .line 120
    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFStars;->mRandom:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextFloat()F

    move-result v4

    sub-float/2addr v4, v7

    iget v5, p0, Lcom/nemustech/tiffany/world/TFStars;->mWidth:F

    mul-float v1, v4, v5

    .line 121
    .local v1, x:F
    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFStars;->mRandom:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextFloat()F

    move-result v4

    sub-float/2addr v4, v7

    iget v5, p0, Lcom/nemustech/tiffany/world/TFStars;->mHeight:F

    mul-float v2, v4, v5

    .line 122
    .local v2, y:F
    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFStars;->mRandom:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextFloat()F

    move-result v4

    sub-float/2addr v4, v7

    iget v5, p0, Lcom/nemustech/tiffany/world/TFStars;->mDepth:F

    mul-float v3, v4, v5

    .line 123
    .local v3, z:F
    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFStars;->mPoints:Ljava/nio/FloatBuffer;

    invoke-virtual {v4, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 124
    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFStars;->mPoints:Ljava/nio/FloatBuffer;

    invoke-virtual {v4, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 125
    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFStars;->mPoints:Ljava/nio/FloatBuffer;

    invoke-virtual {v4, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 119
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 127
    .end local v1           #x:F
    .end local v2           #y:F
    .end local v3           #z:F
    :cond_0
    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFStars;->mPoints:Ljava/nio/FloatBuffer;

    invoke-virtual {v4}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    .line 128
    return-void
.end method

.method draw(Ljavax/microedition/khronos/opengles/GL10;I)V
    .locals 9
    .parameter "gl"
    .parameter "tickPassed"

    .prologue
    const v8, 0x8076

    const/16 v7, 0x1406

    const/16 v6, 0xde1

    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 88
    invoke-super {p0, p1, p2}, Lcom/nemustech/tiffany/world/TFModel;->draw(Ljavax/microedition/khronos/opengles/GL10;I)V

    .line 90
    invoke-interface {p1, v6}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 91
    invoke-interface {p1, v8}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 94
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFStars;->mColors:Ljava/nio/FloatBuffer;

    if-nez v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFStars;->mDefaultColor:[F

    aget v0, v0, v4

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFStars;->mDefaultColor:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFStars;->mDefaultColor:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFStars;->mDefaultColor:[F

    aget v3, v3, v5

    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 101
    :goto_0
    const/high16 v0, 0x3f80

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glPointSize(F)V

    .line 104
    const v0, 0x8074

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 105
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFStars;->mPoints:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v5, v7, v4, v0}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 106
    const/high16 v0, 0x4020

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glPointSize(F)V

    .line 109
    iget v0, p0, Lcom/nemustech/tiffany/world/TFStars;->mCount:I

    invoke-interface {p1, v4, v4, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 112
    invoke-interface {p1, v8}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 113
    invoke-interface {p1, v6}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 114
    return-void

    .line 98
    :cond_0
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFStars;->mColors:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v0, v7, v4, v1}, Ljavax/microedition/khronos/opengles/GL10;->glColorPointer(IIILjava/nio/Buffer;)V

    goto :goto_0
.end method

.method public setCount(IZ)V
    .locals 1
    .parameter "count"
    .parameter "useDefaultColor"

    .prologue
    .line 56
    iput p1, p0, Lcom/nemustech/tiffany/world/TFStars;->mCount:I

    .line 57
    iput-boolean p2, p0, Lcom/nemustech/tiffany/world/TFStars;->mUseDefaultColor:Z

    .line 59
    iget v0, p0, Lcom/nemustech/tiffany/world/TFStars;->mCount:I

    mul-int/lit8 v0, v0, 0x3

    invoke-direct {p0, v0}, Lcom/nemustech/tiffany/world/TFStars;->allocBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFStars;->mPoints:Ljava/nio/FloatBuffer;

    .line 60
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFStars;->deployStars()V

    .line 61
    iget-boolean v0, p0, Lcom/nemustech/tiffany/world/TFStars;->mUseDefaultColor:Z

    if-eqz v0, :cond_0

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFStars;->mColors:Ljava/nio/FloatBuffer;

    .line 68
    :goto_0
    return-void

    .line 65
    :cond_0
    iget v0, p0, Lcom/nemustech/tiffany/world/TFStars;->mCount:I

    mul-int/lit8 v0, v0, 0x4

    invoke-direct {p0, v0}, Lcom/nemustech/tiffany/world/TFStars;->allocBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFStars;->mColors:Ljava/nio/FloatBuffer;

    .line 66
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFStars;->deployColors()V

    goto :goto_0
.end method

.method public setDefaultColor(FFFF)V
    .locals 2
    .parameter "red"
    .parameter "green"
    .parameter "blue"
    .parameter "alpha"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFStars;->mDefaultColor:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 81
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFStars;->mDefaultColor:[F

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 82
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFStars;->mDefaultColor:[F

    const/4 v1, 0x2

    aput p3, v0, v1

    .line 83
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFStars;->mDefaultColor:[F

    const/4 v1, 0x3

    aput p4, v0, v1

    .line 84
    return-void
.end method
