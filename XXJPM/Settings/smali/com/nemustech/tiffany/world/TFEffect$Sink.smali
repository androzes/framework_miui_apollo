.class public Lcom/nemustech/tiffany/world/TFEffect$Sink;
.super Lcom/nemustech/tiffany/world/TFFlexiblePanel$Bezier3DPointBlender;
.source "TFEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemustech/tiffany/world/TFEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Sink"
.end annotation


# static fields
.field private static final mRotateDegree:I = 0xf

.field private static final mScalar:F = 1.5f


# instance fields
.field private XYZ:[F

.field private mAngles:[I

.field private mNext:Z

.field private mTicks:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 2218
    invoke-direct {p0}, Lcom/nemustech/tiffany/world/TFFlexiblePanel$Bezier3DPointBlender;-><init>()V

    .line 2300
    const/4 v0, 0x0

    iput v0, p0, Lcom/nemustech/tiffany/world/TFEffect$Sink;->mTicks:I

    .line 2301
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFEffect$Sink;->XYZ:[F

    .line 2302
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFEffect$Sink;->mAngles:[I

    return-void

    .line 2301
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 2302
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private newPoint([FII[F)V
    .locals 9
    .parameter "points"
    .parameter "j"
    .parameter "i"
    .parameter "coord"

    .prologue
    const/high16 v4, 0x3fc0

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/high16 v6, 0x3f00

    .line 2285
    mul-int/lit8 v3, p2, 0x4

    add-int/2addr v3, p3

    mul-int/lit8 v3, v3, 0x3

    add-int/lit8 v3, v3, 0x0

    aget v3, p1, v3

    sub-float/2addr v3, v6

    aput v3, p4, v7

    .line 2286
    mul-int/lit8 v3, p2, 0x4

    add-int/2addr v3, p3

    mul-int/lit8 v3, v3, 0x3

    add-int/lit8 v3, v3, 0x1

    aget v3, p1, v3

    sub-float/2addr v3, v6

    aput v3, p4, v8

    .line 2289
    aget v3, p4, v7

    div-float v1, v3, v4

    .line 2290
    .local v1, x:F
    aget v3, p4, v8

    div-float v2, v3, v4

    .line 2292
    .local v2, y:F
    const v0, 0x3e860a92

    .line 2293
    .local v0, rad:F
    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v4, v2

    sub-float/2addr v3, v4

    aput v3, p4, v7

    .line 2294
    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    aput v3, p4, v8

    .line 2295
    mul-int/lit8 v3, p2, 0x4

    add-int/2addr v3, p3

    mul-int/lit8 v3, v3, 0x3

    add-int/lit8 v3, v3, 0x0

    aget v4, p4, v7

    add-float/2addr v4, v6

    aput v4, p1, v3

    .line 2296
    mul-int/lit8 v3, p2, 0x4

    add-int/2addr v3, p3

    mul-int/lit8 v3, v3, 0x3

    add-int/lit8 v3, v3, 0x1

    aget v4, p4, v8

    add-float/2addr v4, v6

    aput v4, p1, v3

    .line 2298
    return-void
.end method


# virtual methods
.method public isNextAvailable()Z
    .locals 1

    .prologue
    .line 2281
    iget-boolean v0, p0, Lcom/nemustech/tiffany/world/TFEffect$Sink;->mNext:Z

    return v0
.end method

.method public onEnd()V
    .locals 0

    .prologue
    .line 2278
    return-void
.end method

.method public onFrame(I)Z
    .locals 9
    .parameter "tick"

    .prologue
    const/16 v2, 0x64

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2231
    iget v1, p0, Lcom/nemustech/tiffany/world/TFEffect$Sink;->mTicks:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/nemustech/tiffany/world/TFEffect$Sink;->mTicks:I

    .line 2232
    iget v1, p0, Lcom/nemustech/tiffany/world/TFEffect$Sink;->mTicks:I

    if-ge v1, v2, :cond_0

    move v1, v5

    .line 2273
    :goto_0
    return v1

    .line 2234
    :cond_0
    iget v1, p0, Lcom/nemustech/tiffany/world/TFEffect$Sink;->mTicks:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/nemustech/tiffany/world/TFEffect$Sink;->mTicks:I

    .line 2242
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-gt v0, v7, :cond_2

    .line 2243
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFEffect$Sink;->mAngles:[I

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0xf

    aput v2, v1, v0

    .line 2244
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFEffect$Sink;->mAngles:[I

    aget v1, v1, v0

    if-ltz v1, :cond_1

    .line 2245
    packed-switch v0, :pswitch_data_0

    .line 2242
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2247
    :pswitch_0
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFEffect$Sink;->mPoints:[F

    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFEffect$Sink;->XYZ:[F

    invoke-direct {p0, v1, v6, v6, v2}, Lcom/nemustech/tiffany/world/TFEffect$Sink;->newPoint([FII[F)V

    .line 2248
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFEffect$Sink;->mPoints:[F

    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFEffect$Sink;->XYZ:[F

    invoke-direct {p0, v1, v6, v7, v2}, Lcom/nemustech/tiffany/world/TFEffect$Sink;->newPoint([FII[F)V

    .line 2249
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFEffect$Sink;->mPoints:[F

    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFEffect$Sink;->XYZ:[F

    invoke-direct {p0, v1, v7, v6, v2}, Lcom/nemustech/tiffany/world/TFEffect$Sink;->newPoint([FII[F)V

    .line 2250
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFEffect$Sink;->mPoints:[F

    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFEffect$Sink;->XYZ:[F

    invoke-direct {p0, v1, v7, v7, v2}, Lcom/nemustech/tiffany/world/TFEffect$Sink;->newPoint([FII[F)V

    goto :goto_2

    .line 2253
    :pswitch_1
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFEffect$Sink;->mPoints:[F

    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFEffect$Sink;->XYZ:[F

    invoke-direct {p0, v1, v5, v6, v2}, Lcom/nemustech/tiffany/world/TFEffect$Sink;->newPoint([FII[F)V

    .line 2254
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFEffect$Sink;->mPoints:[F

    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFEffect$Sink;->XYZ:[F

    invoke-direct {p0, v1, v5, v7, v2}, Lcom/nemustech/tiffany/world/TFEffect$Sink;->newPoint([FII[F)V

    .line 2255
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFEffect$Sink;->mPoints:[F

    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFEffect$Sink;->XYZ:[F

    invoke-direct {p0, v1, v6, v5, v2}, Lcom/nemustech/tiffany/world/TFEffect$Sink;->newPoint([FII[F)V

    .line 2256
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFEffect$Sink;->mPoints:[F

    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFEffect$Sink;->XYZ:[F

    invoke-direct {p0, v1, v6, v8, v2}, Lcom/nemustech/tiffany/world/TFEffect$Sink;->newPoint([FII[F)V

    .line 2257
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFEffect$Sink;->mPoints:[F

    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFEffect$Sink;->XYZ:[F

    invoke-direct {p0, v1, v7, v5, v2}, Lcom/nemustech/tiffany/world/TFEffect$Sink;->newPoint([FII[F)V

    .line 2258
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFEffect$Sink;->mPoints:[F

    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFEffect$Sink;->XYZ:[F

    invoke-direct {p0, v1, v7, v8, v2}, Lcom/nemustech/tiffany/world/TFEffect$Sink;->newPoint([FII[F)V

    .line 2259
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFEffect$Sink;->mPoints:[F

    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFEffect$Sink;->XYZ:[F

    invoke-direct {p0, v1, v8, v6, v2}, Lcom/nemustech/tiffany/world/TFEffect$Sink;->newPoint([FII[F)V

    .line 2260
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFEffect$Sink;->mPoints:[F

    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFEffect$Sink;->XYZ:[F

    invoke-direct {p0, v1, v8, v7, v2}, Lcom/nemustech/tiffany/world/TFEffect$Sink;->newPoint([FII[F)V

    goto :goto_2

    .line 2263
    :pswitch_2
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFEffect$Sink;->mPoints:[F

    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFEffect$Sink;->XYZ:[F

    invoke-direct {p0, v1, v5, v5, v2}, Lcom/nemustech/tiffany/world/TFEffect$Sink;->newPoint([FII[F)V

    .line 2264
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFEffect$Sink;->mPoints:[F

    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFEffect$Sink;->XYZ:[F

    invoke-direct {p0, v1, v5, v8, v2}, Lcom/nemustech/tiffany/world/TFEffect$Sink;->newPoint([FII[F)V

    .line 2265
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFEffect$Sink;->mPoints:[F

    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFEffect$Sink;->XYZ:[F

    invoke-direct {p0, v1, v8, v5, v2}, Lcom/nemustech/tiffany/world/TFEffect$Sink;->newPoint([FII[F)V

    .line 2266
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFEffect$Sink;->mPoints:[F

    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFEffect$Sink;->XYZ:[F

    invoke-direct {p0, v1, v8, v8, v2}, Lcom/nemustech/tiffany/world/TFEffect$Sink;->newPoint([FII[F)V

    .line 2267
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFEffect$Sink;->XYZ:[F

    aget v1, v1, v5

    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFEffect$Sink;->XYZ:[F

    aget v2, v2, v5

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFEffect$Sink;->XYZ:[F

    aget v2, v2, v6

    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFEffect$Sink;->XYZ:[F

    aget v3, v3, v6

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-double v1, v1

    const-wide v3, 0x3f1a36e2eb1c432dL

    cmpg-double v1, v1, v3

    if-gez v1, :cond_1

    .line 2268
    iput-boolean v5, p0, Lcom/nemustech/tiffany/world/TFEffect$Sink;->mNext:Z

    goto/16 :goto_2

    :cond_2
    move v1, v6

    .line 2273
    goto/16 :goto_0

    .line 2245
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onStart()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2221
    iput v2, p0, Lcom/nemustech/tiffany/world/TFEffect$Sink;->mTicks:I

    .line 2222
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffect$Sink;->mPoints:[F

    invoke-static {v0}, Lcom/nemustech/tiffany/world/TFEffect$Sink;->setIdentityPoints([F)V

    .line 2223
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffect$Sink;->mAngles:[I

    const/16 v1, -0x1e

    aput v1, v0, v2

    .line 2224
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffect$Sink;->mAngles:[I

    const/16 v1, -0x5a

    aput v1, v0, v3

    .line 2225
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffect$Sink;->mAngles:[I

    const/4 v1, 0x2

    const/16 v2, -0x87

    aput v2, v0, v1

    .line 2226
    iput-boolean v3, p0, Lcom/nemustech/tiffany/world/TFEffect$Sink;->mNext:Z

    .line 2227
    return-void
.end method
