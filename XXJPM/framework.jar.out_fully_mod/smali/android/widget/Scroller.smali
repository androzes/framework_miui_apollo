.class public Landroid/widget/Scroller;
.super Ljava/lang/Object;
.source "Scroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Scroller$MagneticScroller;
    }
.end annotation


# static fields
.field private static final DEFAULT_DURATION:I = 0xfa

.field private static final FLING_MODE:I = 0x1

.field private static final SCROLL_MODE:I = 0x0

.field private static VISCOUS_FLUID_NORMALIZE:F = 0.0f

.field private static final VISCOUS_FLUID_SCALE:F = 8.0f


# instance fields
.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private mMode:I

.field private mScrollerX:Landroid/widget/Scroller$MagneticScroller;

.field private mScrollerY:Landroid/widget/Scroller$MagneticScroller;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f80

    .line 52
    sput v1, Landroid/widget/Scroller;->VISCOUS_FLUID_NORMALIZE:F

    .line 53
    invoke-static {v1}, Landroid/widget/Scroller;->viscousFluid(F)F

    move-result v0

    div-float v0, v1, v0

    sput v0, Landroid/widget/Scroller;->VISCOUS_FLUID_NORMALIZE:F

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 1
    .parameter "context"
    .parameter "interpolator"

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Landroid/widget/Scroller$MagneticScroller;

    invoke-direct {v0}, Landroid/widget/Scroller$MagneticScroller;-><init>()V

    iput-object v0, p0, Landroid/widget/Scroller;->mScrollerX:Landroid/widget/Scroller$MagneticScroller;

    .line 69
    new-instance v0, Landroid/widget/Scroller$MagneticScroller;

    invoke-direct {v0}, Landroid/widget/Scroller$MagneticScroller;-><init>()V

    iput-object v0, p0, Landroid/widget/Scroller;->mScrollerY:Landroid/widget/Scroller$MagneticScroller;

    .line 70
    invoke-static {p1}, Landroid/widget/Scroller$MagneticScroller;->initializeFromContext(Landroid/content/Context;)V

    .line 72
    iput-object p2, p0, Landroid/widget/Scroller;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 73
    return-void
.end method

.method static viscousFluid(F)F
    .locals 4
    .parameter "x"

    .prologue
    const/high16 v3, 0x3f80

    .line 289
    const/high16 v1, 0x4100

    mul-float/2addr p0, v1

    .line 290
    cmpg-float v1, p0, v3

    if-gez v1, :cond_0

    .line 291
    neg-float v1, p0

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    double-to-float v1, v1

    sub-float v1, v3, v1

    sub-float/2addr p0, v1

    .line 297
    :goto_0
    sget v1, Landroid/widget/Scroller;->VISCOUS_FLUID_NORMALIZE:F

    mul-float/2addr p0, v1

    .line 298
    return p0

    .line 293
    :cond_0
    const v0, 0x3ebc5ab2

    .line 294
    .local v0, start:F
    sub-float v1, v3, p0

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    double-to-float v1, v1

    sub-float p0, v3, v1

    .line 295
    sub-float v1, v3, v0

    mul-float/2addr v1, p0

    add-float p0, v0, v1

    goto :goto_0
.end method


# virtual methods
.method public abortAnimation()V
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Landroid/widget/Scroller;->mScrollerX:Landroid/widget/Scroller$MagneticScroller;

    invoke-virtual {v0}, Landroid/widget/Scroller$MagneticScroller;->finish()V

    .line 310
    iget-object v0, p0, Landroid/widget/Scroller;->mScrollerY:Landroid/widget/Scroller$MagneticScroller;

    invoke-virtual {v0}, Landroid/widget/Scroller$MagneticScroller;->finish()V

    .line 311
    return-void
.end method

.method public computeScrollOffset()Z
    .locals 8

    .prologue
    .line 174
    invoke-virtual {p0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 175
    const/4 v6, 0x0

    .line 221
    :goto_0
    return v6

    .line 178
    :cond_0
    iget v6, p0, Landroid/widget/Scroller;->mMode:I

    packed-switch v6, :pswitch_data_0

    .line 221
    :cond_1
    :goto_1
    const/4 v6, 0x1

    goto :goto_0

    .line 180
    :pswitch_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    .line 183
    .local v4, time:J
    iget-object v6, p0, Landroid/widget/Scroller;->mScrollerX:Landroid/widget/Scroller$MagneticScroller;

    iget-wide v6, v6, Landroid/widget/Scroller$MagneticScroller;->mStartTime:J

    sub-long v1, v4, v6

    .line 185
    .local v1, elapsedTime:J
    iget-object v6, p0, Landroid/widget/Scroller;->mScrollerX:Landroid/widget/Scroller$MagneticScroller;

    iget v0, v6, Landroid/widget/Scroller$MagneticScroller;->mDuration:I

    .line 186
    .local v0, duration:I
    int-to-long v6, v0

    cmp-long v6, v1, v6

    if-gez v6, :cond_3

    .line 187
    long-to-float v6, v1

    int-to-float v7, v0

    div-float v3, v6, v7

    .line 189
    .local v3, q:F
    iget-object v6, p0, Landroid/widget/Scroller;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v6, :cond_2

    .line 190
    invoke-static {v3}, Landroid/widget/Scroller;->viscousFluid(F)F

    move-result v3

    .line 194
    :goto_2
    iget-object v6, p0, Landroid/widget/Scroller;->mScrollerX:Landroid/widget/Scroller$MagneticScroller;

    invoke-virtual {v6, v3}, Landroid/widget/Scroller$MagneticScroller;->updateScroll(F)V

    .line 195
    iget-object v6, p0, Landroid/widget/Scroller;->mScrollerY:Landroid/widget/Scroller$MagneticScroller;

    invoke-virtual {v6, v3}, Landroid/widget/Scroller$MagneticScroller;->updateScroll(F)V

    goto :goto_1

    .line 192
    :cond_2
    iget-object v6, p0, Landroid/widget/Scroller;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v6, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    goto :goto_2

    .line 197
    .end local v3           #q:F
    :cond_3
    invoke-virtual {p0}, Landroid/widget/Scroller;->abortAnimation()V

    goto :goto_1

    .line 202
    .end local v0           #duration:I
    .end local v1           #elapsedTime:J
    .end local v4           #time:J
    :pswitch_1
    iget-object v6, p0, Landroid/widget/Scroller;->mScrollerX:Landroid/widget/Scroller$MagneticScroller;

    iget-boolean v6, v6, Landroid/widget/Scroller$MagneticScroller;->mFinished:Z

    if-nez v6, :cond_4

    .line 203
    iget-object v6, p0, Landroid/widget/Scroller;->mScrollerX:Landroid/widget/Scroller$MagneticScroller;

    invoke-virtual {v6}, Landroid/widget/Scroller$MagneticScroller;->update()Z

    move-result v6

    if-nez v6, :cond_4

    .line 204
    iget-object v6, p0, Landroid/widget/Scroller;->mScrollerX:Landroid/widget/Scroller$MagneticScroller;

    invoke-virtual {v6}, Landroid/widget/Scroller$MagneticScroller;->continueWhenFinished()Z

    move-result v6

    if-nez v6, :cond_4

    .line 205
    iget-object v6, p0, Landroid/widget/Scroller;->mScrollerX:Landroid/widget/Scroller$MagneticScroller;

    invoke-virtual {v6}, Landroid/widget/Scroller$MagneticScroller;->finish()V

    .line 210
    :cond_4
    iget-object v6, p0, Landroid/widget/Scroller;->mScrollerY:Landroid/widget/Scroller$MagneticScroller;

    iget-boolean v6, v6, Landroid/widget/Scroller$MagneticScroller;->mFinished:Z

    if-nez v6, :cond_1

    .line 211
    iget-object v6, p0, Landroid/widget/Scroller;->mScrollerY:Landroid/widget/Scroller$MagneticScroller;

    invoke-virtual {v6}, Landroid/widget/Scroller$MagneticScroller;->update()Z

    move-result v6

    if-nez v6, :cond_1

    .line 212
    iget-object v6, p0, Landroid/widget/Scroller;->mScrollerY:Landroid/widget/Scroller$MagneticScroller;

    invoke-virtual {v6}, Landroid/widget/Scroller$MagneticScroller;->continueWhenFinished()Z

    move-result v6

    if-nez v6, :cond_1

    .line 213
    iget-object v6, p0, Landroid/widget/Scroller;->mScrollerY:Landroid/widget/Scroller$MagneticScroller;

    invoke-virtual {v6}, Landroid/widget/Scroller$MagneticScroller;->finish()V

    goto :goto_1

    .line 178
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public extendDuration(I)V
    .locals 1
    .parameter "extend"

    .prologue
    .line 322
    iget-object v0, p0, Landroid/widget/Scroller;->mScrollerX:Landroid/widget/Scroller$MagneticScroller;

    invoke-virtual {v0, p1}, Landroid/widget/Scroller$MagneticScroller;->extendDuration(I)V

    .line 323
    iget-object v0, p0, Landroid/widget/Scroller;->mScrollerY:Landroid/widget/Scroller$MagneticScroller;

    invoke-virtual {v0, p1}, Landroid/widget/Scroller$MagneticScroller;->extendDuration(I)V

    .line 324
    return-void
.end method

.method public fling(IIIIIIII)V
    .locals 1
    .parameter "startX"
    .parameter "startY"
    .parameter "velocityX"
    .parameter "velocityY"
    .parameter "minX"
    .parameter "maxX"
    .parameter "minY"
    .parameter "maxY"

    .prologue
    .line 283
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/Scroller;->mMode:I

    .line 284
    iget-object v0, p0, Landroid/widget/Scroller;->mScrollerX:Landroid/widget/Scroller$MagneticScroller;

    invoke-virtual {v0, p1, p3, p5, p6}, Landroid/widget/Scroller$MagneticScroller;->fling(IIII)V

    .line 285
    iget-object v0, p0, Landroid/widget/Scroller;->mScrollerY:Landroid/widget/Scroller$MagneticScroller;

    invoke-virtual {v0, p2, p4, p7, p8}, Landroid/widget/Scroller$MagneticScroller;->fling(IIII)V

    .line 286
    return-void
.end method

.method public final forceFinished(Z)V
    .locals 2
    .parameter "finished"

    .prologue
    .line 91
    iget-object v0, p0, Landroid/widget/Scroller;->mScrollerX:Landroid/widget/Scroller$MagneticScroller;

    iget-object v1, p0, Landroid/widget/Scroller;->mScrollerY:Landroid/widget/Scroller$MagneticScroller;

    iput-boolean p1, v1, Landroid/widget/Scroller$MagneticScroller;->mFinished:Z

    iput-boolean p1, v0, Landroid/widget/Scroller$MagneticScroller;->mFinished:Z

    .line 92
    return-void
.end method

.method public getCurrVelocity()F
    .locals 3

    .prologue
    .line 128
    iget-object v1, p0, Landroid/widget/Scroller;->mScrollerX:Landroid/widget/Scroller$MagneticScroller;

    iget v1, v1, Landroid/widget/Scroller$MagneticScroller;->mCurrVelocity:F

    iget-object v2, p0, Landroid/widget/Scroller;->mScrollerX:Landroid/widget/Scroller$MagneticScroller;

    iget v2, v2, Landroid/widget/Scroller$MagneticScroller;->mCurrVelocity:F

    mul-float v0, v1, v2

    .line 129
    .local v0, squaredNorm:F
    iget-object v1, p0, Landroid/widget/Scroller;->mScrollerY:Landroid/widget/Scroller$MagneticScroller;

    iget v1, v1, Landroid/widget/Scroller$MagneticScroller;->mCurrVelocity:F

    iget-object v2, p0, Landroid/widget/Scroller;->mScrollerY:Landroid/widget/Scroller$MagneticScroller;

    iget v2, v2, Landroid/widget/Scroller$MagneticScroller;->mCurrVelocity:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 130
    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v1

    return v1
.end method

.method public final getCurrX()I
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Landroid/widget/Scroller;->mScrollerX:Landroid/widget/Scroller$MagneticScroller;

    iget v0, v0, Landroid/widget/Scroller$MagneticScroller;->mCurrentPosition:I

    return v0
.end method

.method public final getCurrY()I
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Landroid/widget/Scroller;->mScrollerY:Landroid/widget/Scroller$MagneticScroller;

    iget v0, v0, Landroid/widget/Scroller$MagneticScroller;->mCurrentPosition:I

    return v0
.end method

.method public final getDuration()I
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Landroid/widget/Scroller;->mScrollerX:Landroid/widget/Scroller$MagneticScroller;

    iget v0, v0, Landroid/widget/Scroller$MagneticScroller;->mDuration:I

    iget-object v1, p0, Landroid/widget/Scroller;->mScrollerY:Landroid/widget/Scroller$MagneticScroller;

    iget v1, v1, Landroid/widget/Scroller$MagneticScroller;->mDuration:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public final getFinalX()I
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Landroid/widget/Scroller;->mScrollerX:Landroid/widget/Scroller$MagneticScroller;

    iget v0, v0, Landroid/widget/Scroller$MagneticScroller;->mFinal:I

    return v0
.end method

.method public final getFinalY()I
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Landroid/widget/Scroller;->mScrollerY:Landroid/widget/Scroller$MagneticScroller;

    iget v0, v0, Landroid/widget/Scroller$MagneticScroller;->mFinal:I

    return v0
.end method

.method public final getStartX()I
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Landroid/widget/Scroller;->mScrollerX:Landroid/widget/Scroller$MagneticScroller;

    iget v0, v0, Landroid/widget/Scroller$MagneticScroller;->mStart:I

    return v0
.end method

.method public final getStartY()I
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Landroid/widget/Scroller;->mScrollerY:Landroid/widget/Scroller$MagneticScroller;

    iget v0, v0, Landroid/widget/Scroller$MagneticScroller;->mStart:I

    return v0
.end method

.method public final isFinished()Z
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Landroid/widget/Scroller;->mScrollerX:Landroid/widget/Scroller$MagneticScroller;

    iget-boolean v0, v0, Landroid/widget/Scroller$MagneticScroller;->mFinished:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Scroller;->mScrollerY:Landroid/widget/Scroller$MagneticScroller;

    iget-boolean v0, v0, Landroid/widget/Scroller$MagneticScroller;->mFinished:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFinalX(I)V
    .locals 1
    .parameter "newX"

    .prologue
    .line 345
    iget-object v0, p0, Landroid/widget/Scroller;->mScrollerX:Landroid/widget/Scroller$MagneticScroller;

    invoke-virtual {v0, p1}, Landroid/widget/Scroller$MagneticScroller;->setFinalPosition(I)V

    .line 346
    return-void
.end method

.method public setFinalY(I)V
    .locals 1
    .parameter "newY"

    .prologue
    .line 356
    iget-object v0, p0, Landroid/widget/Scroller;->mScrollerY:Landroid/widget/Scroller$MagneticScroller;

    invoke-virtual {v0, p1}, Landroid/widget/Scroller$MagneticScroller;->setFinalPosition(I)V

    .line 357
    return-void
.end method

.method public startScroll(IIII)V
    .locals 6
    .parameter "startX"
    .parameter "startY"
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 239
    const/16 v5, 0xfa

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 240
    return-void
.end method

.method public startScroll(IIIII)V
    .locals 1
    .parameter "startX"
    .parameter "startY"
    .parameter "dx"
    .parameter "dy"
    .parameter "duration"

    .prologue
    .line 256
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/Scroller;->mMode:I

    .line 257
    iget-object v0, p0, Landroid/widget/Scroller;->mScrollerX:Landroid/widget/Scroller$MagneticScroller;

    invoke-virtual {v0, p1, p3, p5}, Landroid/widget/Scroller$MagneticScroller;->startScroll(III)V

    .line 258
    iget-object v0, p0, Landroid/widget/Scroller;->mScrollerY:Landroid/widget/Scroller$MagneticScroller;

    invoke-virtual {v0, p2, p4, p5}, Landroid/widget/Scroller$MagneticScroller;->startScroll(III)V

    .line 259
    return-void
.end method

.method public timePassed()I
    .locals 8

    .prologue
    .line 332
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    .line 333
    .local v2, time:J
    iget-object v4, p0, Landroid/widget/Scroller;->mScrollerX:Landroid/widget/Scroller$MagneticScroller;

    iget-wide v4, v4, Landroid/widget/Scroller$MagneticScroller;->mStartTime:J

    iget-object v6, p0, Landroid/widget/Scroller;->mScrollerY:Landroid/widget/Scroller$MagneticScroller;

    iget-wide v6, v6, Landroid/widget/Scroller$MagneticScroller;->mStartTime:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 334
    .local v0, startTime:J
    sub-long v4, v2, v0

    long-to-int v4, v4

    return v4
.end method
