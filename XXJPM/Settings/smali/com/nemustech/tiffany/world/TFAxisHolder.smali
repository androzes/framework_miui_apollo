.class public abstract Lcom/nemustech/tiffany/world/TFAxisHolder;
.super Lcom/nemustech/tiffany/world/TFSimpleHolder;
.source "TFAxisHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nemustech/tiffany/world/TFAxisHolder$PitchAndRollAnimation;,
        Lcom/nemustech/tiffany/world/TFAxisHolder$RadiusAnimation;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TFAxisHolder"


# instance fields
.field protected mBorderAngle:F

.field protected mClockwise:Z

.field protected mHeadAngle:F

.field protected mOpenRangeAngle:F

.field protected mPitchAndRollAni:Lcom/nemustech/tiffany/world/TFAxisHolder$PitchAndRollAnimation;

.field protected mRadius:F

.field protected mRadiusAni:Lcom/nemustech/tiffany/world/TFAxisHolder$RadiusAnimation;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nemustech/tiffany/world/TFAxisHolder;-><init>(F)V

    .line 13
    return-void
.end method

.method public constructor <init>(F)V
    .locals 1
    .parameter "radius"

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/nemustech/tiffany/world/TFSimpleHolder;-><init>()V

    .line 8
    iput p1, p0, Lcom/nemustech/tiffany/world/TFAxisHolder;->mRadius:F

    .line 9
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/world/TFAxisHolder;->setPriorAxis(I)V

    .line 10
    return-void
.end method


# virtual methods
.method protected getModelPosition(I)F
    .locals 3
    .parameter "modelIndex"

    .prologue
    .line 29
    iget v1, p0, Lcom/nemustech/tiffany/world/TFAxisHolder;->mHeadModelIndex:I

    sub-int v1, p1, v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFAxisHolder;->getModelCount()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 30
    .local v0, position:F
    return v0
.end method

.method public getRadius()F
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/nemustech/tiffany/world/TFAxisHolder;->mRadius:F

    return v0
.end method

.method protected getTargetDegree(F)F
    .locals 7
    .parameter "modelPosition"

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFAxisHolder;->getModelCount()I

    move-result v1

    .line 35
    .local v1, modelCount:I
    const/high16 v5, 0x43b4

    iget v6, p0, Lcom/nemustech/tiffany/world/TFAxisHolder;->mOpenRangeAngle:F

    sub-float v0, v5, v6

    .line 36
    .local v0, availDegree:F
    int-to-float v5, v1

    div-float v4, v0, v5

    .line 37
    .local v4, unitDegree:F
    add-int/lit8 v5, v1, 0x1

    int-to-float v5, v5

    mul-float v3, v4, v5

    .line 38
    .local v3, theoDegree:F
    mul-float v2, p1, v3

    .line 40
    .local v2, targetDegree:F
    const/4 v5, 0x0

    cmpg-float v5, v2, v5

    if-gez v5, :cond_1

    neg-float v5, v4

    cmpl-float v5, v2, v5

    if-lez v5, :cond_1

    .line 41
    iget v5, p0, Lcom/nemustech/tiffany/world/TFAxisHolder;->mOpenRangeAngle:F

    div-float v6, v2, v4

    mul-float v2, v5, v6

    .line 45
    :cond_0
    :goto_0
    return v2

    .line 42
    :cond_1
    neg-float v5, v4

    cmpg-float v5, v2, v5

    if-gtz v5, :cond_0

    .line 43
    iget v5, p0, Lcom/nemustech/tiffany/world/TFAxisHolder;->mOpenRangeAngle:F

    neg-float v5, v5

    add-float v6, v2, v4

    add-float v2, v5, v6

    goto :goto_0
.end method

.method protected isInEffectAnimation()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 50
    invoke-super {p0}, Lcom/nemustech/tiffany/world/TFSimpleHolder;->isInEffectAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 56
    :goto_0
    return v0

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFAxisHolder;->mRadiusAni:Lcom/nemustech/tiffany/world/TFAxisHolder$RadiusAnimation;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFAxisHolder;->mRadiusAni:Lcom/nemustech/tiffany/world/TFAxisHolder$RadiusAnimation;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/world/TFAxisHolder$RadiusAnimation;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 53
    goto :goto_0

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFAxisHolder;->mPitchAndRollAni:Lcom/nemustech/tiffany/world/TFAxisHolder$PitchAndRollAnimation;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFAxisHolder;->mPitchAndRollAni:Lcom/nemustech/tiffany/world/TFAxisHolder$PitchAndRollAnimation;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/world/TFAxisHolder$PitchAndRollAnimation;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 55
    goto :goto_0

    .line 56
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAddModel(Lcom/nemustech/tiffany/world/TFModel;I)V
    .locals 1
    .parameter "model"
    .parameter "modelIndex"

    .prologue
    .line 17
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/nemustech/tiffany/world/TFModel;->setPriorAction(I)V

    .line 19
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFAxisHolder;->getModelCount()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/nemustech/tiffany/world/TFAxisHolder;->mHeadModelIndex:I

    .line 20
    return-void
.end method

.method protected onRemoveModel(Lcom/nemustech/tiffany/world/TFModel;I)V
    .locals 2
    .parameter "model"
    .parameter "modelIndex"

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFAxisHolder;->getModelCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/nemustech/tiffany/world/TFAxisHolder;->mHeadModelIndex:I

    .line 25
    return-void
.end method

.method public setOpenRangeAngle(F)V
    .locals 0
    .parameter "angle"

    .prologue
    .line 195
    iput p1, p0, Lcom/nemustech/tiffany/world/TFAxisHolder;->mOpenRangeAngle:F

    .line 196
    return-void
.end method

.method public setRadius(F)V
    .locals 0
    .parameter "radius"

    .prologue
    .line 72
    iput p1, p0, Lcom/nemustech/tiffany/world/TFAxisHolder;->mRadius:F

    .line 73
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFAxisHolder;->requestLayout()V

    .line 74
    return-void
.end method

.method public startPitchAndRoll(I)V
    .locals 2
    .parameter "periodInMSec"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFAxisHolder;->mPitchAndRollAni:Lcom/nemustech/tiffany/world/TFAxisHolder$PitchAndRollAnimation;

    if-nez v0, :cond_0

    .line 138
    new-instance v0, Lcom/nemustech/tiffany/world/TFAxisHolder$PitchAndRollAnimation;

    invoke-direct {v0, p0}, Lcom/nemustech/tiffany/world/TFAxisHolder$PitchAndRollAnimation;-><init>(Lcom/nemustech/tiffany/world/TFAxisHolder;)V

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFAxisHolder;->mPitchAndRollAni:Lcom/nemustech/tiffany/world/TFAxisHolder$PitchAndRollAnimation;

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFAxisHolder;->mPitchAndRollAni:Lcom/nemustech/tiffany/world/TFAxisHolder$PitchAndRollAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/world/TFAxisHolder$PitchAndRollAnimation;->reset(Z)V

    .line 141
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFAxisHolder;->mPitchAndRollAni:Lcom/nemustech/tiffany/world/TFAxisHolder$PitchAndRollAnimation;

    invoke-virtual {v0, p1}, Lcom/nemustech/tiffany/world/TFAxisHolder$PitchAndRollAnimation;->setPeriod(I)V

    .line 142
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFAxisHolder;->mPitchAndRollAni:Lcom/nemustech/tiffany/world/TFAxisHolder$PitchAndRollAnimation;

    invoke-virtual {v0, p1}, Lcom/nemustech/tiffany/world/TFAxisHolder$PitchAndRollAnimation;->setDuration(I)V

    .line 143
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFAxisHolder;->mPitchAndRollAni:Lcom/nemustech/tiffany/world/TFAxisHolder$PitchAndRollAnimation;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/world/TFAxisHolder$PitchAndRollAnimation;->start()V

    .line 144
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFAxisHolder;->requestLayout()V

    .line 145
    return-void
.end method

.method public startRadiusAni(F)V
    .locals 1
    .parameter "destRadius"

    .prologue
    .line 83
    const/16 v0, 0x3e8

    invoke-virtual {p0, p1, v0}, Lcom/nemustech/tiffany/world/TFAxisHolder;->startRadiusAni(FI)V

    .line 84
    return-void
.end method

.method public startRadiusAni(FI)V
    .locals 2
    .parameter "destRadius"
    .parameter "durationInMSec"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFAxisHolder;->mRadiusAni:Lcom/nemustech/tiffany/world/TFAxisHolder$RadiusAnimation;

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Lcom/nemustech/tiffany/world/TFAxisHolder$RadiusAnimation;

    invoke-direct {v0, p0}, Lcom/nemustech/tiffany/world/TFAxisHolder$RadiusAnimation;-><init>(Lcom/nemustech/tiffany/world/TFAxisHolder;)V

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFAxisHolder;->mRadiusAni:Lcom/nemustech/tiffany/world/TFAxisHolder$RadiusAnimation;

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFAxisHolder;->mRadiusAni:Lcom/nemustech/tiffany/world/TFAxisHolder$RadiusAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/world/TFAxisHolder$RadiusAnimation;->reset(Z)V

    .line 90
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFAxisHolder;->mRadiusAni:Lcom/nemustech/tiffany/world/TFAxisHolder$RadiusAnimation;

    invoke-virtual {v0, p1}, Lcom/nemustech/tiffany/world/TFAxisHolder$RadiusAnimation;->setDestRadius(F)V

    .line 91
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFAxisHolder;->mRadiusAni:Lcom/nemustech/tiffany/world/TFAxisHolder$RadiusAnimation;

    invoke-virtual {v0, p2}, Lcom/nemustech/tiffany/world/TFAxisHolder$RadiusAnimation;->setDuration(I)V

    .line 92
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFAxisHolder;->mRadiusAni:Lcom/nemustech/tiffany/world/TFAxisHolder$RadiusAnimation;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/world/TFAxisHolder$RadiusAnimation;->start()V

    .line 93
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFAxisHolder;->requestLayout()V

    .line 94
    return-void
.end method

.method public stopPitchAndRoll()V
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFAxisHolder;->mPitchAndRollAni:Lcom/nemustech/tiffany/world/TFAxisHolder$PitchAndRollAnimation;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/nemustech/tiffany/world/TFAxisHolder$PitchAndRollAnimation;->mRepeat:Z

    .line 149
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFAxisHolder;->mPitchAndRollAni:Lcom/nemustech/tiffany/world/TFAxisHolder$PitchAndRollAnimation;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/world/TFAxisHolder$PitchAndRollAnimation;->stop()V

    .line 150
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFAxisHolder;->requestLayout()V

    .line 151
    return-void
.end method

.method public updateLayout(I)Z
    .locals 2
    .parameter "tickPassed"

    .prologue
    .line 60
    const/4 v0, 0x0

    .line 62
    .local v0, updated:Z
    invoke-super {p0, p1}, Lcom/nemustech/tiffany/world/TFSimpleHolder;->updateLayout(I)Z

    move-result v0

    .line 63
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFAxisHolder;->mRadiusAni:Lcom/nemustech/tiffany/world/TFAxisHolder$RadiusAnimation;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFAxisHolder;->mRadiusAni:Lcom/nemustech/tiffany/world/TFAxisHolder$RadiusAnimation;

    invoke-virtual {v1, p1}, Lcom/nemustech/tiffany/world/TFAxisHolder$RadiusAnimation;->update(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    const/4 v0, 0x1

    .line 65
    :cond_0
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFAxisHolder;->mPitchAndRollAni:Lcom/nemustech/tiffany/world/TFAxisHolder$PitchAndRollAnimation;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFAxisHolder;->mPitchAndRollAni:Lcom/nemustech/tiffany/world/TFAxisHolder$PitchAndRollAnimation;

    invoke-virtual {v1, p1}, Lcom/nemustech/tiffany/world/TFAxisHolder$PitchAndRollAnimation;->update(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 66
    const/4 v0, 0x1

    .line 68
    :cond_1
    return v0
.end method
