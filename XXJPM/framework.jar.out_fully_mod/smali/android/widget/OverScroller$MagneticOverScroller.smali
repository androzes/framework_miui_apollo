.class Landroid/widget/OverScroller$MagneticOverScroller;
.super Landroid/widget/Scroller$MagneticScroller;
.source "OverScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/OverScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MagneticOverScroller"
.end annotation


# static fields
.field private static final DEFAULT_BOUNCE_COEFFICIENT:F = 0.16f

.field private static final OVERSCROLL_SPRINGBACK_DURATION:I = 0x1c2

.field private static final TIME_COEF:F = 6.981317f

.field private static final TO_BOUNCE:I = 0x2

.field private static final TO_BOUNDARY:I = 0x1

.field private static final TO_EDGE:I


# instance fields
.field private mBounceTarget:I

.field private mOver:I

.field private mState:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 492
    invoke-direct {p0}, Landroid/widget/Scroller$MagneticScroller;-><init>()V

    .line 497
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mState:I

    return-void
.end method

.method static synthetic access$000(Landroid/widget/OverScroller$MagneticOverScroller;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 492
    iget v0, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mState:I

    return v0
.end method

.method private onEdgeReached(II)V
    .locals 8
    .parameter "start"
    .parameter "end"

    .prologue
    const-wide v6, 0x408f400000000000L

    const-wide v4, 0x401becde60000000L

    .line 619
    iget v2, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mVelocity:I

    int-to-float v2, v2

    const v3, 0x40df66f3

    div-float v0, v2, v3

    .line 621
    .local v0, distance:F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mOver:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 623
    const/4 v2, 0x2

    iput v2, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mState:I

    .line 624
    iget v2, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mStart:I

    int-to-float v2, v2

    add-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mFinal:I

    .line 625
    const-wide/high16 v2, 0x3ff0

    invoke-static {v2, v3}, Ljava/lang/Math;->asin(D)D

    move-result-wide v2

    mul-double/2addr v2, v6

    div-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mDuration:I

    .line 626
    iput p2, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mBounceTarget:I

    .line 634
    :goto_0
    return-void

    .line 629
    :cond_0
    const/4 v2, 0x1

    iput v2, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mState:I

    .line 630
    iget v2, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mVelocity:I

    if-lez v2, :cond_1

    iget v2, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mOver:I

    move v1, v2

    .line 631
    .local v1, over:I
    :goto_1
    iget v2, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mStart:I

    add-int/2addr v2, v1

    iput v2, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mFinal:I

    .line 632
    int-to-float v2, v1

    div-float/2addr v2, v0

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->asin(D)D

    move-result-wide v2

    mul-double/2addr v2, v6

    div-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mDuration:I

    goto :goto_0

    .line 630
    .end local v1           #over:I
    :cond_1
    iget v2, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mOver:I

    neg-int v2, v2

    move v1, v2

    goto :goto_1
.end method

.method private startSpringback(II)V
    .locals 5
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x447a

    .line 529
    iput-boolean v4, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mFinished:Z

    .line 530
    iput v4, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mState:I

    .line 531
    iput p1, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mStart:I

    .line 532
    iput p2, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mFinal:I

    .line 533
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mStartTime:J

    .line 534
    const/16 v1, 0x1c2

    iput v1, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mDuration:I

    .line 535
    if-le p1, p2, :cond_0

    const/4 v1, 0x1

    move v0, v1

    .line 536
    .local v0, positive:Z
    :goto_0
    sub-int v1, p2, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    mul-float/2addr v1, v3

    mul-float/2addr v1, v3

    iget v2, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mDuration:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mDuration:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    if-eqz v0, :cond_1

    const/high16 v2, 0x3f80

    :goto_1
    mul-float/2addr v1, v2

    iput v1, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mDeceleration:F

    .line 540
    iget v1, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mDeceleration:F

    neg-float v1, v1

    iget v2, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mDuration:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    div-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mVelocity:I

    .line 541
    return-void

    .end local v0           #positive:Z
    :cond_0
    move v0, v4

    .line 535
    goto :goto_0

    .line 536
    .restart local v0       #positive:Z
    :cond_1
    const/high16 v2, -0x4080

    goto :goto_1
.end method


# virtual methods
.method continueWhenFinished()Z
    .locals 4

    .prologue
    .line 638
    iget v0, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 652
    :goto_0
    invoke-virtual {p0}, Landroid/widget/OverScroller$MagneticOverScroller;->update()Z

    .line 653
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 641
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_1

    .line 643
    :pswitch_1
    iget-wide v0, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mStartTime:J

    iget v2, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mDuration:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mStartTime:J

    .line 644
    iget v0, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mFinal:I

    iget v1, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mFinal:I

    iget v2, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mVelocity:I

    if-lez v2, :cond_0

    iget v2, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mOver:I

    :goto_2
    sub-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Landroid/widget/OverScroller$MagneticOverScroller;->startSpringback(II)V

    goto :goto_0

    :cond_0
    iget v2, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mOver:I

    neg-int v2, v2

    goto :goto_2

    .line 647
    :pswitch_2
    iget-wide v0, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mStartTime:J

    iget v2, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mDuration:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mStartTime:J

    .line 648
    iget v0, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mFinal:I

    iget v1, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mBounceTarget:I

    invoke-direct {p0, v0, v1}, Landroid/widget/OverScroller$MagneticOverScroller;->startSpringback(II)V

    goto :goto_0

    .line 638
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method fling(IIIII)V
    .locals 10
    .parameter "start"
    .parameter "velocity"
    .parameter "min"
    .parameter "max"
    .parameter "over"

    .prologue
    const v5, 0x40df66f3

    const-wide v6, 0x408f400000000000L

    const-wide v8, 0x401becde60000000L

    .line 544
    const/4 v4, 0x0

    iput v4, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mState:I

    .line 545
    iput p5, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mOver:I

    .line 547
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Scroller$MagneticScroller;->fling(IIII)V

    .line 549
    if-le p1, p4, :cond_3

    .line 550
    add-int v4, p4, p5

    if-lt p1, v4, :cond_1

    .line 551
    add-int v4, p4, p5

    invoke-virtual {p0, v4, p3, p4}, Landroid/widget/OverScroller$MagneticOverScroller;->springback(III)Z

    .line 593
    :cond_0
    :goto_0
    return-void

    .line 553
    :cond_1
    if-gtz p2, :cond_2

    .line 554
    invoke-virtual {p0, p1, p3, p4}, Landroid/widget/OverScroller$MagneticOverScroller;->springback(III)Z

    goto :goto_0

    .line 556
    :cond_2
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    .line 557
    .local v2, time:J
    sub-int v4, p1, p4

    int-to-float v4, v4

    mul-float/2addr v4, v5

    int-to-float v5, p2

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->atan(D)D

    move-result-wide v4

    div-double v0, v4, v8

    .line 559
    .local v0, durationSinceEdge:D
    long-to-double v4, v2

    mul-double/2addr v6, v0

    sub-double/2addr v4, v6

    double-to-int v4, v4

    int-to-long v4, v4

    iput-wide v4, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mStartTime:J

    .line 562
    iput p4, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mStart:I

    .line 564
    int-to-double v4, p2

    mul-double v6, v0, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    div-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mVelocity:I

    .line 566
    invoke-direct {p0, p1, p4}, Landroid/widget/OverScroller$MagneticOverScroller;->onEdgeReached(II)V

    goto :goto_0

    .line 570
    .end local v0           #durationSinceEdge:D
    .end local v2           #time:J
    :cond_3
    if-ge p1, p3, :cond_0

    .line 571
    sub-int v4, p3, p5

    if-gt p1, v4, :cond_4

    .line 572
    sub-int v4, p3, p5

    invoke-virtual {p0, v4, p3, p4}, Landroid/widget/OverScroller$MagneticOverScroller;->springback(III)Z

    goto :goto_0

    .line 574
    :cond_4
    if-ltz p2, :cond_5

    .line 575
    invoke-virtual {p0, p1, p3, p4}, Landroid/widget/OverScroller$MagneticOverScroller;->springback(III)Z

    goto :goto_0

    .line 577
    :cond_5
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    .line 578
    .restart local v2       #time:J
    sub-int v4, p1, p3

    int-to-float v4, v4

    mul-float/2addr v4, v5

    int-to-float v5, p2

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->atan(D)D

    move-result-wide v4

    div-double v0, v4, v8

    .line 580
    .restart local v0       #durationSinceEdge:D
    long-to-double v4, v2

    mul-double/2addr v6, v0

    sub-double/2addr v4, v6

    double-to-int v4, v4

    int-to-long v4, v4

    iput-wide v4, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mStartTime:J

    .line 583
    iput p3, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mStart:I

    .line 585
    int-to-double v4, p2

    mul-double v6, v0, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    div-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mVelocity:I

    .line 587
    invoke-direct {p0, p1, p3}, Landroid/widget/OverScroller$MagneticOverScroller;->onEdgeReached(II)V

    goto :goto_0
.end method

.method notifyEdgeReached(III)V
    .locals 8
    .parameter "start"
    .parameter "end"
    .parameter "over"

    .prologue
    .line 596
    iget v5, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mVelocity:I

    invoke-static {v5}, Landroid/widget/OverScroller$MagneticOverScroller;->getDeceleration(I)F

    move-result v5

    iput v5, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mDeceleration:F

    .line 599
    iget v5, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mCurrVelocity:F

    iget v6, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mDeceleration:F

    div-float v3, v5, v6

    .line 600
    .local v3, timeCurrent:F
    sub-int v0, p2, p1

    .line 601
    .local v0, distance:I
    const/high16 v5, 0x4000

    int-to-float v6, v0

    mul-float/2addr v5, v6

    iget v6, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mDeceleration:F

    div-float/2addr v5, v6

    mul-float v6, v3, v3

    add-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v5, v5

    neg-float v4, v5

    .line 604
    .local v4, timeEdge:F
    iget v5, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mDeceleration:F

    mul-float/2addr v5, v4

    float-to-int v5, v5

    iput v5, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mVelocity:I

    .line 607
    iput p2, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mStart:I

    .line 609
    iput p3, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mOver:I

    .line 611
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    .line 612
    .local v1, time:J
    long-to-float v5, v1

    const/high16 v6, 0x447a

    sub-float v7, v3, v4

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    float-to-int v5, v5

    int-to-long v5, v5

    iput-wide v5, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mStartTime:J

    .line 614
    invoke-direct {p0, p1, p2}, Landroid/widget/OverScroller$MagneticOverScroller;->onEdgeReached(II)V

    .line 615
    return-void
.end method

.method setBounceCoefficient(F)V
    .locals 0
    .parameter "coefficient"

    .prologue
    .line 514
    return-void
.end method

.method springback(III)Z
    .locals 2
    .parameter "start"
    .parameter "min"
    .parameter "max"

    .prologue
    const/4 v1, 0x1

    .line 517
    iput-boolean v1, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mFinished:Z

    .line 519
    if-ge p1, p2, :cond_1

    .line 520
    invoke-direct {p0, p1, p2}, Landroid/widget/OverScroller$MagneticOverScroller;->startSpringback(II)V

    .line 525
    :cond_0
    :goto_0
    iget-boolean v0, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mFinished:Z

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    return v0

    .line 521
    :cond_1
    if-le p1, p3, :cond_0

    .line 522
    invoke-direct {p0, p1, p3}, Landroid/widget/OverScroller$MagneticOverScroller;->startSpringback(II)V

    goto :goto_0

    .line 525
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method update()Z
    .locals 12

    .prologue
    const v11, 0x40df66f3

    .line 663
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    .line 664
    .local v6, time:J
    iget-wide v8, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mStartTime:J

    sub-long v3, v6, v8

    .line 666
    .local v3, duration:J
    iget v8, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mDuration:I

    int-to-long v8, v8

    cmp-long v8, v3, v8

    if-lez v8, :cond_0

    .line 667
    const/4 v8, 0x0

    .line 682
    :goto_0
    return v8

    .line 671
    :cond_0
    long-to-float v8, v3

    const/high16 v9, 0x447a

    div-float v5, v8, v9

    .line 672
    .local v5, t:F
    iget v8, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mState:I

    if-nez v8, :cond_1

    .line 673
    iget v8, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mVelocity:I

    int-to-float v8, v8

    iget v9, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mDeceleration:F

    mul-float/2addr v9, v5

    add-float/2addr v8, v9

    iput v8, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mCurrVelocity:F

    .line 674
    iget v8, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mVelocity:I

    int-to-float v8, v8

    mul-float/2addr v8, v5

    iget v9, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mDeceleration:F

    mul-float/2addr v9, v5

    mul-float/2addr v9, v5

    const/high16 v10, 0x4000

    div-float/2addr v9, v10

    add-float/2addr v8, v9

    float-to-double v1, v8

    .line 681
    .local v1, distance:D
    :goto_1
    iget v8, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mStart:I

    double-to-int v9, v1

    add-int/2addr v8, v9

    iput v8, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mCurrentPosition:I

    .line 682
    const/4 v8, 0x1

    goto :goto_0

    .line 676
    .end local v1           #distance:D
    :cond_1
    mul-float v0, v5, v11

    .line 677
    .local v0, d:F
    iget v8, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mVelocity:I

    int-to-float v8, v8

    float-to-double v9, v0

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    double-to-float v9, v9

    mul-float/2addr v8, v9

    iput v8, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mCurrVelocity:F

    .line 678
    iget v8, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mVelocity:I

    int-to-float v8, v8

    div-float/2addr v8, v11

    float-to-double v8, v8

    float-to-double v10, v0

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double v1, v8, v10

    .restart local v1       #distance:D
    goto :goto_1
.end method
