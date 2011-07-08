.class public Lcom/nemustech/tiffany/world/TFWallHolder;
.super Lcom/nemustech/tiffany/world/TFGridHolder;
.source "TFWallHolder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TFWallHolder"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 13
    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/nemustech/tiffany/world/TFWallHolder;-><init>(II)V

    .line 14
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .parameter "direction"
    .parameter "groupSize"

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/nemustech/tiffany/world/TFGridHolder;-><init>()V

    .line 7
    iput p1, p0, Lcom/nemustech/tiffany/world/TFWallHolder;->mDirection:I

    .line 8
    iput p2, p0, Lcom/nemustech/tiffany/world/TFWallHolder;->mGroupSize:I

    .line 9
    const/4 v0, -0x1

    iput v0, p0, Lcom/nemustech/tiffany/world/TFWallHolder;->mScrollStartIndexOffset:I

    .line 10
    const/4 v0, 0x1

    iput v0, p0, Lcom/nemustech/tiffany/world/TFWallHolder;->mScrollEndIndexOffset:I

    .line 11
    return-void
.end method


# virtual methods
.method protected calcTouchVectorMagnitude([FI)F
    .locals 3
    .parameter "forceVector"
    .parameter "tickPassed"

    .prologue
    const/4 v1, 0x1

    const/high16 v2, 0x4040

    .line 69
    iget v0, p0, Lcom/nemustech/tiffany/world/TFWallHolder;->mDirection:I

    if-ne v0, v1, :cond_0

    .line 70
    const/4 v0, 0x5

    aget v0, p1, v0

    aget v1, p1, v1

    sub-float/2addr v0, v1

    mul-float/2addr v0, v2

    .line 72
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x4

    aget v0, p1, v0

    const/4 v1, 0x0

    aget v1, p1, v1

    sub-float/2addr v0, v1

    neg-float v0, v0

    mul-float/2addr v0, v2

    goto :goto_0
.end method

.method public getDirection()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/nemustech/tiffany/world/TFWallHolder;->mDirection:I

    return v0
.end method

.method protected locateModel(Lcom/nemustech/tiffany/world/TFModel;IFFF)V
    .locals 3
    .parameter "model"
    .parameter "modelIndex"
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    const/high16 v2, 0x4000

    .line 77
    iget v0, p0, Lcom/nemustech/tiffany/world/TFWallHolder;->mDirection:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 78
    iget v0, p0, Lcom/nemustech/tiffany/world/TFWallHolder;->mViewWidth:F

    div-float/2addr v0, v2

    sub-float/2addr p3, v0

    .line 79
    neg-float p4, p4

    .line 80
    invoke-virtual {p1, p3, p4, p5}, Lcom/nemustech/tiffany/world/TFModel;->locate(FFF)V

    .line 87
    :goto_0
    return-void

    .line 83
    :cond_0
    iget v0, p0, Lcom/nemustech/tiffany/world/TFWallHolder;->mViewWidth:F

    div-float/2addr v0, v2

    sub-float p3, v0, p3

    .line 85
    invoke-virtual {p1, p4, p3, p5}, Lcom/nemustech/tiffany/world/TFModel;->locate(FFF)V

    goto :goto_0
.end method

.method protected onAddModel(Lcom/nemustech/tiffany/world/TFModel;I)V
    .locals 2
    .parameter "model"
    .parameter "modelIndex"

    .prologue
    .line 19
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/nemustech/tiffany/world/TFModel;->setPriorAction(I)V

    .line 20
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFWallHolder;->getModelCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/world/TFWallHolder;->calcGroupCount(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/nemustech/tiffany/world/TFWallHolder;->mGroupSize:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/nemustech/tiffany/world/TFWallHolder;->mHeadModelIndex:I

    .line 21
    return-void
.end method

.method protected onRemoveModel(Lcom/nemustech/tiffany/world/TFModel;I)V
    .locals 0
    .parameter "model"
    .parameter "modelIndex"

    .prologue
    .line 24
    return-void
.end method

.method public setDirection(I)V
    .locals 0
    .parameter "direction"

    .prologue
    .line 50
    iput p1, p0, Lcom/nemustech/tiffany/world/TFWallHolder;->mDirection:I

    .line 51
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFWallHolder;->requestLayout()V

    .line 52
    return-void
.end method

.method public setItemSize(FF)V
    .locals 2
    .parameter "itemWidth"
    .parameter "itemHeight"

    .prologue
    .line 27
    iget v0, p0, Lcom/nemustech/tiffany/world/TFWallHolder;->mDirection:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 28
    iput p1, p0, Lcom/nemustech/tiffany/world/TFWallHolder;->mItemWidth:F

    .line 29
    iput p2, p0, Lcom/nemustech/tiffany/world/TFWallHolder;->mGroupHeight:F

    .line 35
    :goto_0
    return-void

    .line 32
    :cond_0
    iput p2, p0, Lcom/nemustech/tiffany/world/TFWallHolder;->mItemWidth:F

    .line 33
    iput p1, p0, Lcom/nemustech/tiffany/world/TFWallHolder;->mGroupHeight:F

    goto :goto_0
.end method

.method public setSpaces(FF)V
    .locals 2
    .parameter "horizontalSpace"
    .parameter "verticalSpace"

    .prologue
    .line 37
    iget v0, p0, Lcom/nemustech/tiffany/world/TFWallHolder;->mDirection:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 38
    iput p2, p0, Lcom/nemustech/tiffany/world/TFWallHolder;->mGroupSpace:F

    .line 39
    iput p1, p0, Lcom/nemustech/tiffany/world/TFWallHolder;->mItemSpace:F

    .line 45
    :goto_0
    iget v0, p0, Lcom/nemustech/tiffany/world/TFWallHolder;->mGroupSize:I

    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/world/TFWallHolder;->getViewWidth(I)F

    move-result v0

    iput v0, p0, Lcom/nemustech/tiffany/world/TFWallHolder;->mViewWidth:F

    .line 46
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFWallHolder;->getGroupCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/world/TFWallHolder;->getViewHeight(I)F

    move-result v0

    iput v0, p0, Lcom/nemustech/tiffany/world/TFWallHolder;->mViewHeight:F

    .line 47
    return-void

    .line 42
    :cond_0
    iput p1, p0, Lcom/nemustech/tiffany/world/TFWallHolder;->mGroupSpace:F

    .line 43
    iput p2, p0, Lcom/nemustech/tiffany/world/TFWallHolder;->mItemSpace:F

    goto :goto_0
.end method
