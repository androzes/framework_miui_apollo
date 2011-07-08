.class public Lcom/nemustech/tiffany/world/TFSphere;
.super Lcom/nemustech/tiffany/world/TFModel;
.source "TFSphere.java"


# static fields
.field protected static final N:I = 0x20

.field private static final TAG:Ljava/lang/String; = "TFSphere"


# instance fields
.field private mHitTestBuffer:[F

.field protected mLatitude:Ljava/nio/FloatBuffer;

.field protected mLatitudeColor:[F

.field protected mLatitudeEquatorColor:[F

.field protected mLatitudeSplit:I

.field protected mLatitudeStep:I

.field protected mLatitudeWidth:F

.field protected mLongitude:Ljava/nio/FloatBuffer;

.field protected mLongitudeColor:[F

.field protected mLongitudePrimeColor:[F

.field protected mLongitudeSplit:I

.field protected mLongitudeStep:I

.field protected mLongitudeWidth:F


# direct methods
.method public constructor <init>(Lcom/nemustech/tiffany/world/TFWorld;FF)V
    .locals 3
    .parameter "world"
    .parameter "width"
    .parameter "height"

    .prologue
    const/high16 v2, 0x3f00

    const/4 v1, 0x4

    .line 27
    invoke-direct {p0}, Lcom/nemustech/tiffany/world/TFModel;-><init>()V

    .line 566
    const/16 v0, 0xc

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFSphere;->mHitTestBuffer:[F

    .line 571
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFSphere;->mLatitudeEquatorColor:[F

    .line 572
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFSphere;->mLatitudeColor:[F

    .line 573
    iput v2, p0, Lcom/nemustech/tiffany/world/TFSphere;->mLatitudeWidth:F

    .line 578
    new-array v0, v1, [F

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFSphere;->mLongitudePrimeColor:[F

    .line 579
    new-array v0, v1, [F

    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFSphere;->mLongitudeColor:[F

    .line 580
    iput v2, p0, Lcom/nemustech/tiffany/world/TFSphere;->mLongitudeWidth:F

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nemustech/tiffany/world/TFSphere;->mRotateYFirst:Z

    .line 30
    invoke-virtual {p0, p2, p3}, Lcom/nemustech/tiffany/world/TFSphere;->setSize(FF)V

    .line 31
    invoke-super {p0, p1}, Lcom/nemustech/tiffany/world/TFModel;->attachTo(Lcom/nemustech/tiffany/world/TFWorld;)Lcom/nemustech/tiffany/world/TFError;

    .line 32
    return-void

    .line 571
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x3ft
        0x0t 0x0t 0x0t 0x3ft
        0x0t 0x0t 0x0t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 572
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x3ft
        0x0t 0x0t 0x0t 0x3ft
        0x0t 0x0t 0x0t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 578
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x3ft
        0x0t 0x0t 0x0t 0x3ft
        0x0t 0x0t 0x0t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 579
    :array_3
    .array-data 0x4
        0x0t 0x0t 0x0t 0x3ft
        0x0t 0x0t 0x0t 0x3ft
        0x0t 0x0t 0x0t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private static allocBuffer(I)Ljava/nio/FloatBuffer;
    .locals 2
    .parameter "size"

    .prologue
    .line 315
    mul-int/lit8 v0, p0, 0x4

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

.method protected static buildLatitude(II)Ljava/nio/FloatBuffer;
    .locals 10
    .parameter "stepLat"
    .parameter "split"

    .prologue
    .line 412
    const/16 v0, 0x5a

    div-int/2addr v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 415
    .local v0, stepCount:I
    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    mul-int/2addr v0, p1

    mul-int/lit8 v0, v0, 0x3

    invoke-static {v0}, Lcom/nemustech/tiffany/world/TFSphere;->allocBuffer(I)Ljava/nio/FloatBuffer;

    .end local v0           #stepCount:I
    move-result-object v1

    .line 416
    .local v1, b:Ljava/nio/FloatBuffer;
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 418
    const v0, 0x40c90fdb

    .line 419
    .local v0, PI2:F
    const v0, 0x3fc90fdb

    .line 423
    .local v0, PI_2:F
    const/4 v4, 0x0

    .line 424
    .local v4, y:F
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 425
    int-to-float v2, v0

    int-to-float v3, p1

    div-float/2addr v2, v3

    const v3, 0x40c90fdb

    mul-float/2addr v2, v3

    .line 426
    .local v2, rad:F
    float-to-double v5, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    double-to-float v3, v5

    .line 427
    .local v3, x:F
    float-to-double v5, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    double-to-float v2, v5

    .line 428
    .local v2, z:F
    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 429
    invoke-virtual {v1, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 430
    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 424
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 433
    .end local v2           #z:F
    .end local v3           #x:F
    :cond_0
    move v0, p0

    .local v0, j:I
    move v2, v0

    .end local v0           #j:I
    .local v2, j:I
    move v0, v4

    .end local v4           #y:F
    .local v0, y:F
    :goto_1
    const/16 v0, 0x5a

    if-ge v2, v0, :cond_3

    .line 434
    .end local v0           #y:F
    int-to-float v0, v2

    const/high16 v3, 0x42b4

    div-float/2addr v0, v3

    const v3, 0x3fc90fdb

    mul-float/2addr v0, v3

    .line 435
    .local v0, latRad:F
    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v3, v3

    .line 436
    .local v3, latCos:F
    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    .line 438
    .local v4, latSin:F
    move v7, v4

    .line 439
    .local v7, y:F
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    if-ge v0, p1, :cond_1

    .line 440
    int-to-float v5, v0

    int-to-float v6, p1

    div-float/2addr v5, v6

    const v6, 0x40c90fdb

    mul-float/2addr v5, v6

    .line 441
    .local v5, rad:F
    float-to-double v8, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v6, v8

    mul-float/2addr v6, v3

    .line 442
    .local v6, x:F
    float-to-double v8, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float v5, v8

    mul-float/2addr v5, v3

    .line 443
    .local v5, z:F
    invoke-virtual {v1, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 444
    invoke-virtual {v1, v7}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 445
    invoke-virtual {v1, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 439
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 447
    .end local v5           #z:F
    .end local v6           #x:F
    :cond_1
    neg-float v6, v4

    .line 448
    .end local v7           #y:F
    .local v6, y:F
    const/4 v0, 0x0

    .end local v4           #latSin:F
    :goto_3
    if-ge v0, p1, :cond_2

    .line 449
    int-to-float v4, v0

    int-to-float v5, p1

    div-float/2addr v4, v5

    const v5, 0x40c90fdb

    mul-float/2addr v4, v5

    .line 450
    .local v4, rad:F
    float-to-double v7, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    double-to-float v5, v7

    mul-float/2addr v5, v3

    .line 451
    .local v5, x:F
    float-to-double v7, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    double-to-float v4, v7

    mul-float/2addr v4, v3

    .line 452
    .local v4, z:F
    invoke-virtual {v1, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 453
    invoke-virtual {v1, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 454
    invoke-virtual {v1, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 448
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 433
    .end local v4           #z:F
    .end local v5           #x:F
    :cond_2
    add-int v0, v2, p0

    .end local v2           #j:I
    .local v0, j:I
    move v2, v0

    .end local v0           #j:I
    .restart local v2       #j:I
    move v0, v6

    .end local v6           #y:F
    .local v0, y:F
    goto :goto_1

    .line 458
    .end local v0           #y:F
    .end local v3           #latCos:F
    :cond_3
    const/4 p0, 0x0

    invoke-virtual {v1, p0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 459
    .end local p0
    return-object v1
.end method

.method protected static buildLongitude(II)Ljava/nio/FloatBuffer;
    .locals 9
    .parameter "step"
    .parameter "split"

    .prologue
    .line 462
    const/16 v0, 0xb4

    div-int/2addr v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 465
    .local v0, stepCount:I
    add-int/lit8 v0, v0, 0x1

    mul-int/2addr v0, p1

    mul-int/lit8 v0, v0, 0x3

    invoke-static {v0}, Lcom/nemustech/tiffany/world/TFSphere;->allocBuffer(I)Ljava/nio/FloatBuffer;

    .end local v0           #stepCount:I
    move-result-object v1

    .line 466
    .local v1, b:Ljava/nio/FloatBuffer;
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 468
    const v0, 0x40490fdb

    .line 469
    .local v0, PI:F
    const v0, 0x40c90fdb

    .line 473
    .local v0, PI2:F
    const/4 v2, 0x0

    .line 474
    .local v2, y:F
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 475
    int-to-float v2, v0

    int-to-float v3, p1

    div-float/2addr v2, v3

    const v3, 0x40c90fdb

    mul-float/2addr v2, v3

    .line 476
    .local v2, rad:F
    const/4 v3, 0x0

    .line 477
    .local v3, x:F
    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    .line 478
    .local v4, y:F
    float-to-double v5, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    double-to-float v2, v5

    .line 479
    .local v2, z:F
    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 480
    invoke-virtual {v1, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 481
    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 474
    add-int/lit8 v0, v0, 0x1

    move v2, v4

    .end local v4           #y:F
    .local v2, y:F
    goto :goto_0

    .line 484
    .end local v3           #x:F
    :cond_0
    move v0, p0

    .local v0, j:I
    move v3, v2

    .end local v2           #y:F
    .local v3, y:F
    move v2, v0

    .end local v0           #j:I
    .local v2, j:I
    :goto_1
    const/16 v0, 0xb4

    if-ge v2, v0, :cond_2

    .line 485
    int-to-float v0, v2

    const/high16 v4, 0x4334

    div-float/2addr v0, v4

    const v4, 0x40490fdb

    mul-float/2addr v0, v4

    .line 486
    .local v0, meriRad:F
    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v5, v4

    .line 487
    .local v5, meriCos:F
    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v6, v6

    .line 489
    .local v6, meriSin:F
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    if-ge v0, p1, :cond_1

    .line 490
    int-to-float v3, v0

    int-to-float v4, p1

    div-float/2addr v3, v4

    const v4, 0x40c90fdb

    mul-float/2addr v4, v3

    .line 491
    .local v4, latRad:F
    float-to-double v7, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    .end local v3           #y:F
    move-result-wide v7

    double-to-float v3, v7

    .line 492
    .local v3, latCos:F
    float-to-double v7, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    double-to-float v4, v7

    .line 494
    .local v4, latSin:F
    mul-float v7, v3, v6

    .line 495
    .local v7, x:F
    move v4, v4

    .line 496
    .local v4, y:F
    mul-float/2addr v3, v5

    .line 497
    .local v3, z:F
    invoke-virtual {v1, v7}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 498
    invoke-virtual {v1, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 499
    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 489
    add-int/lit8 v0, v0, 0x1

    move v3, v4

    .end local v4           #y:F
    .local v3, y:F
    goto :goto_2

    .line 484
    .end local v7           #x:F
    :cond_1
    add-int v0, v2, p0

    .end local v2           #j:I
    .local v0, j:I
    move v2, v0

    .end local v0           #j:I
    .restart local v2       #j:I
    goto :goto_1

    .line 503
    .end local v5           #meriCos:F
    .end local v6           #meriSin:F
    :cond_2
    const/4 p0, 0x0

    invoke-virtual {v1, p0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 504
    .end local p0
    return-object v1
.end method

.method public static convertGeographicToModel([FI[FI)V
    .locals 11
    .parameter "geographic"
    .parameter "gOffset"
    .parameter "model"
    .parameter "mOffset"

    .prologue
    const-wide v9, 0x4066800000000000L

    const-wide v7, 0x400921fb54442d18L

    .line 151
    add-int/lit8 v5, p1, 0x0

    aget v5, p0, v5

    float-to-double v5, v5

    mul-double/2addr v5, v7

    div-double/2addr v5, v9

    double-to-float v1, v5

    .line 152
    .local v1, theta:F
    add-int/lit8 v5, p1, 0x1

    aget v5, p0, v5

    float-to-double v5, v5

    mul-double/2addr v5, v7

    div-double/2addr v5, v9

    double-to-float v0, v5

    .line 153
    .local v0, phi:F
    float-to-double v5, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    float-to-double v7, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    mul-double/2addr v5, v7

    double-to-float v2, v5

    .line 154
    .local v2, x:F
    float-to-double v5, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    double-to-float v3, v5

    .line 155
    .local v3, y:F
    float-to-double v5, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    float-to-double v7, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double/2addr v5, v7

    double-to-float v4, v5

    .line 156
    .local v4, z:F
    add-int/lit8 v5, p3, 0x0

    aput v2, p2, v5

    .line 157
    add-int/lit8 v5, p3, 0x1

    aput v3, p2, v5

    .line 158
    add-int/lit8 v5, p3, 0x2

    aput v4, p2, v5

    .line 159
    return-void
.end method

.method public static convertModelToGeographic([FI[FI)V
    .locals 6
    .parameter "model"
    .parameter "mOffset"
    .parameter "geographic"
    .parameter "gOffset"

    .prologue
    .line 133
    invoke-static {p0, p1}, Lcom/nemustech/tiffany/world/TFVector3D;->length([FI)F

    move-result v0

    .line 134
    .local v0, length:F
    add-int/lit8 v1, p1, 0x0

    aget v1, p0, v1

    div-float/2addr v1, v0

    .line 135
    .local v1, x:F
    add-int/lit8 v2, p1, 0x1

    aget v2, p0, v2

    div-float/2addr v2, v0

    .line 136
    .local v2, y:F
    add-int/lit8 p1, p1, 0x2

    aget p0, p0, p1

    .end local p0
    .end local p1
    div-float/2addr p0, v0

    .line 137
    .local p0, z:F
    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->asin(D)D

    .end local v2           #y:F
    move-result-wide v2

    const-wide v4, 0x4066800000000000L

    mul-double/2addr v2, v4

    const-wide v4, 0x400921fb54442d18L

    div-double/2addr v2, v4

    double-to-float p1, v2

    .line 138
    .local p1, theta:F
    const/high16 v0, 0x42b4

    float-to-double v2, p0

    float-to-double v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    .end local v0           #length:F
    move-result-wide v1

    .end local v1           #x:F
    const-wide v3, 0x4066800000000000L

    mul-double/2addr v1, v3

    const-wide v3, 0x400921fb54442d18L

    div-double/2addr v1, v3

    double-to-float p0, v1

    sub-float p0, v0, p0

    .line 139
    .local p0, phi:F
    add-int/lit8 v0, p3, 0x0

    aput p1, p2, v0

    .line 140
    add-int/lit8 p1, p3, 0x1

    aput p0, p2, p1

    .line 141
    .end local p1           #theta:F
    return-void
.end method

.method private drawVertex(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 5
    .parameter "gl"

    .prologue
    .line 243
    const/16 v0, 0x42

    .line 244
    .local v0, c:I
    const/4 v2, 0x0

    .line 245
    .local v2, offset:I
    const/16 v1, 0x10

    .local v1, i:I
    :goto_0
    if-lez v1, :cond_0

    .line 246
    const/4 v3, 0x5

    const/16 v4, 0x42

    invoke-interface {p1, v3, v2, v4}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 247
    add-int/lit8 v2, v2, 0x42

    .line 245
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 249
    :cond_0
    return-void
.end method

.method private fillTexCoord(Ljava/nio/FloatBuffer;)V
    .locals 2
    .parameter "texCoord"

    .prologue
    const/high16 v1, 0x3f80

    .line 286
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/nemustech/tiffany/world/TFSphere;->fillTexCoordFace(Ljava/nio/FloatBuffer;IFF)V

    .line 287
    return-void
.end method

.method private fillTexCoordFace(Ljava/nio/FloatBuffer;IFF)V
    .locals 11
    .parameter "texCoord"
    .parameter "face"
    .parameter "width"
    .parameter "height"

    .prologue
    const/high16 v10, 0x4200

    const/high16 v9, 0x4180

    .line 289
    move v7, p3

    .line 290
    .local v7, w:F
    move v0, p4

    .line 291
    .local v0, h:F
    const/4 v4, 0x0

    .line 293
    .local v4, offset:I
    const/16 v1, 0x10

    .line 295
    .local v1, halfN:I
    invoke-virtual {p1, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 296
    const/4 v3, 0x0

    .local v3, j:I
    :goto_0
    const/16 v8, 0x10

    if-ge v3, v8, :cond_1

    .line 297
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    const/16 v8, 0x20

    if-gt v2, v8, :cond_0

    .line 300
    int-to-float v8, v2

    div-float v5, v8, v10

    .line 301
    .local v5, u:F
    add-int/lit8 v8, v3, 0x0

    int-to-float v8, v8

    div-float v6, v8, v9

    .line 302
    .local v6, v:F
    mul-float v8, v5, v7

    invoke-virtual {p1, v8}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 303
    mul-float v8, v6, v0

    invoke-virtual {p1, v8}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 304
    int-to-float v8, v2

    div-float v5, v8, v10

    .line 305
    add-int/lit8 v8, v3, 0x1

    int-to-float v8, v8

    div-float v6, v8, v9

    .line 306
    mul-float v8, v5, v7

    invoke-virtual {p1, v8}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 307
    mul-float v8, v6, v0

    invoke-virtual {p1, v8}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 297
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 296
    .end local v5           #u:F
    .end local v6           #v:F
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 310
    .end local v2           #i:I
    :cond_1
    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 311
    return-void
.end method

.method private fillVertex(Ljava/nio/FloatBuffer;)V
    .locals 21
    .parameter "vertex"

    .prologue
    .line 251
    const v2, 0x40490fdb

    .line 252
    .local v2, fPI:F
    const/16 v3, 0x10

    .line 254
    .local v3, halfN:I
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 255
    const/4 v5, 0x0

    .local v5, j:I
    :goto_0
    const/16 v18, 0x10

    move v0, v5

    move/from16 v1, v18

    if-ge v0, v1, :cond_1

    .line 256
    const/high16 v18, 0x42b4

    const/high16 v19, 0x4134

    add-int/lit8 v20, v5, 0x0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v19, v19, v20

    sub-float v18, v18, v19

    const v19, 0x40490fdb

    mul-float v18, v18, v19

    const/high16 v19, 0x4334

    div-float v6, v18, v19

    .line 257
    .local v6, latitude1:F
    const/high16 v18, 0x42b4

    const/high16 v19, 0x4134

    add-int/lit8 v20, v5, 0x1

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v19, v19, v20

    sub-float v18, v18, v19

    const v19, 0x40490fdb

    mul-float v18, v18, v19

    const/high16 v19, 0x4334

    div-float v9, v18, v19

    .line 258
    .local v9, latitude2:F
    move v0, v6

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move v8, v0

    .line 259
    .local v8, latitude1Sin:F
    move v0, v6

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move v7, v0

    .line 260
    .local v7, latitude1Cos:F
    move v0, v9

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move v11, v0

    .line 261
    .local v11, latitude2Sin:F
    move v0, v9

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move v10, v0

    .line 263
    .local v10, latitude2Cos:F
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    const/16 v18, 0x20

    move v0, v4

    move/from16 v1, v18

    if-gt v0, v1, :cond_0

    .line 264
    const/high16 v18, -0x3ccc

    const/high16 v19, 0x4134

    move v0, v4

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    const v19, 0x40490fdb

    mul-float v18, v18, v19

    const/high16 v19, 0x4334

    div-float v12, v18, v19

    .line 265
    .local v12, longitude:F
    move v0, v12

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move v14, v0

    .line 266
    .local v14, longitudeSin:F
    move v0, v12

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move v13, v0

    .line 269
    .local v13, longitudeCos:F
    mul-float v15, v7, v14

    .line 270
    .local v15, x:F
    move/from16 v16, v8

    .line 271
    .local v16, y:F
    mul-float v17, v7, v13

    .line 272
    .local v17, z:F
    move-object/from16 v0, p1

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 273
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 274
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 275
    mul-float v15, v10, v14

    .line 276
    move/from16 v16, v11

    .line 277
    mul-float v17, v10, v13

    .line 278
    move-object/from16 v0, p1

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 279
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 280
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 263
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 255
    .end local v12           #longitude:F
    .end local v13           #longitudeCos:F
    .end local v14           #longitudeSin:F
    .end local v15           #x:F
    .end local v16           #y:F
    .end local v17           #z:F
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 283
    .end local v4           #i:I
    .end local v6           #latitude1:F
    .end local v7           #latitude1Cos:F
    .end local v8           #latitude1Sin:F
    .end local v9           #latitude2:F
    .end local v10           #latitude2Cos:F
    .end local v11           #latitude2Sin:F
    :cond_1
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 284
    return-void
.end method


# virtual methods
.method adjustTextureCoordination(Landroid/graphics/Rect;III)V
    .locals 4
    .parameter "rectTexture"
    .parameter "index"
    .parameter "textureWidth"
    .parameter "textureHeight"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFSphere;->mTextureBuffer:Ljava/nio/FloatBuffer;

    iget v1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    int-to-float v2, p3

    div-float/2addr v1, v2

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    int-to-float v3, p4

    div-float/2addr v2, v3

    invoke-direct {p0, v0, p2, v1, v2}, Lcom/nemustech/tiffany/world/TFSphere;->fillTexCoordFace(Ljava/nio/FloatBuffer;IFF)V

    .line 39
    return-void
.end method

.method draw(Ljavax/microedition/khronos/opengles/GL10;I)V
    .locals 13
    .parameter "gl"
    .parameter "tickPassed"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/high16 v9, 0x4000

    const/high16 v8, 0x3f80

    .line 44
    invoke-super {p0, p1, p2}, Lcom/nemustech/tiffany/world/TFModel;->draw(Ljavax/microedition/khronos/opengles/GL10;I)V

    .line 46
    iget-boolean v4, p0, Lcom/nemustech/tiffany/world/TFModel;->mVisible:Z

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/nemustech/tiffany/world/TFModel;->mShouldDraw:Z

    if-eqz v4, :cond_3

    .line 47
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 49
    iget v4, p0, Lcom/nemustech/tiffany/world/TFSphere;->mWidth:F

    div-float/2addr v4, v9

    iget v5, p0, Lcom/nemustech/tiffany/world/TFSphere;->mHeight:F

    div-float/2addr v5, v9

    iget v6, p0, Lcom/nemustech/tiffany/world/TFSphere;->mWidth:F

    div-float/2addr v6, v9

    invoke-interface {p1, v4, v5, v6}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 50
    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFSphere;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    iget-boolean v4, v4, Lcom/nemustech/tiffany/world/TFWorld;->mBanQueryingMatrix:Z

    if-nez v4, :cond_0

    .line 51
    move-object v0, p1

    check-cast v0, Lcom/nemustech/tiffany/world/TFGL;

    move-object v4, v0

    iget-object v5, p0, Lcom/nemustech/tiffany/world/TFSphere;->mMatrix:[F

    invoke-virtual {v4, v5, v11}, Lcom/nemustech/tiffany/world/TFGL;->getMatrix([FI)V

    .line 53
    :cond_0
    invoke-virtual {p0, p1}, Lcom/nemustech/tiffany/world/TFSphere;->drawLatitudeAndLongitude(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 55
    const v4, 0x8074

    invoke-interface {p1, v4}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 56
    const v4, 0x8078

    invoke-interface {p1, v4}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 58
    iget v4, p0, Lcom/nemustech/tiffany/world/TFSphere;->mOpacity:F

    invoke-interface {p1, v8, v8, v8, v4}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 59
    const/4 v4, 0x3

    const/16 v5, 0x1406

    iget-object v6, p0, Lcom/nemustech/tiffany/world/TFSphere;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v4, v5, v11, v6}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 60
    const/4 v4, 0x2

    const/16 v5, 0x1406

    iget-object v6, p0, Lcom/nemustech/tiffany/world/TFSphere;->mTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v4, v5, v11, v6}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 62
    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFModel;->mTextures:Lcom/nemustech/tiffany/world/TFTextures;

    invoke-virtual {v4, p1, v11}, Lcom/nemustech/tiffany/world/TFTextures;->setTextureByIndex(Ljavax/microedition/khronos/opengles/GL10;I)V

    .line 64
    iget v4, p0, Lcom/nemustech/tiffany/world/TFModel;->mTouchedIndex:I

    if-nez v4, :cond_4

    .line 65
    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFSphere;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    iget v4, v4, Lcom/nemustech/tiffany/world/TFWorld;->mTouchedModelColorMaskR:F

    iget-object v5, p0, Lcom/nemustech/tiffany/world/TFSphere;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    iget v5, v5, Lcom/nemustech/tiffany/world/TFWorld;->mTouchedModelColorMaskG:F

    iget-object v6, p0, Lcom/nemustech/tiffany/world/TFSphere;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    iget v6, v6, Lcom/nemustech/tiffany/world/TFWorld;->mTouchedModelColorMaskB:F

    iget v7, p0, Lcom/nemustech/tiffany/world/TFSphere;->mOpacity:F

    invoke-interface {p1, v4, v5, v6, v7}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 72
    :goto_0
    invoke-direct {p0, p1}, Lcom/nemustech/tiffany/world/TFSphere;->drawVertex(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 74
    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFSphere;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    iget-boolean v4, v4, Lcom/nemustech/tiffany/world/TFWorld;->mReflection:Z

    if-eqz v4, :cond_2

    .line 75
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 76
    const/16 v4, 0x404

    invoke-interface {p1, v4}, Ljavax/microedition/khronos/opengles/GL10;->glCullFace(I)V

    .line 78
    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFSphere;->mLocation:[F

    aget v2, v4, v12

    .line 79
    .local v2, objectY:F
    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFSphere;->mHolder:Lcom/nemustech/tiffany/world/TFHolder;

    if-eqz v4, :cond_5

    .line 80
    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFSphere;->mHolder:Lcom/nemustech/tiffany/world/TFHolder;

    iget-object v4, v4, Lcom/nemustech/tiffany/world/TFHolder;->mLocation:[F

    aget v4, v4, v12

    add-float/2addr v2, v4

    .line 84
    :cond_1
    :goto_1
    iget v4, p0, Lcom/nemustech/tiffany/world/TFSphere;->mHeight:F

    div-float/2addr v4, v9

    sub-float v4, v2, v4

    iget-object v5, p0, Lcom/nemustech/tiffany/world/TFSphere;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    iget v5, v5, Lcom/nemustech/tiffany/world/TFWorld;->mReflectingFloor:F

    sub-float v1, v4, v5

    .line 85
    .local v1, mirrorY:F
    cmpl-float v4, v1, v10

    if-ltz v4, :cond_2

    iget v4, p0, Lcom/nemustech/tiffany/world/TFSphere;->mHeight:F

    cmpg-float v4, v1, v4

    if-gez v4, :cond_2

    .line 87
    iget v4, p0, Lcom/nemustech/tiffany/world/TFSphere;->mOpacity:F

    iget-object v5, p0, Lcom/nemustech/tiffany/world/TFSphere;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    iget v5, v5, Lcom/nemustech/tiffany/world/TFWorld;->mReflectionOpacity:F

    mul-float v3, v4, v5

    .line 88
    .local v3, reflectionOpacity:F
    invoke-interface {p1, v3, v3, v3, v8}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 89
    mul-float v4, v1, v9

    iget v5, p0, Lcom/nemustech/tiffany/world/TFSphere;->mHeight:F

    add-float/2addr v4, v5

    neg-float v4, v4

    iget-object v5, p0, Lcom/nemustech/tiffany/world/TFSphere;->mLocation:[F

    const/4 v6, 0x2

    aget v5, v5, v6

    const v6, 0x3a83126f

    sub-float/2addr v5, v6

    invoke-interface {p1, v10, v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 90
    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFSphere;->mAngle:[F

    aget v4, v4, v11

    invoke-interface {p1, v4, v10, v8, v10}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 91
    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFSphere;->mAngle:[F

    aget v4, v4, v12

    neg-float v4, v4

    invoke-interface {p1, v4, v8, v10, v10}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 92
    iget v4, p0, Lcom/nemustech/tiffany/world/TFSphere;->mWidth:F

    div-float/2addr v4, v9

    iget v5, p0, Lcom/nemustech/tiffany/world/TFSphere;->mHeight:F

    neg-float v5, v5

    div-float/2addr v5, v9

    iget v6, p0, Lcom/nemustech/tiffany/world/TFSphere;->mWidth:F

    div-float/2addr v6, v9

    invoke-interface {p1, v4, v5, v6}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 94
    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFModel;->mTextures:Lcom/nemustech/tiffany/world/TFTextures;

    invoke-virtual {v4, p1, v11}, Lcom/nemustech/tiffany/world/TFTextures;->setTextureByIndex(Ljavax/microedition/khronos/opengles/GL10;I)V

    .line 95
    invoke-direct {p0, p1}, Lcom/nemustech/tiffany/world/TFSphere;->drawVertex(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 98
    .end local v1           #mirrorY:F
    .end local v2           #objectY:F
    .end local v3           #reflectionOpacity:F
    :cond_2
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 100
    :cond_3
    return-void

    .line 70
    :cond_4
    iget v4, p0, Lcom/nemustech/tiffany/world/TFSphere;->mOpacity:F

    invoke-interface {p1, v8, v8, v8, v4}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    goto :goto_0

    .line 81
    .restart local v2       #objectY:F
    :cond_5
    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFSphere;->mPlaceHolder:Lcom/nemustech/tiffany/world/TFPlaceHolder;

    if-eqz v4, :cond_1

    .line 82
    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFSphere;->mPlaceHolder:Lcom/nemustech/tiffany/world/TFPlaceHolder;

    iget-object v4, v4, Lcom/nemustech/tiffany/world/TFPlaceHolder;->mLocation:[F

    aget v4, v4, v12

    add-float/2addr v2, v4

    goto :goto_1
.end method

.method protected drawLatitudeAndLongitude(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 13
    .parameter "gl"

    .prologue
    const/4 v12, 0x3

    const/high16 v6, 0x3f80

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x2

    .line 508
    iget-object v5, p0, Lcom/nemustech/tiffany/world/TFSphere;->mLatitude:Ljava/nio/FloatBuffer;

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/nemustech/tiffany/world/TFSphere;->mLongitude:Ljava/nio/FloatBuffer;

    if-nez v5, :cond_0

    .line 563
    :goto_0
    return-void

    .line 511
    :cond_0
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 512
    const/high16 v3, 0x3f80

    .line 513
    .local v3, scale:F
    invoke-interface {p1, v6, v6, v6}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 515
    const/16 v5, 0xde1

    invoke-interface {p1, v5}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 516
    const/16 v5, 0xb20

    invoke-interface {p1, v5}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 518
    iget-object v5, p0, Lcom/nemustech/tiffany/world/TFSphere;->mLatitude:Ljava/nio/FloatBuffer;

    if-eqz v5, :cond_1

    .line 519
    iget v0, p0, Lcom/nemustech/tiffany/world/TFSphere;->mLatitudeSplit:I

    .line 520
    .local v0, c:I
    const/16 v5, 0x5a

    iget v6, p0, Lcom/nemustech/tiffany/world/TFSphere;->mLatitudeStep:I

    div-int/2addr v5, v6

    sub-int v4, v5, v11

    .line 522
    .local v4, stepCount:I
    iget v5, p0, Lcom/nemustech/tiffany/world/TFSphere;->mLatitudeWidth:F

    invoke-interface {p1, v5}, Ljavax/microedition/khronos/opengles/GL10;->glLineWidth(F)V

    .line 523
    const/16 v5, 0x1406

    iget-object v6, p0, Lcom/nemustech/tiffany/world/TFSphere;->mLatitude:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v12, v5, v10, v6}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 525
    const/4 v2, 0x0

    .line 527
    .local v2, offset:I
    iget-object v5, p0, Lcom/nemustech/tiffany/world/TFSphere;->mLatitudeEquatorColor:[F

    aget v5, v5, v10

    iget-object v6, p0, Lcom/nemustech/tiffany/world/TFSphere;->mLatitudeEquatorColor:[F

    aget v6, v6, v11

    iget-object v7, p0, Lcom/nemustech/tiffany/world/TFSphere;->mLatitudeEquatorColor:[F

    aget v7, v7, v9

    iget v8, p0, Lcom/nemustech/tiffany/world/TFSphere;->mOpacity:F

    invoke-interface {p1, v5, v6, v7, v8}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 528
    invoke-interface {p1, v9, v2, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 529
    add-int/2addr v2, v0

    .line 531
    iget-object v5, p0, Lcom/nemustech/tiffany/world/TFSphere;->mLatitudeColor:[F

    aget v5, v5, v10

    iget-object v6, p0, Lcom/nemustech/tiffany/world/TFSphere;->mLatitudeColor:[F

    aget v6, v6, v11

    iget-object v7, p0, Lcom/nemustech/tiffany/world/TFSphere;->mLatitudeColor:[F

    aget v7, v7, v9

    iget v8, p0, Lcom/nemustech/tiffany/world/TFSphere;->mOpacity:F

    invoke-interface {p1, v5, v6, v7, v8}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 532
    move v1, v4

    .local v1, i:I
    :goto_1
    if-lez v1, :cond_1

    .line 533
    invoke-interface {p1, v9, v2, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 534
    add-int/2addr v2, v0

    .line 535
    invoke-interface {p1, v9, v2, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 536
    add-int/2addr v2, v0

    .line 532
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 539
    .end local v0           #c:I
    .end local v1           #i:I
    .end local v2           #offset:I
    .end local v4           #stepCount:I
    :cond_1
    iget-object v5, p0, Lcom/nemustech/tiffany/world/TFSphere;->mLongitude:Ljava/nio/FloatBuffer;

    if-eqz v5, :cond_2

    .line 540
    iget v0, p0, Lcom/nemustech/tiffany/world/TFSphere;->mLongitudeSplit:I

    .line 541
    .restart local v0       #c:I
    const/16 v5, 0xb4

    iget v6, p0, Lcom/nemustech/tiffany/world/TFSphere;->mLongitudeStep:I

    div-int/2addr v5, v6

    sub-int v4, v5, v11

    .line 543
    .restart local v4       #stepCount:I
    iget v5, p0, Lcom/nemustech/tiffany/world/TFSphere;->mLongitudeWidth:F

    invoke-interface {p1, v5}, Ljavax/microedition/khronos/opengles/GL10;->glLineWidth(F)V

    .line 544
    const/16 v5, 0x1406

    iget-object v6, p0, Lcom/nemustech/tiffany/world/TFSphere;->mLongitude:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v12, v5, v10, v6}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 546
    const/4 v2, 0x0

    .line 548
    .restart local v2       #offset:I
    iget-object v5, p0, Lcom/nemustech/tiffany/world/TFSphere;->mLongitudePrimeColor:[F

    aget v5, v5, v10

    iget-object v6, p0, Lcom/nemustech/tiffany/world/TFSphere;->mLongitudePrimeColor:[F

    aget v6, v6, v11

    iget-object v7, p0, Lcom/nemustech/tiffany/world/TFSphere;->mLongitudePrimeColor:[F

    aget v7, v7, v9

    iget v8, p0, Lcom/nemustech/tiffany/world/TFSphere;->mOpacity:F

    invoke-interface {p1, v5, v6, v7, v8}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 549
    invoke-interface {p1, v9, v2, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 550
    add-int/2addr v2, v0

    .line 552
    iget-object v5, p0, Lcom/nemustech/tiffany/world/TFSphere;->mLongitudeColor:[F

    aget v5, v5, v10

    iget-object v6, p0, Lcom/nemustech/tiffany/world/TFSphere;->mLongitudeColor:[F

    aget v6, v6, v11

    iget-object v7, p0, Lcom/nemustech/tiffany/world/TFSphere;->mLongitudeColor:[F

    aget v7, v7, v9

    iget v8, p0, Lcom/nemustech/tiffany/world/TFSphere;->mOpacity:F

    invoke-interface {p1, v5, v6, v7, v8}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 553
    move v1, v4

    .restart local v1       #i:I
    :goto_2
    if-lez v1, :cond_2

    .line 554
    invoke-interface {p1, v9, v2, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 555
    add-int/2addr v2, v0

    .line 553
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 559
    .end local v0           #c:I
    .end local v1           #i:I
    .end local v2           #offset:I
    .end local v4           #stepCount:I
    :cond_2
    const/16 v5, 0xb20

    invoke-interface {p1, v5}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 560
    const/16 v5, 0xde1

    invoke-interface {p1, v5}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 562
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    goto/16 :goto_0
.end method

.method protected onTouchDrag(FFFFI)V
    .locals 6
    .parameter "startX"
    .parameter "startY"
    .parameter "endX"
    .parameter "endY"
    .parameter "tickPassed"

    .prologue
    const/high16 v5, 0x40a0

    .line 104
    invoke-super/range {p0 .. p5}, Lcom/nemustech/tiffany/world/TFModel;->onTouchDrag(FFFFI)V

    .line 106
    const/high16 v2, 0x40a0

    .line 107
    .local v2, sensibility:F
    iget v4, p0, Lcom/nemustech/tiffany/world/TFModel;->mForceFromSide:F

    mul-float v0, v4, v5

    .line 108
    .local v0, forceX:F
    iget v4, p0, Lcom/nemustech/tiffany/world/TFModel;->mForceFromHead:F

    mul-float v1, v4, v5

    .line 109
    .local v1, forceY:F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    .line 110
    const/4 v1, 0x0

    .line 115
    :goto_0
    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFSphere;->mAngle:[F

    const/4 v5, 0x1

    aget v3, v4, v5

    .line 117
    .local v3, yAngle:F
    const/high16 v4, 0x42b4

    cmpl-float v4, v3, v4

    if-ltz v4, :cond_0

    const/high16 v4, 0x4387

    cmpg-float v4, v3, v4

    if-gez v4, :cond_0

    .line 118
    neg-float v0, v0

    .line 120
    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0, v0, v1, v4, v5}, Lcom/nemustech/tiffany/world/TFSphere;->spin(FFFZ)V

    .line 121
    return-void

    .line 112
    .end local v3           #yAngle:F
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLatitudeColor(II)V
    .locals 7
    .parameter "equatorColor"
    .parameter "color"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/high16 v2, 0x437f

    .line 372
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFSphere;->mLatitudeEquatorColor:[F

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    aput v1, v0, v3

    .line 373
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFSphere;->mLatitudeEquatorColor:[F

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    aput v1, v0, v4

    .line 374
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFSphere;->mLatitudeEquatorColor:[F

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    aput v1, v0, v5

    .line 375
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFSphere;->mLatitudeEquatorColor:[F

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    aput v1, v0, v6

    .line 376
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFSphere;->mLatitudeColor:[F

    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    aput v1, v0, v3

    .line 377
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFSphere;->mLatitudeColor:[F

    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    aput v1, v0, v4

    .line 378
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFSphere;->mLatitudeColor:[F

    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    aput v1, v0, v5

    .line 379
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFSphere;->mLatitudeColor:[F

    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    aput v1, v0, v6

    .line 380
    return-void
.end method

.method public setLatitudeWidth(F)V
    .locals 0
    .parameter "width"

    .prologue
    .line 401
    iput p1, p0, Lcom/nemustech/tiffany/world/TFSphere;->mLatitudeWidth:F

    .line 402
    return-void
.end method

.method public setLongitudeColor(II)V
    .locals 7
    .parameter "primeColor"
    .parameter "color"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/high16 v2, 0x437f

    .line 387
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFSphere;->mLongitudePrimeColor:[F

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    aput v1, v0, v3

    .line 388
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFSphere;->mLongitudePrimeColor:[F

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    aput v1, v0, v4

    .line 389
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFSphere;->mLongitudePrimeColor:[F

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    aput v1, v0, v5

    .line 390
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFSphere;->mLongitudePrimeColor:[F

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    aput v1, v0, v6

    .line 391
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFSphere;->mLongitudeColor:[F

    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    aput v1, v0, v3

    .line 392
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFSphere;->mLongitudeColor:[F

    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    aput v1, v0, v4

    .line 393
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFSphere;->mLongitudeColor:[F

    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    aput v1, v0, v5

    .line 394
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFSphere;->mLongitudeColor:[F

    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    aput v1, v0, v6

    .line 395
    return-void
.end method

.method public setLongitudeWidth(F)V
    .locals 0
    .parameter "width"

    .prologue
    .line 408
    iput p1, p0, Lcom/nemustech/tiffany/world/TFSphere;->mLongitudeWidth:F

    .line 409
    return-void
.end method

.method public setSize(FF)V
    .locals 7
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v5, 0x0

    const-string v6, "TFSphere"

    .line 214
    const-string v3, "TFSphere"

    const-string v3, "setSize: START"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iput p1, p0, Lcom/nemustech/tiffany/world/TFSphere;->mWidth:F

    .line 217
    iput p2, p0, Lcom/nemustech/tiffany/world/TFSphere;->mHeight:F

    .line 219
    const/16 v0, 0x420

    .line 220
    .local v0, bufSize:I
    const/16 v3, 0x3180

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    .line 223
    .local v2, vertex:Ljava/nio/FloatBuffer;
    const/16 v3, 0x2100

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    .line 231
    .local v1, texCoord:Ljava/nio/FloatBuffer;
    invoke-direct {p0, v2}, Lcom/nemustech/tiffany/world/TFSphere;->fillVertex(Ljava/nio/FloatBuffer;)V

    .line 232
    invoke-virtual {v2, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 233
    invoke-direct {p0, v1}, Lcom/nemustech/tiffany/world/TFSphere;->fillTexCoord(Ljava/nio/FloatBuffer;)V

    .line 234
    invoke-virtual {v1, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 236
    iput-object v2, p0, Lcom/nemustech/tiffany/world/TFSphere;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 237
    iput-object v1, p0, Lcom/nemustech/tiffany/world/TFSphere;->mTextureBuffer:Ljava/nio/FloatBuffer;

    .line 239
    const-string v3, "TFSphere"

    const-string v3, "setSize: FINISH"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    return-void
.end method

.method public showLatitude(ZI)V
    .locals 1
    .parameter "show"
    .parameter "step"

    .prologue
    .line 325
    const/16 v0, 0x40

    invoke-virtual {p0, p1, p2, v0}, Lcom/nemustech/tiffany/world/TFSphere;->showLatitude(ZII)V

    .line 326
    return-void
.end method

.method public showLatitude(ZII)V
    .locals 1
    .parameter "show"
    .parameter "step"
    .parameter "split"

    .prologue
    .line 341
    if-eqz p1, :cond_0

    .line 342
    invoke-static {p2, p3}, Lcom/nemustech/tiffany/world/TFSphere;->buildLatitude(II)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFSphere;->mLatitude:Ljava/nio/FloatBuffer;

    .line 343
    iput p2, p0, Lcom/nemustech/tiffany/world/TFSphere;->mLatitudeStep:I

    .line 344
    iput p3, p0, Lcom/nemustech/tiffany/world/TFSphere;->mLatitudeSplit:I

    .line 349
    :goto_0
    return-void

    .line 347
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFSphere;->mLatitude:Ljava/nio/FloatBuffer;

    goto :goto_0
.end method

.method public showLongitude(ZI)V
    .locals 1
    .parameter "show"
    .parameter "step"

    .prologue
    .line 332
    const/16 v0, 0x40

    invoke-virtual {p0, p1, p2, v0}, Lcom/nemustech/tiffany/world/TFSphere;->showLongitude(ZII)V

    .line 333
    return-void
.end method

.method public showLongitude(ZII)V
    .locals 1
    .parameter "show"
    .parameter "step"
    .parameter "split"

    .prologue
    .line 357
    if-eqz p1, :cond_0

    .line 358
    invoke-static {p2, p3}, Lcom/nemustech/tiffany/world/TFSphere;->buildLongitude(II)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFSphere;->mLongitude:Ljava/nio/FloatBuffer;

    .line 359
    iput p2, p0, Lcom/nemustech/tiffany/world/TFSphere;->mLongitudeStep:I

    .line 360
    iput p3, p0, Lcom/nemustech/tiffany/world/TFSphere;->mLongitudeSplit:I

    .line 365
    :goto_0
    return-void

    .line 363
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFSphere;->mLatitude:Ljava/nio/FloatBuffer;

    goto :goto_0
.end method

.method updateHitPoint()V
    .locals 22

    .prologue
    .line 167
    invoke-super/range {p0 .. p0}, Lcom/nemustech/tiffany/world/TFModel;->updateHitPoint()V

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFSphere;->mHitTestBuffer:[F

    move-object/from16 v20, v0

    .line 170
    .local v20, m:[F
    const/4 v12, 0x0

    .line 171
    .local v12, _p1:I
    const/4 v13, 0x4

    .line 172
    .local v13, _p2_1:I
    const/16 v14, 0x8

    .line 173
    .local v14, _p3_1:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFSphere;->mHitTestLine:[F

    move-object/from16 v19, v0

    .line 175
    .local v19, line:[F
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v20

    move v1, v5

    move-object/from16 v2, v19

    move v3, v6

    invoke-static {v0, v1, v2, v3}, Lcom/nemustech/tiffany/world/TFVector3D;->set([FI[FI)V

    .line 176
    const/4 v5, 0x4

    const/4 v6, 0x4

    move-object/from16 v0, v20

    move v1, v5

    move-object/from16 v2, v19

    move v3, v6

    invoke-static {v0, v1, v2, v3}, Lcom/nemustech/tiffany/world/TFVector3D;->set([FI[FI)V

    .line 177
    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object/from16 v0, v20

    move v1, v5

    move-object/from16 v2, v20

    move v3, v6

    invoke-static {v0, v1, v2, v3}, Lcom/nemustech/tiffany/world/TFVector3D;->sub([FI[FI)V

    .line 178
    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v20

    move v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-static {v0, v1, v2, v3, v4}, Lcom/nemustech/tiffany/world/TFVector3D;->set([FIFFF)V

    .line 179
    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object/from16 v0, v20

    move v1, v5

    move-object/from16 v2, v20

    move v3, v6

    invoke-static {v0, v1, v2, v3}, Lcom/nemustech/tiffany/world/TFVector3D;->sub([FI[FI)V

    .line 180
    const/high16 v11, 0x3f80

    .line 181
    .local v11, R:F
    const/4 v5, 0x4

    move-object/from16 v0, v20

    move v1, v5

    invoke-static {v0, v1}, Lcom/nemustech/tiffany/world/TFVector3D;->lengthSquare([FI)F

    move-result v15

    .line 182
    .local v15, a:F
    const/high16 v5, -0x4000

    const/16 v6, 0x8

    const/4 v7, 0x4

    move-object/from16 v0, v20

    move v1, v6

    move-object/from16 v2, v20

    move v3, v7

    invoke-static {v0, v1, v2, v3}, Lcom/nemustech/tiffany/world/TFVector3D;->dot([FI[FI)F

    move-result v6

    mul-float v16, v5, v6

    .line 183
    .local v16, b:F
    const/16 v5, 0x8

    move-object/from16 v0, v20

    move v1, v5

    invoke-static {v0, v1}, Lcom/nemustech/tiffany/world/TFVector3D;->lengthSquare([FI)F

    move-result v5

    mul-float v6, v11, v11

    sub-float v17, v5, v6

    .line 184
    .local v17, c:F
    mul-float v5, v16, v16

    const/high16 v6, 0x4080

    mul-float/2addr v6, v15

    mul-float v6, v6, v17

    sub-float v18, v5, v6

    .line 186
    .local v18, det:F
    const/4 v5, 0x0

    cmpg-float v5, v18, v5

    if-gez v5, :cond_0

    .line 200
    :goto_0
    return-void

    .line 190
    :cond_0
    const/high16 v5, 0x4000

    const/16 v6, 0x8

    const/4 v7, 0x4

    move-object/from16 v0, v20

    move v1, v6

    move-object/from16 v2, v20

    move v3, v7

    invoke-static {v0, v1, v2, v3}, Lcom/nemustech/tiffany/world/TFVector3D;->dot([FI[FI)F

    move-result v6

    mul-float/2addr v5, v6

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v6, v6

    sub-float v21, v5, v6

    .line 191
    .local v21, u:F
    const/high16 v5, 0x4000

    const/4 v6, 0x4

    move-object/from16 v0, v20

    move v1, v6

    invoke-static {v0, v1}, Lcom/nemustech/tiffany/world/TFVector3D;->lengthSquare([FI)F

    move-result v6

    mul-float/2addr v5, v6

    div-float v21, v21, v5

    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFSphere;->mHitPoint:[F

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x4

    move-object v0, v5

    move v1, v6

    move-object/from16 v2, v20

    move v3, v7

    invoke-static {v0, v1, v2, v3}, Lcom/nemustech/tiffany/world/TFVector3D;->set([FI[FI)V

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFSphere;->mHitPoint:[F

    move-object v5, v0

    const/4 v6, 0x0

    move-object v0, v5

    move v1, v6

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/nemustech/tiffany/world/TFVector3D;->mul([FIF)V

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFSphere;->mHitPoint:[F

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v5

    move v1, v6

    move-object/from16 v2, v20

    move v3, v7

    invoke-static {v0, v1, v2, v3}, Lcom/nemustech/tiffany/world/TFVector3D;->add([FI[FI)V

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFSphere;->mHitPoint:[F

    move-object v5, v0

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/nemustech/tiffany/world/TFVector3D;->setW([FI)V

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFSphere;->mHitPoint:[F

    move-object v5, v0

    const/4 v6, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFSphere;->mMatrix:[F

    move-object v7, v0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFSphere;->mHitPoint:[F

    move-object v9, v0

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 199
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/world/TFSphere;->mHitFace:I

    goto :goto_0
.end method
