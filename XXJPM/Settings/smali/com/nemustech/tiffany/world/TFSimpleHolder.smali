.class public abstract Lcom/nemustech/tiffany/world/TFSimpleHolder;
.super Lcom/nemustech/tiffany/world/TFHolder;
.source "TFSimpleHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nemustech/tiffany/world/TFSimpleHolder$SimpleMoveAnimation;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TFSimpleHolder"


# instance fields
.field protected mFadingEffect:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/nemustech/tiffany/world/TFHolder;-><init>()V

    .line 9
    new-instance v0, Lcom/nemustech/tiffany/world/TFSimpleHolder$SimpleMoveAnimation;

    invoke-direct {v0, p0, p0}, Lcom/nemustech/tiffany/world/TFSimpleHolder$SimpleMoveAnimation;-><init>(Lcom/nemustech/tiffany/world/TFSimpleHolder;Lcom/nemustech/tiffany/world/TFSimpleHolder;)V

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFSimpleHolder;->mMoveAni:Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;

    .line 10
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nemustech/tiffany/world/TFSimpleHolder;->mFadingEffect:Z

    .line 11
    return-void
.end method

.method private fadingEffect(Lcom/nemustech/tiffany/world/TFModel;FI)V
    .locals 5
    .parameter "model"
    .parameter "modelPosition"
    .parameter "modelIndex"

    .prologue
    const/high16 v4, 0x3f00

    const/4 v3, 0x0

    const/high16 v2, 0x3f80

    .line 41
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFSimpleHolder;->getModelCount()I

    move-result v0

    .line 42
    .local v0, modelCount:I
    if-nez p3, :cond_0

    iget v1, p0, Lcom/nemustech/tiffany/world/TFSimpleHolder;->mHeadDeviation:F

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_0

    .line 43
    iget v1, p0, Lcom/nemustech/tiffany/world/TFSimpleHolder;->mHeadDeviation:F

    div-float/2addr v1, v4

    sub-float v1, v2, v1

    invoke-virtual {p1, v1}, Lcom/nemustech/tiffany/world/TFModel;->setOpacity(F)V

    .line 49
    :goto_0
    return-void

    .line 45
    :cond_0
    const/4 v1, 0x1

    sub-int v1, v0, v1

    if-ne p3, v1, :cond_1

    iget v1, p0, Lcom/nemustech/tiffany/world/TFSimpleHolder;->mHeadDeviation:F

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_1

    .line 46
    iget v1, p0, Lcom/nemustech/tiffany/world/TFSimpleHolder;->mHeadDeviation:F

    div-float/2addr v1, v4

    add-float/2addr v1, v2

    invoke-virtual {p1, v1}, Lcom/nemustech/tiffany/world/TFModel;->setOpacity(F)V

    goto :goto_0

    .line 48
    :cond_1
    invoke-virtual {p1, v2}, Lcom/nemustech/tiffany/world/TFModel;->setOpacity(F)V

    goto :goto_0
.end method


# virtual methods
.method public addModel(Lcom/nemustech/tiffany/world/TFModel;I)V
    .locals 1
    .parameter "model"
    .parameter "modelIndex"

    .prologue
    .line 117
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/nemustech/tiffany/world/TFSimpleHolder;->addModel(Lcom/nemustech/tiffany/world/TFModel;IZ)V

    .line 118
    return-void
.end method

.method public addModel(Lcom/nemustech/tiffany/world/TFModel;IZ)V
    .locals 0
    .parameter "model"
    .parameter "modelIndex"
    .parameter "showAnimation"

    .prologue
    .line 121
    invoke-super {p0, p1, p2}, Lcom/nemustech/tiffany/world/TFHolder;->addModel(Lcom/nemustech/tiffany/world/TFModel;I)V

    .line 124
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFSimpleHolder;->requestLayout()V

    .line 125
    return-void
.end method

.method protected abstract getModelPosition(I)F
.end method

.method public bridge synthetic getMoveAnimation()Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;
    .locals 1

    .prologue
    .line 5
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFSimpleHolder;->getMoveAnimation()Lcom/nemustech/tiffany/world/TFSimpleHolder$SimpleMoveAnimation;

    move-result-object v0

    return-object v0
.end method

.method public getMoveAnimation()Lcom/nemustech/tiffany/world/TFSimpleHolder$SimpleMoveAnimation;
    .locals 0

    .prologue
    .line 265
    iget-object p0, p0, Lcom/nemustech/tiffany/world/TFSimpleHolder;->mMoveAni:Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;

    .end local p0
    check-cast p0, Lcom/nemustech/tiffany/world/TFSimpleHolder$SimpleMoveAnimation;

    return-object p0
.end method

.method public layoutModels(F)V
    .locals 10
    .parameter "headDeviation"

    .prologue
    const/high16 v9, 0x3f80

    .line 136
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFSimpleHolder;->getModelCount()I

    move-result v0

    .line 139
    .local v0, count:I
    float-to-int v7, p1

    int-to-float v7, v7

    sub-float v6, p1, v7

    .line 142
    .local v6, t:F
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 143
    const/4 v7, 0x0

    cmpg-float v7, v6, v7

    if-gez v7, :cond_1

    .line 145
    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/world/TFSimpleHolder;->getModelPosition(I)F

    move-result v4

    .line 146
    .local v4, p1:F
    add-int/lit8 v7, v1, 0x1

    invoke-virtual {p0, v7}, Lcom/nemustech/tiffany/world/TFSimpleHolder;->getModelPosition(I)F

    move-result v5

    .line 147
    .local v5, p2:F
    neg-float v7, v6

    sub-float v7, v9, v7

    mul-float/2addr v7, v4

    neg-float v8, v6

    mul-float/2addr v8, v5

    add-float v3, v7, v8

    .line 155
    .local v3, p:F
    :goto_1
    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/world/TFSimpleHolder;->getModel(I)Lcom/nemustech/tiffany/world/TFModel;

    move-result-object v2

    .line 156
    .local v2, m:Lcom/nemustech/tiffany/world/TFModel;
    invoke-virtual {p0, v2, v3, v1}, Lcom/nemustech/tiffany/world/TFSimpleHolder;->locateModel(Lcom/nemustech/tiffany/world/TFModel;FI)V

    .line 157
    iget-boolean v7, p0, Lcom/nemustech/tiffany/world/TFSimpleHolder;->mFadingEffect:Z

    if-eqz v7, :cond_0

    .line 158
    invoke-direct {p0, v2, v3, v1}, Lcom/nemustech/tiffany/world/TFSimpleHolder;->fadingEffect(Lcom/nemustech/tiffany/world/TFModel;FI)V

    .line 142
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 151
    .end local v2           #m:Lcom/nemustech/tiffany/world/TFModel;
    .end local v3           #p:F
    .end local v4           #p1:F
    .end local v5           #p2:F
    :cond_1
    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/world/TFSimpleHolder;->getModelPosition(I)F

    move-result v4

    .line 152
    .restart local v4       #p1:F
    const/4 v7, 0x1

    sub-int v7, v1, v7

    invoke-virtual {p0, v7}, Lcom/nemustech/tiffany/world/TFSimpleHolder;->getModelPosition(I)F

    move-result v5

    .line 153
    .restart local v5       #p2:F
    sub-float v7, v9, v6

    mul-float/2addr v7, v4

    mul-float v8, v6, v5

    add-float v3, v7, v8

    .restart local v3       #p:F
    goto :goto_1

    .line 160
    .end local v3           #p:F
    .end local v4           #p1:F
    .end local v5           #p2:F
    :cond_2
    return-void
.end method

.method protected abstract locateModel(Lcom/nemustech/tiffany/world/TFModel;FI)V
.end method

.method public moveHeadModelStep(FZ)Z
    .locals 6
    .parameter "step"
    .parameter "bindingAction"

    .prologue
    .line 236
    iget v4, p0, Lcom/nemustech/tiffany/world/TFSimpleHolder;->mHeadDeviation:F

    add-float v2, p1, v4

    .line 238
    .local v2, nextStep:F
    invoke-virtual {p0, v2}, Lcom/nemustech/tiffany/world/TFSimpleHolder;->getDeviation(F)F

    move-result v0

    .line 239
    .local v0, deviation:F
    invoke-virtual {p0, v2}, Lcom/nemustech/tiffany/world/TFSimpleHolder;->getOffset(F)I

    move-result v3

    .line 242
    .local v3, offset:I
    invoke-virtual {p0, v3}, Lcom/nemustech/tiffany/world/TFSimpleHolder;->scrollHeadItemIndex(I)I

    move-result v1

    .line 243
    .local v1, moved:I
    if-ne v1, v3, :cond_1

    .line 245
    iput v0, p0, Lcom/nemustech/tiffany/world/TFSimpleHolder;->mHeadDeviation:F

    .line 252
    :goto_0
    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFSimpleHolder;->mHolderBindings:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz p2, :cond_0

    .line 253
    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFSimpleHolder;->mBindingBehaviorDispatcher:Lcom/nemustech/tiffany/world/TFHolder$BindingBehaviorDispatcher;

    if-eqz v4, :cond_2

    .line 254
    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFSimpleHolder;->mBindingBehaviorDispatcher:Lcom/nemustech/tiffany/world/TFHolder$BindingBehaviorDispatcher;

    invoke-interface {v4, p1}, Lcom/nemustech/tiffany/world/TFHolder$BindingBehaviorDispatcher;->bindingBehavior(F)V

    .line 259
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFSimpleHolder;->requestLayout()V

    .line 261
    if-ne v3, v1, :cond_3

    const/4 v4, 0x1

    :goto_2
    return v4

    .line 248
    :cond_1
    const v4, 0x3ee66666

    mul-float/2addr v4, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    div-float/2addr v4, v5

    iput v4, p0, Lcom/nemustech/tiffany/world/TFSimpleHolder;->mHeadDeviation:F

    goto :goto_0

    .line 255
    :cond_2
    invoke-virtual {p0, p1}, Lcom/nemustech/tiffany/world/TFSimpleHolder;->defaultBindingBehavior(F)V

    goto :goto_1

    .line 261
    :cond_3
    const/4 v4, 0x0

    goto :goto_2
.end method

.method public scrollHeadItemIndex(I)I
    .locals 4
    .parameter "offset"

    .prologue
    .line 167
    iget v0, p0, Lcom/nemustech/tiffany/world/TFSimpleHolder;->mHeadItemIndex:I

    .line 169
    .local v0, headIndex:I
    if-gez p1, :cond_1

    .line 171
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    neg-int v3, p1

    if-ge v1, v3, :cond_3

    .line 172
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/world/TFSimpleHolder;->adjustItemIndex(I)I

    move-result v2

    .line 173
    .local v2, newIndex:I
    if-gez v2, :cond_0

    .line 174
    neg-int v3, v1

    .line 196
    .end local v2           #newIndex:I
    :goto_1
    return v3

    .line 176
    .restart local v2       #newIndex:I
    :cond_0
    iput v2, p0, Lcom/nemustech/tiffany/world/TFSimpleHolder;->mHeadItemIndex:I

    .line 177
    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Lcom/nemustech/tiffany/world/TFSimpleHolder;->rotateModelList(I)V

    .line 171
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 184
    .end local v1           #i:I
    .end local v2           #newIndex:I
    :cond_1
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    if-ge v1, p1, :cond_3

    .line 185
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/world/TFSimpleHolder;->adjustItemIndex(I)I

    move-result v2

    .line 186
    .restart local v2       #newIndex:I
    if-gez v2, :cond_2

    move v3, v1

    .line 187
    goto :goto_1

    .line 189
    :cond_2
    iput v2, p0, Lcom/nemustech/tiffany/world/TFSimpleHolder;->mHeadItemIndex:I

    .line 190
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/nemustech/tiffany/world/TFSimpleHolder;->rotateModelList(I)V

    .line 184
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v2           #newIndex:I
    :cond_3
    move v3, p1

    .line 196
    goto :goto_1
.end method

.method public scrollHeadModelIndex(I)I
    .locals 4
    .parameter "offset"

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFSimpleHolder;->getModelCount()I

    move-result v0

    .line 206
    .local v0, count:I
    iget v2, p0, Lcom/nemustech/tiffany/world/TFSimpleHolder;->mHeadModelIndex:I

    .line 208
    .local v2, newIndex:I
    if-gez p1, :cond_1

    .line 210
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    neg-int v3, p1

    if-ge v1, v3, :cond_3

    .line 211
    add-int/lit8 v2, v2, -0x1

    .line 212
    if-gez v2, :cond_0

    .line 213
    neg-int v3, v1

    .line 232
    :goto_1
    return v3

    .line 214
    :cond_0
    iput v2, p0, Lcom/nemustech/tiffany/world/TFSimpleHolder;->mHeadModelIndex:I

    .line 215
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/nemustech/tiffany/world/TFSimpleHolder;->rotateModelList(I)V

    .line 210
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 222
    .end local v1           #i:I
    :cond_1
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    if-ge v1, p1, :cond_3

    .line 223
    add-int/lit8 v2, v2, 0x1

    .line 224
    if-lt v2, v0, :cond_2

    .line 225
    neg-int v3, v1

    goto :goto_1

    .line 226
    :cond_2
    iput v2, p0, Lcom/nemustech/tiffany/world/TFSimpleHolder;->mHeadModelIndex:I

    .line 227
    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Lcom/nemustech/tiffany/world/TFSimpleHolder;->rotateModelList(I)V

    .line 222
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    move v3, p1

    .line 232
    goto :goto_1
.end method

.method public setFadingEffect(Z)V
    .locals 0
    .parameter "fadeEffect"

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/nemustech/tiffany/world/TFSimpleHolder;->mFadingEffect:Z

    .line 38
    return-void
.end method

.method public setHeadItemIndex(IF)V
    .locals 3
    .parameter "itemIndex"
    .parameter "speed"

    .prologue
    .line 99
    invoke-virtual {p0, p1}, Lcom/nemustech/tiffany/world/TFSimpleHolder;->getItemOffsetToHead(I)I

    move-result v0

    .line 100
    .local v0, offset:I
    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-lez v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFSimpleHolder;->mMoveAni:Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;->reset(Z)V

    .line 102
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFSimpleHolder;->mMoveAni:Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;

    invoke-virtual {v1, v0, p2}, Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;->startMoveAnimation(IF)V

    .line 106
    :goto_0
    return-void

    .line 105
    :cond_0
    const-string v1, "TFSimpleHolder"

    const-string v2, "Animation speed is set to 0 in setHeadItemIndex"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setHeadItemIndex(II)V
    .locals 3
    .parameter "itemIndex"
    .parameter "duration"

    .prologue
    .line 79
    invoke-virtual {p0, p1}, Lcom/nemustech/tiffany/world/TFSimpleHolder;->getItemOffsetToHead(I)I

    move-result v0

    .line 80
    .local v0, offset:I
    if-lez p2, :cond_0

    .line 81
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFSimpleHolder;->mMoveAni:Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;->reset(Z)V

    .line 82
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFSimpleHolder;->mMoveAni:Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;

    invoke-virtual {v1, v0, p2}, Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;->startMoveAnimation(II)V

    .line 88
    :goto_0
    return-void

    .line 85
    :cond_0
    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/world/TFSimpleHolder;->scrollHeadItemIndex(I)I

    .line 86
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFSimpleHolder;->requestLayout()V

    goto :goto_0
.end method

.method public setHeadItemIndex(IZ)V
    .locals 3
    .parameter "itemIndex"
    .parameter "showAnimation"

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lcom/nemustech/tiffany/world/TFSimpleHolder;->getItemOffsetToHead(I)I

    move-result v0

    .line 61
    .local v0, offset:I
    if-eqz p2, :cond_0

    .line 62
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFSimpleHolder;->mMoveAni:Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;->reset(Z)V

    .line 63
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFSimpleHolder;->mMoveAni:Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;

    invoke-virtual {v1, v0}, Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;->startMoveAnimation(I)V

    .line 69
    :goto_0
    return-void

    .line 66
    :cond_0
    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/world/TFSimpleHolder;->scrollHeadItemIndex(I)I

    .line 67
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFSimpleHolder;->requestLayout()V

    goto :goto_0
.end method

.method public setHeadModelIndex(I)V
    .locals 2
    .parameter "modelIndex"

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFSimpleHolder;->getModelCount()I

    move-result v0

    .line 110
    .local v0, count:I
    if-ltz p1, :cond_0

    if-lt p1, v0, :cond_1

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    iget v1, p0, Lcom/nemustech/tiffany/world/TFSimpleHolder;->mHeadModelIndex:I

    sub-int v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/world/TFSimpleHolder;->scrollHeadModelIndex(I)I

    .line 113
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFSimpleHolder;->requestLayout()V

    goto :goto_0
.end method

.method public updateLayout(I)Z
    .locals 2
    .parameter "tickPassed"

    .prologue
    .line 128
    const/4 v0, 0x0

    .line 130
    .local v0, updated:Z
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFSimpleHolder;->mMoveAni:Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFSimpleHolder;->mMoveAni:Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;

    invoke-virtual {v1, p1}, Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;->update(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    const/4 v0, 0x1

    .line 132
    :cond_0
    return v0
.end method
