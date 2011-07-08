.class public Lcom/nemustech/tiffany/world/TFBookHolder;
.super Lcom/nemustech/tiffany/world/TFSimpleHolder;
.source "TFBookHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nemustech/tiffany/world/TFBookHolder$PageFlipFactorProvider;
    }
.end annotation


# static fields
.field public static final FLIP_BACKWARD:I = -0x1

.field public static final FLIP_FORWARD:I = 0x1

.field public static final FLIP_HORIZONTAL:I = 0x0

.field public static final FLIP_VERTICAL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "GFBookHolder"


# instance fields
.field protected mFlipDirection:I

.field protected mFlipOrientation:I

.field protected mInitialAngle:F

.field protected mMargin:F

.field protected mModelHeight:F

.field protected mModelPositionGap:F

.field protected mModelWidth:F

.field protected mPageFlipFactorProvider:Lcom/nemustech/tiffany/world/TFBookHolder$PageFlipFactorProvider;

.field protected mPageLiftAngle:F

.field protected mSpreadAngle:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/high16 v0, -0x4080

    .line 7
    invoke-direct {p0}, Lcom/nemustech/tiffany/world/TFSimpleHolder;-><init>()V

    .line 131
    iput v0, p0, Lcom/nemustech/tiffany/world/TFBookHolder;->mModelWidth:F

    .line 132
    iput v0, p0, Lcom/nemustech/tiffany/world/TFBookHolder;->mModelHeight:F

    .line 134
    const v0, 0x3e4ccccd

    iput v0, p0, Lcom/nemustech/tiffany/world/TFBookHolder;->mMargin:F

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFBookHolder;->mPageFlipFactorProvider:Lcom/nemustech/tiffany/world/TFBookHolder$PageFlipFactorProvider;

    .line 8
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nemustech/tiffany/world/TFBookHolder;->mWraparound:Z

    .line 9
    return-void
.end method

.method public constructor <init>(IIFFF)V
    .locals 1
    .parameter "flipOrientation"
    .parameter "flipDirection"
    .parameter "initialAngle"
    .parameter "spreadAngle"
    .parameter "pageLiftAngle"

    .prologue
    const/high16 v0, -0x4080

    .line 12
    invoke-direct {p0}, Lcom/nemustech/tiffany/world/TFSimpleHolder;-><init>()V

    .line 131
    iput v0, p0, Lcom/nemustech/tiffany/world/TFBookHolder;->mModelWidth:F

    .line 132
    iput v0, p0, Lcom/nemustech/tiffany/world/TFBookHolder;->mModelHeight:F

    .line 134
    const v0, 0x3e4ccccd

    iput v0, p0, Lcom/nemustech/tiffany/world/TFBookHolder;->mMargin:F

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFBookHolder;->mPageFlipFactorProvider:Lcom/nemustech/tiffany/world/TFBookHolder$PageFlipFactorProvider;

    .line 13
    iput p1, p0, Lcom/nemustech/tiffany/world/TFBookHolder;->mFlipOrientation:I

    .line 14
    iput p2, p0, Lcom/nemustech/tiffany/world/TFBookHolder;->mFlipDirection:I

    .line 15
    iput p3, p0, Lcom/nemustech/tiffany/world/TFBookHolder;->mInitialAngle:F

    .line 16
    iput p4, p0, Lcom/nemustech/tiffany/world/TFBookHolder;->mSpreadAngle:F

    .line 17
    iput p5, p0, Lcom/nemustech/tiffany/world/TFBookHolder;->mPageLiftAngle:F

    .line 18
    return-void
.end method


# virtual methods
.method protected calcTouchVectorMagnitude([FI)F
    .locals 3
    .parameter "forceVector"
    .parameter "tickPassed"

    .prologue
    const/high16 v2, 0x3fc0

    .line 92
    iget v0, p0, Lcom/nemustech/tiffany/world/TFBookHolder;->mFlipOrientation:I

    if-nez v0, :cond_0

    .line 93
    const/4 v0, 0x4

    aget v0, p1, v0

    const/4 v1, 0x0

    aget v1, p1, v1

    sub-float/2addr v0, v1

    neg-float v0, v0

    div-float/2addr v0, v2

    iget v1, p0, Lcom/nemustech/tiffany/world/TFBookHolder;->mFlipDirection:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    .line 95
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x5

    aget v0, p1, v0

    const/4 v1, 0x1

    aget v1, p1, v1

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    iget v1, p0, Lcom/nemustech/tiffany/world/TFBookHolder;->mFlipDirection:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    goto :goto_0
.end method

.method protected defaultFlipFactorProvider(F)F
    .locals 1
    .parameter "determinant"

    .prologue
    .line 120
    mul-float v0, p1, p1

    return v0
.end method

.method protected getModelPosition(I)F
    .locals 3
    .parameter "modelIndex"

    .prologue
    .line 38
    iget v1, p0, Lcom/nemustech/tiffany/world/TFBookHolder;->mHeadModelIndex:I

    sub-int v1, p1, v1

    int-to-float v1, v1

    iget v2, p0, Lcom/nemustech/tiffany/world/TFBookHolder;->mModelPositionGap:F

    mul-float v0, v1, v2

    .line 40
    .local v0, position:F
    return v0
.end method

.method protected getPageFlipFactor(F)F
    .locals 1
    .parameter "determinant"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFBookHolder;->mPageFlipFactorProvider:Lcom/nemustech/tiffany/world/TFBookHolder$PageFlipFactorProvider;

    if-nez v0, :cond_0

    .line 113
    invoke-virtual {p0, p1}, Lcom/nemustech/tiffany/world/TFBookHolder;->defaultFlipFactorProvider(F)F

    move-result v0

    .line 116
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFBookHolder;->mPageFlipFactorProvider:Lcom/nemustech/tiffany/world/TFBookHolder$PageFlipFactorProvider;

    invoke-interface {v0, p1}, Lcom/nemustech/tiffany/world/TFBookHolder$PageFlipFactorProvider;->pageFlipFactorProvider(F)F

    move-result v0

    goto :goto_0
.end method

.method protected locateModel(Lcom/nemustech/tiffany/world/TFModel;FI)V
    .locals 10
    .parameter "model"
    .parameter "modelPosition"
    .parameter "modelIndex"

    .prologue
    .line 48
    iget v6, p0, Lcom/nemustech/tiffany/world/TFBookHolder;->mFlipOrientation:I

    if-nez v6, :cond_1

    .line 49
    const/high16 v6, 0x3f00

    invoke-virtual {p1}, Lcom/nemustech/tiffany/world/TFModel;->getWidth()F

    move-result v7

    mul-float/2addr v6, v7

    const v7, 0x3b656042

    iget v8, p0, Lcom/nemustech/tiffany/world/TFBookHolder;->mHeadModelIndex:I

    sub-int v8, p3, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    int-to-float v8, v8

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    iget v7, p0, Lcom/nemustech/tiffany/world/TFBookHolder;->mFlipDirection:I

    int-to-float v7, v7

    mul-float v3, v6, v7

    .line 50
    .local v3, x:F
    const/4 v4, 0x0

    .line 56
    .local v4, y:F
    :goto_0
    neg-int v6, p3

    int-to-float v6, v6

    const v7, 0x3b656042

    mul-float v5, v6, v7

    .line 57
    .local v5, z:F
    invoke-virtual {p1, v3, v4, v5}, Lcom/nemustech/tiffany/world/TFModel;->locate(FFF)V

    .line 59
    iget v6, p0, Lcom/nemustech/tiffany/world/TFBookHolder;->mHeadModelIndex:I

    if-ge p3, v6, :cond_2

    .line 60
    iget v6, p0, Lcom/nemustech/tiffany/world/TFBookHolder;->mInitialAngle:F

    iget v7, p0, Lcom/nemustech/tiffany/world/TFBookHolder;->mSpreadAngle:F

    add-float/2addr v6, v7

    neg-float v6, v6

    iget v7, p0, Lcom/nemustech/tiffany/world/TFBookHolder;->mFlipDirection:I

    int-to-float v7, v7

    mul-float v2, v6, v7

    .line 82
    .local v2, rotateAngle:F
    :goto_1
    const/high16 v6, 0x43b4

    cmpl-float v6, v2, v6

    if-ltz v6, :cond_6

    const/high16 v6, 0x43b4

    sub-float/2addr v2, v6

    .line 85
    :cond_0
    :goto_2
    iget v6, p0, Lcom/nemustech/tiffany/world/TFBookHolder;->mFlipOrientation:I

    if-nez v6, :cond_7

    .line 86
    const/4 v6, 0x0

    invoke-virtual {p1, v2, v6}, Lcom/nemustech/tiffany/world/TFModel;->look(FF)V

    .line 89
    :goto_3
    return-void

    .line 53
    .end local v2           #rotateAngle:F
    .end local v3           #x:F
    .end local v4           #y:F
    .end local v5           #z:F
    :cond_1
    const/4 v3, 0x0

    .line 54
    .restart local v3       #x:F
    const/high16 v6, 0x3f00

    invoke-virtual {p1}, Lcom/nemustech/tiffany/world/TFModel;->getHeight()F

    move-result v7

    mul-float/2addr v6, v7

    const v7, 0x3b656042

    iget v8, p0, Lcom/nemustech/tiffany/world/TFBookHolder;->mHeadModelIndex:I

    sub-int v8, p3, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    int-to-float v8, v8

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    neg-float v6, v6

    iget v7, p0, Lcom/nemustech/tiffany/world/TFBookHolder;->mFlipDirection:I

    int-to-float v7, v7

    mul-float v4, v6, v7

    .restart local v4       #y:F
    goto :goto_0

    .line 62
    .restart local v5       #z:F
    :cond_2
    iget v6, p0, Lcom/nemustech/tiffany/world/TFBookHolder;->mHeadModelIndex:I

    if-le p3, v6, :cond_3

    .line 63
    iget v6, p0, Lcom/nemustech/tiffany/world/TFBookHolder;->mInitialAngle:F

    neg-float v6, v6

    iget v7, p0, Lcom/nemustech/tiffany/world/TFBookHolder;->mFlipDirection:I

    int-to-float v7, v7

    mul-float v2, v6, v7

    .restart local v2       #rotateAngle:F
    goto :goto_1

    .line 67
    .end local v2           #rotateAngle:F
    :cond_3
    iget v6, p0, Lcom/nemustech/tiffany/world/TFBookHolder;->mHeadDeviation:F

    const/4 v7, 0x0

    cmpg-float v6, v6, v7

    if-gez v6, :cond_4

    .line 68
    const/high16 v6, 0x3f80

    iget v7, p0, Lcom/nemustech/tiffany/world/TFBookHolder;->mHeadDeviation:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const/high16 v8, 0x3f00

    div-float/2addr v7, v8

    sub-float v0, v6, v7

    .line 69
    .local v0, determinant:F
    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/world/TFBookHolder;->getPageFlipFactor(F)F

    move-result v1

    .line 70
    .local v1, factor:F
    iget v6, p0, Lcom/nemustech/tiffany/world/TFBookHolder;->mInitialAngle:F

    iget v7, p0, Lcom/nemustech/tiffany/world/TFBookHolder;->mPageLiftAngle:F

    mul-float/2addr v7, v1

    add-float/2addr v6, v7

    neg-float v6, v6

    iget v7, p0, Lcom/nemustech/tiffany/world/TFBookHolder;->mFlipDirection:I

    int-to-float v7, v7

    mul-float v2, v6, v7

    .restart local v2       #rotateAngle:F
    goto :goto_1

    .line 72
    .end local v0           #determinant:F
    .end local v1           #factor:F
    .end local v2           #rotateAngle:F
    :cond_4
    iget v6, p0, Lcom/nemustech/tiffany/world/TFBookHolder;->mHeadDeviation:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_5

    .line 73
    iget v6, p0, Lcom/nemustech/tiffany/world/TFBookHolder;->mHeadDeviation:F

    const/high16 v7, 0x3f00

    div-float v0, v6, v7

    .line 74
    .restart local v0       #determinant:F
    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/world/TFBookHolder;->getPageFlipFactor(F)F

    move-result v1

    .line 75
    .restart local v1       #factor:F
    iget v6, p0, Lcom/nemustech/tiffany/world/TFBookHolder;->mInitialAngle:F

    iget v7, p0, Lcom/nemustech/tiffany/world/TFBookHolder;->mPageLiftAngle:F

    add-float/2addr v6, v7

    iget v7, p0, Lcom/nemustech/tiffany/world/TFBookHolder;->mSpreadAngle:F

    iget v8, p0, Lcom/nemustech/tiffany/world/TFBookHolder;->mPageLiftAngle:F

    sub-float/2addr v7, v8

    mul-float/2addr v7, v1

    add-float/2addr v6, v7

    neg-float v6, v6

    iget v7, p0, Lcom/nemustech/tiffany/world/TFBookHolder;->mFlipDirection:I

    int-to-float v7, v7

    mul-float v2, v6, v7

    .restart local v2       #rotateAngle:F
    goto/16 :goto_1

    .line 78
    .end local v0           #determinant:F
    .end local v1           #factor:F
    .end local v2           #rotateAngle:F
    :cond_5
    iget v6, p0, Lcom/nemustech/tiffany/world/TFBookHolder;->mInitialAngle:F

    iget v7, p0, Lcom/nemustech/tiffany/world/TFBookHolder;->mPageLiftAngle:F

    add-float/2addr v6, v7

    neg-float v6, v6

    iget v7, p0, Lcom/nemustech/tiffany/world/TFBookHolder;->mFlipDirection:I

    int-to-float v7, v7

    mul-float v2, v6, v7

    .restart local v2       #rotateAngle:F
    goto/16 :goto_1

    .line 83
    :cond_6
    const/4 v6, 0x0

    cmpg-float v6, v2, v6

    if-gez v6, :cond_0

    const/high16 v6, 0x43b4

    add-float/2addr v2, v6

    goto/16 :goto_2

    .line 88
    :cond_7
    const/4 v6, 0x0

    invoke-virtual {p1, v6, v2}, Lcom/nemustech/tiffany/world/TFModel;->look(FF)V

    goto/16 :goto_3
.end method

.method protected modelSelectedBehavior(Lcom/nemustech/tiffany/world/TFModel;)V
    .locals 4
    .parameter "selectedModel"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 100
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFBookHolder;->mMoveAni:Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;

    invoke-virtual {v0, v2}, Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;->reset(Z)V

    .line 101
    invoke-virtual {p0, p1}, Lcom/nemustech/tiffany/world/TFBookHolder;->getModelIndex(Lcom/nemustech/tiffany/world/TFModel;)I

    move-result v0

    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFBookHolder;->getHeadModelIndex()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 102
    invoke-virtual {p0, p1}, Lcom/nemustech/tiffany/world/TFBookHolder;->getModelIndex(Lcom/nemustech/tiffany/world/TFModel;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/world/TFBookHolder;->getItemIndexOfModel(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, v3}, Lcom/nemustech/tiffany/world/TFBookHolder;->setHeadItemIndex(IZ)V

    .line 109
    :goto_0
    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFBookHolder;->mMoveAni:Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;

    invoke-virtual {v0, v2}, Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;->reset(Z)V

    .line 107
    invoke-virtual {p0, p1}, Lcom/nemustech/tiffany/world/TFBookHolder;->getModelIndex(Lcom/nemustech/tiffany/world/TFModel;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/world/TFBookHolder;->getItemIndexOfModel(I)I

    move-result v0

    invoke-virtual {p0, v0, v3}, Lcom/nemustech/tiffany/world/TFBookHolder;->setHeadItemIndex(IZ)V

    goto :goto_0
.end method

.method protected onAddModel(Lcom/nemustech/tiffany/world/TFModel;I)V
    .locals 3
    .parameter "model"
    .parameter "modelIndex"

    .prologue
    const/4 v2, 0x1

    .line 22
    iput-boolean v2, p1, Lcom/nemustech/tiffany/world/TFModel;->mShouldRotateFirst:Z

    .line 23
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFBookHolder;->getModelCount()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 24
    const/high16 v0, 0x3f80

    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFBookHolder;->getModelCount()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/nemustech/tiffany/world/TFBookHolder;->mModelPositionGap:F

    .line 26
    :goto_0
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFBookHolder;->getModelCount()I

    move-result v0

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/nemustech/tiffany/world/TFBookHolder;->mHeadModelIndex:I

    .line 27
    const-string v0, "GFBookHolder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "headModelIndex is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/nemustech/tiffany/world/TFBookHolder;->mHeadModelIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    return-void

    .line 25
    :cond_0
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFBookHolder;->getModelCount()I

    move-result v0

    sub-int/2addr v0, v2

    div-int v0, v2, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/nemustech/tiffany/world/TFBookHolder;->mModelPositionGap:F

    goto :goto_0
.end method

.method protected onRemoveModel(Lcom/nemustech/tiffany/world/TFModel;I)V
    .locals 0
    .parameter "model"
    .parameter "modelIndex"

    .prologue
    .line 33
    return-void
.end method

.method public setPageFlipFactorProvider(Lcom/nemustech/tiffany/world/TFBookHolder$PageFlipFactorProvider;)V
    .locals 0
    .parameter "factorProvider"

    .prologue
    .line 128
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFBookHolder;->mPageFlipFactorProvider:Lcom/nemustech/tiffany/world/TFBookHolder$PageFlipFactorProvider;

    .line 129
    return-void
.end method
