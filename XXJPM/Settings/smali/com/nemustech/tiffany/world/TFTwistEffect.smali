.class public Lcom/nemustech/tiffany/world/TFTwistEffect;
.super Lcom/nemustech/tiffany/world/TFCustomPanel$Blender;
.source "TFTwistEffect.java"


# instance fields
.field protected final mCustomPanel:Lcom/nemustech/tiffany/world/TFCustomPanel;

.field protected mDuration:I

.field protected final mIdentity:[F

.field protected final mMeshH:I

.field protected final mMeshW:I

.field protected mTargetDegree:F

.field protected final mTime:Lcom/nemustech/tiffany/world/TFCustomPanel$Time;

.field protected mTwistDuration:I

.field protected mTwistInterpolator:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>(Lcom/nemustech/tiffany/world/TFCustomPanel;)V
    .locals 2
    .parameter "customPanel"

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/nemustech/tiffany/world/TFCustomPanel$Blender;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFTwistEffect;->mCustomPanel:Lcom/nemustech/tiffany/world/TFCustomPanel;

    .line 14
    invoke-virtual {p1}, Lcom/nemustech/tiffany/world/TFCustomPanel;->getMeshWidth()I

    move-result v0

    iput v0, p0, Lcom/nemustech/tiffany/world/TFTwistEffect;->mMeshW:I

    .line 15
    invoke-virtual {p1}, Lcom/nemustech/tiffany/world/TFCustomPanel;->getMeshHeight()I

    move-result v0

    iput v0, p0, Lcom/nemustech/tiffany/world/TFTwistEffect;->mMeshH:I

    .line 16
    new-instance v0, Lcom/nemustech/tiffany/world/TFCustomPanel$Time;

    invoke-direct {v0}, Lcom/nemustech/tiffany/world/TFCustomPanel$Time;-><init>()V

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFTwistEffect;->mTime:Lcom/nemustech/tiffany/world/TFCustomPanel$Time;

    .line 17
    iget v0, p0, Lcom/nemustech/tiffany/world/TFTwistEffect;->mMeshH:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/nemustech/tiffany/world/TFTwistEffect;->mMeshW:I

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFTwistEffect;->mIdentity:[F

    .line 18
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFTwistEffect;->mCustomPanel:Lcom/nemustech/tiffany/world/TFCustomPanel;

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFTwistEffect;->mIdentity:[F

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/world/TFCustomPanel;->loadIdentityVertex([F)V

    .line 20
    const/16 v0, 0x3e8

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/nemustech/tiffany/world/TFTwistEffect;->setDuration(II)V

    .line 21
    const/high16 v0, 0x4334

    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/world/TFTwistEffect;->setTargetDegree(F)V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFTwistEffect;->mTwistInterpolator:Landroid/view/animation/Interpolator;

    .line 23
    return-void
.end method


# virtual methods
.method protected blend([F)V
    .locals 5
    .parameter "vertex"

    .prologue
    .line 48
    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFTwistEffect;->mTime:Lcom/nemustech/tiffany/world/TFCustomPanel$Time;

    invoke-virtual {v4}, Lcom/nemustech/tiffany/world/TFCustomPanel$Time;->getTicks()I

    move-result v3

    .line 50
    .local v3, ticks:I
    const/4 v0, 0x0

    .local v0, j:I
    :goto_0
    iget v4, p0, Lcom/nemustech/tiffany/world/TFTwistEffect;->mMeshH:I

    if-gt v0, v4, :cond_0

    .line 51
    iget v4, p0, Lcom/nemustech/tiffany/world/TFTwistEffect;->mMeshW:I

    add-int/lit8 v4, v4, 0x1

    mul-int/2addr v4, v0

    mul-int/lit8 v1, v4, 0x3

    .line 52
    .local v1, rowIndex:I
    invoke-virtual {p0, v0, v3}, Lcom/nemustech/tiffany/world/TFTwistEffect;->getRowTwist(II)F

    move-result v2

    .line 53
    .local v2, rowTwist:F
    invoke-virtual {p0, p1, v1, v2}, Lcom/nemustech/tiffany/world/TFTwistEffect;->rotateRow([FIF)V

    .line 50
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 55
    .end local v1           #rowIndex:I
    .end local v2           #rowTwist:F
    :cond_0
    return-void
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/nemustech/tiffany/world/TFTwistEffect;->mDuration:I

    return v0
.end method

.method protected getRowTwist(II)F
    .locals 4
    .parameter "row"
    .parameter "ticks"

    .prologue
    .line 57
    iget v2, p0, Lcom/nemustech/tiffany/world/TFTwistEffect;->mDuration:I

    iget v3, p0, Lcom/nemustech/tiffany/world/TFTwistEffect;->mTwistDuration:I

    sub-int/2addr v2, v3

    mul-int/2addr v2, p1

    iget v3, p0, Lcom/nemustech/tiffany/world/TFTwistEffect;->mMeshH:I

    div-int v1, v2, v3

    .line 60
    .local v1, rowWait:I
    if-ge p2, v1, :cond_0

    .line 61
    const/4 v0, 0x0

    .line 66
    .local v0, rowTwist:F
    :goto_0
    return v0

    .line 62
    .end local v0           #rowTwist:F
    :cond_0
    iget v2, p0, Lcom/nemustech/tiffany/world/TFTwistEffect;->mTwistDuration:I

    add-int/2addr v2, v1

    if-lt p2, v2, :cond_1

    .line 63
    const/high16 v0, 0x3f80

    .restart local v0       #rowTwist:F
    goto :goto_0

    .line 65
    .end local v0           #rowTwist:F
    :cond_1
    sub-int v2, p2, v1

    int-to-float v2, v2

    iget v3, p0, Lcom/nemustech/tiffany/world/TFTwistEffect;->mTwistDuration:I

    int-to-float v3, v3

    div-float v0, v2, v3

    .restart local v0       #rowTwist:F
    goto :goto_0
.end method

.method public getTargetDegree()F
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/nemustech/tiffany/world/TFTwistEffect;->mTargetDegree:F

    return v0
.end method

.method public getTwistDuration()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/nemustech/tiffany/world/TFTwistEffect;->mTwistDuration:I

    return v0
.end method

.method public getTwistInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFTwistEffect;->mTwistInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public hasEnded()Z
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFTwistEffect;->mTime:Lcom/nemustech/tiffany/world/TFCustomPanel$Time;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/world/TFCustomPanel$Time;->hasEnded()Z

    move-result v0

    return v0
.end method

.method public onEnd()V
    .locals 0

    .prologue
    .line 41
    return-void
.end method

.method public onFrame(I)V
    .locals 2
    .parameter "tick"

    .prologue
    .line 32
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFTwistEffect;->mTime:Lcom/nemustech/tiffany/world/TFCustomPanel$Time;

    invoke-virtual {v1, p1}, Lcom/nemustech/tiffany/world/TFCustomPanel$Time;->update(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 38
    :goto_0
    return-void

    .line 35
    :cond_0
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFTwistEffect;->mCustomPanel:Lcom/nemustech/tiffany/world/TFCustomPanel;

    invoke-virtual {v1}, Lcom/nemustech/tiffany/world/TFCustomPanel;->getVertex()[F

    move-result-object v0

    .line 36
    .local v0, vertex:[F
    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/world/TFTwistEffect;->blend([F)V

    .line 37
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFTwistEffect;->mCustomPanel:Lcom/nemustech/tiffany/world/TFCustomPanel;

    invoke-virtual {v1}, Lcom/nemustech/tiffany/world/TFCustomPanel;->requestUpdateVertex()V

    goto :goto_0
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 27
    const/16 v0, 0x32

    .line 28
    .local v0, elapse:I
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFTwistEffect;->mTime:Lcom/nemustech/tiffany/world/TFCustomPanel$Time;

    iget v2, p0, Lcom/nemustech/tiffany/world/TFTwistEffect;->mDuration:I

    const/16 v3, 0x32

    invoke-virtual {v1, v2, v3}, Lcom/nemustech/tiffany/world/TFCustomPanel$Time;->start(II)V

    .line 29
    return-void
.end method

.method protected rotateRow([FIF)V
    .locals 11
    .parameter "vertex"
    .parameter "rowIndex"
    .parameter "rowTwist"

    .prologue
    const/high16 v10, 0x3f00

    .line 70
    iget-object v7, p0, Lcom/nemustech/tiffany/world/TFTwistEffect;->mTwistInterpolator:Landroid/view/animation/Interpolator;

    if-nez v7, :cond_0

    .line 71
    move v6, p3

    .line 75
    .local v6, twist:F
    :goto_0
    iget v7, p0, Lcom/nemustech/tiffany/world/TFTwistEffect;->mTargetDegree:F

    mul-float/2addr v7, v6

    const v8, 0x40490fdb

    mul-float/2addr v7, v8

    const/high16 v8, 0x4334

    div-float v5, v7, v8

    .line 76
    .local v5, theta:F
    float-to-double v7, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    double-to-float v0, v7

    .line 77
    .local v0, cos:F
    float-to-double v7, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    double-to-float v4, v7

    .line 79
    .local v4, sin:F
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    iget v7, p0, Lcom/nemustech/tiffany/world/TFTwistEffect;->mMeshW:I

    if-gt v3, v7, :cond_1

    .line 80
    iget-object v7, p0, Lcom/nemustech/tiffany/world/TFTwistEffect;->mIdentity:[F

    add-int/lit8 v8, p2, 0x0

    aget v7, v7, v8

    sub-float v1, v7, v10

    .line 81
    .local v1, dx:F
    iget-object v7, p0, Lcom/nemustech/tiffany/world/TFTwistEffect;->mIdentity:[F

    add-int/lit8 v8, p2, 0x2

    aget v2, v7, v8

    .line 82
    .local v2, dz:F
    add-int/lit8 v7, p2, 0x0

    mul-float v8, v1, v0

    mul-float v9, v2, v4

    sub-float/2addr v8, v9

    add-float/2addr v8, v10

    aput v8, p1, v7

    .line 83
    add-int/lit8 v7, p2, 0x2

    mul-float v8, v1, v4

    mul-float v9, v2, v0

    add-float/2addr v8, v9

    aput v8, p1, v7

    .line 84
    add-int/lit8 p2, p2, 0x3

    .line 79
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 73
    .end local v0           #cos:F
    .end local v1           #dx:F
    .end local v2           #dz:F
    .end local v3           #i:I
    .end local v4           #sin:F
    .end local v5           #theta:F
    .end local v6           #twist:F
    :cond_0
    iget-object v7, p0, Lcom/nemustech/tiffany/world/TFTwistEffect;->mTwistInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v7, p3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v6

    .restart local v6       #twist:F
    goto :goto_0

    .line 86
    .restart local v0       #cos:F
    .restart local v3       #i:I
    .restart local v4       #sin:F
    .restart local v5       #theta:F
    :cond_1
    return-void
.end method

.method public setDuration(II)V
    .locals 1
    .parameter "duration"
    .parameter "twistDuration"

    .prologue
    .line 99
    if-lez p2, :cond_0

    if-lt p2, p1, :cond_1

    .line 100
    :cond_0
    mul-int/lit8 v0, p1, 0x3

    div-int/lit8 p2, v0, 0x4

    .line 101
    :cond_1
    iput p1, p0, Lcom/nemustech/tiffany/world/TFTwistEffect;->mDuration:I

    .line 102
    iput p2, p0, Lcom/nemustech/tiffany/world/TFTwistEffect;->mTwistDuration:I

    .line 103
    return-void
.end method

.method public setTargetDegree(F)V
    .locals 0
    .parameter "targetDegree"

    .prologue
    .line 123
    iput p1, p0, Lcom/nemustech/tiffany/world/TFTwistEffect;->mTargetDegree:F

    .line 124
    return-void
.end method

.method public setTwistInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0
    .parameter "twist"

    .prologue
    .line 138
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFTwistEffect;->mTwistInterpolator:Landroid/view/animation/Interpolator;

    .line 139
    return-void
.end method
