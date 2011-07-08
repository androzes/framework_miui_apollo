.class Landroid/widget/Scroller$MagneticScroller;
.super Ljava/lang/Object;
.source "Scroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Scroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MagneticScroller"
.end annotation


# static fields
.field static GRAVITY:F


# instance fields
.field mCurrVelocity:F

.field mCurrentPosition:I

.field mDeceleration:F

.field mDuration:I

.field mFinal:I

.field mFinished:Z

.field mStart:I

.field mStartTime:J

.field mVelocity:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 398
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 399
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Scroller$MagneticScroller;->mFinished:Z

    .line 400
    return-void
.end method

.method static computeDuration(IIFF)I
    .locals 7
    .parameter "start"
    .parameter "end"
    .parameter "initialVelocity"
    .parameter "deceleration"

    .prologue
    const/4 v6, 0x0

    .line 438
    sub-int v2, p0, p1

    .line 439
    .local v2, distance:I
    mul-float v3, p2, p2

    const/high16 v4, 0x4000

    mul-float/2addr v4, p3

    int-to-float v5, v2

    mul-float/2addr v4, v5

    sub-float v1, v3, v4

    .line 441
    .local v1, discriminant:F
    cmpl-float v3, v1, v6

    if-ltz v3, :cond_1

    .line 442
    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v0, v3

    .line 443
    .local v0, delta:F
    cmpg-float v3, p3, v6

    if-gez v3, :cond_0

    .line 444
    neg-float v0, v0

    .line 446
    :cond_0
    const/high16 v3, 0x447a

    neg-float v4, p2

    sub-float/2addr v4, v0

    mul-float/2addr v3, v4

    div-float/2addr v3, p3

    float-to-int v3, v3

    .line 450
    .end local v0           #delta:F
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method static getDeceleration(I)F
    .locals 1
    .parameter "velocity"

    .prologue
    .line 431
    if-lez p0, :cond_0

    sget v0, Landroid/widget/Scroller$MagneticScroller;->GRAVITY:F

    neg-float v0, v0

    :goto_0
    return v0

    :cond_0
    sget v0, Landroid/widget/Scroller$MagneticScroller;->GRAVITY:F

    goto :goto_0
.end method

.method static initializeFromContext(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 391
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x4320

    mul-float v0, v1, v2

    .line 392
    .local v0, ppi:F
    const v1, 0x43c10b3d

    mul-float/2addr v1, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v2

    mul-float/2addr v1, v2

    sput v1, Landroid/widget/Scroller$MagneticScroller;->GRAVITY:F

    .line 396
    return-void
.end method


# virtual methods
.method continueWhenFinished()Z
    .locals 1

    .prologue
    .line 515
    const/4 v0, 0x0

    return v0
.end method

.method extendDuration(I)V
    .locals 5
    .parameter "extend"

    .prologue
    .line 524
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    .line 525
    .local v1, time:J
    iget-wide v3, p0, Landroid/widget/Scroller$MagneticScroller;->mStartTime:J

    sub-long v3, v1, v3

    long-to-int v0, v3

    .line 526
    .local v0, elapsedTime:I
    add-int v3, v0, p1

    iput v3, p0, Landroid/widget/Scroller$MagneticScroller;->mDuration:I

    .line 527
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/widget/Scroller$MagneticScroller;->mFinished:Z

    .line 528
    return-void
.end method

.method finish()V
    .locals 1

    .prologue
    .line 508
    iget v0, p0, Landroid/widget/Scroller$MagneticScroller;->mFinal:I

    iput v0, p0, Landroid/widget/Scroller$MagneticScroller;->mCurrentPosition:I

    .line 511
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Scroller$MagneticScroller;->mFinished:Z

    .line 512
    return-void
.end method

.method fling(IIII)V
    .locals 3
    .parameter "start"
    .parameter "velocity"
    .parameter "min"
    .parameter "max"

    .prologue
    const/4 v2, 0x0

    .line 468
    iput-boolean v2, p0, Landroid/widget/Scroller$MagneticScroller;->mFinished:Z

    .line 470
    iput p1, p0, Landroid/widget/Scroller$MagneticScroller;->mStart:I

    .line 471
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/Scroller$MagneticScroller;->mStartTime:J

    .line 473
    iput p2, p0, Landroid/widget/Scroller$MagneticScroller;->mVelocity:I

    .line 475
    invoke-static {p2}, Landroid/widget/Scroller$MagneticScroller;->getDeceleration(I)F

    move-result v0

    iput v0, p0, Landroid/widget/Scroller$MagneticScroller;->mDeceleration:F

    .line 478
    iget v0, p0, Landroid/widget/Scroller$MagneticScroller;->mStart:I

    if-ge v0, p3, :cond_1

    .line 479
    iput v2, p0, Landroid/widget/Scroller$MagneticScroller;->mDuration:I

    .line 480
    iput p3, p0, Landroid/widget/Scroller$MagneticScroller;->mFinal:I

    .line 505
    :cond_0
    :goto_0
    return-void

    .line 484
    :cond_1
    iget v0, p0, Landroid/widget/Scroller$MagneticScroller;->mStart:I

    if-le v0, p4, :cond_2

    .line 485
    iput v2, p0, Landroid/widget/Scroller$MagneticScroller;->mDuration:I

    .line 486
    iput p4, p0, Landroid/widget/Scroller$MagneticScroller;->mFinal:I

    goto :goto_0

    .line 491
    :cond_2
    const/high16 v0, -0x3b86

    int-to-float v1, p2

    mul-float/2addr v0, v1

    iget v1, p0, Landroid/widget/Scroller$MagneticScroller;->mDeceleration:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/Scroller$MagneticScroller;->mDuration:I

    .line 493
    mul-int v0, p2, p2

    int-to-float v0, v0

    const/high16 v1, 0x4000

    iget v2, p0, Landroid/widget/Scroller$MagneticScroller;->mDeceleration:F

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sub-int v0, p1, v0

    iput v0, p0, Landroid/widget/Scroller$MagneticScroller;->mFinal:I

    .line 496
    iget v0, p0, Landroid/widget/Scroller$MagneticScroller;->mFinal:I

    if-ge v0, p3, :cond_3

    .line 497
    iput p3, p0, Landroid/widget/Scroller$MagneticScroller;->mFinal:I

    .line 498
    iget v0, p0, Landroid/widget/Scroller$MagneticScroller;->mStart:I

    iget v1, p0, Landroid/widget/Scroller$MagneticScroller;->mVelocity:I

    int-to-float v1, v1

    iget v2, p0, Landroid/widget/Scroller$MagneticScroller;->mDeceleration:F

    invoke-static {v0, p3, v1, v2}, Landroid/widget/Scroller$MagneticScroller;->computeDuration(IIFF)I

    move-result v0

    iput v0, p0, Landroid/widget/Scroller$MagneticScroller;->mDuration:I

    .line 501
    :cond_3
    iget v0, p0, Landroid/widget/Scroller$MagneticScroller;->mFinal:I

    if-le v0, p4, :cond_0

    .line 502
    iput p4, p0, Landroid/widget/Scroller$MagneticScroller;->mFinal:I

    .line 503
    iget v0, p0, Landroid/widget/Scroller$MagneticScroller;->mStart:I

    iget v1, p0, Landroid/widget/Scroller$MagneticScroller;->mVelocity:I

    int-to-float v1, v1

    iget v2, p0, Landroid/widget/Scroller$MagneticScroller;->mDeceleration:F

    invoke-static {v0, p4, v1, v2}, Landroid/widget/Scroller$MagneticScroller;->computeDuration(IIFF)I

    move-result v0

    iput v0, p0, Landroid/widget/Scroller$MagneticScroller;->mDuration:I

    goto :goto_0
.end method

.method setFinalPosition(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 519
    iput p1, p0, Landroid/widget/Scroller$MagneticScroller;->mFinal:I

    .line 520
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Scroller$MagneticScroller;->mFinished:Z

    .line 521
    return-void
.end method

.method startScroll(III)V
    .locals 3
    .parameter "start"
    .parameter "distance"
    .parameter "duration"

    .prologue
    const/4 v2, 0x0

    .line 454
    iput-boolean v2, p0, Landroid/widget/Scroller$MagneticScroller;->mFinished:Z

    .line 456
    iput p1, p0, Landroid/widget/Scroller$MagneticScroller;->mStart:I

    .line 457
    add-int v0, p1, p2

    iput v0, p0, Landroid/widget/Scroller$MagneticScroller;->mFinal:I

    .line 459
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/Scroller$MagneticScroller;->mStartTime:J

    .line 460
    iput p3, p0, Landroid/widget/Scroller$MagneticScroller;->mDuration:I

    .line 463
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/Scroller$MagneticScroller;->mDeceleration:F

    .line 464
    iput v2, p0, Landroid/widget/Scroller$MagneticScroller;->mVelocity:I

    .line 465
    return-void
.end method

.method update()Z
    .locals 9

    .prologue
    .line 412
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    .line 413
    .local v4, time:J
    iget-wide v6, p0, Landroid/widget/Scroller$MagneticScroller;->mStartTime:J

    sub-long v1, v4, v6

    .line 415
    .local v1, duration:J
    iget v6, p0, Landroid/widget/Scroller$MagneticScroller;->mDuration:I

    int-to-long v6, v6

    cmp-long v6, v1, v6

    if-lez v6, :cond_0

    .line 416
    const/4 v6, 0x0

    .line 424
    :goto_0
    return v6

    .line 419
    :cond_0
    long-to-float v6, v1

    const/high16 v7, 0x447a

    div-float v3, v6, v7

    .line 420
    .local v3, t:F
    iget v6, p0, Landroid/widget/Scroller$MagneticScroller;->mVelocity:I

    int-to-float v6, v6

    iget v7, p0, Landroid/widget/Scroller$MagneticScroller;->mDeceleration:F

    mul-float/2addr v7, v3

    add-float/2addr v6, v7

    iput v6, p0, Landroid/widget/Scroller$MagneticScroller;->mCurrVelocity:F

    .line 421
    iget v6, p0, Landroid/widget/Scroller$MagneticScroller;->mVelocity:I

    int-to-float v6, v6

    mul-float/2addr v6, v3

    iget v7, p0, Landroid/widget/Scroller$MagneticScroller;->mDeceleration:F

    mul-float/2addr v7, v3

    mul-float/2addr v7, v3

    const/high16 v8, 0x4000

    div-float/2addr v7, v8

    add-float v0, v6, v7

    .line 422
    .local v0, distance:F
    iget v6, p0, Landroid/widget/Scroller$MagneticScroller;->mStart:I

    float-to-int v7, v0

    add-int/2addr v6, v7

    iput v6, p0, Landroid/widget/Scroller$MagneticScroller;->mCurrentPosition:I

    .line 424
    const/4 v6, 0x1

    goto :goto_0
.end method

.method updateScroll(F)V
    .locals 3
    .parameter "q"

    .prologue
    .line 403
    iget v0, p0, Landroid/widget/Scroller$MagneticScroller;->mStart:I

    iget v1, p0, Landroid/widget/Scroller$MagneticScroller;->mFinal:I

    iget v2, p0, Landroid/widget/Scroller$MagneticScroller;->mStart:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/widget/Scroller$MagneticScroller;->mCurrentPosition:I

    .line 404
    return-void
.end method
