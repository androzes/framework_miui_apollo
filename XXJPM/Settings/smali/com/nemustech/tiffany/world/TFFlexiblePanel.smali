.class public Lcom/nemustech/tiffany/world/TFFlexiblePanel;
.super Lcom/nemustech/tiffany/world/TFModel;
.source "TFFlexiblePanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nemustech/tiffany/world/TFFlexiblePanel$Bezier3DPointBlender;,
        Lcom/nemustech/tiffany/world/TFFlexiblePanel$IdentityPointBlender;,
        Lcom/nemustech/tiffany/world/TFFlexiblePanel$PointBlender;
    }
.end annotation


# static fields
.field public static final N:I = 0x8

.field static final TAG:Ljava/lang/String; = "TFFlexiblePanel"


# instance fields
.field protected XYZ:[F

.field private mDrawReflection:Z

.field private mImageOrientation:[I

.field protected mNewPointBlender:Lcom/nemustech/tiffany/world/TFFlexiblePanel$PointBlender;

.field protected mPointBlender:Lcom/nemustech/tiffany/world/TFFlexiblePanel$PointBlender;

.field protected mPointBlenderChanged:Z

.field private mReverseWay:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/high16 v1, 0x3f80

    .line 18
    invoke-direct {p0}, Lcom/nemustech/tiffany/world/TFModel;-><init>()V

    .line 600
    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->mPointBlender:Lcom/nemustech/tiffany/world/TFFlexiblePanel$PointBlender;

    .line 601
    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->mNewPointBlender:Lcom/nemustech/tiffany/world/TFFlexiblePanel$PointBlender;

    .line 602
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->mPointBlenderChanged:Z

    .line 604
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->XYZ:[F

    .line 606
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->mDrawReflection:Z

    .line 19
    invoke-direct {p0, v1, v1}, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->create(FF)V

    .line 20
    return-void
.end method

.method public constructor <init>(FF)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Lcom/nemustech/tiffany/world/TFModel;-><init>()V

    .line 600
    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->mPointBlender:Lcom/nemustech/tiffany/world/TFFlexiblePanel$PointBlender;

    .line 601
    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->mNewPointBlender:Lcom/nemustech/tiffany/world/TFFlexiblePanel$PointBlender;

    .line 602
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->mPointBlenderChanged:Z

    .line 604
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->XYZ:[F

    .line 606
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->mDrawReflection:Z

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->create(FF)V

    .line 30
    return-void
.end method

.method public constructor <init>(Lcom/nemustech/tiffany/world/TFHolder;FF)V
    .locals 1
    .parameter "holder"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Lcom/nemustech/tiffany/world/TFModel;-><init>()V

    .line 600
    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->mPointBlender:Lcom/nemustech/tiffany/world/TFFlexiblePanel$PointBlender;

    .line 601
    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->mNewPointBlender:Lcom/nemustech/tiffany/world/TFFlexiblePanel$PointBlender;

    .line 602
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->mPointBlenderChanged:Z

    .line 604
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->XYZ:[F

    .line 606
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->mDrawReflection:Z

    .line 54
    invoke-direct {p0, p2, p3}, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->create(FF)V

    .line 55
    invoke-super {p0, p1}, Lcom/nemustech/tiffany/world/TFModel;->attachTo(Lcom/nemustech/tiffany/world/TFHolder;)Lcom/nemustech/tiffany/world/TFError;

    .line 56
    return-void
.end method

.method public constructor <init>(Lcom/nemustech/tiffany/world/TFWorld;FF)V
    .locals 1
    .parameter "world"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Lcom/nemustech/tiffany/world/TFModel;-><init>()V

    .line 600
    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->mPointBlender:Lcom/nemustech/tiffany/world/TFFlexiblePanel$PointBlender;

    .line 601
    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->mNewPointBlender:Lcom/nemustech/tiffany/world/TFFlexiblePanel$PointBlender;

    .line 602
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->mPointBlenderChanged:Z

    .line 604
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->XYZ:[F

    .line 606
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->mDrawReflection:Z

    .line 41
    invoke-direct {p0, p2, p3}, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->create(FF)V

    .line 42
    invoke-super {p0, p1}, Lcom/nemustech/tiffany/world/TFModel;->attachTo(Lcom/nemustech/tiffany/world/TFWorld;)Lcom/nemustech/tiffany/world/TFError;

    .line 43
    return-void
.end method

.method private checkPoints(Ljava/nio/FloatBuffer;)Z
    .locals 7
    .parameter "vertex"

    .prologue
    const/4 v6, 0x1

    .line 515
    const/4 v2, 0x1

    .line 517
    .local v2, ret:Z
    iget-object v5, p0, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    if-nez v5, :cond_0

    move v3, v2

    .line 537
    .end local v2           #ret:Z
    .local v3, ret:I
    :goto_0
    return v3

    .line 519
    .end local v3           #ret:I
    .restart local v2       #ret:Z
    :cond_0
    iget-object v5, p0, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    iget-boolean v5, v5, Lcom/nemustech/tiffany/world/TFWorld;->mReflection:Z

    if-eqz v5, :cond_2

    .line 522
    iget-object v5, p0, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->mLocation:[F

    aget v1, v5, v6

    .line 523
    .local v1, objectY:F
    iget-object v5, p0, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->mHolder:Lcom/nemustech/tiffany/world/TFHolder;

    if-eqz v5, :cond_3

    .line 524
    iget-object v5, p0, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->mHolder:Lcom/nemustech/tiffany/world/TFHolder;

    iget-object v5, v5, Lcom/nemustech/tiffany/world/TFHolder;->mLocation:[F

    aget v5, v5, v6

    add-float/2addr v1, v5

    .line 529
    :cond_1
    :goto_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    const/16 v5, 0x90

    if-ge v0, v5, :cond_2

    .line 530
    mul-int/lit8 v5, v0, 0x3

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p1, v5}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v5

    add-float v4, v5, v1

    .line 531
    .local v4, y:F
    iget-object v5, p0, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    iget v5, v5, Lcom/nemustech/tiffany/world/TFWorld;->mReflectingFloor:F

    cmpg-float v5, v4, v5

    if-gez v5, :cond_4

    .line 532
    const/4 v2, 0x0

    .end local v0           #i:I
    .end local v1           #objectY:F
    .end local v4           #y:F
    :cond_2
    move v3, v2

    .line 537
    .restart local v3       #ret:I
    goto :goto_0

    .line 525
    .end local v3           #ret:I
    .restart local v1       #objectY:F
    :cond_3
    iget-object v5, p0, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->mPlaceHolder:Lcom/nemustech/tiffany/world/TFPlaceHolder;

    if-eqz v5, :cond_1

    .line 526
    iget-object v5, p0, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->mPlaceHolder:Lcom/nemustech/tiffany/world/TFPlaceHolder;

    iget-object v5, v5, Lcom/nemustech/tiffany/world/TFPlaceHolder;->mLocation:[F

    aget v5, v5, v6

    add-float/2addr v1, v5

    goto :goto_1

    .line 529
    .restart local v0       #i:I
    .restart local v4       #y:F
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private create(FF)V
    .locals 2
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v1, 0x2

    .line 59
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->mImageOrientation:[I

    .line 60
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->mReverseWay:[I

    .line 61
    invoke-virtual {p0, p1, p2}, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->setSize(FF)V

    .line 62
    const/4 v0, 0x1

    invoke-super {p0, v0}, Lcom/nemustech/tiffany/world/TFModel;->setBackFaceVisibility(Z)V

    .line 63
    return-void
.end method

.method private fillTexCoord(Ljava/nio/FloatBuffer;)V
    .locals 3
    .parameter "texCoord"

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x3f80

    .line 509
    invoke-direct {p0, p1, v2, v1, v1}, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->fillTexCoordFace(Ljava/nio/FloatBuffer;IFF)V

    .line 510
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->fillTexCoordFace(Ljava/nio/FloatBuffer;IFF)V

    .line 511
    invoke-virtual {p1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 512
    return-void
.end method

.method private fillTexCoordFace(Ljava/nio/FloatBuffer;IFF)V
    .locals 11
    .parameter "texCoord"
    .parameter "face"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 460
    move v8, p3

    .line 461
    .local v8, w:F
    move v0, p4

    .line 462
    .local v0, h:F
    mul-int/lit8 v9, p2, 0x8

    mul-int/lit8 v9, v9, 0x9

    mul-int/lit8 v9, v9, 0x2

    mul-int/lit8 v3, v9, 0x2

    .line 463
    .local v3, offset:I
    iget-object v9, p0, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->mReverseWay:[I

    aget v4, v9, p2

    .line 465
    .local v4, reverse:I
    invoke-virtual {p1, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 466
    const/4 v2, 0x0

    .local v2, j:I
    :goto_0
    const/16 v9, 0x8

    if-ge v2, v9, :cond_1

    .line 467
    int-to-float v9, v2

    const/high16 v10, 0x4100

    div-float v6, v9, v10

    .line 468
    .local v6, t1:F
    add-int/lit8 v9, v2, 0x1

    int-to-float v9, v9

    const/high16 v10, 0x4100

    div-float v7, v9, v10

    .line 469
    .local v7, t2:F
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    const/16 v9, 0x8

    if-gt v1, v9, :cond_0

    .line 470
    int-to-float v9, v1

    const/high16 v10, 0x4100

    div-float v5, v9, v10

    .line 471
    .local v5, s:F
    packed-switch v4, :pswitch_data_0

    .line 474
    mul-float v9, v5, v8

    invoke-virtual {p1, v9}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 475
    const/high16 v9, 0x3f80

    sub-float/2addr v9, v7

    mul-float/2addr v9, v0

    invoke-virtual {p1, v9}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 476
    mul-float v9, v5, v8

    invoke-virtual {p1, v9}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 477
    const/high16 v9, 0x3f80

    sub-float/2addr v9, v6

    mul-float/2addr v9, v0

    invoke-virtual {p1, v9}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 469
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 480
    :pswitch_0
    const/high16 v9, 0x3f80

    sub-float/2addr v9, v5

    mul-float/2addr v9, v8

    invoke-virtual {p1, v9}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 481
    const/high16 v9, 0x3f80

    sub-float/2addr v9, v7

    mul-float/2addr v9, v0

    invoke-virtual {p1, v9}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 482
    const/high16 v9, 0x3f80

    sub-float/2addr v9, v5

    mul-float/2addr v9, v8

    invoke-virtual {p1, v9}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 483
    const/high16 v9, 0x3f80

    sub-float/2addr v9, v6

    mul-float/2addr v9, v0

    invoke-virtual {p1, v9}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    goto :goto_2

    .line 486
    :pswitch_1
    mul-float v9, v5, v8

    invoke-virtual {p1, v9}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 487
    mul-float v9, v7, v0

    invoke-virtual {p1, v9}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 488
    mul-float v9, v5, v8

    invoke-virtual {p1, v9}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 489
    mul-float v9, v6, v0

    invoke-virtual {p1, v9}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    goto :goto_2

    .line 492
    :pswitch_2
    const/high16 v9, 0x3f80

    sub-float/2addr v9, v5

    mul-float/2addr v9, v8

    invoke-virtual {p1, v9}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 493
    mul-float v9, v7, v0

    invoke-virtual {p1, v9}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 494
    const/high16 v9, 0x3f80

    sub-float/2addr v9, v5

    mul-float/2addr v9, v8

    invoke-virtual {p1, v9}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 495
    mul-float v9, v6, v0

    invoke-virtual {p1, v9}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    goto :goto_2

    .line 466
    .end local v5           #s:F
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 500
    .end local v1           #i:I
    .end local v6           #t1:F
    .end local v7           #t2:F
    :cond_1
    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 501
    return-void

    .line 471
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private fillVertex(Ljava/nio/FloatBuffer;)V
    .locals 4
    .parameter "vertex"

    .prologue
    const/4 v3, 0x0

    .line 504
    iget v0, p0, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->mWidth:F

    iget v1, p0, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->mHeight:F

    invoke-direct {p0, p1, v3, v0, v1}, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->fillVertexFace(Ljava/nio/FloatBuffer;IFF)V

    .line 505
    const/4 v0, 0x1

    iget v1, p0, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->mWidth:F

    iget v2, p0, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->mHeight:F

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->fillVertexFace(Ljava/nio/FloatBuffer;IFF)V

    .line 506
    invoke-virtual {p1, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 507
    return-void
.end method

.method private fillVertexFace(Ljava/nio/FloatBuffer;IFF)V
    .locals 10
    .parameter "vertex"
    .parameter "face"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 417
    mul-int/lit8 v7, p2, 0x8

    mul-int/lit8 v7, v7, 0x9

    mul-int/lit8 v7, v7, 0x2

    mul-int/lit8 v4, v7, 0x3

    .line 418
    .local v4, offset:I
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->XYZ:[F

    .line 419
    .local v0, coord:[F
    iget-object v5, p0, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->mPointBlender:Lcom/nemustech/tiffany/world/TFFlexiblePanel$PointBlender;

    .line 420
    .local v5, pb:Lcom/nemustech/tiffany/world/TFFlexiblePanel$PointBlender;
    move v6, p3

    .line 421
    .local v6, w:F
    move v1, p4

    .line 423
    .local v1, h:F
    invoke-virtual {p1, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 424
    if-nez v5, :cond_1

    .line 426
    const/4 v7, 0x2

    const/4 v8, 0x0

    aput v8, v0, v7

    .line 427
    const/4 v3, 0x0

    .local v3, j:I
    :goto_0
    const/16 v7, 0x8

    if-ge v3, v7, :cond_3

    .line 428
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    const/16 v7, 0x8

    if-gt v2, v7, :cond_0

    .line 429
    const/4 v7, 0x0

    int-to-float v8, v2

    const/high16 v9, 0x4100

    div-float/2addr v8, v9

    aput v8, v0, v7

    .line 430
    const/4 v7, 0x1

    add-int/lit8 v8, v3, 0x1

    int-to-float v8, v8

    const/high16 v9, 0x4100

    div-float/2addr v8, v9

    aput v8, v0, v7

    .line 431
    const/4 v7, 0x0

    aget v7, v0, v7

    const/high16 v8, 0x3f00

    sub-float/2addr v7, v8

    mul-float/2addr v7, v6

    invoke-virtual {p1, v7}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 432
    const/4 v7, 0x1

    aget v7, v0, v7

    const/high16 v8, 0x3f00

    sub-float/2addr v7, v8

    mul-float/2addr v7, v1

    invoke-virtual {p1, v7}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 433
    const/4 v7, 0x2

    aget v7, v0, v7

    invoke-virtual {p1, v7}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 436
    const/4 v7, 0x1

    add-int/lit8 v8, v3, 0x0

    int-to-float v8, v8

    const/high16 v9, 0x4100

    div-float/2addr v8, v9

    aput v8, v0, v7

    .line 437
    const/4 v7, 0x0

    aget v7, v0, v7

    const/high16 v8, 0x3f00

    sub-float/2addr v7, v8

    mul-float/2addr v7, v6

    invoke-virtual {p1, v7}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 438
    const/4 v7, 0x1

    aget v7, v0, v7

    const/high16 v8, 0x3f00

    sub-float/2addr v7, v8

    mul-float/2addr v7, v1

    invoke-virtual {p1, v7}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 439
    const/4 v7, 0x2

    aget v7, v0, v7

    invoke-virtual {p1, v7}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 428
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 427
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 444
    .end local v2           #i:I
    .end local v3           #j:I
    :cond_1
    const/4 v3, 0x0

    .restart local v3       #j:I
    :goto_2
    const/16 v7, 0x8

    if-ge v3, v7, :cond_3

    .line 445
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_3
    const/16 v7, 0x8

    if-gt v2, v7, :cond_2

    .line 446
    add-int/lit8 v7, v3, 0x1

    invoke-interface {v5, v2, v7, v0}, Lcom/nemustech/tiffany/world/TFFlexiblePanel$PointBlender;->calcXYZ(II[F)V

    .line 447
    const/4 v7, 0x0

    aget v7, v0, v7

    const/high16 v8, 0x3f00

    sub-float/2addr v7, v8

    mul-float/2addr v7, v6

    invoke-virtual {p1, v7}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 448
    const/4 v7, 0x1

    aget v7, v0, v7

    const/high16 v8, 0x3f00

    sub-float/2addr v7, v8

    mul-float/2addr v7, v1

    invoke-virtual {p1, v7}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 449
    const/4 v7, 0x2

    aget v7, v0, v7

    invoke-virtual {p1, v7}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 450
    invoke-interface {v5, v2, v3, v0}, Lcom/nemustech/tiffany/world/TFFlexiblePanel$PointBlender;->calcXYZ(II[F)V

    .line 451
    const/4 v7, 0x0

    aget v7, v0, v7

    const/high16 v8, 0x3f00

    sub-float/2addr v7, v8

    mul-float/2addr v7, v6

    invoke-virtual {p1, v7}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 452
    const/4 v7, 0x1

    aget v7, v0, v7

    const/high16 v8, 0x3f00

    sub-float/2addr v7, v8

    mul-float/2addr v7, v1

    invoke-virtual {p1, v7}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 453
    const/4 v7, 0x2

    aget v7, v0, v7

    invoke-virtual {p1, v7}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 445
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 444
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 457
    .end local v2           #i:I
    :cond_3
    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 458
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
    .line 137
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->mTextureBuffer:Ljava/nio/FloatBuffer;

    iget v1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    int-to-float v2, p3

    div-float/2addr v1, v2

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    int-to-float v3, p4

    div-float/2addr v2, v3

    invoke-direct {p0, v0, p2, v1, v2}, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->fillTexCoordFace(Ljava/nio/FloatBuffer;IFF)V

    .line 140
    return-void
.end method

.method draw(Ljavax/microedition/khronos/opengles/GL10;I)V
    .locals 14
    .parameter "gl"
    .parameter "tickPassed"

    .prologue
    .line 177
    invoke-super/range {p0 .. p2}, Lcom/nemustech/tiffany/world/TFModel;->draw(Ljavax/microedition/khronos/opengles/GL10;I)V

    .line 179
    iget-boolean v10, p0, Lcom/nemustech/tiffany/world/TFModel;->mVisible:Z

    if-eqz v10, :cond_a

    iget-boolean v10, p0, Lcom/nemustech/tiffany/world/TFModel;->mShouldDraw:Z

    if-eqz v10, :cond_a

    .line 181
    iget v10, p0, Lcom/nemustech/tiffany/world/TFModel;->mOpacity:F

    iget-object v11, p0, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    iget v11, v11, Lcom/nemustech/tiffany/world/TFWorld;->mReflectionOpacity:F

    mul-float v5, v10, v11

    .line 183
    .local v5, reflectionOpacity:F
    iget-boolean v10, p0, Lcom/nemustech/tiffany/world/TFModel;->mFacingFront:Z

    if-eqz v10, :cond_1

    .line 185
    iget-object v10, p0, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->mAngle:[F

    const/4 v11, 0x0

    aget v10, v10, v11

    neg-float v7, v10

    .line 186
    .local v7, rotationX:F
    iget-object v10, p0, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->mAngle:[F

    const/4 v11, 0x1

    aget v10, v10, v11

    neg-float v8, v10

    .line 187
    .local v8, rotationY:F
    const/4 v6, 0x0

    .line 189
    .local v6, rotateYFirst:Z
    iget-object v10, p0, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->mHolder:Lcom/nemustech/tiffany/world/TFHolder;

    if-eqz v10, :cond_0

    .line 191
    iget-object v10, p0, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->mHolder:Lcom/nemustech/tiffany/world/TFHolder;

    iget-object v10, v10, Lcom/nemustech/tiffany/world/TFHolder;->mAngle:[F

    const/4 v11, 0x0

    aget v10, v10, v11

    sub-float/2addr v7, v10

    .line 192
    iget-object v10, p0, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->mHolder:Lcom/nemustech/tiffany/world/TFHolder;

    iget-object v10, v10, Lcom/nemustech/tiffany/world/TFHolder;->mAngle:[F

    const/4 v11, 0x1

    aget v10, v10, v11

    sub-float/2addr v8, v10

    .line 193
    iget-object v10, p0, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->mHolder:Lcom/nemustech/tiffany/world/TFHolder;

    iget-boolean v6, v10, Lcom/nemustech/tiffany/world/TFHolder;->mFacingFrontYFirst:Z

    .line 196
    :cond_0
    const/4 v10, 0x1

    if-ne v6, v10, :cond_5

    .line 198
    const/high16 v10, 0x3f80

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-interface {p1, v8, v10, v11, v12}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 199
    const/4 v10, 0x0

    const/high16 v11, 0x3f80

    const/4 v12, 0x0

    invoke-interface {p1, v7, v10, v11, v12}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 208
    :goto_0
    move-object v0, p1

    check-cast v0, Lcom/nemustech/tiffany/world/TFGL;

    move-object v1, v0

    .line 209
    .local v1, gl2:Lcom/nemustech/tiffany/world/TFGL;
    iget-object v10, p0, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->mMatrix:[F

    const/4 v11, 0x0

    invoke-virtual {v1, v10, v11}, Lcom/nemustech/tiffany/world/TFGL;->getMatrix([FI)V

    .line 212
    .end local v1           #gl2:Lcom/nemustech/tiffany/world/TFGL;
    .end local v6           #rotateYFirst:Z
    .end local v7           #rotationX:F
    .end local v8           #rotationY:F
    :cond_1
    iget-object v10, p0, Lcom/nemustech/tiffany/world/TFModel;->mTextures:Lcom/nemustech/tiffany/world/TFTextures;

    invoke-virtual {v10}, Lcom/nemustech/tiffany/world/TFTextures;->getTextureCount()I

    move-result v10

    const/4 v11, 0x1

    if-le v10, v11, :cond_2

    .line 213
    const/16 v10, 0xb44

    invoke-interface {p1, v10}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 214
    :cond_2
    const v10, 0x8074

    invoke-interface {p1, v10}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 215
    const v10, 0x8078

    invoke-interface {p1, v10}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 217
    const/4 v10, 0x3

    const/16 v11, 0x1406

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v10, v11, v12, v13}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 218
    const/4 v10, 0x2

    const/16 v11, 0x1406

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->mTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v10, v11, v12, v13}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 220
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v10, p0, Lcom/nemustech/tiffany/world/TFModel;->mTextures:Lcom/nemustech/tiffany/world/TFTextures;

    invoke-virtual {v10}, Lcom/nemustech/tiffany/world/TFTextures;->getTextureCount()I

    move-result v10

    if-ge v2, v10, :cond_a

    .line 222
    iget-object v10, p0, Lcom/nemustech/tiffany/world/TFModel;->mTextures:Lcom/nemustech/tiffany/world/TFTextures;

    invoke-virtual {v10, p1, v2}, Lcom/nemustech/tiffany/world/TFTextures;->setTextureByIndex(Ljavax/microedition/khronos/opengles/GL10;I)V

    .line 225
    iget-boolean v10, p0, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->mDrawReflection:Z

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    iget-boolean v10, v10, Lcom/nemustech/tiffany/world/TFWorld;->mReflection:Z

    if-eqz v10, :cond_4

    .line 227
    if-nez v2, :cond_6

    const/16 v10, 0x404

    :goto_2
    invoke-interface {p1, v10}, Ljavax/microedition/khronos/opengles/GL10;->glCullFace(I)V

    .line 229
    iget-object v10, p0, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->mLocation:[F

    const/4 v11, 0x1

    aget v4, v10, v11

    .line 230
    .local v4, objectY:F
    iget-object v10, p0, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->mHolder:Lcom/nemustech/tiffany/world/TFHolder;

    if-eqz v10, :cond_7

    .line 231
    iget-object v10, p0, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->mHolder:Lcom/nemustech/tiffany/world/TFHolder;

    iget-object v10, v10, Lcom/nemustech/tiffany/world/TFHolder;->mLocation:[F

    const/4 v11, 0x1

    aget v10, v10, v11

    add-float/2addr v4, v10

    .line 235
    :cond_3
    :goto_3
    const/high16 v10, 0x4000

    iget-object v11, p0, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    iget v11, v11, Lcom/nemustech/tiffany/world/TFWorld;->mReflectingFloor:F

    mul-float/2addr v10, v11

    sub-float v3, v10, v4

    .line 236
    .local v3, mirroredY:F
    iget v10, p0, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->mHeight:F

    const/high16 v11, 0x4000

    div-float/2addr v10, v11

    add-float v9, v3, v10

    .line 238
    .local v9, yMax:F
    iget-object v10, p0, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    iget v10, v10, Lcom/nemustech/tiffany/world/TFWorld;->mReflectingFloor:F

    sub-float v10, v4, v10

    iget v11, p0, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->mHeight:F

    const/high16 v12, 0x4000

    div-float/2addr v11, v12

    cmpl-float v10, v10, v11

    if-ltz v10, :cond_4

    .line 240
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 241
    const/4 v10, 0x0

    neg-float v11, v4

    const/4 v12, 0x0

    invoke-interface {p1, v10, v11, v12}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 242
    const/4 v10, 0x0

    const v11, -0x457ced91

    invoke-interface {p1, v10, v3, v11}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 243
    iget-object v10, p0, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->mAngle:[F

    const/4 v11, 0x2

    aget v10, v10, v11

    neg-float v10, v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/high16 v13, 0x3f80

    invoke-interface {p1, v10, v11, v12, v13}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 244
    iget-object v10, p0, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->mAngle:[F

    const/4 v11, 0x2

    aget v10, v10, v11

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/high16 v13, 0x3f80

    invoke-interface {p1, v10, v11, v12, v13}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 245
    const/high16 v10, 0x3f80

    const/high16 v11, -0x4080

    const/high16 v12, 0x3f80

    invoke-interface {p1, v10, v11, v12}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 246
    const/high16 v10, 0x3f80

    invoke-interface {p1, v5, v5, v5, v10}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 247
    invoke-virtual {p0, p1, v2}, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->drawVertex(Ljavax/microedition/khronos/opengles/GL10;I)V

    .line 248
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 252
    .end local v3           #mirroredY:F
    .end local v4           #objectY:F
    .end local v9           #yMax:F
    :cond_4
    iget v10, p0, Lcom/nemustech/tiffany/world/TFModel;->mTouchedIndex:I

    if-ne v10, v2, :cond_8

    .line 253
    iget-object v10, p0, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    iget v10, v10, Lcom/nemustech/tiffany/world/TFWorld;->mTouchedModelColorMaskR:F

    iget-object v11, p0, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    iget v11, v11, Lcom/nemustech/tiffany/world/TFWorld;->mTouchedModelColorMaskG:F

    iget-object v12, p0, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    iget v12, v12, Lcom/nemustech/tiffany/world/TFWorld;->mTouchedModelColorMaskB:F

    iget v13, p0, Lcom/nemustech/tiffany/world/TFModel;->mOpacity:F

    invoke-interface {p1, v10, v11, v12, v13}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 260
    :goto_4
    if-nez v2, :cond_9

    const/16 v10, 0x405

    :goto_5
    invoke-interface {p1, v10}, Ljavax/microedition/khronos/opengles/GL10;->glCullFace(I)V

    .line 261
    invoke-virtual {p0, p1, v2}, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->drawVertex(Ljavax/microedition/khronos/opengles/GL10;I)V

    .line 220
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 203
    .end local v2           #i:I
    .restart local v6       #rotateYFirst:Z
    .restart local v7       #rotationX:F
    .restart local v8       #rotationY:F
    :cond_5
    const/4 v10, 0x0

    const/high16 v11, 0x3f80

    const/4 v12, 0x0

    invoke-interface {p1, v7, v10, v11, v12}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 204
    const/high16 v10, 0x3f80

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-interface {p1, v8, v10, v11, v12}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    goto/16 :goto_0

    .line 227
    .end local v6           #rotateYFirst:Z
    .end local v7           #rotationX:F
    .end local v8           #rotationY:F
    .restart local v2       #i:I
    :cond_6
    const/16 v10, 0x405

    goto/16 :goto_2

    .line 232
    .restart local v4       #objectY:F
    :cond_7
    iget-object v10, p0, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->mPlaceHolder:Lcom/nemustech/tiffany/world/TFPlaceHolder;

    if-eqz v10, :cond_3

    .line 233
    iget-object v10, p0, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->mPlaceHolder:Lcom/nemustech/tiffany/world/TFPlaceHolder;

    iget-object v10, v10, Lcom/nemustech/tiffany/world/TFPlaceHolder;->mLocation:[F

    const/4 v11, 0x1

    aget v10, v10, v11

    add-float/2addr v4, v10

    goto/16 :goto_3

    .line 258
    .end local v4           #objectY:F
    :cond_8
    const/high16 v10, 0x3f80

    const/high16 v11, 0x3f80

    const/high16 v12, 0x3f80

    iget v13, p0, Lcom/nemustech/tiffany/world/TFModel;->mOpacity:F

    invoke-interface {p1, v10, v11, v12, v13}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    goto :goto_4

    .line 260
    :cond_9
    const/16 v10, 0x404

    goto :goto_5

    .line 264
    .end local v2           #i:I
    .end local v5           #reflectionOpacity:F
    :cond_a
    return-void
.end method

.method protected drawVertex(Ljavax/microedition/khronos/opengles/GL10;I)V
    .locals 5
    .parameter "gl"
    .parameter "face"

    .prologue
    .line 411
    mul-int/lit8 v2, p2, 0x8

    mul-int/lit8 v2, v2, 0x9

    mul-int/lit8 v1, v2, 0x2

    .line 412
    .local v1, offset:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v2, 0x8

    if-ge v0, v2, :cond_0

    .line 413
    const/4 v2, 0x5

    mul-int/lit8 v3, v0, 0x9

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v1

    const/16 v4, 0x12

    invoke-interface {p1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 412
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 414
    :cond_0
    return-void
.end method

.method handleDrag(FFFFI)V
    .locals 0
    .parameter "start_x"
    .parameter "start_y"
    .parameter "end_x"
    .parameter "end_y"
    .parameter "tickPassed"

    .prologue
    .line 269
    return-void
.end method

.method protected isInEffectAnimation()Z
    .locals 1

    .prologue
    .line 144
    invoke-super {p0}, Lcom/nemustech/tiffany/world/TFModel;->isInEffectAnimation()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->mPointBlender:Lcom/nemustech/tiffany/world/TFFlexiblePanel$PointBlender;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reverseImage(II)V
    .locals 2
    .parameter "index"
    .parameter "reverseWay"

    .prologue
    const/high16 v1, 0x3f80

    .line 91
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->mReverseWay:[I

    aget v0, v0, p1

    if-ne v0, p2, :cond_0

    .line 96
    :goto_0
    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->mReverseWay:[I

    aput p2, v0, p1

    .line 95
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->mTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-direct {p0, v0, p1, v1, v1}, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->fillTexCoordFace(Ljava/nio/FloatBuffer;IFF)V

    goto :goto_0
.end method

.method public setImageDirection(II)V
    .locals 2
    .parameter "index"
    .parameter "direction"

    .prologue
    const/high16 v1, 0x3f80

    .line 74
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->mImageOrientation:[I

    aget v0, v0, p1

    if-ne v0, p2, :cond_0

    .line 80
    :goto_0
    return-void

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->mImageOrientation:[I

    aput p2, v0, p1

    .line 79
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->mTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-direct {p0, v0, p1, v1, v1}, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->fillTexCoordFace(Ljava/nio/FloatBuffer;IFF)V

    goto :goto_0
.end method

.method public setPointBlender(Lcom/nemustech/tiffany/world/TFFlexiblePanel$PointBlender;)V
    .locals 1
    .parameter "pb"

    .prologue
    .line 404
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->mNewPointBlender:Lcom/nemustech/tiffany/world/TFFlexiblePanel$PointBlender;

    .line 405
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->mPointBlenderChanged:Z

    .line 406
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/world/TFWorld;->requestRender()V

    .line 407
    return-void
.end method

.method public setSize(FF)V
    .locals 5
    .parameter "width"
    .parameter "height"

    .prologue
    .line 153
    iput p1, p0, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->mWidth:F

    .line 154
    iput p2, p0, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->mHeight:F

    .line 157
    const/16 v0, 0x90

    .line 158
    .local v0, bufSize:I
    mul-int/lit8 v0, v0, 0x2

    .line 159
    mul-int/lit8 v3, v0, 0x3

    mul-int/lit8 v3, v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    .line 162
    .local v2, vertex:Ljava/nio/FloatBuffer;
    invoke-direct {p0, v2}, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->fillVertex(Ljava/nio/FloatBuffer;)V

    .line 163
    invoke-direct {p0, v2}, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->checkPoints(Ljava/nio/FloatBuffer;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->mDrawReflection:Z

    .line 164
    iput-object v2, p0, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 166
    mul-int/lit8 v3, v0, 0x2

    mul-int/lit8 v3, v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    .line 169
    .local v1, texCoord:Ljava/nio/FloatBuffer;
    invoke-direct {p0, v1}, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->fillTexCoord(Ljava/nio/FloatBuffer;)V

    .line 170
    iput-object v1, p0, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->mTextureBuffer:Ljava/nio/FloatBuffer;

    .line 171
    return-void
.end method

.method updateHitPoint()V
    .locals 22

    .prologue
    .line 546
    invoke-super/range {p0 .. p0}, Lcom/nemustech/tiffany/world/TFModel;->updateHitPoint()V

    .line 548
    const/16 v15, 0x1b0

    .line 549
    .local v15, hitPointOffset:I
    const/16 v20, 0x1b4

    .line 550
    .local v20, uvtOffset:I
    const/16 v21, 0x1b7

    .line 551
    .local v21, workOffset:I
    const/16 v6, 0x1d7

    new-array v2, v6, [F

    .line 553
    .local v2, work:[F
    const/high16 v19, 0x7f80

    .line 555
    .local v19, tMin:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->mVertexBuffer:Ljava/nio/FloatBuffer;

    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 556
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->mVertexBuffer:Ljava/nio/FloatBuffer;

    move-object v6, v0

    const/4 v7, 0x0

    const/16 v8, 0x1b0

    invoke-virtual {v6, v2, v7, v8}, Ljava/nio/FloatBuffer;->get([FII)Ljava/nio/FloatBuffer;

    .line 557
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->mVertexBuffer:Ljava/nio/FloatBuffer;

    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 559
    const/16 v16, 0x0

    .local v16, i:I
    :goto_0
    const/16 v6, 0x8

    move/from16 v0, v16

    move v1, v6

    if-ge v0, v1, :cond_3

    .line 560
    mul-int/lit8 v6, v16, 0x9

    mul-int/lit8 v18, v6, 0x2

    .line 561
    .local v18, row:I
    const/16 v17, 0x0

    .local v17, j:I
    :goto_1
    const/16 v6, 0x10

    move/from16 v0, v17

    move v1, v6

    if-ge v0, v1, :cond_2

    .line 562
    add-int v6, v18, v17

    add-int/lit8 v6, v6, 0x0

    mul-int/lit8 v3, v6, 0x3

    .line 563
    .local v3, a:I
    add-int v6, v18, v17

    add-int/lit8 v6, v6, 0x1

    mul-int/lit8 v4, v6, 0x3

    .line 564
    .local v4, b:I
    add-int v6, v18, v17

    add-int/lit8 v6, v6, 0x2

    mul-int/lit8 v5, v6, 0x3

    .line 565
    .local v5, c:I
    rem-int/lit8 v6, v17, 0x2

    if-eqz v6, :cond_0

    .line 567
    move v13, v4

    .line 568
    .local v13, d:I
    move v4, v5

    .line 569
    move v5, v13

    .line 571
    .end local v13           #d:I
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->mHitTestLine:[F

    move-object v6, v0

    const/16 v8, 0x1b0

    const/16 v10, 0x1b4

    const/16 v12, 0x1b7

    move-object v7, v2

    move-object v9, v2

    move-object v11, v2

    invoke-static/range {v2 .. v12}, Lcom/nemustech/tiffany/world/TFModel;->doHitTestVertexTrigangle([FIII[F[FI[FI[FI)I

    move-result v14

    .line 577
    .local v14, hit:I
    if-ltz v14, :cond_1

    const/16 v6, 0x1b6

    aget v6, v2, v6

    cmpl-float v6, v19, v6

    if-ltz v6, :cond_1

    .line 578
    const/16 v6, 0x1b6

    aget v19, v2, v6

    .line 579
    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->mHitFace:I

    .line 580
    const/16 v6, 0x1b0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->mHitPoint:[F

    move-object v7, v0

    const/4 v8, 0x0

    const/4 v9, 0x4

    invoke-static {v2, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 561
    :cond_1
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 559
    .end local v3           #a:I
    .end local v4           #b:I
    .end local v5           #c:I
    .end local v14           #hit:I
    :cond_2
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 584
    .end local v17           #j:I
    .end local v18           #row:I
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->mHitFace:I

    move v6, v0

    if-ltz v6, :cond_4

    .line 585
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->mHitPoint:[F

    move-object v6, v0

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/nemustech/tiffany/world/TFVector3D;->setW([FI)V

    .line 586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->mHitPoint:[F

    move-object v6, v0

    const/4 v7, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->mMatrix:[F

    move-object v8, v0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->mHitPoint:[F

    move-object v10, v0

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 589
    :cond_4
    return-void
.end method

.method protected updateObject(Ljavax/microedition/khronos/opengles/GL10;IZ)Z
    .locals 4
    .parameter "gl"
    .parameter "tickPassed"
    .parameter "bDoGLCalc"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 100
    invoke-super {p0, p1, p2, p3}, Lcom/nemustech/tiffany/world/TFModel;->updateObject(Ljavax/microedition/khronos/opengles/GL10;IZ)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 132
    :goto_0
    return v0

    .line 103
    :cond_0
    iget-boolean v0, p0, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->mPointBlenderChanged:Z

    if-eqz v0, :cond_1

    .line 104
    iput-boolean v1, p0, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->mPointBlenderChanged:Z

    .line 106
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->mPointBlender:Lcom/nemustech/tiffany/world/TFFlexiblePanel$PointBlender;

    if-nez v0, :cond_4

    .line 108
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-direct {p0, v0}, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->fillVertex(Ljava/nio/FloatBuffer;)V

    .line 109
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-direct {p0, v0}, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->checkPoints(Ljava/nio/FloatBuffer;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->mDrawReflection:Z

    .line 113
    :goto_1
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->mNewPointBlender:Lcom/nemustech/tiffany/world/TFFlexiblePanel$PointBlender;

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->mPointBlender:Lcom/nemustech/tiffany/world/TFFlexiblePanel$PointBlender;

    .line 114
    iput-object v3, p0, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->mNewPointBlender:Lcom/nemustech/tiffany/world/TFFlexiblePanel$PointBlender;

    .line 115
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->mPointBlender:Lcom/nemustech/tiffany/world/TFFlexiblePanel$PointBlender;

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->mPointBlender:Lcom/nemustech/tiffany/world/TFFlexiblePanel$PointBlender;

    invoke-interface {v0}, Lcom/nemustech/tiffany/world/TFFlexiblePanel$PointBlender;->onStart()V

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->mPointBlender:Lcom/nemustech/tiffany/world/TFFlexiblePanel$PointBlender;

    if-eqz v0, :cond_3

    .line 119
    iput v2, p0, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->mEffectStatus:I

    .line 120
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/world/TFWorld;->requestRender()V

    .line 122
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->mPointBlender:Lcom/nemustech/tiffany/world/TFFlexiblePanel$PointBlender;

    invoke-interface {v0, p2}, Lcom/nemustech/tiffany/world/TFFlexiblePanel$PointBlender;->onFrame(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 123
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-direct {p0, v0}, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->fillVertex(Ljava/nio/FloatBuffer;)V

    .line 124
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-direct {p0, v0}, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->checkPoints(Ljava/nio/FloatBuffer;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->mDrawReflection:Z

    .line 126
    :cond_2
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->mPointBlender:Lcom/nemustech/tiffany/world/TFFlexiblePanel$PointBlender;

    invoke-interface {v0}, Lcom/nemustech/tiffany/world/TFFlexiblePanel$PointBlender;->isNextAvailable()Z

    move-result v0

    if-nez v0, :cond_3

    .line 127
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->mPointBlender:Lcom/nemustech/tiffany/world/TFFlexiblePanel$PointBlender;

    invoke-interface {v0}, Lcom/nemustech/tiffany/world/TFFlexiblePanel$PointBlender;->onEnd()V

    .line 128
    iput-object v3, p0, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->mPointBlender:Lcom/nemustech/tiffany/world/TFFlexiblePanel$PointBlender;

    .line 129
    const/4 v0, 0x2

    iput v0, p0, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->mEffectStatus:I

    :cond_3
    move v0, v2

    .line 132
    goto :goto_0

    .line 112
    :cond_4
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->mPointBlender:Lcom/nemustech/tiffany/world/TFFlexiblePanel$PointBlender;

    invoke-interface {v0}, Lcom/nemustech/tiffany/world/TFFlexiblePanel$PointBlender;->onEnd()V

    goto :goto_1
.end method
