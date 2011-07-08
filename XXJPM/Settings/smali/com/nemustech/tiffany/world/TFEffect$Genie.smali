.class public Lcom/nemustech/tiffany/world/TFEffect$Genie;
.super Lcom/nemustech/tiffany/world/TFFlexiblePanel$Bezier3DPointBlender;
.source "TFEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemustech/tiffany/world/TFEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Genie"
.end annotation


# static fields
.field private static final DIET_STEP:I = 0x5

.field private static final SCALE_STEP:I = 0x8

.field private static TOT_POINTS:I = 0x0

.field private static final TOT_STEP:I = 0xd

.field private static mEffectDataForReverse:[F


# instance fields
.field private XYZ:[F

.field private mBasePointX:F

.field private mBasePointXMargin:F

.field private mBasePointY:F

.field private mDietPercent:[F

.field private mDumpPoints:[F

.field private mNext:Z

.field private mOriginPoints:[F

.field private mReversed:Z

.field private mStep:I

.field private mTicks:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2487
    const/16 v0, 0x30

    sput v0, Lcom/nemustech/tiffany/world/TFEffect$Genie;->TOT_POINTS:I

    .line 2488
    sget v0, Lcom/nemustech/tiffany/world/TFEffect$Genie;->TOT_POINTS:I

    mul-int/lit8 v0, v0, 0xd

    new-array v0, v0, [F

    sput-object v0, Lcom/nemustech/tiffany/world/TFEffect$Genie;->mEffectDataForReverse:[F

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2
    .parameter "bReversed"

    .prologue
    const/4 v1, 0x0

    .line 2317
    invoke-direct {p0}, Lcom/nemustech/tiffany/world/TFFlexiblePanel$Bezier3DPointBlender;-><init>()V

    .line 2474
    iput v1, p0, Lcom/nemustech/tiffany/world/TFEffect$Genie;->mTicks:I

    .line 2475
    iput v1, p0, Lcom/nemustech/tiffany/world/TFEffect$Genie;->mStep:I

    .line 2476
    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFEffect$Genie;->XYZ:[F

    .line 2478
    iput-boolean v1, p0, Lcom/nemustech/tiffany/world/TFEffect$Genie;->mReversed:Z

    .line 2480
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFEffect$Genie;->mDietPercent:[F

    .line 2484
    sget v0, Lcom/nemustech/tiffany/world/TFEffect$Genie;->TOT_POINTS:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFEffect$Genie;->mOriginPoints:[F

    .line 2485
    sget v0, Lcom/nemustech/tiffany/world/TFEffect$Genie;->TOT_POINTS:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFEffect$Genie;->mDumpPoints:[F

    .line 2318
    iput-boolean p1, p0, Lcom/nemustech/tiffany/world/TFEffect$Genie;->mReversed:Z

    .line 2319
    return-void

    .line 2476
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 2480
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0xcdt 0xcct 0xcct 0x3et
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private dietPoints([FII[FZ)V
    .locals 8
    .parameter "points"
    .parameter "j"
    .parameter "i"
    .parameter "coord"
    .parameter "isFromBase"

    .prologue
    const/4 v7, 0x0

    .line 2380
    mul-int/lit8 v5, p2, 0x4

    add-int/2addr v5, p3

    mul-int/lit8 v5, v5, 0x3

    add-int/lit8 v1, v5, 0x0

    .line 2381
    .local v1, ix:I
    mul-int/lit8 v5, p2, 0x4

    add-int/2addr v5, p3

    mul-int/lit8 v5, v5, 0x3

    add-int/lit8 v2, v5, 0x1

    .line 2382
    .local v2, iy:I
    iget v5, p0, Lcom/nemustech/tiffany/world/TFEffect$Genie;->mBasePointX:F

    iget-object v6, p0, Lcom/nemustech/tiffany/world/TFEffect$Genie;->mOriginPoints:[F

    aget v6, v6, v1

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lcom/nemustech/tiffany/world/TFEffect$Genie;->mBasePointXMargin:F

    sub-float v3, v5, v6

    .line 2383
    .local v3, totLenX:F
    iget-object v5, p0, Lcom/nemustech/tiffany/world/TFEffect$Genie;->mDietPercent:[F

    aget v5, v5, p2

    mul-float v4, v3, v5

    .line 2384
    .local v4, useLenX:F
    const/high16 v5, 0x40a0

    div-float v0, v4, v5

    .line 2386
    .local v0, incUnitX:F
    aget v5, p1, v1

    aput v5, p4, v7

    .line 2387
    const/4 v5, 0x1

    aget v6, p1, v2

    aput v6, p4, v5

    .line 2389
    if-nez p5, :cond_2

    .line 2390
    aget v5, p1, v1

    iget v6, p0, Lcom/nemustech/tiffany/world/TFEffect$Genie;->mBasePointX:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1

    .line 2391
    aget v5, p4, v7

    add-float/2addr v5, v0

    aput v5, p1, v1

    .line 2402
    :cond_0
    :goto_0
    return-void

    .line 2392
    :cond_1
    aget v5, p1, v1

    iget v6, p0, Lcom/nemustech/tiffany/world/TFEffect$Genie;->mBasePointX:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    .line 2393
    aget v5, p4, v7

    sub-float/2addr v5, v0

    aput v5, p1, v1

    goto :goto_0

    .line 2396
    :cond_2
    iget-object v5, p0, Lcom/nemustech/tiffany/world/TFEffect$Genie;->mOriginPoints:[F

    aget v5, v5, v1

    iget v6, p0, Lcom/nemustech/tiffany/world/TFEffect$Genie;->mBasePointX:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_3

    .line 2397
    aget v5, p4, v7

    sub-float/2addr v5, v0

    aput v5, p1, v1

    goto :goto_0

    .line 2398
    :cond_3
    iget-object v5, p0, Lcom/nemustech/tiffany/world/TFEffect$Genie;->mOriginPoints:[F

    aget v5, v5, v1

    iget v6, p0, Lcom/nemustech/tiffany/world/TFEffect$Genie;->mBasePointX:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    .line 2399
    aget v5, p4, v7

    add-float/2addr v5, v0

    aput v5, p1, v1

    goto :goto_0
.end method

.method private dumpPoints([F[F)V
    .locals 3
    .parameter "srcPoints"
    .parameter "dstPoints"

    .prologue
    .line 2441
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 2442
    :cond_0
    const-string v1, "TFEffect"

    const-string v2, "Error in dumpPoints() points is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2445
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 2446
    aget v1, p1, v0

    aput v1, p2, v0

    .line 2445
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2448
    :cond_2
    return-void
.end method

.method private reversePoints([FII)V
    .locals 5
    .parameter "points"
    .parameter "j"
    .parameter "i"

    .prologue
    .line 2462
    mul-int/lit8 v2, p2, 0x4

    add-int/2addr v2, p3

    mul-int/lit8 v0, v2, 0x3

    .line 2463
    .local v0, indexBaseDst:I
    const/16 v2, 0xc

    iget v3, p0, Lcom/nemustech/tiffany/world/TFEffect$Genie;->mStep:I

    sub-int/2addr v2, v3

    sget v3, Lcom/nemustech/tiffany/world/TFEffect$Genie;->TOT_POINTS:I

    mul-int/2addr v2, v3

    add-int v1, v2, v0

    .line 2465
    .local v1, indexBaseSrc:I
    add-int/lit8 v2, v0, 0x0

    sget-object v3, Lcom/nemustech/tiffany/world/TFEffect$Genie;->mEffectDataForReverse:[F

    add-int/lit8 v4, v1, 0x0

    aget v3, v3, v4

    aput v3, p1, v2

    .line 2466
    add-int/lit8 v2, v0, 0x1

    sget-object v3, Lcom/nemustech/tiffany/world/TFEffect$Genie;->mEffectDataForReverse:[F

    add-int/lit8 v4, v1, 0x1

    aget v3, v3, v4

    aput v3, p1, v2

    .line 2467
    add-int/lit8 v2, v0, 0x2

    sget-object v3, Lcom/nemustech/tiffany/world/TFEffect$Genie;->mEffectDataForReverse:[F

    add-int/lit8 v4, v1, 0x2

    aget v3, v3, v4

    aput v3, p1, v2

    .line 2468
    return-void
.end method

.method private savePoints([FII)V
    .locals 5
    .parameter "points"
    .parameter "j"
    .parameter "i"

    .prologue
    .line 2452
    mul-int/lit8 v2, p2, 0x4

    add-int/2addr v2, p3

    mul-int/lit8 v1, v2, 0x3

    .line 2453
    .local v1, indexBaseSrc:I
    iget v2, p0, Lcom/nemustech/tiffany/world/TFEffect$Genie;->mStep:I

    sget v3, Lcom/nemustech/tiffany/world/TFEffect$Genie;->TOT_POINTS:I

    mul-int/2addr v2, v3

    add-int v0, v2, v1

    .line 2455
    .local v0, indexBaseDst:I
    sget-object v2, Lcom/nemustech/tiffany/world/TFEffect$Genie;->mEffectDataForReverse:[F

    add-int/lit8 v3, v0, 0x0

    add-int/lit8 v4, v1, 0x0

    aget v4, p1, v4

    aput v4, v2, v3

    .line 2456
    sget-object v2, Lcom/nemustech/tiffany/world/TFEffect$Genie;->mEffectDataForReverse:[F

    add-int/lit8 v3, v0, 0x1

    add-int/lit8 v4, v1, 0x1

    aget v4, p1, v4

    aput v4, v2, v3

    .line 2457
    sget-object v2, Lcom/nemustech/tiffany/world/TFEffect$Genie;->mEffectDataForReverse:[F

    add-int/lit8 v3, v0, 0x2

    add-int/lit8 v4, v1, 0x2

    aget v4, p1, v4

    aput v4, v2, v3

    .line 2458
    return-void
.end method

.method private scalePoints([FII[FZ)V
    .locals 8
    .parameter "points"
    .parameter "j"
    .parameter "i"
    .parameter "coord"
    .parameter "isFromBase"

    .prologue
    .line 2406
    mul-int/lit8 v6, p2, 0x4

    add-int/2addr v6, p3

    mul-int/lit8 v6, v6, 0x3

    add-int/lit8 v2, v6, 0x0

    .line 2407
    .local v2, ix:I
    mul-int/lit8 v6, p2, 0x4

    add-int/2addr v6, p3

    mul-int/lit8 v6, v6, 0x3

    add-int/lit8 v3, v6, 0x1

    .line 2408
    .local v3, iy:I
    iget v6, p0, Lcom/nemustech/tiffany/world/TFEffect$Genie;->mBasePointX:F

    iget-object v7, p0, Lcom/nemustech/tiffany/world/TFEffect$Genie;->mDumpPoints:[F

    aget v7, v7, v2

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/nemustech/tiffany/world/TFEffect$Genie;->mBasePointXMargin:F

    sub-float v4, v6, v7

    .line 2409
    .local v4, totLenX:F
    const/high16 v6, 0x4100

    div-float v0, v4, v6

    .line 2410
    .local v0, incUnitX:F
    iget-object v6, p0, Lcom/nemustech/tiffany/world/TFEffect$Genie;->mDumpPoints:[F

    aget v6, v6, v3

    const/4 v7, 0x0

    sub-float v5, v6, v7

    .line 2411
    .local v5, totLenY:F
    const/high16 v6, 0x4100

    div-float v1, v5, v6

    .line 2413
    .local v1, incUnitY:F
    const/4 v6, 0x0

    aget v7, p1, v2

    aput v7, p4, v6

    .line 2414
    const/4 v6, 0x1

    aget v7, p1, v3

    aput v7, p4, v6

    .line 2416
    if-nez p5, :cond_3

    .line 2417
    if-eqz p2, :cond_1

    .line 2418
    aget v6, p1, v2

    iget v7, p0, Lcom/nemustech/tiffany/world/TFEffect$Genie;->mBasePointX:F

    cmpg-float v6, v6, v7

    if-gez v6, :cond_2

    .line 2419
    const/4 v6, 0x0

    aget v6, p4, v6

    add-float/2addr v6, v0

    aput v6, p1, v2

    .line 2424
    :cond_0
    :goto_0
    const/4 v6, 0x1

    aget v6, p4, v6

    sub-float/2addr v6, v1

    aput v6, p1, v3

    .line 2437
    :cond_1
    :goto_1
    return-void

    .line 2420
    :cond_2
    aget v6, p1, v2

    iget v7, p0, Lcom/nemustech/tiffany/world/TFEffect$Genie;->mBasePointX:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_0

    .line 2421
    const/4 v6, 0x0

    aget v6, p4, v6

    sub-float/2addr v6, v0

    aput v6, p1, v2

    goto :goto_0

    .line 2427
    :cond_3
    if-eqz p2, :cond_1

    .line 2428
    iget-object v6, p0, Lcom/nemustech/tiffany/world/TFEffect$Genie;->mDumpPoints:[F

    aget v6, v6, v2

    iget v7, p0, Lcom/nemustech/tiffany/world/TFEffect$Genie;->mBasePointX:F

    cmpg-float v6, v6, v7

    if-gez v6, :cond_5

    .line 2429
    const/4 v6, 0x0

    aget v6, p4, v6

    sub-float/2addr v6, v0

    aput v6, p1, v2

    .line 2434
    :cond_4
    :goto_2
    const/4 v6, 0x1

    aget v6, p4, v6

    add-float/2addr v6, v1

    aput v6, p1, v3

    goto :goto_1

    .line 2430
    :cond_5
    iget-object v6, p0, Lcom/nemustech/tiffany/world/TFEffect$Genie;->mDumpPoints:[F

    aget v6, v6, v2

    iget v7, p0, Lcom/nemustech/tiffany/world/TFEffect$Genie;->mBasePointX:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_4

    .line 2431
    const/4 v6, 0x0

    aget v6, p4, v6

    add-float/2addr v6, v0

    aput v6, p1, v2

    goto :goto_2
.end method


# virtual methods
.method public isNextAvailable()Z
    .locals 1

    .prologue
    .line 2375
    iget-boolean v0, p0, Lcom/nemustech/tiffany/world/TFEffect$Genie;->mNext:Z

    return v0
.end method

.method public onEnd()V
    .locals 0

    .prologue
    .line 2372
    return-void
.end method

.method public onFrame(I)Z
    .locals 10
    .parameter "tick"

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x0

    .line 2335
    const/16 v6, 0x32

    .line 2337
    .local v6, howMuch:I
    iget v0, p0, Lcom/nemustech/tiffany/world/TFEffect$Genie;->mTicks:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/nemustech/tiffany/world/TFEffect$Genie;->mTicks:I

    .line 2338
    iget v0, p0, Lcom/nemustech/tiffany/world/TFEffect$Genie;->mTicks:I

    if-ge v0, v6, :cond_0

    move v0, v7

    .line 2367
    :goto_0
    return v0

    .line 2340
    :cond_0
    iget v0, p0, Lcom/nemustech/tiffany/world/TFEffect$Genie;->mTicks:I

    sub-int/2addr v0, v6

    iput v0, p0, Lcom/nemustech/tiffany/world/TFEffect$Genie;->mTicks:I

    .line 2342
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    if-ge v2, v8, :cond_5

    .line 2343
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    if-ge v3, v8, :cond_4

    .line 2344
    iget-boolean v0, p0, Lcom/nemustech/tiffany/world/TFEffect$Genie;->mReversed:Z

    if-nez v0, :cond_3

    .line 2345
    iget v0, p0, Lcom/nemustech/tiffany/world/TFEffect$Genie;->mStep:I

    if-ge v0, v9, :cond_1

    .line 2346
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFEffect$Genie;->mPoints:[F

    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFEffect$Genie;->XYZ:[F

    iget-boolean v5, p0, Lcom/nemustech/tiffany/world/TFEffect$Genie;->mReversed:Z

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/nemustech/tiffany/world/TFEffect$Genie;->dietPoints([FII[FZ)V

    .line 2354
    :goto_3
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffect$Genie;->mPoints:[F

    invoke-direct {p0, v0, v2, v3}, Lcom/nemustech/tiffany/world/TFEffect$Genie;->savePoints([FII)V

    .line 2343
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2348
    :cond_1
    iget v0, p0, Lcom/nemustech/tiffany/world/TFEffect$Genie;->mStep:I

    if-ne v0, v9, :cond_2

    if-nez v2, :cond_2

    if-nez v3, :cond_2

    .line 2349
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffect$Genie;->mPoints:[F

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFEffect$Genie;->mDumpPoints:[F

    invoke-direct {p0, v0, v1}, Lcom/nemustech/tiffany/world/TFEffect$Genie;->dumpPoints([F[F)V

    .line 2351
    :cond_2
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFEffect$Genie;->mPoints:[F

    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFEffect$Genie;->XYZ:[F

    iget-boolean v5, p0, Lcom/nemustech/tiffany/world/TFEffect$Genie;->mReversed:Z

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/nemustech/tiffany/world/TFEffect$Genie;->scalePoints([FII[FZ)V

    goto :goto_3

    .line 2356
    :cond_3
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffect$Genie;->mPoints:[F

    invoke-direct {p0, v0, v2, v3}, Lcom/nemustech/tiffany/world/TFEffect$Genie;->reversePoints([FII)V

    goto :goto_4

    .line 2342
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2361
    .end local v3           #i:I
    :cond_5
    iget v0, p0, Lcom/nemustech/tiffany/world/TFEffect$Genie;->mStep:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_6

    .line 2362
    iput-boolean v7, p0, Lcom/nemustech/tiffany/world/TFEffect$Genie;->mNext:Z

    .line 2367
    :goto_5
    const/4 v0, 0x1

    goto :goto_0

    .line 2364
    :cond_6
    iget v0, p0, Lcom/nemustech/tiffany/world/TFEffect$Genie;->mStep:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nemustech/tiffany/world/TFEffect$Genie;->mStep:I

    goto :goto_5
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 2323
    const/4 v0, 0x0

    iput v0, p0, Lcom/nemustech/tiffany/world/TFEffect$Genie;->mTicks:I

    .line 2324
    const v0, 0x3f4ccccd

    iput v0, p0, Lcom/nemustech/tiffany/world/TFEffect$Genie;->mBasePointX:F

    .line 2325
    const/4 v0, 0x0

    iput v0, p0, Lcom/nemustech/tiffany/world/TFEffect$Genie;->mBasePointY:F

    .line 2326
    const v0, 0x3ca3d70a

    iput v0, p0, Lcom/nemustech/tiffany/world/TFEffect$Genie;->mBasePointXMargin:F

    .line 2328
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffect$Genie;->mPoints:[F

    invoke-static {v0}, Lcom/nemustech/tiffany/world/TFEffect$Genie;->setIdentityPoints([F)V

    .line 2329
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffect$Genie;->mPoints:[F

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFEffect$Genie;->mOriginPoints:[F

    invoke-direct {p0, v0, v1}, Lcom/nemustech/tiffany/world/TFEffect$Genie;->dumpPoints([F[F)V

    .line 2331
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nemustech/tiffany/world/TFEffect$Genie;->mNext:Z

    .line 2332
    return-void
.end method
