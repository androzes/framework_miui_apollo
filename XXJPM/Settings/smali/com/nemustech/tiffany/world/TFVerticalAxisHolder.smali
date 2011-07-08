.class public Lcom/nemustech/tiffany/world/TFVerticalAxisHolder;
.super Lcom/nemustech/tiffany/world/TFAxisHolder;
.source "TFVerticalAxisHolder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TFVerticalAxisHolder"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, v0, v0}, Lcom/nemustech/tiffany/world/TFVerticalAxisHolder;-><init>(FF)V

    .line 28
    return-void
.end method

.method public constructor <init>(FF)V
    .locals 3
    .parameter "radius"
    .parameter "headAngle"

    .prologue
    const/high16 v2, 0x42b4

    const/high16 v1, 0x4334

    .line 13
    invoke-direct {p0, p1}, Lcom/nemustech/tiffany/world/TFAxisHolder;-><init>(F)V

    .line 15
    cmpl-float v0, p2, v1

    if-lez v0, :cond_0

    .line 16
    add-float v0, p2, v2

    invoke-static {v0}, Lcom/nemustech/tiffany/world/TFUtils;->filterAngle(F)F

    move-result v0

    iput v0, p0, Lcom/nemustech/tiffany/world/TFVerticalAxisHolder;->mHeadAngle:F

    .line 17
    iget v0, p0, Lcom/nemustech/tiffany/world/TFVerticalAxisHolder;->mHeadAngle:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Lcom/nemustech/tiffany/world/TFUtils;->filterAngle(F)F

    move-result v0

    iput v0, p0, Lcom/nemustech/tiffany/world/TFVerticalAxisHolder;->mBorderAngle:F

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nemustech/tiffany/world/TFVerticalAxisHolder;->mClockwise:Z

    .line 24
    :goto_0
    return-void

    .line 20
    :cond_0
    sub-float v0, p2, v2

    invoke-static {v0}, Lcom/nemustech/tiffany/world/TFUtils;->filterAngle(F)F

    move-result v0

    iput v0, p0, Lcom/nemustech/tiffany/world/TFVerticalAxisHolder;->mHeadAngle:F

    .line 21
    iget v0, p0, Lcom/nemustech/tiffany/world/TFVerticalAxisHolder;->mHeadAngle:F

    add-float/2addr v0, v1

    invoke-static {v0}, Lcom/nemustech/tiffany/world/TFUtils;->filterAngle(F)F

    move-result v0

    iput v0, p0, Lcom/nemustech/tiffany/world/TFVerticalAxisHolder;->mBorderAngle:F

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nemustech/tiffany/world/TFVerticalAxisHolder;->mClockwise:Z

    goto :goto_0
.end method


# virtual methods
.method protected calcTouchVectorMagnitude([FI)F
    .locals 3
    .parameter "forceVector"
    .parameter "tickPassed"

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/nemustech/tiffany/world/TFVerticalAxisHolder;->mClockwise:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-float v0, v0

    const/4 v1, 0x4

    aget v1, p1, v1

    const/4 v2, 0x0

    aget v2, p1, v2

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method protected locateModel(Lcom/nemustech/tiffany/world/TFModel;FI)V
    .locals 9
    .parameter "model"
    .parameter "modelPosition"
    .parameter "modelIndex"

    .prologue
    const/4 v8, 0x1

    const/4 v7, -0x1

    const/high16 v6, 0x4000

    .line 34
    iget-boolean v3, p0, Lcom/nemustech/tiffany/world/TFVerticalAxisHolder;->mClockwise:Z

    if-eqz v3, :cond_1

    move v3, v7

    :goto_0
    int-to-float v3, v3

    iget v4, p1, Lcom/nemustech/tiffany/world/TFModel;->mWidth:F

    iget v5, p0, Lcom/nemustech/tiffany/world/TFVerticalAxisHolder;->mRadius:F

    add-float/2addr v4, v5

    mul-float/2addr v3, v4

    div-float v0, v3, v6

    .line 35
    .local v0, x:F
    iget v3, p1, Lcom/nemustech/tiffany/world/TFModel;->mHeight:F

    div-float v1, v3, v6

    .line 36
    .local v1, y:F
    const/4 v2, 0x0

    .line 38
    .local v2, z:F
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFVerticalAxisHolder;->mPitchAndRollAni:Lcom/nemustech/tiffany/world/TFAxisHolder$PitchAndRollAnimation;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFVerticalAxisHolder;->mPitchAndRollAni:Lcom/nemustech/tiffany/world/TFAxisHolder$PitchAndRollAnimation;

    invoke-virtual {v3}, Lcom/nemustech/tiffany/world/TFAxisHolder$PitchAndRollAnimation;->hasEnded()Z

    move-result v3

    if-nez v3, :cond_0

    .line 39
    const v3, 0x3dcccccd

    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFVerticalAxisHolder;->mPitchAndRollAni:Lcom/nemustech/tiffany/world/TFAxisHolder$PitchAndRollAnimation;

    invoke-virtual {v4, p2}, Lcom/nemustech/tiffany/world/TFAxisHolder$PitchAndRollAnimation;->getOffset(F)F

    move-result v4

    mul-float/2addr v3, v4

    add-float/2addr v1, v3

    .line 41
    :cond_0
    invoke-virtual {p1, v0, v1, v2}, Lcom/nemustech/tiffany/world/TFModel;->locate(FFF)V

    .line 43
    iget-boolean v3, p0, Lcom/nemustech/tiffany/world/TFVerticalAxisHolder;->mClockwise:Z

    if-eqz v3, :cond_2

    move v3, v7

    :goto_1
    int-to-float v3, v3

    invoke-virtual {p0, p2}, Lcom/nemustech/tiffany/world/TFVerticalAxisHolder;->getTargetDegree(F)F

    move-result v4

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/nemustech/tiffany/world/TFVerticalAxisHolder;->mHeadAngle:F

    add-float v0, v3, v4

    .line 44
    const/4 v1, 0x0

    .line 45
    const/4 v2, 0x0

    .line 46
    invoke-virtual {p1, v0, v1}, Lcom/nemustech/tiffany/world/TFModel;->look(FF)V

    .line 47
    return-void

    .end local v0           #x:F
    .end local v1           #y:F
    .end local v2           #z:F
    :cond_1
    move v3, v8

    .line 34
    goto :goto_0

    .restart local v0       #x:F
    .restart local v1       #y:F
    .restart local v2       #z:F
    :cond_2
    move v3, v8

    .line 43
    goto :goto_1
.end method
