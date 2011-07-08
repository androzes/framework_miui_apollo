.class public Landroid/widget/Scroller;
.super Ljava/lang/Object;
.source "Scroller.java"


# static fields
.field private static final DEFAULT_DURATION:I = 0xfa

.field private static final FLING_MODE:I = 0x1

.field private static final SCROLL_MODE:I


# instance fields
.field private mCoeffX:F

.field private mCoeffY:F

.field private mCurrX:I

.field private mCurrY:I

.field private final mDeceleration:F

.field private mDeltaX:F

.field private mDeltaY:F

.field private mDuration:I

.field private mDurationReciprocal:F

.field private mFinalX:I

.field private mFinalY:I

.field private mFinished:Z

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mMaxX:I

.field private mMaxY:I

.field private mMinX:I

.field private mMinY:I

.field private mMode:I

.field private mStartTime:J

.field private mStartX:I

.field private mStartY:I

.field private mVelocity:F

.field private mViscousFluidNormalize:F

.field private mViscousFluidScale:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 3
    .parameter "context"
    .parameter "interpolator"

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/Scroller;->mCoeffX:F

    .line 59
    const/high16 v1, 0x3f80

    iput v1, p0, Landroid/widget/Scroller;->mCoeffY:F

    .line 80
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/Scroller;->mFinished:Z

    .line 81
    iput-object p2, p0, Landroid/widget/Scroller;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x4320

    mul-float v0, v1, v2

    .line 83
    .local v0, ppi:F
    const v1, 0x43c10b3d

    mul-float/2addr v1, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v2

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/widget/Scroller;->mDeceleration:F

    .line 87
    return-void
.end method

.method private viscousFluid(F)F
    .locals 4
    .parameter "x"

    .prologue
    const/high16 v3, 0x3f80

    .line 342
    iget v1, p0, Landroid/widget/Scroller;->mViscousFluidScale:F

    mul-float/2addr p1, v1

    .line 343
    cmpg-float v1, p1, v3

    if-gez v1, :cond_0

    .line 344
    neg-float v1, p1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    double-to-float v1, v1

    sub-float v1, v3, v1

    sub-float/2addr p1, v1

    .line 350
    :goto_0
    iget v1, p0, Landroid/widget/Scroller;->mViscousFluidNormalize:F

    mul-float/2addr p1, v1

    .line 351
    return p1

    .line 346
    :cond_0
    const v0, 0x3ebc5ab2

    .line 347
    .local v0, start:F
    sub-float v1, v3, p1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    double-to-float v1, v1

    sub-float p1, v3, v1

    .line 348
    sub-float v1, v3, v0

    mul-float/2addr v1, p1

    add-float p1, v0, v1

    goto :goto_0
.end method


# virtual methods
.method public abortAnimation()V
    .locals 1

    .prologue
    .line 362
    iget v0, p0, Landroid/widget/Scroller;->mFinalX:I

    iput v0, p0, Landroid/widget/Scroller;->mCurrX:I

    .line 363
    iget v0, p0, Landroid/widget/Scroller;->mFinalY:I

    iput v0, p0, Landroid/widget/Scroller;->mCurrY:I

    .line 364
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Scroller;->mFinished:Z

    .line 365
    return-void
.end method

.method public computeScrollOffset()Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 188
    iget-boolean v4, p0, Landroid/widget/Scroller;->mFinished:Z

    if-eqz v4, :cond_0

    .line 189
    const/4 v4, 0x0

    .line 230
    :goto_0
    return v4

    .line 192
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Landroid/widget/Scroller;->mStartTime:J

    sub-long/2addr v4, v6

    long-to-int v1, v4

    .line 194
    .local v1, timePassed:I
    iget v4, p0, Landroid/widget/Scroller;->mDuration:I

    if-ge v1, v4, :cond_2

    .line 195
    iget v4, p0, Landroid/widget/Scroller;->mMode:I

    packed-switch v4, :pswitch_data_0

    :goto_1
    move v4, v8

    .line 230
    goto :goto_0

    .line 197
    :pswitch_0
    int-to-float v4, v1

    iget v5, p0, Landroid/widget/Scroller;->mDurationReciprocal:F

    mul-float v3, v4, v5

    .line 199
    .local v3, x:F
    iget-object v4, p0, Landroid/widget/Scroller;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v4, :cond_1

    .line 200
    invoke-direct {p0, v3}, Landroid/widget/Scroller;->viscousFluid(F)F

    move-result v3

    .line 204
    :goto_2
    iget v4, p0, Landroid/widget/Scroller;->mStartX:I

    iget v5, p0, Landroid/widget/Scroller;->mDeltaX:F

    mul-float/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Landroid/widget/Scroller;->mCurrX:I

    .line 205
    iget v4, p0, Landroid/widget/Scroller;->mStartY:I

    iget v5, p0, Landroid/widget/Scroller;->mDeltaY:F

    mul-float/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Landroid/widget/Scroller;->mCurrY:I

    goto :goto_1

    .line 202
    :cond_1
    iget-object v4, p0, Landroid/widget/Scroller;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v4, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    goto :goto_2

    .line 208
    .end local v3           #x:F
    :pswitch_1
    int-to-float v4, v1

    const/high16 v5, 0x447a

    div-float v2, v4, v5

    .line 209
    .local v2, timePassedSeconds:F
    iget v4, p0, Landroid/widget/Scroller;->mVelocity:F

    mul-float/2addr v4, v2

    iget v5, p0, Landroid/widget/Scroller;->mDeceleration:F

    mul-float/2addr v5, v2

    mul-float/2addr v5, v2

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    sub-float v0, v4, v5

    .line 212
    .local v0, distance:F
    iget v4, p0, Landroid/widget/Scroller;->mStartX:I

    iget v5, p0, Landroid/widget/Scroller;->mCoeffX:F

    mul-float/2addr v5, v0

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Landroid/widget/Scroller;->mCurrX:I

    .line 214
    iget v4, p0, Landroid/widget/Scroller;->mCurrX:I

    iget v5, p0, Landroid/widget/Scroller;->mMaxX:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, p0, Landroid/widget/Scroller;->mCurrX:I

    .line 215
    iget v4, p0, Landroid/widget/Scroller;->mCurrX:I

    iget v5, p0, Landroid/widget/Scroller;->mMinX:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Landroid/widget/Scroller;->mCurrX:I

    .line 217
    iget v4, p0, Landroid/widget/Scroller;->mStartY:I

    iget v5, p0, Landroid/widget/Scroller;->mCoeffY:F

    mul-float/2addr v5, v0

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Landroid/widget/Scroller;->mCurrY:I

    .line 219
    iget v4, p0, Landroid/widget/Scroller;->mCurrY:I

    iget v5, p0, Landroid/widget/Scroller;->mMaxY:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, p0, Landroid/widget/Scroller;->mCurrY:I

    .line 220
    iget v4, p0, Landroid/widget/Scroller;->mCurrY:I

    iget v5, p0, Landroid/widget/Scroller;->mMinY:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Landroid/widget/Scroller;->mCurrY:I

    goto :goto_1

    .line 226
    .end local v0           #distance:F
    .end local v2           #timePassedSeconds:F
    :cond_2
    iget v4, p0, Landroid/widget/Scroller;->mFinalX:I

    iput v4, p0, Landroid/widget/Scroller;->mCurrX:I

    .line 227
    iget v4, p0, Landroid/widget/Scroller;->mFinalY:I

    iput v4, p0, Landroid/widget/Scroller;->mCurrY:I

    .line 228
    iput-boolean v8, p0, Landroid/widget/Scroller;->mFinished:Z

    goto/16 :goto_1

    .line 195
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public extendDuration(I)V
    .locals 3
    .parameter "extend"

    .prologue
    .line 376
    invoke-virtual {p0}, Landroid/widget/Scroller;->timePassed()I

    move-result v0

    .line 377
    .local v0, passed:I
    add-int v1, v0, p1

    iput v1, p0, Landroid/widget/Scroller;->mDuration:I

    .line 378
    const/high16 v1, 0x3f80

    iget v2, p0, Landroid/widget/Scroller;->mDuration:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Landroid/widget/Scroller;->mDurationReciprocal:F

    .line 379
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/Scroller;->mFinished:Z

    .line 380
    return-void
.end method

.method public fling(IIIIIIII)V
    .locals 6
    .parameter "startX"
    .parameter "startY"
    .parameter "velocityX"
    .parameter "velocityY"
    .parameter "minX"
    .parameter "maxX"
    .parameter "minY"
    .parameter "maxY"

    .prologue
    .line 304
    const/4 v2, 0x1

    iput v2, p0, Landroid/widget/Scroller;->mMode:I

    .line 305
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/widget/Scroller;->mFinished:Z

    .line 307
    int-to-double v2, p3

    int-to-double v4, p4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v1, v2

    .line 309
    .local v1, velocity:F
    iput v1, p0, Landroid/widget/Scroller;->mVelocity:F

    .line 310
    const/high16 v2, 0x447a

    mul-float/2addr v2, v1

    iget v3, p0, Landroid/widget/Scroller;->mDeceleration:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Landroid/widget/Scroller;->mDuration:I

    .line 312
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/widget/Scroller;->mStartTime:J

    .line 313
    iput p1, p0, Landroid/widget/Scroller;->mStartX:I

    .line 314
    iput p2, p0, Landroid/widget/Scroller;->mStartY:I

    .line 316
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-nez v2, :cond_0

    const/high16 v2, 0x3f80

    :goto_0
    iput v2, p0, Landroid/widget/Scroller;->mCoeffX:F

    .line 317
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-nez v2, :cond_1

    const/high16 v2, 0x3f80

    :goto_1
    iput v2, p0, Landroid/widget/Scroller;->mCoeffY:F

    .line 319
    mul-float v2, v1, v1

    const/high16 v3, 0x4000

    iget v4, p0, Landroid/widget/Scroller;->mDeceleration:F

    mul-float/2addr v3, v4

    div-float/2addr v2, v3

    float-to-int v0, v2

    .line 321
    .local v0, totalDistance:I
    iput p5, p0, Landroid/widget/Scroller;->mMinX:I

    .line 322
    iput p6, p0, Landroid/widget/Scroller;->mMaxX:I

    .line 323
    iput p7, p0, Landroid/widget/Scroller;->mMinY:I

    .line 324
    iput p8, p0, Landroid/widget/Scroller;->mMaxY:I

    .line 327
    int-to-float v2, v0

    iget v3, p0, Landroid/widget/Scroller;->mCoeffX:F

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/2addr v2, p1

    iput v2, p0, Landroid/widget/Scroller;->mFinalX:I

    .line 329
    iget v2, p0, Landroid/widget/Scroller;->mFinalX:I

    iget v3, p0, Landroid/widget/Scroller;->mMaxX:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Landroid/widget/Scroller;->mFinalX:I

    .line 330
    iget v2, p0, Landroid/widget/Scroller;->mFinalX:I

    iget v3, p0, Landroid/widget/Scroller;->mMinX:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Landroid/widget/Scroller;->mFinalX:I

    .line 332
    int-to-float v2, v0

    iget v3, p0, Landroid/widget/Scroller;->mCoeffY:F

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/2addr v2, p2

    iput v2, p0, Landroid/widget/Scroller;->mFinalY:I

    .line 334
    iget v2, p0, Landroid/widget/Scroller;->mFinalY:I

    iget v3, p0, Landroid/widget/Scroller;->mMaxY:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Landroid/widget/Scroller;->mFinalY:I

    .line 335
    iget v2, p0, Landroid/widget/Scroller;->mFinalY:I

    iget v3, p0, Landroid/widget/Scroller;->mMinY:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Landroid/widget/Scroller;->mFinalY:I

    .line 336
    return-void

    .line 316
    .end local v0           #totalDistance:I
    :cond_0
    int-to-float v2, p3

    div-float/2addr v2, v1

    goto :goto_0

    .line 317
    :cond_1
    int-to-float v2, p4

    div-float/2addr v2, v1

    goto :goto_1
.end method

.method public final forceFinished(Z)V
    .locals 0
    .parameter "finished"

    .prologue
    .line 105
    iput-boolean p1, p0, Landroid/widget/Scroller;->mFinished:Z

    .line 106
    return-void
.end method

.method public getCurrVelocity()F
    .locals 3

    .prologue
    .line 143
    iget v0, p0, Landroid/widget/Scroller;->mVelocity:F

    iget v1, p0, Landroid/widget/Scroller;->mDeceleration:F

    invoke-virtual {p0}, Landroid/widget/Scroller;->timePassed()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x44fa

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method public final getCurrX()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Landroid/widget/Scroller;->mCurrX:I

    return v0
.end method

.method public final getCurrY()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Landroid/widget/Scroller;->mCurrY:I

    return v0
.end method

.method public final getDuration()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Landroid/widget/Scroller;->mDuration:I

    return v0
.end method

.method public final getFinalX()I
    .locals 1

    .prologue
    .line 170
    iget v0, p0, Landroid/widget/Scroller;->mFinalX:I

    return v0
.end method

.method public final getFinalY()I
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Landroid/widget/Scroller;->mFinalY:I

    return v0
.end method

.method public final getStartX()I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Landroid/widget/Scroller;->mStartX:I

    return v0
.end method

.method public final getStartY()I
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Landroid/widget/Scroller;->mStartY:I

    return v0
.end method

.method public final isFinished()Z
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Landroid/widget/Scroller;->mFinished:Z

    return v0
.end method

.method public setFinalX(I)V
    .locals 2
    .parameter "newX"

    .prologue
    .line 399
    iput p1, p0, Landroid/widget/Scroller;->mFinalX:I

    .line 400
    iget v0, p0, Landroid/widget/Scroller;->mFinalX:I

    iget v1, p0, Landroid/widget/Scroller;->mStartX:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Landroid/widget/Scroller;->mDeltaX:F

    .line 401
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Scroller;->mFinished:Z

    .line 402
    return-void
.end method

.method public setFinalY(I)V
    .locals 2
    .parameter "newY"

    .prologue
    .line 412
    iput p1, p0, Landroid/widget/Scroller;->mFinalY:I

    .line 413
    iget v0, p0, Landroid/widget/Scroller;->mFinalY:I

    iget v1, p0, Landroid/widget/Scroller;->mStartY:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Landroid/widget/Scroller;->mDeltaY:F

    .line 414
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Scroller;->mFinished:Z

    .line 415
    return-void
.end method

.method public startScroll(IIII)V
    .locals 6
    .parameter "startX"
    .parameter "startY"
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 248
    const/16 v5, 0xfa

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 249
    return-void
.end method

.method public startScroll(IIIII)V
    .locals 3
    .parameter "startX"
    .parameter "startY"
    .parameter "dx"
    .parameter "dy"
    .parameter "duration"

    .prologue
    const/4 v0, 0x0

    const/high16 v2, 0x3f80

    .line 265
    iput v0, p0, Landroid/widget/Scroller;->mMode:I

    .line 266
    iput-boolean v0, p0, Landroid/widget/Scroller;->mFinished:Z

    .line 267
    iput p5, p0, Landroid/widget/Scroller;->mDuration:I

    .line 268
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/Scroller;->mStartTime:J

    .line 269
    iput p1, p0, Landroid/widget/Scroller;->mStartX:I

    .line 270
    iput p2, p0, Landroid/widget/Scroller;->mStartY:I

    .line 271
    add-int v0, p1, p3

    iput v0, p0, Landroid/widget/Scroller;->mFinalX:I

    .line 272
    add-int v0, p2, p4

    iput v0, p0, Landroid/widget/Scroller;->mFinalY:I

    .line 273
    int-to-float v0, p3

    iput v0, p0, Landroid/widget/Scroller;->mDeltaX:F

    .line 274
    int-to-float v0, p4

    iput v0, p0, Landroid/widget/Scroller;->mDeltaY:F

    .line 275
    iget v0, p0, Landroid/widget/Scroller;->mDuration:I

    int-to-float v0, v0

    div-float v0, v2, v0

    iput v0, p0, Landroid/widget/Scroller;->mDurationReciprocal:F

    .line 277
    const/high16 v0, 0x4100

    iput v0, p0, Landroid/widget/Scroller;->mViscousFluidScale:F

    .line 279
    iput v2, p0, Landroid/widget/Scroller;->mViscousFluidNormalize:F

    .line 280
    invoke-direct {p0, v2}, Landroid/widget/Scroller;->viscousFluid(F)F

    move-result v0

    div-float v0, v2, v0

    iput v0, p0, Landroid/widget/Scroller;->mViscousFluidNormalize:F

    .line 281
    return-void
.end method

.method public timePassed()I
    .locals 4

    .prologue
    .line 388
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/widget/Scroller;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method
