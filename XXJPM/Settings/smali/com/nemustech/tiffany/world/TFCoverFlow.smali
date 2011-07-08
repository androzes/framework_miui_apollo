.class public Lcom/nemustech/tiffany/world/TFCoverFlow;
.super Lcom/nemustech/tiffany/world/TFSimpleHolder;
.source "TFCoverFlow.java"


# static fields
.field static final LEANING_ANGLE:F = 65.0f

.field static final PI_HALF:F = 1.5707964f

.field static final TAG:Ljava/lang/String; = "TFCoverFlow"


# instance fields
.field private mHeadPositionLength:F

.field private mLength:F

.field private mMargin:F

.field private mModelPositionGap:F

.field private mModelWidth:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    const/high16 v0, 0x4000

    invoke-direct {p0, v0}, Lcom/nemustech/tiffany/world/TFCoverFlow;-><init>(F)V

    .line 34
    return-void
.end method

.method public constructor <init>(F)V
    .locals 2
    .parameter "length"

    .prologue
    const/high16 v0, -0x4080

    .line 22
    invoke-direct {p0}, Lcom/nemustech/tiffany/world/TFSimpleHolder;-><init>()V

    .line 23
    iput p1, p0, Lcom/nemustech/tiffany/world/TFCoverFlow;->mLength:F

    .line 24
    iput v0, p0, Lcom/nemustech/tiffany/world/TFCoverFlow;->mModelWidth:F

    .line 25
    iput v0, p0, Lcom/nemustech/tiffany/world/TFCoverFlow;->mModelPositionGap:F

    .line 26
    iput v0, p0, Lcom/nemustech/tiffany/world/TFCoverFlow;->mHeadPositionLength:F

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/nemustech/tiffany/world/TFCoverFlow;->mVelocity:F

    .line 28
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFCoverFlow;->getMoveAnimation()Lcom/nemustech/tiffany/world/TFSimpleHolder$SimpleMoveAnimation;

    move-result-object v0

    const/high16 v1, 0x3fa0

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/world/TFSimpleHolder$SimpleMoveAnimation;->setInertia(F)V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nemustech/tiffany/world/TFCoverFlow;->mWraparound:Z

    .line 30
    return-void
.end method


# virtual methods
.method protected calcTouchVectorMagnitude([FI)F
    .locals 2
    .parameter "forceVector"
    .parameter "tickPassed"

    .prologue
    .line 91
    const/4 v0, 0x4

    aget v0, p1, v0

    const/4 v1, 0x0

    aget v1, p1, v1

    sub-float/2addr v0, v1

    neg-float v0, v0

    return v0
.end method

.method public getHeadPositionLength()F
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/nemustech/tiffany/world/TFCoverFlow;->mHeadPositionLength:F

    return v0
.end method

.method public getLength()F
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/nemustech/tiffany/world/TFCoverFlow;->mLength:F

    return v0
.end method

.method protected getModelPosition(I)F
    .locals 5
    .parameter "modelIndex"

    .prologue
    const/4 v4, 0x1

    .line 58
    const/4 v0, 0x0

    .line 59
    .local v0, position:F
    iget v1, p0, Lcom/nemustech/tiffany/world/TFCoverFlow;->mHeadModelIndex:I

    if-ne p1, v1, :cond_0

    .line 60
    const/4 v1, 0x0

    .line 68
    :goto_0
    return v1

    .line 63
    :cond_0
    iget v1, p0, Lcom/nemustech/tiffany/world/TFCoverFlow;->mHeadModelIndex:I

    if-le v1, p1, :cond_1

    .line 64
    iget v1, p0, Lcom/nemustech/tiffany/world/TFCoverFlow;->mMargin:F

    neg-float v1, v1

    iget v2, p0, Lcom/nemustech/tiffany/world/TFCoverFlow;->mModelPositionGap:F

    iget v3, p0, Lcom/nemustech/tiffany/world/TFCoverFlow;->mHeadModelIndex:I

    sub-int/2addr v3, p1

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v2, v3

    sub-float v0, v1, v2

    :goto_1
    move v1, v0

    .line 68
    goto :goto_0

    .line 66
    :cond_1
    iget v1, p0, Lcom/nemustech/tiffany/world/TFCoverFlow;->mMargin:F

    iget v2, p0, Lcom/nemustech/tiffany/world/TFCoverFlow;->mModelPositionGap:F

    iget v3, p0, Lcom/nemustech/tiffany/world/TFCoverFlow;->mHeadModelIndex:I

    sub-int v3, p1, v3

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v2, v3

    add-float v0, v1, v2

    goto :goto_1
.end method

.method public getModelWidth()F
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/nemustech/tiffany/world/TFCoverFlow;->mModelWidth:F

    return v0
.end method

.method protected locateModel(Lcom/nemustech/tiffany/world/TFModel;FI)V
    .locals 11
    .parameter "model"
    .parameter "modelPosition"
    .parameter "modelIndex"

    .prologue
    .line 73
    invoke-virtual {p1}, Lcom/nemustech/tiffany/world/TFModel;->getHeight()F

    move-result v5

    const/high16 v6, 0x3f00

    mul-float v4, v5, v6

    .line 74
    .local v4, y:F
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lcom/nemustech/tiffany/world/TFCoverFlow;->mHeadPositionLength:F

    const/high16 v7, 0x3f00

    mul-float/2addr v6, v7

    cmpg-float v5, v5, v6

    if-gez v5, :cond_0

    .line 75
    iget v5, p0, Lcom/nemustech/tiffany/world/TFCoverFlow;->mLength:F

    mul-float/2addr v5, p2

    iget v6, p0, Lcom/nemustech/tiffany/world/TFCoverFlow;->mModelWidth:F

    float-to-double v6, v6

    const-wide v8, 0x3ff226c3bcdbe7aeL

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    const-wide v8, 0x3fd3333340000000L

    mul-double/2addr v6, v8

    double-to-float v6, v6

    invoke-virtual {p1, v5, v4, v6}, Lcom/nemustech/tiffany/world/TFModel;->locate(FFF)V

    .line 76
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Lcom/nemustech/tiffany/world/TFModel;->look(FF)V

    .line 87
    :goto_0
    return-void

    .line 79
    :cond_0
    const/4 v5, 0x0

    cmpg-float v5, p2, v5

    if-gez v5, :cond_1

    const/high16 v5, 0x3f80

    move v3, v5

    .line 80
    .local v3, rotateDirection:F
    :goto_1
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lcom/nemustech/tiffany/world/TFCoverFlow;->mHeadPositionLength:F

    const/high16 v7, 0x3f00

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/nemustech/tiffany/world/TFCoverFlow;->mMargin:F

    iget v7, p0, Lcom/nemustech/tiffany/world/TFCoverFlow;->mHeadPositionLength:F

    const/high16 v8, 0x3f00

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    div-float v1, v5, v6

    .line 81
    .local v1, determinant:F
    const/high16 v5, 0x3f80

    cmpl-float v5, v1, v5

    if-lez v5, :cond_2

    const/high16 v5, 0x3f80

    :goto_2
    const v6, 0x3fc90fdb

    mul-float v1, v5, v6

    .line 82
    const-wide v5, 0x4050400000000000L

    const/high16 v7, 0x3f80

    sub-float v7, v1, v7

    float-to-double v7, v7

    const-wide/high16 v9, 0x4008

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    const-wide/high16 v9, 0x3ff0

    add-double/2addr v7, v9

    mul-double/2addr v5, v7

    double-to-float v0, v5

    .line 83
    .local v0, angle:F
    const-wide v5, 0x3ff226c3bcdbe7aeL

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    const-wide v7, 0x3fd3333340000000L

    mul-double/2addr v5, v7

    const/high16 v7, 0x3f80

    add-float/2addr v7, v1

    const v8, 0x3fc90fdb

    mul-float/2addr v7, v8

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    mul-double/2addr v5, v7

    double-to-float v2, v5

    .line 84
    .local v2, distnace:F
    iget v5, p0, Lcom/nemustech/tiffany/world/TFCoverFlow;->mLength:F

    mul-float/2addr v5, p2

    invoke-virtual {p1, v5, v4, v2}, Lcom/nemustech/tiffany/world/TFModel;->locate(FFF)V

    .line 85
    mul-float v5, v3, v0

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Lcom/nemustech/tiffany/world/TFModel;->look(FF)V

    goto :goto_0

    .line 79
    .end local v0           #angle:F
    .end local v1           #determinant:F
    .end local v2           #distnace:F
    .end local v3           #rotateDirection:F
    :cond_1
    const/high16 v5, -0x4080

    move v3, v5

    goto :goto_1

    .restart local v1       #determinant:F
    .restart local v3       #rotateDirection:F
    :cond_2
    move v5, v1

    .line 81
    goto :goto_2
.end method

.method protected onAddModel(Lcom/nemustech/tiffany/world/TFModel;I)V
    .locals 5
    .parameter "model"
    .parameter "modelIndex"

    .prologue
    const/4 v4, 0x1

    const/high16 v1, -0x4080

    const-string v3, "TFCoverFlow"

    .line 96
    iget v0, p0, Lcom/nemustech/tiffany/world/TFCoverFlow;->mModelWidth:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {p1}, Lcom/nemustech/tiffany/world/TFModel;->getWidth()F

    move-result v0

    iget v1, p0, Lcom/nemustech/tiffany/world/TFCoverFlow;->mModelWidth:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    .line 99
    const-string v0, "TFCoverFlow"

    const-string v0, "Variable model width error: all the models added to TFCoverFlow must be the same"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :goto_0
    return-void

    .line 104
    :cond_0
    iget v0, p0, Lcom/nemustech/tiffany/world/TFCoverFlow;->mLength:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 106
    const-string v0, "TFCoverFlow"

    const-string v0, "Unspecified Information error: visiable Length of the cover flow is not specified"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 110
    :cond_1
    iget v0, p0, Lcom/nemustech/tiffany/world/TFCoverFlow;->mLength:F

    invoke-virtual {p1}, Lcom/nemustech/tiffany/world/TFModel;->getWidth()F

    move-result v1

    const/high16 v2, 0x3fc0

    mul-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 112
    const-string v0, "TFCoverFlow"

    const-string v0, "Invalid Information error: visiable Length of the cover flow too short compared to the model width"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 116
    :cond_2
    invoke-virtual {p1}, Lcom/nemustech/tiffany/world/TFModel;->getWidth()F

    move-result v0

    iput v0, p0, Lcom/nemustech/tiffany/world/TFCoverFlow;->mModelWidth:F

    .line 117
    const-wide v0, 0x3ff226c3bcdbe7aeL

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    iget v2, p0, Lcom/nemustech/tiffany/world/TFCoverFlow;->mModelWidth:F

    float-to-double v2, v2

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x3fe0

    mul-double/2addr v0, v2

    iget v2, p0, Lcom/nemustech/tiffany/world/TFCoverFlow;->mModelWidth:F

    const/high16 v3, 0x3f00

    mul-float/2addr v2, v3

    float-to-double v2, v2

    add-double/2addr v0, v2

    double-to-float v0, v0

    iget v1, p0, Lcom/nemustech/tiffany/world/TFCoverFlow;->mLength:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/nemustech/tiffany/world/TFCoverFlow;->mMargin:F

    .line 118
    iget v0, p0, Lcom/nemustech/tiffany/world/TFCoverFlow;->mMargin:F

    const v1, 0x3eaa7efa

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/nemustech/tiffany/world/TFCoverFlow;->mHeadPositionLength:F

    .line 122
    :cond_3
    const/high16 v0, 0x3f80

    iget v1, p0, Lcom/nemustech/tiffany/world/TFCoverFlow;->mMargin:F

    const/high16 v2, 0x4000

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFCoverFlow;->getModelCount()I

    move-result v1

    sub-int/2addr v1, v4

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/nemustech/tiffany/world/TFCoverFlow;->mModelPositionGap:F

    .line 123
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFCoverFlow;->getModelCount()I

    move-result v0

    sub-int/2addr v0, v4

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/nemustech/tiffany/world/TFCoverFlow;->mHeadModelIndex:I

    goto :goto_0
.end method

.method protected onRemoveModel(Lcom/nemustech/tiffany/world/TFModel;I)V
    .locals 0
    .parameter "model"
    .parameter "modelIndex"

    .prologue
    .line 129
    return-void
.end method

.method public setHeadPositionLength(F)V
    .locals 0
    .parameter "headPositionLength"

    .prologue
    .line 49
    iput p1, p0, Lcom/nemustech/tiffany/world/TFCoverFlow;->mHeadPositionLength:F

    .line 50
    return-void
.end method

.method public setLength(F)V
    .locals 0
    .parameter "length"

    .prologue
    .line 37
    iput p1, p0, Lcom/nemustech/tiffany/world/TFCoverFlow;->mLength:F

    .line 38
    return-void
.end method
