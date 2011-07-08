.class public Lcom/nemustech/tiffany/world/TFHorizontalAxisHolder;
.super Lcom/nemustech/tiffany/world/TFAxisHolder;
.source "TFHorizontalAxisHolder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TFHorizontalAxisHolder"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, v0, v0}, Lcom/nemustech/tiffany/world/TFHorizontalAxisHolder;-><init>(FF)V

    .line 28
    return-void
.end method

.method public constructor <init>(FF)V
    .locals 2
    .parameter "radius"
    .parameter "headAngle"

    .prologue
    const/high16 v1, 0x4334

    .line 13
    invoke-direct {p0, p1}, Lcom/nemustech/tiffany/world/TFAxisHolder;-><init>(F)V

    .line 15
    const/high16 v0, 0x42b4

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x4387

    cmpl-float v0, p2, v0

    if-lez v0, :cond_1

    .line 16
    :cond_0
    invoke-static {p2}, Lcom/nemustech/tiffany/world/TFUtils;->filterAngle(F)F

    move-result v0

    iput v0, p0, Lcom/nemustech/tiffany/world/TFHorizontalAxisHolder;->mHeadAngle:F

    .line 17
    iget v0, p0, Lcom/nemustech/tiffany/world/TFHorizontalAxisHolder;->mHeadAngle:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Lcom/nemustech/tiffany/world/TFUtils;->filterAngle(F)F

    move-result v0

    iput v0, p0, Lcom/nemustech/tiffany/world/TFHorizontalAxisHolder;->mBorderAngle:F

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nemustech/tiffany/world/TFHorizontalAxisHolder;->mClockwise:Z

    .line 24
    :goto_0
    return-void

    .line 20
    :cond_1
    add-float v0, p2, v1

    invoke-static {v0}, Lcom/nemustech/tiffany/world/TFUtils;->filterAngle(F)F

    move-result v0

    iput v0, p0, Lcom/nemustech/tiffany/world/TFHorizontalAxisHolder;->mHeadAngle:F

    .line 21
    iget v0, p0, Lcom/nemustech/tiffany/world/TFHorizontalAxisHolder;->mHeadAngle:F

    add-float/2addr v0, v1

    invoke-static {v0}, Lcom/nemustech/tiffany/world/TFUtils;->filterAngle(F)F

    move-result v0

    iput v0, p0, Lcom/nemustech/tiffany/world/TFHorizontalAxisHolder;->mBorderAngle:F

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nemustech/tiffany/world/TFHorizontalAxisHolder;->mClockwise:Z

    goto :goto_0
.end method


# virtual methods
.method protected calcTouchVectorMagnitude([FI)F
    .locals 3
    .parameter "forceVector"
    .parameter "tickPassed"

    .prologue
    const/4 v2, 0x1

    .line 47
    iget-boolean v0, p0, Lcom/nemustech/tiffany/world/TFHorizontalAxisHolder;->mClockwise:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    int-to-float v0, v0

    const/4 v1, 0x5

    aget v1, p1, v1

    aget v2, p1, v2

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method protected locateModel(Lcom/nemustech/tiffany/world/TFModel;FI)V
    .locals 8
    .parameter "model"
    .parameter "modelPosition"
    .parameter "modelIndex"

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 34
    const/4 v0, 0x0

    .line 35
    .local v0, x:F
    iget-boolean v3, p0, Lcom/nemustech/tiffany/world/TFHorizontalAxisHolder;->mClockwise:Z

    if-eqz v3, :cond_0

    move v3, v7

    :goto_0
    int-to-float v3, v3

    iget v4, p1, Lcom/nemustech/tiffany/world/TFModel;->mHeight:F

    iget v5, p0, Lcom/nemustech/tiffany/world/TFHorizontalAxisHolder;->mRadius:F

    add-float/2addr v4, v5

    mul-float/2addr v3, v4

    const/high16 v4, 0x4000

    div-float v1, v3, v4

    .line 36
    .local v1, y:F
    const/4 v2, 0x0

    .line 37
    .local v2, z:F
    invoke-virtual {p1, v0, v1, v2}, Lcom/nemustech/tiffany/world/TFModel;->locate(FFF)V

    .line 39
    const/4 v0, 0x0

    .line 40
    iget-boolean v3, p0, Lcom/nemustech/tiffany/world/TFHorizontalAxisHolder;->mClockwise:Z

    if-eqz v3, :cond_1

    move v3, v6

    :goto_1
    int-to-float v3, v3

    invoke-virtual {p0, p2}, Lcom/nemustech/tiffany/world/TFHorizontalAxisHolder;->getTargetDegree(F)F

    move-result v4

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/nemustech/tiffany/world/TFHorizontalAxisHolder;->mHeadAngle:F

    add-float v1, v3, v4

    .line 41
    const/4 v2, 0x0

    .line 42
    invoke-virtual {p1, v0, v1}, Lcom/nemustech/tiffany/world/TFModel;->look(FF)V

    .line 43
    return-void

    .end local v1           #y:F
    .end local v2           #z:F
    :cond_0
    move v3, v6

    .line 35
    goto :goto_0

    .restart local v1       #y:F
    .restart local v2       #z:F
    :cond_1
    move v3, v7

    .line 40
    goto :goto_1
.end method
