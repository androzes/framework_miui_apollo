.class public Lcom/nemustech/tiffany/world/TFCircularHolder;
.super Lcom/nemustech/tiffany/world/TFSimpleHolder;
.source "TFCircularHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nemustech/tiffany/world/TFCircularHolder$PitchAndRollAnimation;,
        Lcom/nemustech/tiffany/world/TFCircularHolder$RadiusAnimation;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TFCircularHolder"


# instance fields
.field protected mHeadRadius:F

.field protected mPitchAndRollAni:Lcom/nemustech/tiffany/world/TFCircularHolder$PitchAndRollAnimation;

.field protected mRadius:F

.field protected mRadiusAni:Lcom/nemustech/tiffany/world/TFCircularHolder$RadiusAnimation;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    const/high16 v0, 0x3f80

    invoke-direct {p0, v0}, Lcom/nemustech/tiffany/world/TFCircularHolder;-><init>(F)V

    .line 12
    return-void
.end method

.method public constructor <init>(F)V
    .locals 0
    .parameter "radius"

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/nemustech/tiffany/world/TFSimpleHolder;-><init>()V

    .line 8
    iput p1, p0, Lcom/nemustech/tiffany/world/TFCircularHolder;->mRadius:F

    .line 9
    return-void
.end method


# virtual methods
.method protected calcTouchVectorMagnitude([FI)F
    .locals 2
    .parameter "forceVector"
    .parameter "tickPassed"

    .prologue
    .line 69
    const/4 v0, 0x4

    aget v0, p1, v0

    const/4 v1, 0x0

    aget v1, p1, v1

    sub-float/2addr v0, v1

    neg-float v0, v0

    return v0
.end method

.method protected getModelPosition(I)F
    .locals 3
    .parameter "modelIndex"

    .prologue
    .line 28
    iget v1, p0, Lcom/nemustech/tiffany/world/TFCircularHolder;->mHeadModelIndex:I

    sub-int v1, p1, v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFCircularHolder;->getModelCount()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 29
    .local v0, position:F
    return v0
.end method

.method public getRadius()F
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/nemustech/tiffany/world/TFCircularHolder;->mRadius:F

    return v0
.end method

.method protected isInEffectAnimation()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 74
    invoke-super {p0}, Lcom/nemustech/tiffany/world/TFSimpleHolder;->isInEffectAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 80
    :goto_0
    return v0

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFCircularHolder;->mRadiusAni:Lcom/nemustech/tiffany/world/TFCircularHolder$RadiusAnimation;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFCircularHolder;->mRadiusAni:Lcom/nemustech/tiffany/world/TFCircularHolder$RadiusAnimation;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/world/TFCircularHolder$RadiusAnimation;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 77
    goto :goto_0

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFCircularHolder;->mPitchAndRollAni:Lcom/nemustech/tiffany/world/TFCircularHolder$PitchAndRollAnimation;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFCircularHolder;->mPitchAndRollAni:Lcom/nemustech/tiffany/world/TFCircularHolder$PitchAndRollAnimation;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/world/TFCircularHolder$PitchAndRollAnimation;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 79
    goto :goto_0

    .line 80
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected locateModel(Lcom/nemustech/tiffany/world/TFModel;FI)V
    .locals 7
    .parameter "model"
    .parameter "modelPosition"
    .parameter "modelIndex"

    .prologue
    const/high16 v6, 0x4000

    .line 35
    const/4 v1, 0x0

    .line 36
    .local v1, x:F
    iget v4, p1, Lcom/nemustech/tiffany/world/TFModel;->mHeight:F

    div-float v2, v4, v6

    .line 37
    .local v2, y:F
    iget v3, p0, Lcom/nemustech/tiffany/world/TFCircularHolder;->mRadius:F

    .line 38
    .local v3, z:F
    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFCircularHolder;->mPitchAndRollAni:Lcom/nemustech/tiffany/world/TFCircularHolder$PitchAndRollAnimation;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFCircularHolder;->mPitchAndRollAni:Lcom/nemustech/tiffany/world/TFCircularHolder$PitchAndRollAnimation;

    invoke-virtual {v4}, Lcom/nemustech/tiffany/world/TFCircularHolder$PitchAndRollAnimation;->hasEnded()Z

    move-result v4

    if-nez v4, :cond_0

    .line 39
    const v4, 0x3dcccccd

    iget-object v5, p0, Lcom/nemustech/tiffany/world/TFCircularHolder;->mPitchAndRollAni:Lcom/nemustech/tiffany/world/TFCircularHolder$PitchAndRollAnimation;

    invoke-virtual {v5, p2}, Lcom/nemustech/tiffany/world/TFCircularHolder$PitchAndRollAnimation;->getOffset(F)F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v2, v4

    .line 41
    :cond_0
    iget v4, p0, Lcom/nemustech/tiffany/world/TFCircularHolder;->mHeadRadius:F

    iget v5, p0, Lcom/nemustech/tiffany/world/TFCircularHolder;->mRadius:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFCircularHolder;->getHeadModelIndex()I

    move-result v4

    if-ne p3, v4, :cond_2

    .line 42
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFCircularHolder;->getHeadDeviation()F

    move-result v4

    mul-float v0, v4, v6

    .line 43
    .local v0, t:F
    const/4 v4, 0x0

    cmpg-float v4, v0, v4

    if-gez v4, :cond_1

    .line 44
    neg-float v0, v0

    .line 45
    :cond_1
    const/high16 v4, 0x3f80

    sub-float/2addr v4, v0

    iget v5, p0, Lcom/nemustech/tiffany/world/TFCircularHolder;->mHeadRadius:F

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/nemustech/tiffany/world/TFCircularHolder;->mRadius:F

    mul-float/2addr v5, v0

    add-float v3, v4, v5

    .line 47
    .end local v0           #t:F
    :cond_2
    invoke-virtual {p1, v1, v2, v3}, Lcom/nemustech/tiffany/world/TFModel;->locate(FFF)V

    .line 48
    const/high16 v4, 0x43b4

    mul-float v1, p2, v4

    .line 49
    const/4 v2, 0x0

    .line 50
    const/4 v3, 0x0

    .line 51
    invoke-virtual {p1, v1, v2}, Lcom/nemustech/tiffany/world/TFModel;->look(FF)V

    .line 52
    return-void
.end method

.method protected onAddModel(Lcom/nemustech/tiffany/world/TFModel;I)V
    .locals 1
    .parameter "model"
    .parameter "modelIndex"

    .prologue
    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/nemustech/tiffany/world/TFModel;->mShouldRotateFirst:Z

    .line 18
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFCircularHolder;->getModelCount()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/nemustech/tiffany/world/TFCircularHolder;->mHeadModelIndex:I

    .line 19
    return-void
.end method

.method protected onRemoveModel(Lcom/nemustech/tiffany/world/TFModel;I)V
    .locals 2
    .parameter "model"
    .parameter "modelIndex"

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFCircularHolder;->getModelCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/nemustech/tiffany/world/TFCircularHolder;->mHeadModelIndex:I

    .line 24
    return-void
.end method

.method public setHeadRadius(F)V
    .locals 0
    .parameter "headRadius"

    .prologue
    .line 214
    iput p1, p0, Lcom/nemustech/tiffany/world/TFCircularHolder;->mHeadRadius:F

    .line 215
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFCircularHolder;->requestLayout()V

    .line 216
    return-void
.end method

.method public setRadius(F)V
    .locals 0
    .parameter "radius"

    .prologue
    .line 96
    iput p1, p0, Lcom/nemustech/tiffany/world/TFCircularHolder;->mRadius:F

    .line 97
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFCircularHolder;->requestLayout()V

    .line 98
    return-void
.end method

.method public startPitchAndRoll(I)V
    .locals 2
    .parameter "periodInMSec"

    .prologue
    .line 160
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFCircularHolder;->mPitchAndRollAni:Lcom/nemustech/tiffany/world/TFCircularHolder$PitchAndRollAnimation;

    if-nez v0, :cond_0

    .line 161
    new-instance v0, Lcom/nemustech/tiffany/world/TFCircularHolder$PitchAndRollAnimation;

    invoke-direct {v0, p0}, Lcom/nemustech/tiffany/world/TFCircularHolder$PitchAndRollAnimation;-><init>(Lcom/nemustech/tiffany/world/TFCircularHolder;)V

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFCircularHolder;->mPitchAndRollAni:Lcom/nemustech/tiffany/world/TFCircularHolder$PitchAndRollAnimation;

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFCircularHolder;->mPitchAndRollAni:Lcom/nemustech/tiffany/world/TFCircularHolder$PitchAndRollAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/world/TFCircularHolder$PitchAndRollAnimation;->reset(Z)V

    .line 164
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFCircularHolder;->mPitchAndRollAni:Lcom/nemustech/tiffany/world/TFCircularHolder$PitchAndRollAnimation;

    invoke-virtual {v0, p1}, Lcom/nemustech/tiffany/world/TFCircularHolder$PitchAndRollAnimation;->setPeriod(I)V

    .line 165
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFCircularHolder;->mPitchAndRollAni:Lcom/nemustech/tiffany/world/TFCircularHolder$PitchAndRollAnimation;

    invoke-virtual {v0, p1}, Lcom/nemustech/tiffany/world/TFCircularHolder$PitchAndRollAnimation;->setDuration(I)V

    .line 166
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFCircularHolder;->mPitchAndRollAni:Lcom/nemustech/tiffany/world/TFCircularHolder$PitchAndRollAnimation;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/world/TFCircularHolder$PitchAndRollAnimation;->start()V

    .line 167
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFCircularHolder;->requestLayout()V

    .line 168
    return-void
.end method

.method public startRadiusAni(F)V
    .locals 1
    .parameter "destRadius"

    .prologue
    .line 107
    const/16 v0, 0x3e8

    invoke-virtual {p0, p1, v0}, Lcom/nemustech/tiffany/world/TFCircularHolder;->startRadiusAni(FI)V

    .line 108
    return-void
.end method

.method public startRadiusAni(FI)V
    .locals 2
    .parameter "destRadius"
    .parameter "durationInMSec"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFCircularHolder;->mRadiusAni:Lcom/nemustech/tiffany/world/TFCircularHolder$RadiusAnimation;

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Lcom/nemustech/tiffany/world/TFCircularHolder$RadiusAnimation;

    invoke-direct {v0, p0}, Lcom/nemustech/tiffany/world/TFCircularHolder$RadiusAnimation;-><init>(Lcom/nemustech/tiffany/world/TFCircularHolder;)V

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFCircularHolder;->mRadiusAni:Lcom/nemustech/tiffany/world/TFCircularHolder$RadiusAnimation;

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFCircularHolder;->mRadiusAni:Lcom/nemustech/tiffany/world/TFCircularHolder$RadiusAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/world/TFCircularHolder$RadiusAnimation;->reset(Z)V

    .line 114
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFCircularHolder;->mRadiusAni:Lcom/nemustech/tiffany/world/TFCircularHolder$RadiusAnimation;

    invoke-virtual {v0, p1}, Lcom/nemustech/tiffany/world/TFCircularHolder$RadiusAnimation;->setDestRadius(F)V

    .line 115
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFCircularHolder;->mRadiusAni:Lcom/nemustech/tiffany/world/TFCircularHolder$RadiusAnimation;

    invoke-virtual {v0, p2}, Lcom/nemustech/tiffany/world/TFCircularHolder$RadiusAnimation;->setDuration(I)V

    .line 116
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFCircularHolder;->mRadiusAni:Lcom/nemustech/tiffany/world/TFCircularHolder$RadiusAnimation;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/world/TFCircularHolder$RadiusAnimation;->start()V

    .line 117
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFCircularHolder;->requestLayout()V

    .line 118
    return-void
.end method

.method public stopPitchAndRoll()V
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFCircularHolder;->mPitchAndRollAni:Lcom/nemustech/tiffany/world/TFCircularHolder$PitchAndRollAnimation;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/nemustech/tiffany/world/TFCircularHolder$PitchAndRollAnimation;->mRepeat:Z

    .line 172
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFCircularHolder;->mPitchAndRollAni:Lcom/nemustech/tiffany/world/TFCircularHolder$PitchAndRollAnimation;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/world/TFCircularHolder$PitchAndRollAnimation;->stop()V

    .line 173
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFCircularHolder;->requestLayout()V

    .line 174
    return-void
.end method

.method public updateLayout(I)Z
    .locals 2
    .parameter "tickPassed"

    .prologue
    .line 84
    const/4 v0, 0x0

    .line 86
    .local v0, updated:Z
    invoke-super {p0, p1}, Lcom/nemustech/tiffany/world/TFSimpleHolder;->updateLayout(I)Z

    move-result v0

    .line 87
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFCircularHolder;->mRadiusAni:Lcom/nemustech/tiffany/world/TFCircularHolder$RadiusAnimation;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFCircularHolder;->mRadiusAni:Lcom/nemustech/tiffany/world/TFCircularHolder$RadiusAnimation;

    invoke-virtual {v1, p1}, Lcom/nemustech/tiffany/world/TFCircularHolder$RadiusAnimation;->update(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    const/4 v0, 0x1

    .line 89
    :cond_0
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFCircularHolder;->mPitchAndRollAni:Lcom/nemustech/tiffany/world/TFCircularHolder$PitchAndRollAnimation;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFCircularHolder;->mPitchAndRollAni:Lcom/nemustech/tiffany/world/TFCircularHolder$PitchAndRollAnimation;

    invoke-virtual {v1, p1}, Lcom/nemustech/tiffany/world/TFCircularHolder$PitchAndRollAnimation;->update(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 90
    const/4 v0, 0x1

    .line 92
    :cond_1
    return v0
.end method
