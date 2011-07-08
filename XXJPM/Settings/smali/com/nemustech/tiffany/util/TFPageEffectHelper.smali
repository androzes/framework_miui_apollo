.class public Lcom/nemustech/tiffany/util/TFPageEffectHelper;
.super Ljava/lang/Object;
.source "TFPageEffectHelper.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final USE_JNI:Z

.field private static stInstance:Lcom/nemustech/tiffany/util/TFPageEffectHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/nemustech/tiffany/util/TFPageEffectHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/nemustech/tiffany/util/TFPageEffectHelper;->$assertionsDisabled:Z

    .line 7
    const/4 v0, 0x0

    sput-object v0, Lcom/nemustech/tiffany/util/TFPageEffectHelper;->stInstance:Lcom/nemustech/tiffany/util/TFPageEffectHelper;

    return-void

    .line 3
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method private bezier(FFFFF)F
    .locals 5
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "p4"
    .parameter "t"

    .prologue
    const/high16 v4, 0x4040

    const/high16 v3, 0x3f80

    .line 502
    sub-float v0, v3, p5

    mul-float/2addr v0, p1

    sub-float v1, v3, p5

    mul-float/2addr v0, v1

    sub-float v1, v3, p5

    mul-float/2addr v0, v1

    mul-float v1, p2, v4

    mul-float/2addr v1, p5

    sub-float v2, v3, p5

    mul-float/2addr v1, v2

    sub-float v2, v3, p5

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float v1, p3, v4

    mul-float/2addr v1, p5

    mul-float/2addr v1, p5

    sub-float v2, v3, p5

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float v1, p4, p5

    mul-float/2addr v1, p5

    mul-float/2addr v1, p5

    add-float/2addr v0, v1

    return v0
.end method

.method private calcCurlMeshInt(IFIFFFF[FI)V
    .locals 0
    .parameter "xDim"
    .parameter "xUnit"
    .parameter "yDim"
    .parameter "yUnit"
    .parameter "rollRadius"
    .parameter "rollDirection"
    .parameter "progress"
    .parameter "xyzf"
    .parameter "startOffset"

    .prologue
    .line 198
    invoke-direct/range {p0 .. p9}, Lcom/nemustech/tiffany/util/TFPageEffectHelper;->calcCurlMesh_Java(IFIFFFF[FI)V

    .line 203
    return-void
.end method

.method private calcCurlMesh_Java(IFIFFFF[FI)V
    .locals 37
    .parameter "xDim"
    .parameter "xUnit"
    .parameter "yDim"
    .parameter "yUnit"
    .parameter "rollRadius"
    .parameter "rollDirection"
    .parameter "progress"
    .parameter "xyzf"
    .parameter "startOffset"

    .prologue
    .line 388
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v33, v0

    mul-float v33, v33, p2

    const/high16 v34, 0x4000

    div-float v29, v33, v34

    .line 389
    .local v29, xShift:F
    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v33, v0

    mul-float v33, v33, p4

    const/high16 v34, 0x4000

    div-float v31, v33, v34

    .line 391
    .local v31, yShift:F
    move/from16 v0, p6

    float-to-double v0, v0

    move-wide/from16 v33, v0

    invoke-static/range {v33 .. v34}, Ljava/lang/Math;->cos(D)D

    move-result-wide v33

    move-wide/from16 v0, v33

    double-to-float v0, v0

    move v12, v0

    .line 392
    .local v12, cosvalue:F
    move/from16 v0, p6

    float-to-double v0, v0

    move-wide/from16 v33, v0

    invoke-static/range {v33 .. v34}, Ljava/lang/Math;->sin(D)D

    move-result-wide v33

    move-wide/from16 v0, v33

    double-to-float v0, v0

    move/from16 v23, v0

    .line 393
    .local v23, sinvalue:F
    move/from16 v0, p6

    neg-float v0, v0

    move/from16 v33, v0

    move/from16 v0, v33

    float-to-double v0, v0

    move-wide/from16 v33, v0

    invoke-static/range {v33 .. v34}, Ljava/lang/Math;->cos(D)D

    move-result-wide v33

    move-wide/from16 v0, v33

    double-to-float v0, v0

    move/from16 v19, v0

    .line 394
    .local v19, rcosvalue:F
    move/from16 v0, p6

    neg-float v0, v0

    move/from16 v33, v0

    move/from16 v0, v33

    float-to-double v0, v0

    move-wide/from16 v33, v0

    invoke-static/range {v33 .. v34}, Ljava/lang/Math;->sin(D)D

    move-result-wide v33

    move-wide/from16 v0, v33

    double-to-float v0, v0

    move/from16 v22, v0

    .line 396
    .local v22, rsinvalue:F
    const/16 v18, 0x0

    .local v18, iy:I
    :goto_0
    move/from16 v0, v18

    move/from16 v1, p3

    if-ge v0, v1, :cond_2

    .line 397
    const/16 v17, 0x0

    .local v17, ix:I
    :goto_1
    move/from16 v0, v17

    move/from16 v1, p1

    if-ge v0, v1, :cond_1

    .line 399
    mul-int v33, v18, p1

    add-int v33, v33, v17

    mul-int/lit8 v33, v33, 0x4

    add-int v14, v33, p9

    .line 400
    .local v14, i:I
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v33, v0

    mul-float v28, v33, p2

    .line 401
    .local v28, x:F
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v33, v0

    mul-float v30, v33, p4

    .line 402
    .local v30, y:F
    const/16 v32, 0x0

    .line 403
    .local v32, z:F
    const/4 v13, 0x0

    .line 406
    .local v13, f:F
    sub-float v28, v28, v29

    .line 407
    sub-float v30, v30, v31

    .line 409
    mul-float v33, v12, v28

    mul-float v34, v23, v30

    add-float v20, v33, v34

    .line 410
    .local v20, rotatedX:F
    move/from16 v0, v23

    neg-float v0, v0

    move/from16 v33, v0

    mul-float v33, v33, v28

    mul-float v34, v12, v30

    add-float v21, v33, v34

    .line 412
    .local v21, rotatedY:F
    move/from16 v28, v20

    .line 413
    move/from16 v30, v21

    .line 415
    add-float v28, v28, v29

    .line 416
    add-float v30, v30, v31

    .line 421
    move/from16 v0, p7

    float-to-double v0, v0

    move-wide/from16 v33, v0

    const-wide v35, 0x400921fb54442d18L

    mul-double v33, v33, v35

    move/from16 v0, p5

    float-to-double v0, v0

    move-wide/from16 v35, v0

    mul-double v33, v33, v35

    move/from16 v0, v28

    float-to-double v0, v0

    move-wide/from16 v35, v0

    sub-double v33, v33, v35

    move/from16 v0, p5

    float-to-double v0, v0

    move-wide/from16 v35, v0

    div-double v33, v33, v35

    move-wide/from16 v0, v33

    double-to-float v0, v0

    move/from16 v24, v0

    .line 423
    .local v24, theta:F
    const/16 v33, 0x0

    cmpl-float v33, v24, v33

    if-lez v33, :cond_0

    .line 424
    move-object/from16 v0, p0

    move/from16 v1, p5

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/nemustech/tiffany/util/TFPageEffectHelper;->calcCycloidX(FF)F

    move-result v33

    add-float v28, v28, v33

    .line 425
    move-object/from16 v0, p0

    move/from16 v1, p5

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/nemustech/tiffany/util/TFPageEffectHelper;->calcCycloidY(FF)F

    move-result v32

    .line 432
    :cond_0
    sub-float v28, v28, v29

    .line 433
    sub-float v30, v30, v31

    .line 435
    mul-float v33, v19, v28

    mul-float v34, v22, v30

    add-float v20, v33, v34

    .line 436
    move/from16 v0, v22

    neg-float v0, v0

    move/from16 v33, v0

    mul-float v33, v33, v28

    mul-float v34, v19, v30

    add-float v21, v33, v34

    .line 438
    move/from16 v28, v20

    .line 439
    move/from16 v30, v21

    .line 441
    add-float v28, v28, v29

    .line 442
    add-float v30, v30, v31

    .line 445
    aput v28, p8, v14

    .line 446
    add-int/lit8 v33, v14, 0x1

    aput v30, p8, v33

    .line 447
    add-int/lit8 v33, v14, 0x2

    aput v32, p8, v33

    .line 448
    add-int/lit8 v33, v14, 0x3

    aput v13, p8, v33

    .line 397
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_1

    .line 396
    .end local v13           #f:F
    .end local v14           #i:I
    .end local v20           #rotatedX:F
    .end local v21           #rotatedY:F
    .end local v24           #theta:F
    .end local v28           #x:F
    .end local v30           #y:F
    .end local v32           #z:F
    :cond_1
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_0

    .line 453
    .end local v17           #ix:I
    :cond_2
    const/16 v25, 0x0

    .line 454
    .local v25, v1:F
    const/16 v26, 0x0

    .line 455
    .local v26, v2:F
    const/high16 v27, -0x4080

    .line 458
    .local v27, v3:F
    const/16 v18, 0x0

    :goto_2
    const/16 v33, 0x1

    sub-int v33, p3, v33

    move/from16 v0, v18

    move/from16 v1, v33

    if-ge v0, v1, :cond_4

    .line 459
    const/16 v17, 0x0

    .restart local v17       #ix:I
    :goto_3
    const/16 v33, 0x1

    sub-int v33, p1, v33

    move/from16 v0, v17

    move/from16 v1, v33

    if-ge v0, v1, :cond_3

    .line 461
    mul-int v33, v18, p1

    add-int v33, v33, v17

    mul-int/lit8 v33, v33, 0x4

    add-int v14, v33, p9

    .line 462
    .restart local v14       #i:I
    aget v28, p8, v14

    .line 463
    .restart local v28       #x:F
    add-int/lit8 v33, v14, 0x1

    aget v30, p8, v33

    .line 464
    .restart local v30       #y:F
    add-int/lit8 v33, v14, 0x2

    aget v32, p8, v33

    .line 466
    .restart local v32       #z:F
    add-int/lit8 v15, v14, 0x4

    .line 467
    .local v15, iNextCol:I
    mul-int/lit8 v33, p1, 0x4

    add-int v16, v14, v33

    .line 470
    .local v16, iNextRow:I
    aget v33, p8, v15

    sub-float v3, v33, v28

    .line 471
    .local v3, a1:F
    add-int/lit8 v33, v15, 0x1

    aget v33, p8, v33

    sub-float v4, v33, v30

    .line 472
    .local v4, a2:F
    add-int/lit8 v33, v15, 0x2

    aget v33, p8, v33

    sub-float v5, v33, v32

    .line 475
    .local v5, a3:F
    aget v33, p8, v16

    sub-float v6, v33, v28

    .line 476
    .local v6, b1:F
    add-int/lit8 v33, v16, 0x1

    aget v33, p8, v33

    sub-float v7, v33, v30

    .line 477
    .local v7, b2:F
    add-int/lit8 v33, v16, 0x2

    aget v33, p8, v33

    sub-float v8, v33, v32

    .line 480
    .local v8, b3:F
    mul-float v33, v4, v8

    mul-float v34, v5, v7

    sub-float v9, v33, v34

    .line 481
    .local v9, c1:F
    mul-float v33, v5, v6

    mul-float v34, v3, v8

    sub-float v10, v33, v34

    .line 482
    .local v10, c2:F
    mul-float v33, v3, v7

    mul-float v34, v4, v6

    sub-float v11, v33, v34

    .line 485
    .local v11, c3:F
    mul-float v33, v9, v25

    mul-float v34, v10, v26

    add-float v33, v33, v34

    mul-float v34, v11, v27

    add-float v13, v33, v34

    .line 487
    .restart local v13       #f:F
    add-int/lit8 v33, v14, 0x3

    aput v13, p8, v33

    .line 459
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 458
    .end local v3           #a1:F
    .end local v4           #a2:F
    .end local v5           #a3:F
    .end local v6           #b1:F
    .end local v7           #b2:F
    .end local v8           #b3:F
    .end local v9           #c1:F
    .end local v10           #c2:F
    .end local v11           #c3:F
    .end local v13           #f:F
    .end local v14           #i:I
    .end local v15           #iNextCol:I
    .end local v16           #iNextRow:I
    .end local v28           #x:F
    .end local v30           #y:F
    .end local v32           #z:F
    :cond_3
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 490
    .end local v17           #ix:I
    :cond_4
    return-void
.end method

.method private calcCycloidX(FF)F
    .locals 6
    .parameter "radius"
    .parameter "theta"

    .prologue
    .line 493
    float-to-double v0, p1

    float-to-double v2, p2

    float-to-double v4, p2

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    sub-double/2addr v2, v4

    mul-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method private calcCycloidY(FF)F
    .locals 6
    .parameter "radius"
    .parameter "theta"

    .prologue
    .line 497
    float-to-double v0, p1

    const-wide/high16 v2, 0x3ff0

    float-to-double v4, p2

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    sub-double/2addr v2, v4

    mul-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method private calcGenieInOutMeshInt(IFIFI[FI[F[FIII)V
    .locals 0
    .parameter "xDim"
    .parameter "xUnit"
    .parameter "yDim"
    .parameter "yUnit"
    .parameter "curFrame"
    .parameter "xyzf"
    .parameter "baseOffset"
    .parameter "matrixX"
    .parameter "matrixX2"
    .parameter "inoutCount"
    .parameter "shrinkCount"
    .parameter "bgHeight"

    .prologue
    .line 596
    invoke-direct/range {p0 .. p12}, Lcom/nemustech/tiffany/util/TFPageEffectHelper;->calcGenieInOutMesh_Java(IFIFI[FI[F[FIII)V

    .line 599
    return-void
.end method

.method private calcGenieInOutMesh_Java(IFIFI[FI[F[FIII)V
    .locals 34
    .parameter "xDim"
    .parameter "xUnit"
    .parameter "yDim"
    .parameter "yUnit"
    .parameter "curFrame"
    .parameter "xyzf"
    .parameter "baseOffset"
    .parameter "matrixX"
    .parameter "matrixX2"
    .parameter "inoutCount"
    .parameter "shrinkCount"
    .parameter "bgHeight"

    .prologue
    .line 610
    mul-int/lit8 v32, p1, 0x4

    mul-int v32, v32, p3

    mul-int v23, v32, p5

    .line 611
    .local v23, pageOffset:I
    sub-int v14, p5, p11

    .line 612
    .local v14, flowDownCount:I
    const/16 v32, 0x1

    sub-int v32, p3, v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    mul-float v25, v32, p4

    .line 613
    .local v25, totalY:F
    move-object/from16 v0, p8

    array-length v0, v0

    move/from16 v32, v0

    const/16 v33, 0x1

    sub-int v21, v32, v33

    .line 614
    .local v21, matrixSize:I
    move v0, v14

    int-to-float v0, v0

    move/from16 v32, v0

    const/16 v33, 0x1

    sub-int v33, p10, v33

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    div-float v22, v32, v33

    .line 615
    .local v22, offsetY:F
    move/from16 v0, v22

    neg-float v0, v0

    move/from16 v32, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v33, v0

    mul-float v24, v32, v33

    .line 617
    .local v24, startX:F
    const/16 v19, 0x0

    .local v19, iy:I
    :goto_0
    move/from16 v0, v19

    move/from16 v1, p3

    if-ge v0, v1, :cond_3

    .line 619
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v32, v0

    const/16 v33, 0x1

    sub-int v33, p3, v33

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    div-float v32, v32, v33

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v33, v0

    mul-float v32, v32, v33

    add-float v32, v32, v24

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v20, v0

    .line 620
    .local v20, matrix:I
    if-gez v20, :cond_0

    .line 621
    const/16 v20, 0x0

    .line 622
    :cond_0
    aget v11, p8, v20

    .line 623
    .local v11, deltaX:F
    aget v12, p9, v20

    .line 625
    .local v12, deltaX2:F
    const/16 v18, 0x0

    .local v18, ix:I
    :goto_1
    move/from16 v0, v18

    move/from16 v1, p1

    if-ge v0, v1, :cond_2

    .line 626
    mul-int v32, v19, p1

    add-int v32, v32, v18

    mul-int/lit8 v32, v32, 0x4

    add-int v15, v32, v23

    .line 627
    .local v15, i:I
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v32, v0

    mul-float v32, v32, p4

    mul-float v33, v22, v25

    sub-float v30, v32, v33

    .line 628
    .local v30, y:F
    move/from16 v0, p12

    int-to-float v0, v0

    move/from16 v32, v0

    cmpg-float v32, v30, v32

    if-gez v32, :cond_1

    .line 629
    move/from16 v0, p12

    int-to-float v0, v0

    move/from16 v30, v0

    .line 631
    :cond_1
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v32, v0

    const/16 v33, 0x1

    sub-int v33, p1, v33

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    div-float v32, v32, v33

    sub-float v33, v12, v11

    mul-float v32, v32, v33

    add-float v29, v11, v32

    .line 633
    .local v29, x:F
    aput v29, p6, v15

    .line 634
    add-int/lit8 v32, v15, 0x1

    aput v30, p6, v32

    .line 635
    add-int/lit8 v32, v15, 0x2

    const/16 v33, 0x0

    aput v33, p6, v32

    .line 636
    add-int/lit8 v32, v15, 0x3

    const/16 v33, 0x0

    aput v33, p6, v32

    .line 625
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 617
    .end local v15           #i:I
    .end local v29           #x:F
    .end local v30           #y:F
    :cond_2
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_0

    .line 641
    .end local v11           #deltaX:F
    .end local v12           #deltaX2:F
    .end local v18           #ix:I
    .end local v20           #matrix:I
    :cond_3
    const/16 v26, 0x0

    .line 642
    .local v26, v1:F
    const/16 v27, 0x0

    .line 643
    .local v27, v2:F
    const/high16 v28, -0x4080

    .line 646
    .local v28, v3:F
    const/16 v19, 0x0

    :goto_2
    const/16 v32, 0x1

    sub-int v32, p3, v32

    move/from16 v0, v19

    move/from16 v1, v32

    if-ge v0, v1, :cond_5

    .line 647
    const/16 v18, 0x0

    .restart local v18       #ix:I
    :goto_3
    const/16 v32, 0x1

    sub-int v32, p1, v32

    move/from16 v0, v18

    move/from16 v1, v32

    if-ge v0, v1, :cond_4

    .line 649
    mul-int v32, v19, p1

    add-int v32, v32, v18

    mul-int/lit8 v32, v32, 0x4

    add-int v15, v32, v23

    .line 650
    .restart local v15       #i:I
    aget v29, p6, v15

    .line 651
    .restart local v29       #x:F
    add-int/lit8 v32, v15, 0x1

    aget v30, p6, v32

    .line 652
    .restart local v30       #y:F
    add-int/lit8 v32, v15, 0x2

    aget v31, p6, v32

    .line 654
    .local v31, z:F
    add-int/lit8 v16, v15, 0x4

    .line 655
    .local v16, iNextCol:I
    mul-int/lit8 v32, p1, 0x4

    add-int v17, v15, v32

    .line 658
    .local v17, iNextRow:I
    aget v32, p6, v16

    sub-float v2, v32, v29

    .line 659
    .local v2, a1:F
    add-int/lit8 v32, v16, 0x1

    aget v32, p6, v32

    sub-float v3, v32, v30

    .line 660
    .local v3, a2:F
    add-int/lit8 v32, v16, 0x2

    aget v32, p6, v32

    sub-float v4, v32, v31

    .line 663
    .local v4, a3:F
    aget v32, p6, v17

    sub-float v5, v32, v29

    .line 664
    .local v5, b1:F
    add-int/lit8 v32, v17, 0x1

    aget v32, p6, v32

    sub-float v6, v32, v30

    .line 665
    .local v6, b2:F
    add-int/lit8 v32, v17, 0x2

    aget v32, p6, v32

    sub-float v7, v32, v31

    .line 668
    .local v7, b3:F
    mul-float v32, v3, v7

    mul-float v33, v4, v6

    sub-float v8, v32, v33

    .line 669
    .local v8, c1:F
    mul-float v32, v4, v5

    mul-float v33, v2, v7

    sub-float v9, v32, v33

    .line 670
    .local v9, c2:F
    mul-float v32, v2, v6

    mul-float v33, v3, v5

    sub-float v10, v32, v33

    .line 673
    .local v10, c3:F
    mul-float v32, v8, v26

    mul-float v33, v9, v27

    add-float v32, v32, v33

    mul-float v33, v10, v28

    add-float v13, v32, v33

    .line 675
    .local v13, f:F
    add-int/lit8 v32, v15, 0x3

    aput v13, p6, v32

    .line 647
    add-int/lit8 v18, v18, 0x1

    goto :goto_3

    .line 646
    .end local v2           #a1:F
    .end local v3           #a2:F
    .end local v4           #a3:F
    .end local v5           #b1:F
    .end local v6           #b2:F
    .end local v7           #b3:F
    .end local v8           #c1:F
    .end local v9           #c2:F
    .end local v10           #c3:F
    .end local v13           #f:F
    .end local v15           #i:I
    .end local v16           #iNextCol:I
    .end local v17           #iNextRow:I
    .end local v29           #x:F
    .end local v30           #y:F
    .end local v31           #z:F
    :cond_4
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    .line 678
    .end local v18           #ix:I
    :cond_5
    return-void
.end method

.method private calcGenieShrinkMeshInt(IFIFI[F[F[FI)V
    .locals 0
    .parameter "xDim"
    .parameter "xUnit"
    .parameter "yDim"
    .parameter "yUnit"
    .parameter "curFrame"
    .parameter "xyzf"
    .parameter "matrixX"
    .parameter "matrixX2"
    .parameter "shrinkCount"

    .prologue
    .line 585
    invoke-direct/range {p0 .. p9}, Lcom/nemustech/tiffany/util/TFPageEffectHelper;->calcGenieShrinkMesh_Java(IFIFI[F[F[FI)V

    .line 588
    return-void
.end method

.method private calcGenieShrinkMesh_Java(IFIFI[F[F[FI)V
    .locals 33
    .parameter "xDim"
    .parameter "xUnit"
    .parameter "yDim"
    .parameter "yUnit"
    .parameter "curFrame"
    .parameter "xyzf"
    .parameter "matrixX"
    .parameter "matrixX2"
    .parameter "shrinkCount"

    .prologue
    .line 688
    const/4 v11, 0x0

    .line 690
    .local v11, deltaX:F
    mul-int/lit8 v29, p1, 0x4

    mul-int v29, v29, p3

    mul-int v22, v29, p5

    .line 691
    .local v22, pageOffset:I
    move-object/from16 v0, p7

    array-length v0, v0

    move/from16 v29, v0

    const/16 v30, 0x1

    sub-int v19, v29, v30

    .line 693
    .local v19, matrixSize:I
    const/16 v18, 0x0

    .local v18, iy:I
    :goto_0
    move/from16 v0, v18

    move/from16 v1, p3

    if-ge v0, v1, :cond_1

    .line 695
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v29, v0

    const/16 v30, 0x1

    sub-int v30, p3, v30

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    div-float v29, v29, v30

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v30, v0

    mul-float v29, v29, v30

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    aget v20, p7, v29

    .line 696
    .local v20, origDeltaX:F
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v29, v0

    const/16 v30, 0x1

    sub-int v30, p3, v30

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    div-float v29, v29, v30

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v30, v0

    mul-float v29, v29, v30

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    aget v21, p8, v29

    .line 697
    .local v21, origDeltaX2:F
    move/from16 v0, p5

    int-to-float v0, v0

    move/from16 v29, v0

    const/16 v30, 0x1

    sub-int v30, p9, v30

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    div-float v29, v29, v30

    mul-float v11, v20, v29

    .line 698
    const/16 v29, 0x1

    sub-int v29, p1, v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    mul-float v29, v29, p2

    const/16 v30, 0x1

    sub-int v30, p1, v30

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    mul-float v30, v30, p2

    sub-float v30, v30, v21

    move/from16 v0, p5

    int-to-float v0, v0

    move/from16 v31, v0

    const/16 v32, 0x1

    sub-int v32, p9, v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    div-float v31, v31, v32

    mul-float v30, v30, v31

    sub-float v12, v29, v30

    .line 700
    .local v12, deltaX2:F
    const/16 v17, 0x0

    .local v17, ix:I
    :goto_1
    move/from16 v0, v17

    move/from16 v1, p1

    if-ge v0, v1, :cond_0

    .line 701
    mul-int v29, v18, p1

    add-int v29, v29, v17

    mul-int/lit8 v29, v29, 0x4

    add-int v14, v29, v22

    .line 702
    .local v14, i:I
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v29, v0

    mul-float v27, v29, p4

    .line 704
    .local v27, y:F
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v29, v0

    const/16 v30, 0x1

    sub-int v30, p1, v30

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    div-float v29, v29, v30

    sub-float v30, v12, v11

    mul-float v29, v29, v30

    add-float v26, v11, v29

    .line 706
    .local v26, x:F
    aput v26, p6, v14

    .line 707
    add-int/lit8 v29, v14, 0x1

    aput v27, p6, v29

    .line 708
    add-int/lit8 v29, v14, 0x2

    const/16 v30, 0x0

    aput v30, p6, v29

    .line 709
    add-int/lit8 v29, v14, 0x3

    const/16 v30, 0x0

    aput v30, p6, v29

    .line 700
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 693
    .end local v14           #i:I
    .end local v26           #x:F
    .end local v27           #y:F
    :cond_0
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_0

    .line 714
    .end local v12           #deltaX2:F
    .end local v17           #ix:I
    .end local v20           #origDeltaX:F
    .end local v21           #origDeltaX2:F
    :cond_1
    const/16 v23, 0x0

    .line 715
    .local v23, v1:F
    const/16 v24, 0x0

    .line 716
    .local v24, v2:F
    const/high16 v25, -0x4080

    .line 719
    .local v25, v3:F
    const/16 v18, 0x0

    :goto_2
    const/16 v29, 0x1

    sub-int v29, p3, v29

    move/from16 v0, v18

    move/from16 v1, v29

    if-ge v0, v1, :cond_3

    .line 720
    const/16 v17, 0x0

    .restart local v17       #ix:I
    :goto_3
    const/16 v29, 0x1

    sub-int v29, p1, v29

    move/from16 v0, v17

    move/from16 v1, v29

    if-ge v0, v1, :cond_2

    .line 722
    mul-int v29, v18, p1

    add-int v29, v29, v17

    mul-int/lit8 v29, v29, 0x4

    add-int v14, v29, v22

    .line 723
    .restart local v14       #i:I
    aget v26, p6, v14

    .line 724
    .restart local v26       #x:F
    add-int/lit8 v29, v14, 0x1

    aget v27, p6, v29

    .line 725
    .restart local v27       #y:F
    add-int/lit8 v29, v14, 0x2

    aget v28, p6, v29

    .line 727
    .local v28, z:F
    add-int/lit8 v15, v14, 0x4

    .line 728
    .local v15, iNextCol:I
    mul-int/lit8 v29, p1, 0x4

    add-int v16, v14, v29

    .line 731
    .local v16, iNextRow:I
    aget v29, p6, v15

    sub-float v2, v29, v26

    .line 732
    .local v2, a1:F
    add-int/lit8 v29, v15, 0x1

    aget v29, p6, v29

    sub-float v3, v29, v27

    .line 733
    .local v3, a2:F
    add-int/lit8 v29, v15, 0x2

    aget v29, p6, v29

    sub-float v4, v29, v28

    .line 736
    .local v4, a3:F
    aget v29, p6, v16

    sub-float v5, v29, v26

    .line 737
    .local v5, b1:F
    add-int/lit8 v29, v16, 0x1

    aget v29, p6, v29

    sub-float v6, v29, v27

    .line 738
    .local v6, b2:F
    add-int/lit8 v29, v16, 0x2

    aget v29, p6, v29

    sub-float v7, v29, v28

    .line 741
    .local v7, b3:F
    mul-float v29, v3, v7

    mul-float v30, v4, v6

    sub-float v8, v29, v30

    .line 742
    .local v8, c1:F
    mul-float v29, v4, v5

    mul-float v30, v2, v7

    sub-float v9, v29, v30

    .line 743
    .local v9, c2:F
    mul-float v29, v2, v6

    mul-float v30, v3, v5

    sub-float v10, v29, v30

    .line 746
    .local v10, c3:F
    mul-float v29, v8, v23

    mul-float v30, v9, v24

    add-float v29, v29, v30

    mul-float v30, v10, v25

    add-float v13, v29, v30

    .line 748
    .local v13, f:F
    add-int/lit8 v29, v14, 0x3

    aput v13, p6, v29

    .line 720
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 719
    .end local v2           #a1:F
    .end local v3           #a2:F
    .end local v4           #a3:F
    .end local v5           #b1:F
    .end local v6           #b2:F
    .end local v7           #b3:F
    .end local v8           #c1:F
    .end local v9           #c2:F
    .end local v10           #c3:F
    .end local v13           #f:F
    .end local v14           #i:I
    .end local v15           #iNextCol:I
    .end local v16           #iNextRow:I
    .end local v26           #x:F
    .end local v27           #y:F
    .end local v28           #z:F
    :cond_2
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 751
    .end local v17           #ix:I
    :cond_3
    return-void
.end method

.method private calcRDoorInMeshInt(IFIFF[FI)V
    .locals 0
    .parameter "xDim"
    .parameter "xUnit"
    .parameter "yDim"
    .parameter "yUnit"
    .parameter "progress"
    .parameter "xyzf"
    .parameter "startOffset"

    .prologue
    .line 156
    invoke-direct/range {p0 .. p7}, Lcom/nemustech/tiffany/util/TFPageEffectHelper;->calcRDoorInMesh_Java(IFIFF[FI)V

    .line 161
    return-void
.end method

.method private calcRDoorInMesh_Java(IFIFF[FI)V
    .locals 30
    .parameter "xDim"
    .parameter "xUnit"
    .parameter "yDim"
    .parameter "yUnit"
    .parameter "progress"
    .parameter "xyzf"
    .parameter "startOffset"

    .prologue
    .line 221
    const/high16 v28, 0x4234

    const/high16 v29, 0x3f80

    sub-float v29, v29, p5

    mul-float v28, v28, v29

    move/from16 v0, v28

    float-to-double v0, v0

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v21, v0

    .line 223
    .local v21, theta:F
    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->cos(D)D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move v11, v0

    .line 224
    .local v11, cosvalue:F
    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->sin(D)D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v20, v0

    .line 226
    .local v20, sinvalue:F
    const/16 v17, 0x0

    .local v17, iy:I
    :goto_0
    move/from16 v0, v17

    move/from16 v1, p3

    if-ge v0, v1, :cond_1

    .line 227
    const/16 v16, 0x0

    .local v16, ix:I
    :goto_1
    move/from16 v0, v16

    move/from16 v1, p1

    if-ge v0, v1, :cond_0

    .line 229
    mul-int v28, v17, p1

    add-int v28, v28, v16

    mul-int/lit8 v28, v28, 0x4

    add-int v13, v28, p7

    .line 230
    .local v13, i:I
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v28, v0

    mul-float v25, v28, p2

    .line 231
    .local v25, x:F
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v28, v0

    mul-float v26, v28, p4

    .line 232
    .local v26, y:F
    const/16 v27, 0x0

    .line 233
    .local v27, z:F
    const/4 v12, 0x0

    .line 235
    .local v12, f:F
    mul-float v28, v11, v25

    mul-float v29, v20, v27

    add-float v18, v28, v29

    .line 236
    .local v18, rotatedX:F
    move/from16 v0, v20

    neg-float v0, v0

    move/from16 v28, v0

    mul-float v28, v28, v25

    mul-float v29, v11, v27

    add-float v19, v28, v29

    .line 238
    .local v19, rotatedZ:F
    move/from16 v25, v18

    .line 239
    move/from16 v27, v19

    .line 241
    aput v25, p6, v13

    .line 242
    add-int/lit8 v28, v13, 0x1

    aput v26, p6, v28

    .line 243
    add-int/lit8 v28, v13, 0x2

    aput v27, p6, v28

    .line 244
    add-int/lit8 v28, v13, 0x3

    aput v12, p6, v28

    .line 227
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 226
    .end local v12           #f:F
    .end local v13           #i:I
    .end local v18           #rotatedX:F
    .end local v19           #rotatedZ:F
    .end local v25           #x:F
    .end local v26           #y:F
    .end local v27           #z:F
    :cond_0
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 249
    .end local v16           #ix:I
    :cond_1
    const/16 v22, 0x0

    .line 250
    .local v22, v1:F
    const/16 v23, 0x0

    .line 251
    .local v23, v2:F
    const/high16 v24, -0x4080

    .line 254
    .local v24, v3:F
    const/16 v17, 0x0

    :goto_2
    const/16 v28, 0x1

    sub-int v28, p3, v28

    move/from16 v0, v17

    move/from16 v1, v28

    if-ge v0, v1, :cond_3

    .line 255
    const/16 v16, 0x0

    .restart local v16       #ix:I
    :goto_3
    const/16 v28, 0x1

    sub-int v28, p1, v28

    move/from16 v0, v16

    move/from16 v1, v28

    if-ge v0, v1, :cond_2

    .line 257
    mul-int v28, v17, p1

    add-int v28, v28, v16

    mul-int/lit8 v28, v28, 0x4

    add-int v13, v28, p7

    .line 258
    .restart local v13       #i:I
    aget v25, p6, v13

    .line 259
    .restart local v25       #x:F
    add-int/lit8 v28, v13, 0x1

    aget v26, p6, v28

    .line 260
    .restart local v26       #y:F
    add-int/lit8 v28, v13, 0x2

    aget v27, p6, v28

    .line 262
    .restart local v27       #z:F
    add-int/lit8 v14, v13, 0x4

    .line 263
    .local v14, iNextCol:I
    mul-int/lit8 v28, p1, 0x4

    add-int v15, v13, v28

    .line 266
    .local v15, iNextRow:I
    aget v28, p6, v14

    sub-float v2, v28, v25

    .line 267
    .local v2, a1:F
    add-int/lit8 v28, v14, 0x1

    aget v28, p6, v28

    sub-float v3, v28, v26

    .line 268
    .local v3, a2:F
    add-int/lit8 v28, v14, 0x2

    aget v28, p6, v28

    sub-float v4, v28, v27

    .line 271
    .local v4, a3:F
    aget v28, p6, v15

    sub-float v5, v28, v25

    .line 272
    .local v5, b1:F
    add-int/lit8 v28, v15, 0x1

    aget v28, p6, v28

    sub-float v6, v28, v26

    .line 273
    .local v6, b2:F
    add-int/lit8 v28, v15, 0x2

    aget v28, p6, v28

    sub-float v7, v28, v27

    .line 276
    .local v7, b3:F
    mul-float v28, v3, v7

    mul-float v29, v4, v6

    sub-float v8, v28, v29

    .line 277
    .local v8, c1:F
    mul-float v28, v4, v5

    mul-float v29, v2, v7

    sub-float v9, v28, v29

    .line 278
    .local v9, c2:F
    mul-float v28, v2, v6

    mul-float v29, v3, v5

    sub-float v10, v28, v29

    .line 281
    .local v10, c3:F
    mul-float v28, v8, v22

    mul-float v29, v9, v23

    add-float v28, v28, v29

    mul-float v29, v10, v24

    add-float v12, v28, v29

    .line 283
    .restart local v12       #f:F
    add-int/lit8 v28, v13, 0x3

    aput v12, p6, v28

    .line 255
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 254
    .end local v2           #a1:F
    .end local v3           #a2:F
    .end local v4           #a3:F
    .end local v5           #b1:F
    .end local v6           #b2:F
    .end local v7           #b3:F
    .end local v8           #c1:F
    .end local v9           #c2:F
    .end local v10           #c3:F
    .end local v12           #f:F
    .end local v13           #i:I
    .end local v14           #iNextCol:I
    .end local v15           #iNextRow:I
    .end local v25           #x:F
    .end local v26           #y:F
    .end local v27           #z:F
    :cond_2
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 286
    .end local v16           #ix:I
    :cond_3
    return-void
.end method

.method private calcRDoorOutMeshInt(IFIFF[FI)V
    .locals 0
    .parameter "xDim"
    .parameter "xUnit"
    .parameter "yDim"
    .parameter "yUnit"
    .parameter "progress"
    .parameter "xyzf"
    .parameter "startOffset"

    .prologue
    .line 177
    invoke-direct/range {p0 .. p7}, Lcom/nemustech/tiffany/util/TFPageEffectHelper;->calcRDoorOutMesh_Java(IFIFF[FI)V

    .line 182
    return-void
.end method

.method private calcRDoorOutMesh_Java(IFIFF[FI)V
    .locals 30
    .parameter "xDim"
    .parameter "xUnit"
    .parameter "yDim"
    .parameter "yUnit"
    .parameter "progress"
    .parameter "xyzf"
    .parameter "startOffset"

    .prologue
    .line 303
    const/high16 v28, -0x3d4c

    mul-float v28, v28, p5

    move/from16 v0, v28

    float-to-double v0, v0

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v21, v0

    .line 305
    .local v21, theta:F
    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->cos(D)D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move v11, v0

    .line 306
    .local v11, cosvalue:F
    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->sin(D)D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v20, v0

    .line 308
    .local v20, sinvalue:F
    const/16 v17, 0x0

    .local v17, iy:I
    :goto_0
    move/from16 v0, v17

    move/from16 v1, p3

    if-ge v0, v1, :cond_1

    .line 309
    const/16 v16, 0x0

    .local v16, ix:I
    :goto_1
    move/from16 v0, v16

    move/from16 v1, p1

    if-ge v0, v1, :cond_0

    .line 311
    mul-int v28, v17, p1

    add-int v28, v28, v16

    mul-int/lit8 v28, v28, 0x4

    add-int v13, v28, p7

    .line 312
    .local v13, i:I
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v28, v0

    mul-float v25, v28, p2

    .line 313
    .local v25, x:F
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v28, v0

    mul-float v26, v28, p4

    .line 314
    .local v26, y:F
    const/16 v27, 0x0

    .line 315
    .local v27, z:F
    const/4 v12, 0x0

    .line 317
    .local v12, f:F
    mul-float v28, v11, v25

    mul-float v29, v20, v27

    add-float v18, v28, v29

    .line 318
    .local v18, rotatedX:F
    move/from16 v0, v20

    neg-float v0, v0

    move/from16 v28, v0

    mul-float v28, v28, v25

    mul-float v29, v11, v27

    add-float v19, v28, v29

    .line 320
    .local v19, rotatedZ:F
    move/from16 v25, v18

    .line 321
    move/from16 v27, v19

    .line 323
    aput v25, p6, v13

    .line 324
    add-int/lit8 v28, v13, 0x1

    aput v26, p6, v28

    .line 325
    add-int/lit8 v28, v13, 0x2

    aput v27, p6, v28

    .line 326
    add-int/lit8 v28, v13, 0x3

    aput v12, p6, v28

    .line 309
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 308
    .end local v12           #f:F
    .end local v13           #i:I
    .end local v18           #rotatedX:F
    .end local v19           #rotatedZ:F
    .end local v25           #x:F
    .end local v26           #y:F
    .end local v27           #z:F
    :cond_0
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 331
    .end local v16           #ix:I
    :cond_1
    const/16 v22, 0x0

    .line 332
    .local v22, v1:F
    const/16 v23, 0x0

    .line 333
    .local v23, v2:F
    const/high16 v24, -0x4080

    .line 336
    .local v24, v3:F
    const/16 v17, 0x0

    :goto_2
    const/16 v28, 0x1

    sub-int v28, p3, v28

    move/from16 v0, v17

    move/from16 v1, v28

    if-ge v0, v1, :cond_3

    .line 337
    const/16 v16, 0x0

    .restart local v16       #ix:I
    :goto_3
    const/16 v28, 0x1

    sub-int v28, p1, v28

    move/from16 v0, v16

    move/from16 v1, v28

    if-ge v0, v1, :cond_2

    .line 339
    mul-int v28, v17, p1

    add-int v28, v28, v16

    mul-int/lit8 v28, v28, 0x4

    add-int v13, v28, p7

    .line 340
    .restart local v13       #i:I
    aget v25, p6, v13

    .line 341
    .restart local v25       #x:F
    add-int/lit8 v28, v13, 0x1

    aget v26, p6, v28

    .line 342
    .restart local v26       #y:F
    add-int/lit8 v28, v13, 0x2

    aget v27, p6, v28

    .line 344
    .restart local v27       #z:F
    add-int/lit8 v14, v13, 0x4

    .line 345
    .local v14, iNextCol:I
    mul-int/lit8 v28, p1, 0x4

    add-int v15, v13, v28

    .line 348
    .local v15, iNextRow:I
    aget v28, p6, v14

    sub-float v2, v28, v25

    .line 349
    .local v2, a1:F
    add-int/lit8 v28, v14, 0x1

    aget v28, p6, v28

    sub-float v3, v28, v26

    .line 350
    .local v3, a2:F
    add-int/lit8 v28, v14, 0x2

    aget v28, p6, v28

    sub-float v4, v28, v27

    .line 353
    .local v4, a3:F
    aget v28, p6, v15

    sub-float v5, v28, v25

    .line 354
    .local v5, b1:F
    add-int/lit8 v28, v15, 0x1

    aget v28, p6, v28

    sub-float v6, v28, v26

    .line 355
    .local v6, b2:F
    add-int/lit8 v28, v15, 0x2

    aget v28, p6, v28

    sub-float v7, v28, v27

    .line 358
    .local v7, b3:F
    mul-float v28, v3, v7

    mul-float v29, v4, v6

    sub-float v8, v28, v29

    .line 359
    .local v8, c1:F
    mul-float v28, v4, v5

    mul-float v29, v2, v7

    sub-float v9, v28, v29

    .line 360
    .local v9, c2:F
    mul-float v28, v2, v6

    mul-float v29, v3, v5

    sub-float v10, v28, v29

    .line 363
    .local v10, c3:F
    mul-float v28, v8, v22

    mul-float v29, v9, v23

    add-float v28, v28, v29

    mul-float v29, v10, v24

    add-float v12, v28, v29

    .line 365
    .restart local v12       #f:F
    add-int/lit8 v28, v13, 0x3

    aput v12, p6, v28

    .line 337
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 336
    .end local v2           #a1:F
    .end local v3           #a2:F
    .end local v4           #a3:F
    .end local v5           #b1:F
    .end local v6           #b2:F
    .end local v7           #b3:F
    .end local v8           #c1:F
    .end local v9           #c2:F
    .end local v10           #c3:F
    .end local v12           #f:F
    .end local v13           #i:I
    .end local v14           #iNextCol:I
    .end local v15           #iNextRow:I
    .end local v25           #x:F
    .end local v26           #y:F
    .end local v27           #z:F
    :cond_2
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 368
    .end local v16           #ix:I
    :cond_3
    return-void
.end method

.method private calcThreeWallsLeftMeshInt(IFIFF[FI)V
    .locals 0
    .parameter "xDim"
    .parameter "xUnit"
    .parameter "yDim"
    .parameter "yUnit"
    .parameter "progress"
    .parameter "xyzf"
    .parameter "startOffset"

    .prologue
    .line 849
    invoke-direct/range {p0 .. p7}, Lcom/nemustech/tiffany/util/TFPageEffectHelper;->calcThreeWallsLeftMesh_Java(IFIFF[FI)V

    .line 854
    return-void
.end method

.method private calcThreeWallsLeftMesh_Java(IFIFF[FI)V
    .locals 37
    .parameter "xDim"
    .parameter "xUnit"
    .parameter "yDim"
    .parameter "yUnit"
    .parameter "progress"
    .parameter "xyzf"
    .parameter "startOffset"

    .prologue
    .line 894
    const/16 v33, 0x1

    sub-int v33, p1, v33

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    mul-float v30, v33, p2

    .line 896
    .local v30, xTotalLength:F
    const/high16 v33, 0x3f80

    sub-float v33, v33, p5

    move/from16 v0, v33

    float-to-double v0, v0

    move-wide/from16 v33, v0

    invoke-static/range {v33 .. v34}, Ljava/lang/Math;->acos(D)D

    move-result-wide v33

    move-wide/from16 v0, v33

    double-to-float v0, v0

    move v5, v0

    .line 897
    .local v5, angle:F
    const/16 v33, 0x0

    cmpg-float v33, p5, v33

    if-gtz v33, :cond_0

    const/4 v5, 0x0

    .line 898
    :cond_0
    const/high16 v33, 0x3f80

    cmpl-float v33, p5, v33

    if-ltz v33, :cond_1

    const v5, 0x3fc90fdb

    .line 900
    :cond_1
    move v0, v5

    float-to-double v0, v0

    move-wide/from16 v33, v0

    invoke-static/range {v33 .. v34}, Ljava/lang/Math;->cos(D)D

    move-result-wide v33

    move-wide/from16 v0, v33

    double-to-float v0, v0

    move v13, v0

    .line 901
    .local v13, cosvalue:F
    move v0, v5

    float-to-double v0, v0

    move-wide/from16 v33, v0

    invoke-static/range {v33 .. v34}, Ljava/lang/Math;->sin(D)D

    move-result-wide v33

    move-wide/from16 v0, v33

    double-to-float v0, v0

    move/from16 v25, v0

    .line 903
    .local v25, sinvalue:F
    move/from16 v22, p5

    .line 904
    .local v22, progressParabola:F
    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v33, v0

    const-wide/high16 v35, 0x3fe0

    cmpl-double v33, v33, v35

    if-lez v33, :cond_2

    const/high16 v33, 0x3f80

    sub-float v22, v33, v22

    .line 906
    :cond_2
    const/high16 v33, 0x3f80

    sub-float v33, v33, v22

    move/from16 v0, v33

    float-to-double v0, v0

    move-wide/from16 v33, v0

    invoke-static/range {v33 .. v34}, Ljava/lang/Math;->acos(D)D

    move-result-wide v33

    move-wide/from16 v0, v33

    double-to-float v0, v0

    move v6, v0

    .line 907
    .local v6, angleParabola:F
    const/16 v33, 0x0

    cmpg-float v33, v22, v33

    if-gtz v33, :cond_3

    const/4 v6, 0x0

    .line 909
    :cond_3
    move v0, v6

    float-to-double v0, v0

    move-wide/from16 v33, v0

    invoke-static/range {v33 .. v34}, Ljava/lang/Math;->atan(D)D

    move-result-wide v33

    move-wide/from16 v0, v33

    double-to-float v0, v0

    move/from16 v20, v0

    .line 911
    .local v20, kappa:F
    const/16 v19, 0x0

    .local v19, iy:I
    :goto_0
    move/from16 v0, v19

    move/from16 v1, p3

    if-ge v0, v1, :cond_8

    .line 912
    const/16 v18, 0x0

    .local v18, ix:I
    :goto_1
    move/from16 v0, v18

    move/from16 v1, p1

    if-ge v0, v1, :cond_7

    .line 914
    mul-int v33, v19, p1

    add-int v33, v33, v18

    mul-int/lit8 v33, v33, 0x4

    add-int v15, v33, p7

    .line 915
    .local v15, i:I
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v33, v0

    mul-float v29, v33, p2

    .line 916
    .local v29, x:F
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v33, v0

    mul-float v31, v33, p4

    .line 917
    .local v31, y:F
    const/16 v32, 0x0

    .line 918
    .local v32, z:F
    const/4 v14, 0x0

    .line 920
    .local v14, f:F
    div-float v21, v29, v30

    .line 921
    .local v21, normalizedX:F
    const/16 v33, 0x0

    cmpl-float v33, v22, v33

    if-lez v33, :cond_4

    const/16 v33, 0x0

    cmpl-float v33, v6, v33

    if-lez v33, :cond_4

    .line 922
    const/16 v33, 0x1

    sub-int v33, p1, v33

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    mul-float v33, v33, p2

    const/high16 v34, 0x3f00

    sub-float v34, v21, v34

    mul-float v34, v34, v20

    const/high16 v35, 0x3f00

    sub-float v35, v21, v35

    mul-float v34, v34, v35

    const/high16 v35, 0x4080

    div-float v35, v20, v35

    sub-float v34, v34, v35

    mul-float v32, v33, v34

    .line 925
    :cond_4
    sub-float v29, v29, v30

    .line 927
    mul-float v33, v13, v29

    mul-float v34, v25, v32

    add-float v23, v33, v34

    .line 928
    .local v23, rotatedX:F
    move/from16 v0, v25

    neg-float v0, v0

    move/from16 v33, v0

    mul-float v33, v33, v29

    mul-float v34, v13, v32

    add-float v24, v33, v34

    .line 930
    .local v24, rotatedZ:F
    move/from16 v29, v23

    .line 931
    move/from16 v32, v24

    .line 933
    add-float v29, v29, v30

    .line 935
    const/high16 v33, 0x3f80

    cmpg-float v33, p5, v33

    if-gtz v33, :cond_6

    .line 936
    mul-float v33, p5, v30

    sub-float v29, v29, v33

    .line 942
    :cond_5
    :goto_2
    aput v29, p6, v15

    .line 943
    add-int/lit8 v33, v15, 0x1

    aput v31, p6, v33

    .line 944
    add-int/lit8 v33, v15, 0x2

    aput v32, p6, v33

    .line 945
    add-int/lit8 v33, v15, 0x3

    aput v14, p6, v33

    .line 912
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 937
    :cond_6
    const/high16 v33, 0x3f80

    cmpl-float v33, p5, v33

    if-lez v33, :cond_5

    .line 938
    sub-float v29, v29, v30

    .line 939
    const/high16 v33, 0x3f80

    sub-float v33, p5, v33

    mul-float v33, v33, v30

    add-float v32, v32, v33

    goto :goto_2

    .line 911
    .end local v14           #f:F
    .end local v15           #i:I
    .end local v21           #normalizedX:F
    .end local v23           #rotatedX:F
    .end local v24           #rotatedZ:F
    .end local v29           #x:F
    .end local v31           #y:F
    .end local v32           #z:F
    :cond_7
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_0

    .line 950
    .end local v18           #ix:I
    :cond_8
    const/16 v26, 0x0

    .line 951
    .local v26, v1:F
    const/16 v27, 0x0

    .line 952
    .local v27, v2:F
    const/high16 v28, -0x4080

    .line 955
    .local v28, v3:F
    const/16 v19, 0x0

    :goto_3
    const/16 v33, 0x1

    sub-int v33, p3, v33

    move/from16 v0, v19

    move/from16 v1, v33

    if-ge v0, v1, :cond_a

    .line 956
    const/16 v18, 0x0

    .restart local v18       #ix:I
    :goto_4
    const/16 v33, 0x1

    sub-int v33, p1, v33

    move/from16 v0, v18

    move/from16 v1, v33

    if-ge v0, v1, :cond_9

    .line 958
    mul-int v33, v19, p1

    add-int v33, v33, v18

    mul-int/lit8 v33, v33, 0x4

    add-int v15, v33, p7

    .line 959
    .restart local v15       #i:I
    aget v29, p6, v15

    .line 960
    .restart local v29       #x:F
    add-int/lit8 v33, v15, 0x1

    aget v31, p6, v33

    .line 961
    .restart local v31       #y:F
    add-int/lit8 v33, v15, 0x2

    aget v32, p6, v33

    .line 963
    .restart local v32       #z:F
    add-int/lit8 v16, v15, 0x4

    .line 964
    .local v16, iNextCol:I
    mul-int/lit8 v33, p1, 0x4

    add-int v17, v15, v33

    .line 967
    .local v17, iNextRow:I
    aget v33, p6, v16

    sub-float v2, v33, v29

    .line 968
    .local v2, a1:F
    add-int/lit8 v33, v16, 0x1

    aget v33, p6, v33

    sub-float v3, v33, v31

    .line 969
    .local v3, a2:F
    add-int/lit8 v33, v16, 0x2

    aget v33, p6, v33

    sub-float v4, v33, v32

    .line 972
    .local v4, a3:F
    aget v33, p6, v17

    sub-float v7, v33, v29

    .line 973
    .local v7, b1:F
    add-int/lit8 v33, v17, 0x1

    aget v33, p6, v33

    sub-float v8, v33, v31

    .line 974
    .local v8, b2:F
    add-int/lit8 v33, v17, 0x2

    aget v33, p6, v33

    sub-float v9, v33, v32

    .line 977
    .local v9, b3:F
    mul-float v33, v3, v9

    mul-float v34, v4, v8

    sub-float v10, v33, v34

    .line 978
    .local v10, c1:F
    mul-float v33, v4, v7

    mul-float v34, v2, v9

    sub-float v11, v33, v34

    .line 979
    .local v11, c2:F
    mul-float v33, v2, v8

    mul-float v34, v3, v7

    sub-float v12, v33, v34

    .line 982
    .local v12, c3:F
    mul-float v33, v10, v26

    mul-float v34, v11, v27

    add-float v33, v33, v34

    mul-float v34, v12, v28

    add-float v14, v33, v34

    .line 984
    .restart local v14       #f:F
    add-int/lit8 v33, v15, 0x3

    aput v14, p6, v33

    .line 956
    add-int/lit8 v18, v18, 0x1

    goto :goto_4

    .line 955
    .end local v2           #a1:F
    .end local v3           #a2:F
    .end local v4           #a3:F
    .end local v7           #b1:F
    .end local v8           #b2:F
    .end local v9           #b3:F
    .end local v10           #c1:F
    .end local v11           #c2:F
    .end local v12           #c3:F
    .end local v14           #f:F
    .end local v15           #i:I
    .end local v16           #iNextCol:I
    .end local v17           #iNextRow:I
    .end local v29           #x:F
    .end local v31           #y:F
    .end local v32           #z:F
    :cond_9
    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    .line 987
    .end local v18           #ix:I
    :cond_a
    return-void
.end method

.method private calcThreeWallsRightMeshInt(IFIFF[FI)V
    .locals 0
    .parameter "xDim"
    .parameter "xUnit"
    .parameter "yDim"
    .parameter "yUnit"
    .parameter "progress"
    .parameter "xyzf"
    .parameter "startOffset"

    .prologue
    .line 870
    invoke-direct/range {p0 .. p7}, Lcom/nemustech/tiffany/util/TFPageEffectHelper;->calcThreeWallsRightMesh_Java(IFIFF[FI)V

    .line 875
    return-void
.end method

.method private calcThreeWallsRightMesh_Java(IFIFF[FI)V
    .locals 37
    .parameter "xDim"
    .parameter "xUnit"
    .parameter "yDim"
    .parameter "yUnit"
    .parameter "progress"
    .parameter "xyzf"
    .parameter "startOffset"

    .prologue
    .line 1006
    const/16 v33, 0x1

    sub-int v33, p1, v33

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    mul-float v30, v33, p2

    .line 1008
    .local v30, xTotalLength:F
    const/high16 v33, 0x3f80

    sub-float v33, v33, p5

    move/from16 v0, v33

    float-to-double v0, v0

    move-wide/from16 v33, v0

    invoke-static/range {v33 .. v34}, Ljava/lang/Math;->acos(D)D

    move-result-wide v33

    move-wide/from16 v0, v33

    double-to-float v0, v0

    move v5, v0

    .line 1009
    .local v5, angle:F
    const/16 v33, 0x0

    cmpg-float v33, p5, v33

    if-gtz v33, :cond_0

    const/4 v5, 0x0

    .line 1010
    :cond_0
    const/high16 v33, 0x3f80

    cmpl-float v33, p5, v33

    if-ltz v33, :cond_1

    const v5, 0x3fc90fdb

    .line 1012
    :cond_1
    move v0, v5

    neg-float v0, v0

    move/from16 v33, v0

    move/from16 v0, v33

    float-to-double v0, v0

    move-wide/from16 v33, v0

    invoke-static/range {v33 .. v34}, Ljava/lang/Math;->cos(D)D

    move-result-wide v33

    move-wide/from16 v0, v33

    double-to-float v0, v0

    move v13, v0

    .line 1013
    .local v13, cosvalue:F
    move v0, v5

    neg-float v0, v0

    move/from16 v33, v0

    move/from16 v0, v33

    float-to-double v0, v0

    move-wide/from16 v33, v0

    invoke-static/range {v33 .. v34}, Ljava/lang/Math;->sin(D)D

    move-result-wide v33

    move-wide/from16 v0, v33

    double-to-float v0, v0

    move/from16 v25, v0

    .line 1015
    .local v25, sinvalue:F
    move/from16 v22, p5

    .line 1016
    .local v22, progressParabola:F
    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v33, v0

    const-wide/high16 v35, 0x3fe0

    cmpl-double v33, v33, v35

    if-lez v33, :cond_2

    const/high16 v33, 0x3f80

    sub-float v22, v33, v22

    .line 1018
    :cond_2
    const/high16 v33, 0x3f80

    sub-float v33, v33, v22

    move/from16 v0, v33

    float-to-double v0, v0

    move-wide/from16 v33, v0

    invoke-static/range {v33 .. v34}, Ljava/lang/Math;->acos(D)D

    move-result-wide v33

    move-wide/from16 v0, v33

    double-to-float v0, v0

    move v6, v0

    .line 1019
    .local v6, angleParabola:F
    const/16 v33, 0x0

    cmpg-float v33, v22, v33

    if-gtz v33, :cond_3

    const/4 v6, 0x0

    .line 1021
    :cond_3
    move v0, v6

    float-to-double v0, v0

    move-wide/from16 v33, v0

    invoke-static/range {v33 .. v34}, Ljava/lang/Math;->atan(D)D

    move-result-wide v33

    move-wide/from16 v0, v33

    double-to-float v0, v0

    move/from16 v20, v0

    .line 1023
    .local v20, kappa:F
    const/16 v19, 0x0

    .local v19, iy:I
    :goto_0
    move/from16 v0, v19

    move/from16 v1, p3

    if-ge v0, v1, :cond_8

    .line 1024
    const/16 v18, 0x0

    .local v18, ix:I
    :goto_1
    move/from16 v0, v18

    move/from16 v1, p1

    if-ge v0, v1, :cond_7

    .line 1026
    mul-int v33, v19, p1

    add-int v33, v33, v18

    mul-int/lit8 v33, v33, 0x4

    add-int v15, v33, p7

    .line 1027
    .local v15, i:I
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v33, v0

    mul-float v29, v33, p2

    .line 1028
    .local v29, x:F
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v33, v0

    mul-float v31, v33, p4

    .line 1029
    .local v31, y:F
    const/16 v32, 0x0

    .line 1030
    .local v32, z:F
    const/4 v14, 0x0

    .line 1032
    .local v14, f:F
    div-float v21, v29, v30

    .line 1033
    .local v21, normalizedX:F
    const/16 v33, 0x0

    cmpl-float v33, v22, v33

    if-lez v33, :cond_4

    const/16 v33, 0x0

    cmpl-float v33, v6, v33

    if-lez v33, :cond_4

    .line 1034
    const/16 v33, 0x1

    sub-int v33, p1, v33

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    mul-float v33, v33, p2

    const/high16 v34, 0x3f00

    sub-float v34, v21, v34

    mul-float v34, v34, v20

    const/high16 v35, 0x3f00

    sub-float v35, v21, v35

    mul-float v34, v34, v35

    const/high16 v35, 0x4080

    div-float v35, v20, v35

    sub-float v34, v34, v35

    mul-float v32, v33, v34

    .line 1037
    :cond_4
    mul-float v33, v13, v29

    mul-float v34, v25, v32

    add-float v23, v33, v34

    .line 1038
    .local v23, rotatedX:F
    move/from16 v0, v25

    neg-float v0, v0

    move/from16 v33, v0

    mul-float v33, v33, v29

    mul-float v34, v13, v32

    add-float v24, v33, v34

    .line 1040
    .local v24, rotatedZ:F
    move/from16 v29, v23

    .line 1041
    move/from16 v32, v24

    .line 1043
    const/high16 v33, 0x3f80

    cmpg-float v33, p5, v33

    if-gtz v33, :cond_6

    .line 1044
    mul-float v33, p5, v30

    add-float v29, v29, v33

    .line 1050
    :cond_5
    :goto_2
    aput v29, p6, v15

    .line 1051
    add-int/lit8 v33, v15, 0x1

    aput v31, p6, v33

    .line 1052
    add-int/lit8 v33, v15, 0x2

    aput v32, p6, v33

    .line 1053
    add-int/lit8 v33, v15, 0x3

    aput v14, p6, v33

    .line 1024
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 1045
    :cond_6
    const/high16 v33, 0x3f80

    cmpl-float v33, p5, v33

    if-lez v33, :cond_5

    .line 1046
    add-float v29, v29, v30

    .line 1047
    const/high16 v33, 0x3f80

    sub-float v33, p5, v33

    mul-float v33, v33, v30

    add-float v32, v32, v33

    goto :goto_2

    .line 1023
    .end local v14           #f:F
    .end local v15           #i:I
    .end local v21           #normalizedX:F
    .end local v23           #rotatedX:F
    .end local v24           #rotatedZ:F
    .end local v29           #x:F
    .end local v31           #y:F
    .end local v32           #z:F
    :cond_7
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_0

    .line 1058
    .end local v18           #ix:I
    :cond_8
    const/16 v26, 0x0

    .line 1059
    .local v26, v1:F
    const/16 v27, 0x0

    .line 1060
    .local v27, v2:F
    const/high16 v28, -0x4080

    .line 1063
    .local v28, v3:F
    const/16 v19, 0x0

    :goto_3
    const/16 v33, 0x1

    sub-int v33, p3, v33

    move/from16 v0, v19

    move/from16 v1, v33

    if-ge v0, v1, :cond_a

    .line 1064
    const/16 v18, 0x0

    .restart local v18       #ix:I
    :goto_4
    const/16 v33, 0x1

    sub-int v33, p1, v33

    move/from16 v0, v18

    move/from16 v1, v33

    if-ge v0, v1, :cond_9

    .line 1066
    mul-int v33, v19, p1

    add-int v33, v33, v18

    mul-int/lit8 v33, v33, 0x4

    add-int v15, v33, p7

    .line 1067
    .restart local v15       #i:I
    aget v29, p6, v15

    .line 1068
    .restart local v29       #x:F
    add-int/lit8 v33, v15, 0x1

    aget v31, p6, v33

    .line 1069
    .restart local v31       #y:F
    add-int/lit8 v33, v15, 0x2

    aget v32, p6, v33

    .line 1071
    .restart local v32       #z:F
    add-int/lit8 v16, v15, 0x4

    .line 1072
    .local v16, iNextCol:I
    mul-int/lit8 v33, p1, 0x4

    add-int v17, v15, v33

    .line 1075
    .local v17, iNextRow:I
    aget v33, p6, v16

    sub-float v2, v33, v29

    .line 1076
    .local v2, a1:F
    add-int/lit8 v33, v16, 0x1

    aget v33, p6, v33

    sub-float v3, v33, v31

    .line 1077
    .local v3, a2:F
    add-int/lit8 v33, v16, 0x2

    aget v33, p6, v33

    sub-float v4, v33, v32

    .line 1080
    .local v4, a3:F
    aget v33, p6, v17

    sub-float v7, v33, v29

    .line 1081
    .local v7, b1:F
    add-int/lit8 v33, v17, 0x1

    aget v33, p6, v33

    sub-float v8, v33, v31

    .line 1082
    .local v8, b2:F
    add-int/lit8 v33, v17, 0x2

    aget v33, p6, v33

    sub-float v9, v33, v32

    .line 1085
    .local v9, b3:F
    mul-float v33, v3, v9

    mul-float v34, v4, v8

    sub-float v10, v33, v34

    .line 1086
    .local v10, c1:F
    mul-float v33, v4, v7

    mul-float v34, v2, v9

    sub-float v11, v33, v34

    .line 1087
    .local v11, c2:F
    mul-float v33, v2, v8

    mul-float v34, v3, v7

    sub-float v12, v33, v34

    .line 1090
    .local v12, c3:F
    mul-float v33, v10, v26

    mul-float v34, v11, v27

    add-float v33, v33, v34

    mul-float v34, v12, v28

    add-float v14, v33, v34

    .line 1092
    .restart local v14       #f:F
    add-int/lit8 v33, v15, 0x3

    aput v14, p6, v33

    .line 1064
    add-int/lit8 v18, v18, 0x1

    goto :goto_4

    .line 1063
    .end local v2           #a1:F
    .end local v3           #a2:F
    .end local v4           #a3:F
    .end local v7           #b1:F
    .end local v8           #b2:F
    .end local v9           #b3:F
    .end local v10           #c1:F
    .end local v11           #c2:F
    .end local v12           #c3:F
    .end local v14           #f:F
    .end local v15           #i:I
    .end local v16           #iNextCol:I
    .end local v17           #iNextRow:I
    .end local v29           #x:F
    .end local v31           #y:F
    .end local v32           #z:F
    :cond_9
    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    .line 1095
    .end local v18           #ix:I
    :cond_a
    return-void
.end method

.method public static getInstance()Lcom/nemustech/tiffany/util/TFPageEffectHelper;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/nemustech/tiffany/util/TFPageEffectHelper;->stInstance:Lcom/nemustech/tiffany/util/TFPageEffectHelper;

    if-nez v0, :cond_0

    .line 10
    new-instance v0, Lcom/nemustech/tiffany/util/TFPageEffectHelper;

    invoke-direct {v0}, Lcom/nemustech/tiffany/util/TFPageEffectHelper;-><init>()V

    sput-object v0, Lcom/nemustech/tiffany/util/TFPageEffectHelper;->stInstance:Lcom/nemustech/tiffany/util/TFPageEffectHelper;

    .line 12
    :cond_0
    sget-object v0, Lcom/nemustech/tiffany/util/TFPageEffectHelper;->stInstance:Lcom/nemustech/tiffany/util/TFPageEffectHelper;

    return-object v0
.end method


# virtual methods
.method public calcCurlMesh(IFIFFFF[FI)V
    .locals 3
    .parameter "xDim"
    .parameter "xUnit"
    .parameter "yDim"
    .parameter "yUnit"
    .parameter "rollRadius"
    .parameter "rollDirection"
    .parameter "progress"
    .parameter "xyzf"
    .parameter "startOffset"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 45
    sget-boolean v0, Lcom/nemustech/tiffany/util/TFPageEffectHelper;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-gt p1, v2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 46
    :cond_0
    sget-boolean v0, Lcom/nemustech/tiffany/util/TFPageEffectHelper;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    cmpl-float v0, p2, v1

    if-gtz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 47
    :cond_1
    sget-boolean v0, Lcom/nemustech/tiffany/util/TFPageEffectHelper;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-gt p3, v2, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 48
    :cond_2
    sget-boolean v0, Lcom/nemustech/tiffany/util/TFPageEffectHelper;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    cmpl-float v0, p4, v1

    if-gtz v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 49
    :cond_3
    sget-boolean v0, Lcom/nemustech/tiffany/util/TFPageEffectHelper;->$assertionsDisabled:Z

    if-nez v0, :cond_4

    cmpl-float v0, p5, v1

    if-gtz v0, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 50
    :cond_4
    sget-boolean v0, Lcom/nemustech/tiffany/util/TFPageEffectHelper;->$assertionsDisabled:Z

    if-nez v0, :cond_5

    if-nez p8, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 51
    :cond_5
    sget-boolean v0, Lcom/nemustech/tiffany/util/TFPageEffectHelper;->$assertionsDisabled:Z

    if-nez v0, :cond_6

    array-length v0, p8

    mul-int v1, p1, p3

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v1, p9

    if-ge v0, v1, :cond_6

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 52
    :cond_6
    sget-boolean v0, Lcom/nemustech/tiffany/util/TFPageEffectHelper;->$assertionsDisabled:Z

    if-nez v0, :cond_7

    if-gtz p9, :cond_7

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 54
    :cond_7
    invoke-direct/range {p0 .. p9}, Lcom/nemustech/tiffany/util/TFPageEffectHelper;->calcCurlMeshInt(IFIFFFF[FI)V

    .line 58
    return-void
.end method

.method public calcCurlMeshAll(IFIFFF[F[FI)V
    .locals 12
    .parameter "xDim"
    .parameter "xUnit"
    .parameter "yDim"
    .parameter "yUnit"
    .parameter "rollRadius"
    .parameter "rollDirection"
    .parameter "progress"
    .parameter "xyzf"
    .parameter "startOffset"

    .prologue
    .line 22
    sget-boolean v1, Lcom/nemustech/tiffany/util/TFPageEffectHelper;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p7, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 23
    :cond_0
    sget-boolean v1, Lcom/nemustech/tiffany/util/TFPageEffectHelper;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    if-gt p1, v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 24
    :cond_1
    sget-boolean v1, Lcom/nemustech/tiffany/util/TFPageEffectHelper;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-gtz v1, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 25
    :cond_2
    sget-boolean v1, Lcom/nemustech/tiffany/util/TFPageEffectHelper;->$assertionsDisabled:Z

    if-nez v1, :cond_3

    const/4 v1, 0x1

    if-gt p3, v1, :cond_3

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 26
    :cond_3
    sget-boolean v1, Lcom/nemustech/tiffany/util/TFPageEffectHelper;->$assertionsDisabled:Z

    if-nez v1, :cond_4

    const/4 v1, 0x0

    cmpl-float v1, p4, v1

    if-gtz v1, :cond_4

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 27
    :cond_4
    sget-boolean v1, Lcom/nemustech/tiffany/util/TFPageEffectHelper;->$assertionsDisabled:Z

    if-nez v1, :cond_5

    const/4 v1, 0x0

    cmpl-float v1, p5, v1

    if-gtz v1, :cond_5

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 28
    :cond_5
    sget-boolean v1, Lcom/nemustech/tiffany/util/TFPageEffectHelper;->$assertionsDisabled:Z

    if-nez v1, :cond_6

    if-nez p8, :cond_6

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 29
    :cond_6
    sget-boolean v1, Lcom/nemustech/tiffany/util/TFPageEffectHelper;->$assertionsDisabled:Z

    if-nez v1, :cond_7

    move-object/from16 v0, p8

    array-length v0, v0

    move v1, v0

    mul-int v2, p1, p3

    mul-int/lit8 v2, v2, 0x4

    add-int v2, v2, p9

    if-ge v1, v2, :cond_7

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 30
    :cond_7
    sget-boolean v1, Lcom/nemustech/tiffany/util/TFPageEffectHelper;->$assertionsDisabled:Z

    if-nez v1, :cond_8

    if-gtz p9, :cond_8

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 32
    :cond_8
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    move-object/from16 v0, p7

    array-length v0, v0

    move v1, v0

    if-ge v11, v1, :cond_9

    .line 33
    aget v8, p7, v11

    .line 34
    .local v8, p:F
    mul-int v1, v11, p1

    mul-int/2addr v1, p3

    mul-int/lit8 v1, v1, 0x4

    add-int v10, p9, v1

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v10}, Lcom/nemustech/tiffany/util/TFPageEffectHelper;->calcCurlMeshInt(IFIFFFF[FI)V

    .line 32
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 39
    .end local v8           #p:F
    :cond_9
    return-void
.end method

.method public calcGenieMeshAll(IFIF[FIIIII)V
    .locals 38
    .parameter "xDim"
    .parameter "xUnit"
    .parameter "yDim"
    .parameter "yUnit"
    .parameter "xyzf"
    .parameter "bottleNeckX"
    .parameter "bottleNeckThickness"
    .parameter "inoutCount"
    .parameter "shrinkCount"
    .parameter "bgHeight"

    .prologue
    .line 511
    sget-boolean v2, Lcom/nemustech/tiffany/util/TFPageEffectHelper;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    move/from16 v0, p1

    move v1, v2

    if-gt v0, v1, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 512
    :cond_0
    sget-boolean v2, Lcom/nemustech/tiffany/util/TFPageEffectHelper;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    const/4 v2, 0x0

    cmpl-float v2, p2, v2

    if-gtz v2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 513
    :cond_1
    sget-boolean v2, Lcom/nemustech/tiffany/util/TFPageEffectHelper;->$assertionsDisabled:Z

    if-nez v2, :cond_2

    const/4 v2, 0x1

    move/from16 v0, p3

    move v1, v2

    if-gt v0, v1, :cond_2

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 514
    :cond_2
    sget-boolean v2, Lcom/nemustech/tiffany/util/TFPageEffectHelper;->$assertionsDisabled:Z

    if-nez v2, :cond_3

    const/4 v2, 0x0

    cmpl-float v2, p4, v2

    if-gtz v2, :cond_3

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 515
    :cond_3
    sget-boolean v2, Lcom/nemustech/tiffany/util/TFPageEffectHelper;->$assertionsDisabled:Z

    if-nez v2, :cond_4

    if-nez p5, :cond_4

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 519
    :cond_4
    move/from16 v0, p6

    int-to-float v0, v0

    move v3, v0

    .line 520
    .local v3, x1:F
    const/4 v8, 0x0

    .line 522
    .local v8, y1:F
    move v4, v3

    .line 523
    .local v4, x2:F
    const/high16 v9, 0x43c8

    .line 525
    .local v9, y2:F
    const/4 v5, 0x0

    .line 526
    .local v5, x3:F
    const/4 v2, 0x1

    sub-int v2, p3, v2

    int-to-float v2, v2

    mul-float v2, v2, p4

    const/high16 v6, 0x42f0

    sub-float v10, v2, v6

    .line 528
    .local v10, y3:F
    const/4 v6, 0x0

    .line 529
    .local v6, x4:F
    const/4 v2, 0x1

    sub-int v2, p3, v2

    int-to-float v2, v2

    mul-float v11, v2, p4

    .line 532
    .local v11, y4:F
    const/16 v35, 0x3e8

    .line 533
    .local v35, matrixCount:I
    const/16 v2, 0x3e8

    move v0, v2

    new-array v0, v0, [F

    move-object/from16 v19, v0

    .line 534
    .local v19, curveXPosition:[F
    const/16 v2, 0x3e8

    move v0, v2

    new-array v0, v0, [F

    move-object/from16 v20, v0

    .line 535
    .local v20, curveX2Position:[F
    const/16 v17, 0x0

    .local v17, i:I
    :goto_0
    const/16 v2, 0x3e8

    move/from16 v0, v17

    move v1, v2

    if-ge v0, v1, :cond_5

    .line 536
    const/high16 v2, -0x4080

    aput v2, v19, v17

    .line 537
    const/high16 v2, -0x4080

    aput v2, v20, v17

    .line 535
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 540
    :cond_5
    const/16 v17, 0x0

    :goto_1
    const/16 v2, 0x2710

    move/from16 v0, v17

    move v1, v2

    if-ge v0, v1, :cond_7

    .line 541
    move/from16 v0, v17

    int-to-float v0, v0

    move v2, v0

    const/high16 v7, 0x447a

    div-float/2addr v2, v7

    const/high16 v7, 0x4120

    div-float v7, v2, v7

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/nemustech/tiffany/util/TFPageEffectHelper;->bezier(FFFFF)F

    move-result v36

    .line 542
    .local v36, x:F
    move/from16 v0, v17

    int-to-float v0, v0

    move v2, v0

    const/high16 v7, 0x447a

    div-float/2addr v2, v7

    const/high16 v7, 0x4120

    div-float v12, v2, v7

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/nemustech/tiffany/util/TFPageEffectHelper;->bezier(FFFFF)F

    move-result v37

    .line 544
    .local v37, y:F
    const/high16 v2, 0x447a

    mul-float v2, v2, v37

    const/4 v7, 0x1

    sub-int v7, p3, v7

    int-to-float v7, v7

    mul-float v7, v7, p4

    div-float/2addr v2, v7

    move v0, v2

    float-to-int v0, v0

    move/from16 v34, v0

    .line 546
    .local v34, index:I
    aget v2, v19, v34

    const/4 v7, 0x0

    cmpg-float v2, v2, v7

    if-gez v2, :cond_6

    .line 547
    aput v36, v19, v34

    .line 540
    :cond_6
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 551
    .end local v34           #index:I
    .end local v36           #x:F
    .end local v37           #y:F
    :cond_7
    add-int v2, p6, p7

    int-to-float v3, v2

    .line 552
    move v4, v3

    .line 553
    const/4 v2, 0x1

    sub-int v2, p1, v2

    int-to-float v2, v2

    mul-float v6, v2, p2

    move v5, v6

    .line 555
    const/16 v17, 0x0

    :goto_2
    const/16 v2, 0x2710

    move/from16 v0, v17

    move v1, v2

    if-ge v0, v1, :cond_9

    .line 556
    move/from16 v0, v17

    int-to-float v0, v0

    move v2, v0

    const/high16 v7, 0x447a

    div-float/2addr v2, v7

    const/high16 v7, 0x4120

    div-float v7, v2, v7

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/nemustech/tiffany/util/TFPageEffectHelper;->bezier(FFFFF)F

    move-result v36

    .line 557
    .restart local v36       #x:F
    move/from16 v0, v17

    int-to-float v0, v0

    move v2, v0

    const/high16 v7, 0x447a

    div-float/2addr v2, v7

    const/high16 v7, 0x4120

    div-float v12, v2, v7

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/nemustech/tiffany/util/TFPageEffectHelper;->bezier(FFFFF)F

    move-result v37

    .line 559
    .restart local v37       #y:F
    const/high16 v2, 0x447a

    mul-float v2, v2, v37

    const/4 v7, 0x1

    sub-int v7, p3, v7

    int-to-float v7, v7

    mul-float v7, v7, p4

    div-float/2addr v2, v7

    move v0, v2

    float-to-int v0, v0

    move/from16 v34, v0

    .line 561
    .restart local v34       #index:I
    aget v2, v20, v34

    const/4 v7, 0x0

    cmpg-float v2, v2, v7

    if-gez v2, :cond_8

    .line 562
    aput v36, v20, v34

    .line 555
    :cond_8
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 566
    .end local v34           #index:I
    .end local v36           #x:F
    .end local v37           #y:F
    :cond_9
    const/16 v17, 0x0

    :goto_3
    move/from16 v0, v17

    move/from16 v1, p9

    if-ge v0, v1, :cond_a

    move-object/from16 v12, p0

    move/from16 v13, p1

    move/from16 v14, p2

    move/from16 v15, p3

    move/from16 v16, p4

    move-object/from16 v18, p5

    move/from16 v21, p9

    .line 567
    invoke-direct/range {v12 .. v21}, Lcom/nemustech/tiffany/util/TFPageEffectHelper;->calcGenieShrinkMeshInt(IFIFI[F[F[FI)V

    .line 566
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 571
    :cond_a
    const/16 v17, 0x0

    :goto_4
    move/from16 v0, v17

    move/from16 v1, p8

    if-ge v0, v1, :cond_b

    .line 572
    add-int v26, p9, v17

    const/4 v2, 0x1

    sub-int v2, p9, v2

    mul-int v2, v2, p1

    mul-int v2, v2, p3

    mul-int/lit8 v28, v2, 0x4

    move-object/from16 v21, p0

    move/from16 v22, p1

    move/from16 v23, p2

    move/from16 v24, p3

    move/from16 v25, p4

    move-object/from16 v27, p5

    move-object/from16 v29, v19

    move-object/from16 v30, v20

    move/from16 v31, p8

    move/from16 v32, p9

    move/from16 v33, p10

    invoke-direct/range {v21 .. v33}, Lcom/nemustech/tiffany/util/TFPageEffectHelper;->calcGenieInOutMeshInt(IFIFI[FI[F[FIII)V

    .line 571
    add-int/lit8 v17, v17, 0x1

    goto :goto_4

    .line 578
    :cond_b
    return-void
.end method

.method public calcRDoorInMesh(IFIFF[FI)V
    .locals 3
    .parameter "xDim"
    .parameter "xUnit"
    .parameter "yDim"
    .parameter "yUnit"
    .parameter "progress"
    .parameter "xyzf"
    .parameter "startOffset"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 126
    sget-boolean v0, Lcom/nemustech/tiffany/util/TFPageEffectHelper;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-gt p1, v2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 127
    :cond_0
    sget-boolean v0, Lcom/nemustech/tiffany/util/TFPageEffectHelper;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    cmpl-float v0, p2, v1

    if-gtz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 128
    :cond_1
    sget-boolean v0, Lcom/nemustech/tiffany/util/TFPageEffectHelper;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-gt p3, v2, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 129
    :cond_2
    sget-boolean v0, Lcom/nemustech/tiffany/util/TFPageEffectHelper;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    cmpl-float v0, p4, v1

    if-gtz v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 130
    :cond_3
    sget-boolean v0, Lcom/nemustech/tiffany/util/TFPageEffectHelper;->$assertionsDisabled:Z

    if-nez v0, :cond_4

    if-nez p6, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 131
    :cond_4
    sget-boolean v0, Lcom/nemustech/tiffany/util/TFPageEffectHelper;->$assertionsDisabled:Z

    if-nez v0, :cond_5

    array-length v0, p6

    mul-int v1, p1, p3

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v1, p7

    if-ge v0, v1, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 132
    :cond_5
    sget-boolean v0, Lcom/nemustech/tiffany/util/TFPageEffectHelper;->$assertionsDisabled:Z

    if-nez v0, :cond_6

    if-gtz p7, :cond_6

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 134
    :cond_6
    invoke-direct/range {p0 .. p7}, Lcom/nemustech/tiffany/util/TFPageEffectHelper;->calcRDoorInMeshInt(IFIFF[FI)V

    .line 138
    return-void
.end method

.method public calcRDoorInMeshAll(IFIF[F[FI)V
    .locals 9
    .parameter "xDim"
    .parameter "xUnit"
    .parameter "yDim"
    .parameter "yUnit"
    .parameter "progress"
    .parameter "xyzf"
    .parameter "startOffset"

    .prologue
    .line 104
    sget-boolean v0, Lcom/nemustech/tiffany/util/TFPageEffectHelper;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p5, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 105
    :cond_0
    sget-boolean v0, Lcom/nemustech/tiffany/util/TFPageEffectHelper;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    if-gt p1, v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 106
    :cond_1
    sget-boolean v0, Lcom/nemustech/tiffany/util/TFPageEffectHelper;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-gtz v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 107
    :cond_2
    sget-boolean v0, Lcom/nemustech/tiffany/util/TFPageEffectHelper;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    if-gt p3, v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 108
    :cond_3
    sget-boolean v0, Lcom/nemustech/tiffany/util/TFPageEffectHelper;->$assertionsDisabled:Z

    if-nez v0, :cond_4

    const/4 v0, 0x0

    cmpl-float v0, p4, v0

    if-gtz v0, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 109
    :cond_4
    sget-boolean v0, Lcom/nemustech/tiffany/util/TFPageEffectHelper;->$assertionsDisabled:Z

    if-nez v0, :cond_5

    if-nez p6, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 110
    :cond_5
    sget-boolean v0, Lcom/nemustech/tiffany/util/TFPageEffectHelper;->$assertionsDisabled:Z

    if-nez v0, :cond_6

    array-length v0, p6

    mul-int v1, p1, p3

    mul-int/lit8 v1, v1, 0x4

    add-int v1, v1, p7

    if-ge v0, v1, :cond_6

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 111
    :cond_6
    sget-boolean v0, Lcom/nemustech/tiffany/util/TFPageEffectHelper;->$assertionsDisabled:Z

    if-nez v0, :cond_7

    if-gtz p7, :cond_7

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 113
    :cond_7
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    array-length v0, p5

    if-ge v8, v0, :cond_8

    .line 114
    aget v5, p5, v8

    .line 115
    .local v5, p:F
    mul-int v0, v8, p1

    mul-int/2addr v0, p3

    mul-int/lit8 v0, v0, 0x4

    add-int v7, p7, v0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/nemustech/tiffany/util/TFPageEffectHelper;->calcRDoorInMeshInt(IFIFF[FI)V

    .line 113
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 120
    .end local v5           #p:F
    :cond_8
    return-void
.end method

.method public calcRDoorOutMesh(IFIFF[FI)V
    .locals 3
    .parameter "xDim"
    .parameter "xUnit"
    .parameter "yDim"
    .parameter "yUnit"
    .parameter "progress"
    .parameter "xyzf"
    .parameter "startOffset"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 86
    sget-boolean v0, Lcom/nemustech/tiffany/util/TFPageEffectHelper;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-gt p1, v2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 87
    :cond_0
    sget-boolean v0, Lcom/nemustech/tiffany/util/TFPageEffectHelper;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    cmpl-float v0, p2, v1

    if-gtz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 88
    :cond_1
    sget-boolean v0, Lcom/nemustech/tiffany/util/TFPageEffectHelper;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-gt p3, v2, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 89
    :cond_2
    sget-boolean v0, Lcom/nemustech/tiffany/util/TFPageEffectHelper;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    cmpl-float v0, p4, v1

    if-gtz v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 90
    :cond_3
    sget-boolean v0, Lcom/nemustech/tiffany/util/TFPageEffectHelper;->$assertionsDisabled:Z

    if-nez v0, :cond_4

    if-nez p6, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 91
    :cond_4
    sget-boolean v0, Lcom/nemustech/tiffany/util/TFPageEffectHelper;->$assertionsDisabled:Z

    if-nez v0, :cond_5

    array-length v0, p6

    mul-int v1, p1, p3

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v1, p7

    if-ge v0, v1, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 92
    :cond_5
    sget-boolean v0, Lcom/nemustech/tiffany/util/TFPageEffectHelper;->$assertionsDisabled:Z

    if-nez v0, :cond_6

    if-gtz p7, :cond_6

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 94
    :cond_6
    invoke-direct/range {p0 .. p7}, Lcom/nemustech/tiffany/util/TFPageEffectHelper;->calcRDoorOutMeshInt(IFIFF[FI)V

    .line 98
    return-void
.end method

.method public calcRDoorOutMeshAll(IFIF[F[FI)V
    .locals 9
    .parameter "xDim"
    .parameter "xUnit"
    .parameter "yDim"
    .parameter "yUnit"
    .parameter "progress"
    .parameter "xyzf"
    .parameter "startOffset"

    .prologue
    .line 64
    sget-boolean v0, Lcom/nemustech/tiffany/util/TFPageEffectHelper;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p5, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 65
    :cond_0
    sget-boolean v0, Lcom/nemustech/tiffany/util/TFPageEffectHelper;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    if-gt p1, v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 66
    :cond_1
    sget-boolean v0, Lcom/nemustech/tiffany/util/TFPageEffectHelper;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-gtz v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 67
    :cond_2
    sget-boolean v0, Lcom/nemustech/tiffany/util/TFPageEffectHelper;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    if-gt p3, v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 68
    :cond_3
    sget-boolean v0, Lcom/nemustech/tiffany/util/TFPageEffectHelper;->$assertionsDisabled:Z

    if-nez v0, :cond_4

    const/4 v0, 0x0

    cmpl-float v0, p4, v0

    if-gtz v0, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 69
    :cond_4
    sget-boolean v0, Lcom/nemustech/tiffany/util/TFPageEffectHelper;->$assertionsDisabled:Z

    if-nez v0, :cond_5

    if-nez p6, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 70
    :cond_5
    sget-boolean v0, Lcom/nemustech/tiffany/util/TFPageEffectHelper;->$assertionsDisabled:Z

    if-nez v0, :cond_6

    array-length v0, p6

    mul-int v1, p1, p3

    mul-int/lit8 v1, v1, 0x4

    add-int v1, v1, p7

    if-ge v0, v1, :cond_6

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 71
    :cond_6
    sget-boolean v0, Lcom/nemustech/tiffany/util/TFPageEffectHelper;->$assertionsDisabled:Z

    if-nez v0, :cond_7

    if-gtz p7, :cond_7

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 73
    :cond_7
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    array-length v0, p5

    if-ge v8, v0, :cond_8

    .line 74
    aget v5, p5, v8

    .line 75
    .local v5, p:F
    mul-int v0, v8, p1

    mul-int/2addr v0, p3

    mul-int/lit8 v0, v0, 0x4

    add-int v7, p7, v0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/nemustech/tiffany/util/TFPageEffectHelper;->calcRDoorOutMeshInt(IFIFF[FI)V

    .line 73
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 80
    .end local v5           #p:F
    :cond_8
    return-void
.end method

.method public calcThreeWallsLeftMesh(IFIFF[FI)V
    .locals 3
    .parameter "xDim"
    .parameter "xUnit"
    .parameter "yDim"
    .parameter "yUnit"
    .parameter "progress"
    .parameter "xyzf"
    .parameter "startOffset"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 779
    sget-boolean v0, Lcom/nemustech/tiffany/util/TFPageEffectHelper;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-gt p1, v2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 780
    :cond_0
    sget-boolean v0, Lcom/nemustech/tiffany/util/TFPageEffectHelper;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    cmpl-float v0, p2, v1

    if-gtz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 781
    :cond_1
    sget-boolean v0, Lcom/nemustech/tiffany/util/TFPageEffectHelper;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-gt p3, v2, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 782
    :cond_2
    sget-boolean v0, Lcom/nemustech/tiffany/util/TFPageEffectHelper;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    cmpl-float v0, p4, v1

    if-gtz v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 783
    :cond_3
    sget-boolean v0, Lcom/nemustech/tiffany/util/TFPageEffectHelper;->$assertionsDisabled:Z

    if-nez v0, :cond_4

    if-nez p6, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 784
    :cond_4
    sget-boolean v0, Lcom/nemustech/tiffany/util/TFPageEffectHelper;->$assertionsDisabled:Z

    if-nez v0, :cond_5

    array-length v0, p6

    mul-int v1, p1, p3

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v1, p7

    if-ge v0, v1, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 785
    :cond_5
    sget-boolean v0, Lcom/nemustech/tiffany/util/TFPageEffectHelper;->$assertionsDisabled:Z

    if-nez v0, :cond_6

    if-gtz p7, :cond_6

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 787
    :cond_6
    invoke-direct/range {p0 .. p7}, Lcom/nemustech/tiffany/util/TFPageEffectHelper;->calcThreeWallsLeftMeshInt(IFIFF[FI)V

    .line 791
    return-void
.end method

.method public calcThreeWallsLeftMeshAll(IFIF[F[FI)V
    .locals 9
    .parameter "xDim"
    .parameter "xUnit"
    .parameter "yDim"
    .parameter "yUnit"
    .parameter "progress"
    .parameter "xyzf"
    .parameter "startOffset"

    .prologue
    .line 757
    sget-boolean v0, Lcom/nemustech/tiffany/util/TFPageEffectHelper;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p5, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 758
    :cond_0
    sget-boolean v0, Lcom/nemustech/tiffany/util/TFPageEffectHelper;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    if-gt p1, v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 759
    :cond_1
    sget-boolean v0, Lcom/nemustech/tiffany/util/TFPageEffectHelper;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-gtz v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 760
    :cond_2
    sget-boolean v0, Lcom/nemustech/tiffany/util/TFPageEffectHelper;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    if-gt p3, v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 761
    :cond_3
    sget-boolean v0, Lcom/nemustech/tiffany/util/TFPageEffectHelper;->$assertionsDisabled:Z

    if-nez v0, :cond_4

    const/4 v0, 0x0

    cmpl-float v0, p4, v0

    if-gtz v0, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 762
    :cond_4
    sget-boolean v0, Lcom/nemustech/tiffany/util/TFPageEffectHelper;->$assertionsDisabled:Z

    if-nez v0, :cond_5

    if-nez p6, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 763
    :cond_5
    sget-boolean v0, Lcom/nemustech/tiffany/util/TFPageEffectHelper;->$assertionsDisabled:Z

    if-nez v0, :cond_6

    array-length v0, p6

    mul-int v1, p1, p3

    mul-int/lit8 v1, v1, 0x4

    add-int v1, v1, p7

    if-ge v0, v1, :cond_6

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 764
    :cond_6
    sget-boolean v0, Lcom/nemustech/tiffany/util/TFPageEffectHelper;->$assertionsDisabled:Z

    if-nez v0, :cond_7

    if-gtz p7, :cond_7

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 766
    :cond_7
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    array-length v0, p5

    if-ge v8, v0, :cond_8

    .line 767
    aget v5, p5, v8

    .line 768
    .local v5, p:F
    mul-int v0, v8, p1

    mul-int/2addr v0, p3

    mul-int/lit8 v0, v0, 0x4

    add-int v7, p7, v0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/nemustech/tiffany/util/TFPageEffectHelper;->calcThreeWallsLeftMeshInt(IFIFF[FI)V

    .line 766
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 773
    .end local v5           #p:F
    :cond_8
    return-void
.end method

.method public calcThreeWallsRightMesh(IFIFF[FI)V
    .locals 3
    .parameter "xDim"
    .parameter "xUnit"
    .parameter "yDim"
    .parameter "yUnit"
    .parameter "progress"
    .parameter "xyzf"
    .parameter "startOffset"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 819
    sget-boolean v0, Lcom/nemustech/tiffany/util/TFPageEffectHelper;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-gt p1, v2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 820
    :cond_0
    sget-boolean v0, Lcom/nemustech/tiffany/util/TFPageEffectHelper;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    cmpl-float v0, p2, v1

    if-gtz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 821
    :cond_1
    sget-boolean v0, Lcom/nemustech/tiffany/util/TFPageEffectHelper;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-gt p3, v2, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 822
    :cond_2
    sget-boolean v0, Lcom/nemustech/tiffany/util/TFPageEffectHelper;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    cmpl-float v0, p4, v1

    if-gtz v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 823
    :cond_3
    sget-boolean v0, Lcom/nemustech/tiffany/util/TFPageEffectHelper;->$assertionsDisabled:Z

    if-nez v0, :cond_4

    if-nez p6, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 824
    :cond_4
    sget-boolean v0, Lcom/nemustech/tiffany/util/TFPageEffectHelper;->$assertionsDisabled:Z

    if-nez v0, :cond_5

    array-length v0, p6

    mul-int v1, p1, p3

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v1, p7

    if-ge v0, v1, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 825
    :cond_5
    sget-boolean v0, Lcom/nemustech/tiffany/util/TFPageEffectHelper;->$assertionsDisabled:Z

    if-nez v0, :cond_6

    if-gtz p7, :cond_6

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 827
    :cond_6
    invoke-direct/range {p0 .. p7}, Lcom/nemustech/tiffany/util/TFPageEffectHelper;->calcThreeWallsRightMeshInt(IFIFF[FI)V

    .line 831
    return-void
.end method

.method public calcThreeWallsRightMeshAll(IFIF[F[FI)V
    .locals 9
    .parameter "xDim"
    .parameter "xUnit"
    .parameter "yDim"
    .parameter "yUnit"
    .parameter "progress"
    .parameter "xyzf"
    .parameter "startOffset"

    .prologue
    .line 797
    sget-boolean v0, Lcom/nemustech/tiffany/util/TFPageEffectHelper;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p5, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 798
    :cond_0
    sget-boolean v0, Lcom/nemustech/tiffany/util/TFPageEffectHelper;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    if-gt p1, v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 799
    :cond_1
    sget-boolean v0, Lcom/nemustech/tiffany/util/TFPageEffectHelper;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-gtz v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 800
    :cond_2
    sget-boolean v0, Lcom/nemustech/tiffany/util/TFPageEffectHelper;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    if-gt p3, v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 801
    :cond_3
    sget-boolean v0, Lcom/nemustech/tiffany/util/TFPageEffectHelper;->$assertionsDisabled:Z

    if-nez v0, :cond_4

    const/4 v0, 0x0

    cmpl-float v0, p4, v0

    if-gtz v0, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 802
    :cond_4
    sget-boolean v0, Lcom/nemustech/tiffany/util/TFPageEffectHelper;->$assertionsDisabled:Z

    if-nez v0, :cond_5

    if-nez p6, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 803
    :cond_5
    sget-boolean v0, Lcom/nemustech/tiffany/util/TFPageEffectHelper;->$assertionsDisabled:Z

    if-nez v0, :cond_6

    array-length v0, p6

    mul-int v1, p1, p3

    mul-int/lit8 v1, v1, 0x4

    add-int v1, v1, p7

    if-ge v0, v1, :cond_6

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 804
    :cond_6
    sget-boolean v0, Lcom/nemustech/tiffany/util/TFPageEffectHelper;->$assertionsDisabled:Z

    if-nez v0, :cond_7

    if-gtz p7, :cond_7

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 806
    :cond_7
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    array-length v0, p5

    if-ge v8, v0, :cond_8

    .line 807
    aget v5, p5, v8

    .line 808
    .local v5, p:F
    mul-int v0, v8, p1

    mul-int/2addr v0, p3

    mul-int/lit8 v0, v0, 0x4

    add-int v7, p7, v0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/nemustech/tiffany/util/TFPageEffectHelper;->calcThreeWallsRightMeshInt(IFIFF[FI)V

    .line 806
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 813
    .end local v5           #p:F
    :cond_8
    return-void
.end method
