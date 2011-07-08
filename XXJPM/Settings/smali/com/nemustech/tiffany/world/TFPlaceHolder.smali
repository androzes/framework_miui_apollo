.class public Lcom/nemustech/tiffany/world/TFPlaceHolder;
.super Lcom/nemustech/tiffany/world/TFHolder;
.source "TFPlaceHolder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TFPlaceHolder"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/nemustech/tiffany/world/TFHolder;-><init>()V

    .line 7
    return-void
.end method


# virtual methods
.method public applyTouchEvent(Lcom/nemustech/tiffany/world/TFModel;[FI)V
    .locals 0
    .parameter "model"
    .parameter "forceVector"
    .parameter "tickPassed"

    .prologue
    .line 12
    return-void
.end method

.method public layoutModels(F)V
    .locals 0
    .parameter "headDeviation"

    .prologue
    .line 16
    return-void
.end method

.method public moveHeadModelStep(FZ)Z
    .locals 1
    .parameter "step"
    .parameter "bindingAction"

    .prologue
    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method protected onAddModel(Lcom/nemustech/tiffany/world/TFModel;I)V
    .locals 0
    .parameter "model"
    .parameter "modelIndex"

    .prologue
    .line 20
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

.method public scrollHeadItemIndex(I)I
    .locals 1
    .parameter "offset"

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public scrollHeadModelIndex(I)I
    .locals 1
    .parameter "offset"

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public setHeadItemIndex(IZ)V
    .locals 0
    .parameter "itemIndex"
    .parameter "showAnimation"

    .prologue
    .line 32
    return-void
.end method

.method public updateLayout(I)Z
    .locals 1
    .parameter "tickPassed"

    .prologue
    .line 28
    const/4 v0, 0x0

    return v0
.end method
