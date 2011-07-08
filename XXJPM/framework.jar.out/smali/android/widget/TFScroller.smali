.class Landroid/widget/TFScroller;
.super Ljava/lang/Object;
.source "AbsListView.java"


# static fields
.field private static DEBUG:Z = false

.field private static final DEFAULT_DURATION:I = 0xfa

.field private static final FLING_MODE:I = 0x1

.field private static final SCROLL_MODE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TFScroller"


# instance fields
.field private mCoeffX:F

.field private mCoeffY:F

.field private mCorrectionXDeceleration:F

.field private mCorrectionYDeceleration:F

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
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4600
    const/4 v0, 0x0

    sput-boolean v0, Landroid/widget/TFScroller;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 4643
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/TFScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 4644
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 1
    .parameter "context"
    .parameter "interpolator"

    .prologue
    .line 4651
    const/high16 v0, 0x3f80

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/TFScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;F)V

    .line 4652
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;F)V
    .locals 6
    .parameter "context"
    .parameter "interpolator"
    .parameter "viscousDecelerateFactor"

    .prologue
    const/high16 v5, 0x3f80

    const/4 v4, 0x0

    .line 4660
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4626
    iput v4, p0, Landroid/widget/TFScroller;->mCoeffX:F

    .line 4627
    iput v5, p0, Landroid/widget/TFScroller;->mCoeffY:F

    .line 4661
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/widget/TFScroller;->mFinished:Z

    .line 4662
    iput-object p2, p0, Landroid/widget/TFScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 4663
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x4320

    mul-float v0, v2, v3

    .line 4664
    .local v0, ppi:F
    cmpl-float v2, p3, v4

    if-lez v2, :cond_0

    move v1, p3

    .line 4666
    .local v1, vdf:F
    :goto_0
    const v2, 0x43c0e9ba

    mul-float/2addr v2, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v3

    mul-float/2addr v2, v3

    mul-float/2addr v2, v1

    iput v2, p0, Landroid/widget/TFScroller;->mDeceleration:F

    .line 4670
    return-void

    .end local v1           #vdf:F
    :cond_0
    move v1, v5

    .line 4664
    goto :goto_0
.end method

.method private viscousFluid(F)F
    .locals 4
    .parameter "x"

    .prologue
    const/high16 v3, 0x3f80

    .line 4927
    iget v1, p0, Landroid/widget/TFScroller;->mViscousFluidScale:F

    mul-float/2addr p1, v1

    .line 4928
    cmpg-float v1, p1, v3

    if-gez v1, :cond_0

    .line 4929
    neg-float v1, p1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    double-to-float v1, v1

    sub-float v1, v3, v1

    sub-float/2addr p1, v1

    .line 4935
    :goto_0
    iget v1, p0, Landroid/widget/TFScroller;->mViscousFluidNormalize:F

    mul-float/2addr p1, v1

    .line 4936
    return p1

    .line 4931
    :cond_0
    const v0, 0x3ebc5ab2

    .line 4932
    .local v0, start:F
    sub-float v1, v3, p1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    double-to-float v1, v1

    sub-float p1, v3, v1

    .line 4933
    sub-float v1, v3, v0

    mul-float/2addr v1, p1

    add-float p1, v0, v1

    goto :goto_0
.end method


# virtual methods
.method public abortAnimation()V
    .locals 1

    .prologue
    .line 4947
    iget v0, p0, Landroid/widget/TFScroller;->mFinalX:I

    iput v0, p0, Landroid/widget/TFScroller;->mCurrX:I

    .line 4948
    iget v0, p0, Landroid/widget/TFScroller;->mFinalY:I

    iput v0, p0, Landroid/widget/TFScroller;->mCurrY:I

    .line 4949
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TFScroller;->mFinished:Z

    .line 4950
    return-void
.end method

.method public computeScrollOffset()Z
    .locals 11

    .prologue
    const/high16 v10, 0x4000

    const/4 v9, 0x1

    .line 4760
    iget-boolean v5, p0, Landroid/widget/TFScroller;->mFinished:Z

    if-eqz v5, :cond_0

    .line 4761
    const/4 v5, 0x0

    .line 4815
    :goto_0
    return v5

    .line 4764
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Landroid/widget/TFScroller;->mStartTime:J

    sub-long/2addr v5, v7

    long-to-int v2, v5

    .line 4766
    .local v2, timePassed:I
    iget v5, p0, Landroid/widget/TFScroller;->mDuration:I

    if-ge v2, v5, :cond_3

    .line 4767
    iget v5, p0, Landroid/widget/TFScroller;->mMode:I

    packed-switch v5, :pswitch_data_0

    :cond_1
    :goto_1
    move v5, v9

    .line 4815
    goto :goto_0

    .line 4769
    :pswitch_0
    int-to-float v5, v2

    iget v6, p0, Landroid/widget/TFScroller;->mDurationReciprocal:F

    mul-float v4, v5, v6

    .line 4771
    .local v4, x:F
    iget-object v5, p0, Landroid/widget/TFScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v5, :cond_2

    .line 4772
    invoke-direct {p0, v4}, Landroid/widget/TFScroller;->viscousFluid(F)F

    move-result v4

    .line 4776
    :goto_2
    iget v5, p0, Landroid/widget/TFScroller;->mStartX:I

    iget v6, p0, Landroid/widget/TFScroller;->mDeltaX:F

    mul-float/2addr v6, v4

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, p0, Landroid/widget/TFScroller;->mCurrX:I

    .line 4777
    iget v5, p0, Landroid/widget/TFScroller;->mStartY:I

    iget v6, p0, Landroid/widget/TFScroller;->mDeltaY:F

    mul-float/2addr v6, v4

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, p0, Landroid/widget/TFScroller;->mCurrY:I

    .line 4778
    iget v5, p0, Landroid/widget/TFScroller;->mCurrX:I

    iget v6, p0, Landroid/widget/TFScroller;->mFinalX:I

    if-ne v5, v6, :cond_1

    iget v5, p0, Landroid/widget/TFScroller;->mCurrY:I

    iget v6, p0, Landroid/widget/TFScroller;->mFinalY:I

    if-ne v5, v6, :cond_1

    .line 4779
    iput-boolean v9, p0, Landroid/widget/TFScroller;->mFinished:Z

    goto :goto_1

    .line 4774
    :cond_2
    iget-object v5, p0, Landroid/widget/TFScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v5, v4}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    goto :goto_2

    .line 4783
    .end local v4           #x:F
    :pswitch_1
    int-to-float v5, v2

    const/high16 v6, 0x447a

    div-float v3, v5, v6

    .line 4784
    .local v3, timePassedSeconds:F
    iget v5, p0, Landroid/widget/TFScroller;->mVelocity:F

    mul-float/2addr v5, v3

    iget v6, p0, Landroid/widget/TFScroller;->mDeceleration:F

    iget v7, p0, Landroid/widget/TFScroller;->mCorrectionXDeceleration:F

    mul-float/2addr v6, v7

    mul-float/2addr v6, v3

    mul-float/2addr v6, v3

    div-float/2addr v6, v10

    sub-float v0, v5, v6

    .line 4788
    .local v0, distanceX:F
    iget v5, p0, Landroid/widget/TFScroller;->mStartX:I

    iget v6, p0, Landroid/widget/TFScroller;->mCoeffX:F

    mul-float/2addr v6, v0

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, p0, Landroid/widget/TFScroller;->mCurrX:I

    .line 4791
    iget v5, p0, Landroid/widget/TFScroller;->mCurrX:I

    iget v6, p0, Landroid/widget/TFScroller;->mMaxX:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, p0, Landroid/widget/TFScroller;->mCurrX:I

    .line 4792
    iget v5, p0, Landroid/widget/TFScroller;->mCurrX:I

    iget v6, p0, Landroid/widget/TFScroller;->mMinX:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Landroid/widget/TFScroller;->mCurrX:I

    .line 4794
    iget v5, p0, Landroid/widget/TFScroller;->mVelocity:F

    mul-float/2addr v5, v3

    iget v6, p0, Landroid/widget/TFScroller;->mDeceleration:F

    iget v7, p0, Landroid/widget/TFScroller;->mCorrectionYDeceleration:F

    mul-float/2addr v6, v7

    mul-float/2addr v6, v3

    mul-float/2addr v6, v3

    div-float/2addr v6, v10

    sub-float v1, v5, v6

    .line 4798
    .local v1, distanceY:F
    iget v5, p0, Landroid/widget/TFScroller;->mStartY:I

    iget v6, p0, Landroid/widget/TFScroller;->mCoeffY:F

    mul-float/2addr v6, v1

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, p0, Landroid/widget/TFScroller;->mCurrY:I

    .line 4801
    iget v5, p0, Landroid/widget/TFScroller;->mCurrY:I

    iget v6, p0, Landroid/widget/TFScroller;->mMaxY:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, p0, Landroid/widget/TFScroller;->mCurrY:I

    .line 4802
    iget v5, p0, Landroid/widget/TFScroller;->mCurrY:I

    iget v6, p0, Landroid/widget/TFScroller;->mMinY:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Landroid/widget/TFScroller;->mCurrY:I

    .line 4804
    iget v5, p0, Landroid/widget/TFScroller;->mCurrX:I

    iget v6, p0, Landroid/widget/TFScroller;->mFinalX:I

    if-ne v5, v6, :cond_1

    iget v5, p0, Landroid/widget/TFScroller;->mCurrY:I

    iget v6, p0, Landroid/widget/TFScroller;->mFinalY:I

    if-ne v5, v6, :cond_1

    .line 4805
    iput-boolean v9, p0, Landroid/widget/TFScroller;->mFinished:Z

    goto/16 :goto_1

    .line 4811
    .end local v0           #distanceX:F
    .end local v1           #distanceY:F
    .end local v3           #timePassedSeconds:F
    :cond_3
    iget v5, p0, Landroid/widget/TFScroller;->mFinalX:I

    iput v5, p0, Landroid/widget/TFScroller;->mCurrX:I

    .line 4812
    iget v5, p0, Landroid/widget/TFScroller;->mFinalY:I

    iput v5, p0, Landroid/widget/TFScroller;->mCurrY:I

    .line 4813
    iput-boolean v9, p0, Landroid/widget/TFScroller;->mFinished:Z

    goto/16 :goto_1

    .line 4767
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
    .line 4961
    invoke-virtual {p0}, Landroid/widget/TFScroller;->timePassed()I

    move-result v0

    .line 4962
    .local v0, passed:I
    add-int v1, v0, p1

    iput v1, p0, Landroid/widget/TFScroller;->mDuration:I

    .line 4963
    const/high16 v1, 0x3f80

    iget v2, p0, Landroid/widget/TFScroller;->mDuration:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Landroid/widget/TFScroller;->mDurationReciprocal:F

    .line 4964
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/TFScroller;->mFinished:Z

    .line 4965
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
    .line 4889
    const/4 v2, 0x1

    iput v2, p0, Landroid/widget/TFScroller;->mMode:I

    .line 4890
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/widget/TFScroller;->mFinished:Z

    .line 4892
    int-to-double v2, p3

    int-to-double v4, p4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v1, v2

    .line 4894
    .local v1, velocity:F
    iput v1, p0, Landroid/widget/TFScroller;->mVelocity:F

    .line 4895
    const/high16 v2, 0x447a

    mul-float/2addr v2, v1

    iget v3, p0, Landroid/widget/TFScroller;->mDeceleration:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Landroid/widget/TFScroller;->mDuration:I

    .line 4897
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/widget/TFScroller;->mStartTime:J

    .line 4898
    iput p1, p0, Landroid/widget/TFScroller;->mStartX:I

    .line 4899
    iput p2, p0, Landroid/widget/TFScroller;->mStartY:I

    .line 4901
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-nez v2, :cond_0

    const/high16 v2, 0x3f80

    :goto_0
    iput v2, p0, Landroid/widget/TFScroller;->mCoeffX:F

    .line 4902
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-nez v2, :cond_1

    const/high16 v2, 0x3f80

    :goto_1
    iput v2, p0, Landroid/widget/TFScroller;->mCoeffY:F

    .line 4904
    mul-float v2, v1, v1

    const/high16 v3, 0x4000

    iget v4, p0, Landroid/widget/TFScroller;->mDeceleration:F

    mul-float/2addr v3, v4

    div-float/2addr v2, v3

    float-to-int v0, v2

    .line 4906
    .local v0, totalDistance:I
    iput p5, p0, Landroid/widget/TFScroller;->mMinX:I

    .line 4907
    iput p6, p0, Landroid/widget/TFScroller;->mMaxX:I

    .line 4908
    iput p7, p0, Landroid/widget/TFScroller;->mMinY:I

    .line 4909
    iput p8, p0, Landroid/widget/TFScroller;->mMaxY:I

    .line 4912
    int-to-float v2, v0

    iget v3, p0, Landroid/widget/TFScroller;->mCoeffX:F

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/2addr v2, p1

    iput v2, p0, Landroid/widget/TFScroller;->mFinalX:I

    .line 4914
    iget v2, p0, Landroid/widget/TFScroller;->mFinalX:I

    iget v3, p0, Landroid/widget/TFScroller;->mMaxX:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Landroid/widget/TFScroller;->mFinalX:I

    .line 4915
    iget v2, p0, Landroid/widget/TFScroller;->mFinalX:I

    iget v3, p0, Landroid/widget/TFScroller;->mMinX:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Landroid/widget/TFScroller;->mFinalX:I

    .line 4917
    int-to-float v2, v0

    iget v3, p0, Landroid/widget/TFScroller;->mCoeffY:F

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/2addr v2, p2

    iput v2, p0, Landroid/widget/TFScroller;->mFinalY:I

    .line 4919
    iget v2, p0, Landroid/widget/TFScroller;->mFinalY:I

    iget v3, p0, Landroid/widget/TFScroller;->mMaxY:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Landroid/widget/TFScroller;->mFinalY:I

    .line 4920
    iget v2, p0, Landroid/widget/TFScroller;->mFinalY:I

    iget v3, p0, Landroid/widget/TFScroller;->mMinY:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Landroid/widget/TFScroller;->mFinalY:I

    .line 4922
    const/high16 v2, 0x3f80

    iput v2, p0, Landroid/widget/TFScroller;->mCorrectionXDeceleration:F

    .line 4923
    const/high16 v2, 0x3f80

    iput v2, p0, Landroid/widget/TFScroller;->mCorrectionYDeceleration:F

    .line 4924
    return-void

    .line 4901
    .end local v0           #totalDistance:I
    :cond_0
    int-to-float v2, p3

    div-float/2addr v2, v1

    goto :goto_0

    .line 4902
    :cond_1
    int-to-float v2, p4

    div-float/2addr v2, v1

    goto :goto_1
.end method

.method public fling(IIIIIIIIIIII)V
    .locals 13
    .parameter "startX"
    .parameter "startY"
    .parameter "velocityX"
    .parameter "velocityY"
    .parameter "minX"
    .parameter "maxX"
    .parameter "minY"
    .parameter "maxY"
    .parameter "unitX"
    .parameter "unitY"
    .parameter "unitPivotX"
    .parameter "unitPivotY"

    .prologue
    .line 5006
    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 5007
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "fling(int*12). One of velocityX or velocityY should be ZERO"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 5011
    :cond_0
    const/high16 v7, -0x8000

    const v8, 0x7fffffff

    const/high16 v9, -0x8000

    const v10, 0x7fffffff

    move-object v2, p0

    move v3, p1

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-virtual/range {v2 .. v10}, Landroid/widget/TFScroller;->fling(IIIIIIII)V

    .line 5015
    invoke-virtual {p0}, Landroid/widget/TFScroller;->getFinalX()I

    move-result v11

    .line 5016
    .local v11, finalX:I
    invoke-virtual {p0}, Landroid/widget/TFScroller;->getFinalY()I

    move-result v12

    .line 5017
    .local v12, finalY:I
    sget-boolean v2, Landroid/widget/TFScroller;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 5018
    const-string v2, "TFScroller"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fling(int * 12), finalX = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", finalY = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5021
    :cond_1
    move/from16 v0, p5

    move-object v1, p0

    iput v0, v1, Landroid/widget/TFScroller;->mMinX:I

    .line 5022
    move/from16 v0, p6

    move-object v1, p0

    iput v0, v1, Landroid/widget/TFScroller;->mMaxX:I

    .line 5023
    move/from16 v0, p7

    move-object v1, p0

    iput v0, v1, Landroid/widget/TFScroller;->mMinY:I

    .line 5024
    move/from16 v0, p8

    move-object v1, p0

    iput v0, v1, Landroid/widget/TFScroller;->mMaxY:I

    .line 5026
    move/from16 v0, p5

    move/from16 v1, p6

    if-ge v0, v1, :cond_6

    const/4 v2, 0x1

    move/from16 v0, p9

    move v1, v2

    if-le v0, v1, :cond_6

    if-eqz p3, :cond_6

    .line 5028
    move v0, v11

    move/from16 v1, p5

    if-ge v0, v1, :cond_2

    .line 5029
    move/from16 v11, p5

    .line 5031
    :cond_2
    move v0, v11

    move/from16 v1, p6

    if-le v0, v1, :cond_3

    .line 5032
    move/from16 v11, p6

    .line 5035
    :cond_3
    if-gez p3, :cond_10

    .line 5036
    :goto_0
    move v0, v11

    move/from16 v1, p5

    if-le v0, v1, :cond_4

    .line 5037
    sub-int v2, v11, p11

    rem-int v2, v2, p9

    if-nez v2, :cond_e

    .line 5049
    :cond_4
    :goto_1
    invoke-virtual {p0}, Landroid/widget/TFScroller;->getFinalX()I

    move-result v2

    if-eq v11, v2, :cond_6

    .line 5050
    invoke-virtual {p0}, Landroid/widget/TFScroller;->getFinalX()I

    move-result v2

    sub-int/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    sub-int v3, v11, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Landroid/widget/TFScroller;->mCorrectionXDeceleration:F

    .line 5052
    sget-boolean v2, Landroid/widget/TFScroller;->DEBUG:Z

    if-eqz v2, :cond_5

    .line 5053
    const-string v2, "TFScroller"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fling(), startX = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", getFinalX() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/widget/TFScroller;->getFinalX()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", finalX = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mCorrectionXDeceleration = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/widget/TFScroller;->mCorrectionXDeceleration:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5057
    :cond_5
    invoke-virtual {p0, v11}, Landroid/widget/TFScroller;->setFinalX(I)V

    .line 5058
    if-gez p3, :cond_11

    .line 5059
    iget v2, p0, Landroid/widget/TFScroller;->mFinalX:I

    iput v2, p0, Landroid/widget/TFScroller;->mMinX:I

    .line 5063
    :goto_2
    sget-boolean v2, Landroid/widget/TFScroller;->DEBUG:Z

    if-eqz v2, :cond_6

    .line 5064
    const-string v2, "TFScroller"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startX = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mFinalX = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/widget/TFScroller;->mFinalX:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mMinX = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/widget/TFScroller;->mMinX:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mMaxX = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/widget/TFScroller;->mMaxX:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5070
    :cond_6
    move/from16 v0, p7

    move/from16 v1, p8

    if-ge v0, v1, :cond_b

    const/4 v2, 0x1

    move/from16 v0, p10

    move v1, v2

    if-le v0, v1, :cond_b

    if-eqz p4, :cond_b

    .line 5072
    move v0, v12

    move/from16 v1, p7

    if-ge v0, v1, :cond_7

    .line 5073
    move/from16 v12, p7

    .line 5075
    :cond_7
    move v0, v12

    move/from16 v1, p8

    if-le v0, v1, :cond_8

    .line 5076
    move/from16 v12, p8

    .line 5079
    :cond_8
    if-gez p4, :cond_14

    .line 5080
    :goto_3
    move v0, v12

    move/from16 v1, p7

    if-le v0, v1, :cond_9

    .line 5081
    sub-int v2, v12, p12

    rem-int v2, v2, p10

    if-nez v2, :cond_12

    .line 5093
    :cond_9
    :goto_4
    invoke-virtual {p0}, Landroid/widget/TFScroller;->getFinalY()I

    move-result v2

    if-eq v12, v2, :cond_b

    .line 5094
    invoke-virtual {p0}, Landroid/widget/TFScroller;->getFinalY()I

    move-result v2

    sub-int/2addr v2, p2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    sub-int v3, v12, p2

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Landroid/widget/TFScroller;->mCorrectionYDeceleration:F

    .line 5096
    sget-boolean v2, Landroid/widget/TFScroller;->DEBUG:Z

    if-eqz v2, :cond_a

    .line 5097
    const-string v2, "TFScroller"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fling(), getFinalY() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/widget/TFScroller;->getFinalY()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", finalY = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mCorrectionYDeceleration = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/widget/TFScroller;->mCorrectionXDeceleration:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5101
    :cond_a
    invoke-virtual {p0, v12}, Landroid/widget/TFScroller;->setFinalY(I)V

    .line 5102
    if-gez p4, :cond_15

    .line 5103
    iget v2, p0, Landroid/widget/TFScroller;->mFinalY:I

    iput v2, p0, Landroid/widget/TFScroller;->mMinY:I

    .line 5107
    :goto_5
    sget-boolean v2, Landroid/widget/TFScroller;->DEBUG:Z

    if-eqz v2, :cond_b

    .line 5108
    const-string v2, "TFScroller"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startY = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mFinalY = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/widget/TFScroller;->mFinalY:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mMinY = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/widget/TFScroller;->mMinY:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mMaxY = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/widget/TFScroller;->mMaxY:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5114
    :cond_b
    iget v2, p0, Landroid/widget/TFScroller;->mCorrectionXDeceleration:F

    const/high16 v3, 0x3f80

    cmpl-float v2, v2, v3

    if-nez v2, :cond_c

    iget v2, p0, Landroid/widget/TFScroller;->mCorrectionYDeceleration:F

    const/high16 v3, 0x3f80

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_d

    .line 5115
    :cond_c
    iget v2, p0, Landroid/widget/TFScroller;->mCorrectionXDeceleration:F

    const/high16 v3, 0x3f80

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_16

    .line 5116
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(I)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-float v2, v2

    iget v3, p0, Landroid/widget/TFScroller;->mDeceleration:F

    iget v4, p0, Landroid/widget/TFScroller;->mCorrectionXDeceleration:F

    mul-float/2addr v3, v4

    div-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Landroid/widget/TFScroller;->mDuration:I

    .line 5120
    :goto_6
    const/high16 v2, 0x3f80

    iget v3, p0, Landroid/widget/TFScroller;->mDuration:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Landroid/widget/TFScroller;->mDurationReciprocal:F

    .line 5122
    :cond_d
    return-void

    .line 5039
    :cond_e
    add-int/lit8 v11, v11, -0x1

    goto/16 :goto_0

    .line 5045
    :cond_f
    add-int/lit8 v11, v11, 0x1

    .line 5042
    :cond_10
    move v0, v11

    move/from16 v1, p6

    if-ge v0, v1, :cond_4

    .line 5043
    sub-int v2, v11, p11

    rem-int v2, v2, p9

    if-nez v2, :cond_f

    goto/16 :goto_1

    .line 5061
    :cond_11
    iget v2, p0, Landroid/widget/TFScroller;->mFinalX:I

    iput v2, p0, Landroid/widget/TFScroller;->mMaxX:I

    goto/16 :goto_2

    .line 5083
    :cond_12
    add-int/lit8 v12, v12, -0x1

    goto/16 :goto_3

    .line 5089
    :cond_13
    add-int/lit8 v12, v12, 0x1

    .line 5086
    :cond_14
    move v0, v12

    move/from16 v1, p8

    if-ge v0, v1, :cond_9

    .line 5087
    sub-int v2, v12, p12

    rem-int v2, v2, p10

    if-nez v2, :cond_13

    goto/16 :goto_4

    .line 5105
    :cond_15
    iget v2, p0, Landroid/widget/TFScroller;->mFinalY:I

    iput v2, p0, Landroid/widget/TFScroller;->mMaxY:I

    goto/16 :goto_5

    .line 5118
    :cond_16
    invoke-static/range {p4 .. p4}, Ljava/lang/Math;->abs(I)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-float v2, v2

    iget v3, p0, Landroid/widget/TFScroller;->mDeceleration:F

    iget v4, p0, Landroid/widget/TFScroller;->mCorrectionYDeceleration:F

    mul-float/2addr v3, v4

    div-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Landroid/widget/TFScroller;->mDuration:I

    goto :goto_6
.end method

.method public final forceFinished(Z)V
    .locals 0
    .parameter "finished"

    .prologue
    .line 4688
    iput-boolean p1, p0, Landroid/widget/TFScroller;->mFinished:Z

    .line 4689
    return-void
.end method

.method public final getCurrX()I
    .locals 1

    .prologue
    .line 4706
    iget v0, p0, Landroid/widget/TFScroller;->mCurrX:I

    return v0
.end method

.method public final getCurrY()I
    .locals 1

    .prologue
    .line 4715
    iget v0, p0, Landroid/widget/TFScroller;->mCurrY:I

    return v0
.end method

.method public final getDuration()I
    .locals 1

    .prologue
    .line 4697
    iget v0, p0, Landroid/widget/TFScroller;->mDuration:I

    return v0
.end method

.method public final getFinalX()I
    .locals 1

    .prologue
    .line 4742
    iget v0, p0, Landroid/widget/TFScroller;->mFinalX:I

    return v0
.end method

.method public final getFinalY()I
    .locals 1

    .prologue
    .line 4751
    iget v0, p0, Landroid/widget/TFScroller;->mFinalY:I

    return v0
.end method

.method public final getStartX()I
    .locals 1

    .prologue
    .line 4724
    iget v0, p0, Landroid/widget/TFScroller;->mStartX:I

    return v0
.end method

.method public final getStartY()I
    .locals 1

    .prologue
    .line 4733
    iget v0, p0, Landroid/widget/TFScroller;->mStartY:I

    return v0
.end method

.method public final isFinished()Z
    .locals 1

    .prologue
    .line 4679
    iget-boolean v0, p0, Landroid/widget/TFScroller;->mFinished:Z

    return v0
.end method

.method public setFinalX(I)V
    .locals 2
    .parameter "newX"

    .prologue
    .line 4984
    iput p1, p0, Landroid/widget/TFScroller;->mFinalX:I

    .line 4985
    iget v0, p0, Landroid/widget/TFScroller;->mFinalX:I

    iget v1, p0, Landroid/widget/TFScroller;->mStartX:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Landroid/widget/TFScroller;->mDeltaX:F

    .line 4986
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TFScroller;->mFinished:Z

    .line 4987
    return-void
.end method

.method public setFinalY(I)V
    .locals 2
    .parameter "newY"

    .prologue
    .line 4997
    iput p1, p0, Landroid/widget/TFScroller;->mFinalY:I

    .line 4998
    iget v0, p0, Landroid/widget/TFScroller;->mFinalY:I

    iget v1, p0, Landroid/widget/TFScroller;->mStartY:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Landroid/widget/TFScroller;->mDeltaY:F

    .line 4999
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TFScroller;->mFinished:Z

    .line 5000
    return-void
.end method

.method public startScroll(IIII)V
    .locals 6
    .parameter "startX"
    .parameter "startY"
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 4833
    const/16 v5, 0xfa

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/widget/TFScroller;->startScroll(IIIII)V

    .line 4834
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

    .line 4850
    iput v0, p0, Landroid/widget/TFScroller;->mMode:I

    .line 4851
    iput-boolean v0, p0, Landroid/widget/TFScroller;->mFinished:Z

    .line 4852
    iput p5, p0, Landroid/widget/TFScroller;->mDuration:I

    .line 4853
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/TFScroller;->mStartTime:J

    .line 4854
    iput p1, p0, Landroid/widget/TFScroller;->mStartX:I

    .line 4855
    iput p2, p0, Landroid/widget/TFScroller;->mStartY:I

    .line 4856
    add-int v0, p1, p3

    iput v0, p0, Landroid/widget/TFScroller;->mFinalX:I

    .line 4857
    add-int v0, p2, p4

    iput v0, p0, Landroid/widget/TFScroller;->mFinalY:I

    .line 4858
    int-to-float v0, p3

    iput v0, p0, Landroid/widget/TFScroller;->mDeltaX:F

    .line 4859
    int-to-float v0, p4

    iput v0, p0, Landroid/widget/TFScroller;->mDeltaY:F

    .line 4860
    iget v0, p0, Landroid/widget/TFScroller;->mDuration:I

    int-to-float v0, v0

    div-float v0, v2, v0

    iput v0, p0, Landroid/widget/TFScroller;->mDurationReciprocal:F

    .line 4862
    const/high16 v0, 0x4100

    iput v0, p0, Landroid/widget/TFScroller;->mViscousFluidScale:F

    .line 4864
    iput v2, p0, Landroid/widget/TFScroller;->mViscousFluidNormalize:F

    .line 4865
    invoke-direct {p0, v2}, Landroid/widget/TFScroller;->viscousFluid(F)F

    move-result v0

    div-float v0, v2, v0

    iput v0, p0, Landroid/widget/TFScroller;->mViscousFluidNormalize:F

    .line 4866
    return-void
.end method

.method public timePassed()I
    .locals 4

    .prologue
    .line 4973
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/widget/TFScroller;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method
