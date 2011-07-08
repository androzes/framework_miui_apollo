.class public Lcom/nemustech/tiffany/world/TFLinearHolder;
.super Lcom/nemustech/tiffany/world/TFSimpleHolder;
.source "TFLinearHolder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TFLinearHolder"


# instance fields
.field private mLength:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    const/high16 v0, 0x4000

    invoke-direct {p0, v0}, Lcom/nemustech/tiffany/world/TFLinearHolder;-><init>(F)V

    .line 15
    return-void
.end method

.method public constructor <init>(F)V
    .locals 2
    .parameter "length"

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/nemustech/tiffany/world/TFSimpleHolder;-><init>()V

    .line 7
    iput p1, p0, Lcom/nemustech/tiffany/world/TFLinearHolder;->mLength:F

    .line 8
    const/4 v0, 0x0

    iput v0, p0, Lcom/nemustech/tiffany/world/TFLinearHolder;->mHeadModelIndex:I

    .line 9
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFLinearHolder;->getMoveAnimation()Lcom/nemustech/tiffany/world/TFSimpleHolder$SimpleMoveAnimation;

    move-result-object v0

    const/high16 v1, 0x3fc0

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/world/TFSimpleHolder$SimpleMoveAnimation;->setInertia(F)V

    .line 10
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/world/TFLinearHolder;->setPriorAxis(I)V

    .line 11
    return-void
.end method


# virtual methods
.method protected calcTouchVectorMagnitude([FI)F
    .locals 2
    .parameter "forceVector"
    .parameter "tickPassed"

    .prologue
    .line 46
    const/4 v0, 0x5

    aget v0, p1, v0

    const/4 v1, 0x1

    aget v1, p1, v1

    sub-float/2addr v0, v1

    neg-float v0, v0

    return v0
.end method

.method protected getModelPosition(I)F
    .locals 3
    .parameter "modelIndex"

    .prologue
    .line 30
    iget v1, p0, Lcom/nemustech/tiffany/world/TFLinearHolder;->mHeadModelIndex:I

    sub-int v1, p1, v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFLinearHolder;->getModelCount()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 31
    .local v0, position:F
    return v0
.end method

.method protected locateModel(Lcom/nemustech/tiffany/world/TFModel;FI)V
    .locals 5
    .parameter "model"
    .parameter "modelPosition"
    .parameter "modelIndex"

    .prologue
    .line 37
    const/4 v0, 0x0

    .line 38
    .local v0, x:F
    invoke-virtual {p1}, Lcom/nemustech/tiffany/world/TFModel;->getHeight()F

    move-result v3

    const/high16 v4, 0x4000

    div-float v1, v3, v4

    .line 39
    .local v1, y:F
    const/high16 v3, 0x3f00

    sub-float v2, v3, p2

    .line 40
    .local v2, z:F
    iget v3, p0, Lcom/nemustech/tiffany/world/TFLinearHolder;->mLength:F

    mul-float/2addr v2, v3

    .line 41
    invoke-virtual {p1, v0, v1, v2}, Lcom/nemustech/tiffany/world/TFModel;->locate(FFF)V

    .line 42
    return-void
.end method

.method protected onAddModel(Lcom/nemustech/tiffany/world/TFModel;I)V
    .locals 1
    .parameter "model"
    .parameter "modelIndex"

    .prologue
    .line 19
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/nemustech/tiffany/world/TFModel;->setPriorAction(I)V

    .line 20
    return-void
.end method

.method protected onRemoveModel(Lcom/nemustech/tiffany/world/TFModel;I)V
    .locals 0
    .parameter "model"
    .parameter "modelIndex"

    .prologue
    .line 25
    return-void
.end method
