.class public Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;
.super Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;
.source "TFAnimatedListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemustech/tiffany/widget/TFAnimatedListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TranslateItemAnimation"
.end annotation


# instance fields
.field mAnchorDeltaX:I

.field mAnchorDeltaY:I

.field mAnchorX:I

.field mAnchorY:I

.field mDelayTime:I

.field mDeltaX:I

.field mDeltaY:I

.field mDuration:I

.field mOffsetXDest:I

.field mOffsetYDest:I

.field mProgress:F

.field private mProgressWithoutDelay:F

.field mStartTime:J

.field mTmpRect:Landroid/graphics/Rect;

.field mXSpeedFactor:F

.field mYSpeedFactor:F


# direct methods
.method public constructor <init>(Z)V
    .locals 2
    .parameter "retainOnFinish"

    .prologue
    const/high16 v1, 0x3f80

    const/4 v0, 0x0

    .line 222
    invoke-direct {p0, v0, p1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;-><init>(IZ)V

    .line 195
    iput v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mOffsetXDest:I

    .line 196
    iput v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mOffsetYDest:I

    .line 197
    iput v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mDelayTime:I

    .line 198
    iput v1, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mXSpeedFactor:F

    .line 199
    iput v1, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mYSpeedFactor:F

    .line 210
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mTmpRect:Landroid/graphics/Rect;

    .line 223
    return-void
.end method


# virtual methods
.method public computeAnimation(J)V
    .locals 6
    .parameter "curUpTime"

    .prologue
    const/high16 v5, 0x3f80

    .line 323
    iget-wide v2, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mStartTime:J

    sub-long v0, p1, v2

    .line 324
    .local v0, elapsed:J
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mDelayTime:I

    if-lez v2, :cond_3

    .line 325
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mDelayTime:I

    int-to-long v2, v2

    cmp-long v2, v2, v0

    if-lez v2, :cond_2

    .line 326
    const/4 v2, 0x0

    iput v2, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mProgress:F

    .line 334
    :goto_0
    long-to-float v2, v0

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mDuration:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mProgressWithoutDelay:F

    .line 336
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mProgress:F

    cmpl-float v2, v2, v5

    if-lez v2, :cond_0

    iput v5, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mProgress:F

    .line 337
    :cond_0
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mProgressWithoutDelay:F

    cmpl-float v2, v2, v5

    if-lez v2, :cond_1

    iput v5, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mProgressWithoutDelay:F

    .line 338
    :cond_1
    return-void

    .line 328
    :cond_2
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mDelayTime:I

    int-to-long v2, v2

    sub-long v2, v0, v2

    long-to-float v2, v2

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mDuration:I

    iget v4, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mDelayTime:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mProgress:F

    goto :goto_0

    .line 331
    :cond_3
    long-to-float v2, v0

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mDuration:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mProgress:F

    goto :goto_0
.end method

.method public delay(I)V
    .locals 0
    .parameter "timeInMillisec"

    .prologue
    .line 274
    iput p1, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mDelayTime:I

    .line 275
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/view/View;)V
    .locals 6
    .parameter "canvas"
    .parameter "child"

    .prologue
    const/4 v3, 0x0

    const/high16 v5, 0x3f80

    .line 401
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 402
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mProgress:F

    cmpl-float v1, v1, v5

    if-lez v1, :cond_0

    iput v5, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mProgress:F

    .line 403
    :cond_0
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mProgressWithoutDelay:F

    cmpl-float v1, v1, v5

    if-lez v1, :cond_1

    iput v5, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mProgressWithoutDelay:F

    .line 405
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 406
    .local v0, save:I
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 407
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v3, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 409
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mOffsetXDest:I

    int-to-float v1, v1

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mDeltaX:I

    int-to-float v2, v2

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mProgress:F

    sub-float v3, v5, v3

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mOffsetYDest:I

    int-to-float v2, v2

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mDeltaY:I

    int-to-float v3, v3

    iget v4, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mProgress:F

    sub-float v4, v5, v4

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 410
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mAnchorX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mAnchorDeltaX:I

    int-to-float v2, v2

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mProgressWithoutDelay:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mAnchorY:I

    int-to-float v2, v2

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mAnchorDeltaY:I

    int-to-float v3, v3

    iget v4, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mProgressWithoutDelay:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 413
    invoke-virtual {p2, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 415
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 416
    return-void
.end method

.method public getDestOffsetX()I
    .locals 1

    .prologue
    .line 235
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mOffsetXDest:I

    return v0
.end method

.method public getDestOffsetY()I
    .locals 1

    .prologue
    .line 229
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mOffsetYDest:I

    return v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 396
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mDuration:I

    return v0
.end method

.method public getProgress()F
    .locals 1

    .prologue
    .line 363
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mProgress:F

    return v0
.end method

.method public getProgressWithoutDelay()F
    .locals 1

    .prologue
    .line 373
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mProgressWithoutDelay:F

    return v0
.end method

.method public getTransformation(Landroid/view/animation/Transformation;)V
    .locals 6
    .parameter "outTransform"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/high16 v5, 0x3f80

    .line 349
    sget v1, Landroid/view/animation/Transformation;->TYPE_MATRIX:I

    invoke-virtual {p1, v1}, Landroid/view/animation/Transformation;->setTransformationType(I)V

    .line 350
    invoke-virtual {p1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 351
    .local v0, m:Landroid/graphics/Matrix;
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 352
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mOffsetXDest:I

    int-to-float v1, v1

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mDeltaX:I

    int-to-float v2, v2

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mProgress:F

    sub-float v3, v5, v3

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mOffsetYDest:I

    int-to-float v2, v2

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mDeltaY:I

    int-to-float v3, v3

    iget v4, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mProgress:F

    sub-float v4, v5, v4

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 354
    return-void
.end method

.method public isFinished()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 305
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mDuration:I

    if-nez v2, :cond_1

    .line 306
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mDelayTime:I

    if-nez v2, :cond_0

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mDeltaX:I

    if-nez v2, :cond_0

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mDeltaY:I

    if-nez v2, :cond_0

    move v2, v7

    .line 312
    :goto_0
    return v2

    :cond_0
    move v2, v6

    .line 306
    goto :goto_0

    .line 308
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 310
    .local v0, currentTime:J
    iget-wide v2, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mStartTime:J

    iget v4, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mDuration:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    cmp-long v2, v2, v0

    if-gtz v2, :cond_2

    move v2, v7

    goto :goto_0

    :cond_2
    move v2, v6

    .line 312
    goto :goto_0
.end method

.method public move(IIII)V
    .locals 0
    .parameter "anchorX"
    .parameter "anchorDeltaX"
    .parameter "anchorY"
    .parameter "anchorDeltaY"

    .prologue
    .line 263
    iput p1, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mAnchorX:I

    .line 264
    iput p3, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mAnchorY:I

    .line 265
    iput p2, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mAnchorDeltaX:I

    .line 266
    iput p4, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mAnchorDeltaY:I

    .line 267
    return-void
.end method

.method public setXSpeedFactor(F)V
    .locals 1
    .parameter "xFactor"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 285
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iput p1, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mXSpeedFactor:F

    .line 286
    :cond_0
    return-void
.end method

.method public setYSpeedFactor(F)V
    .locals 1
    .parameter "yFactor"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 296
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iput p1, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mYSpeedFactor:F

    .line 297
    :cond_0
    return-void
.end method

.method public start(JI)V
    .locals 1
    .parameter "startTime"
    .parameter "duration"

    .prologue
    .line 383
    iput-wide p1, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mStartTime:J

    .line 384
    if-nez p3, :cond_0

    .line 385
    const/16 v0, 0x12c

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mDuration:I

    .line 388
    :goto_0
    return-void

    .line 387
    :cond_0
    iput p3, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mDuration:I

    goto :goto_0
.end method

.method public translate(IIII)V
    .locals 2
    .parameter "startOffsetX"
    .parameter "deltaX"
    .parameter "startOffsetY"
    .parameter "deltaY"

    .prologue
    .line 247
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mOffsetXDest:I

    add-int v1, p1, p2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mOffsetXDest:I

    .line 248
    iput p2, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mDeltaX:I

    .line 249
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mOffsetYDest:I

    add-int v1, p3, p4

    add-int/2addr v0, v1

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mOffsetYDest:I

    .line 250
    iput p4, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mDeltaY:I

    .line 251
    return-void
.end method
