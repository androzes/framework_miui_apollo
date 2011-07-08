.class public Lcom/nemustech/tiffany/world/TFMirageEffect;
.super Lcom/nemustech/tiffany/world/TFTwistEffect;
.source "TFMirageEffect.java"


# instance fields
.field protected mTwistScaleInterpolator:Landroid/view/animation/Interpolator;

.field protected mXOffset:F

.field protected mZOffset:F


# direct methods
.method public constructor <init>(Lcom/nemustech/tiffany/world/TFCustomPanel;)V
    .locals 2
    .parameter "customPanel"

    .prologue
    const/high16 v1, 0x3f00

    .line 13
    invoke-direct {p0, p1}, Lcom/nemustech/tiffany/world/TFTwistEffect;-><init>(Lcom/nemustech/tiffany/world/TFCustomPanel;)V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFMirageEffect;->mTwistScaleInterpolator:Landroid/view/animation/Interpolator;

    .line 15
    iput v1, p0, Lcom/nemustech/tiffany/world/TFMirageEffect;->mXOffset:F

    .line 16
    iput v1, p0, Lcom/nemustech/tiffany/world/TFMirageEffect;->mZOffset:F

    .line 17
    return-void
.end method


# virtual methods
.method public getTwistScaleInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFMirageEffect;->mTwistScaleInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public getXOffset()F
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/nemustech/tiffany/world/TFMirageEffect;->mXOffset:F

    return v0
.end method

.method public getZOffset()F
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/nemustech/tiffany/world/TFMirageEffect;->mZOffset:F

    return v0
.end method

.method protected rotateRow([FIF)V
    .locals 15
    .parameter "vertex"
    .parameter "rowIndex"
    .parameter "rowTwist"

    .prologue
    .line 22
    iget-object v12, p0, Lcom/nemustech/tiffany/world/TFMirageEffect;->mTwistInterpolator:Landroid/view/animation/Interpolator;

    if-nez v12, :cond_0

    .line 23
    move/from16 v9, p3

    .line 28
    .local v9, twist:F
    :goto_0
    iget-object v12, p0, Lcom/nemustech/tiffany/world/TFMirageEffect;->mTwistScaleInterpolator:Landroid/view/animation/Interpolator;

    if-nez v12, :cond_1

    .line 29
    const/high16 v12, 0x3f80

    sub-float v6, v12, p3

    .line 32
    .local v6, scale:F
    :goto_1
    iget v10, p0, Lcom/nemustech/tiffany/world/TFMirageEffect;->mXOffset:F

    .line 33
    .local v10, xOffset:F
    iget v11, p0, Lcom/nemustech/tiffany/world/TFMirageEffect;->mZOffset:F

    .line 35
    .local v11, zOffset:F
    iget v12, p0, Lcom/nemustech/tiffany/world/TFMirageEffect;->mTargetDegree:F

    mul-float/2addr v12, v9

    const v13, 0x40490fdb

    mul-float/2addr v12, v13

    const/high16 v13, 0x4334

    div-float v8, v12, v13

    .line 36
    .local v8, theta:F
    float-to-double v12, v8

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    double-to-float v2, v12

    .line 37
    .local v2, cos:F
    float-to-double v12, v8

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    double-to-float v7, v12

    .line 39
    .local v7, sin:F
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2
    iget v12, p0, Lcom/nemustech/tiffany/world/TFMirageEffect;->mMeshW:I

    if-gt v5, v12, :cond_2

    .line 40
    iget-object v12, p0, Lcom/nemustech/tiffany/world/TFMirageEffect;->mIdentity:[F

    add-int/lit8 v13, p2, 0x0

    aget v12, v12, v13

    sub-float v3, v12, v10

    .line 41
    .local v3, dx:F
    iget-object v12, p0, Lcom/nemustech/tiffany/world/TFMirageEffect;->mIdentity:[F

    add-int/lit8 v13, p2, 0x2

    aget v12, v12, v13

    sub-float v4, v12, v11

    .line 42
    .local v4, dz:F
    add-int/lit8 v12, p2, 0x0

    mul-float v13, v3, v2

    mul-float v14, v4, v7

    sub-float/2addr v13, v14

    mul-float/2addr v13, v6

    add-float/2addr v13, v10

    aput v13, p1, v12

    .line 43
    add-int/lit8 v12, p2, 0x2

    mul-float v13, v3, v7

    mul-float v14, v4, v2

    add-float/2addr v13, v14

    mul-float/2addr v13, v6

    add-float/2addr v13, v11

    aput v13, p1, v12

    .line 44
    add-int/lit8 p2, p2, 0x3

    .line 39
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 25
    .end local v2           #cos:F
    .end local v3           #dx:F
    .end local v4           #dz:F
    .end local v5           #i:I
    .end local v6           #scale:F
    .end local v7           #sin:F
    .end local v8           #theta:F
    .end local v9           #twist:F
    .end local v10           #xOffset:F
    .end local v11           #zOffset:F
    :cond_0
    iget-object v12, p0, Lcom/nemustech/tiffany/world/TFMirageEffect;->mTwistInterpolator:Landroid/view/animation/Interpolator;

    move-object v0, v12

    move/from16 v1, p3

    invoke-interface {v0, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v9

    .restart local v9       #twist:F
    goto :goto_0

    .line 31
    :cond_1
    const/high16 v12, 0x3f80

    iget-object v13, p0, Lcom/nemustech/tiffany/world/TFMirageEffect;->mTwistScaleInterpolator:Landroid/view/animation/Interpolator;

    move-object v0, v13

    move/from16 v1, p3

    invoke-interface {v0, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v13

    sub-float v6, v12, v13

    .restart local v6       #scale:F
    goto :goto_1

    .line 46
    .restart local v2       #cos:F
    .restart local v5       #i:I
    .restart local v7       #sin:F
    .restart local v8       #theta:F
    .restart local v10       #xOffset:F
    .restart local v11       #zOffset:F
    :cond_2
    return-void
.end method

.method public setTwistScaleInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0
    .parameter "scale"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFMirageEffect;->mTwistScaleInterpolator:Landroid/view/animation/Interpolator;

    .line 54
    return-void
.end method

.method public setXOffset(F)V
    .locals 0
    .parameter "xOffset"

    .prologue
    .line 67
    iput p1, p0, Lcom/nemustech/tiffany/world/TFMirageEffect;->mXOffset:F

    .line 68
    return-void
.end method

.method public setZOffset(F)V
    .locals 0
    .parameter "zOffset"

    .prologue
    .line 81
    iput p1, p0, Lcom/nemustech/tiffany/world/TFMirageEffect;->mZOffset:F

    .line 82
    return-void
.end method
