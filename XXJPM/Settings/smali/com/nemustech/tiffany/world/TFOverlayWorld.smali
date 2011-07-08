.class public Lcom/nemustech/tiffany/world/TFOverlayWorld;
.super Lcom/nemustech/tiffany/world/TFWorld;
.source "TFOverlayWorld.java"


# instance fields
.field protected mOverlayWindow:Lcom/nemustech/tiffany/world/TFOverlayWindow;


# direct methods
.method public constructor <init>(FFFLcom/nemustech/tiffany/world/TFOverlayWindow;)V
    .locals 1
    .parameter "width"
    .parameter "height"
    .parameter "depth"
    .parameter "ow"

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/nemustech/tiffany/world/TFWorld;-><init>(FFF)V

    .line 22
    iput-object p4, p0, Lcom/nemustech/tiffany/world/TFOverlayWorld;->mOverlayWindow:Lcom/nemustech/tiffany/world/TFOverlayWindow;

    .line 24
    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/nemustech/tiffany/world/TFOverlayWorld;->setBackgroundColor(FFFF)V

    .line 25
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/world/TFOverlayWorld;->setTranslucentMode(Z)V

    .line 26
    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Lcom/nemustech/tiffany/world/TFView;
    .locals 1
    .parameter "context"

    .prologue
    .line 68
    new-instance v0, Lcom/nemustech/tiffany/world/TFView;

    invoke-direct {v0, p1}, Lcom/nemustech/tiffany/world/TFView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getWindow()Lcom/nemustech/tiffany/world/TFOverlayWindow;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFOverlayWorld;->mOverlayWindow:Lcom/nemustech/tiffany/world/TFOverlayWindow;

    return-object v0
.end method

.method public show(Landroid/view/View;)Lcom/nemustech/tiffany/world/TFError;
    .locals 1
    .parameter "v"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFOverlayWorld;->mOverlayWindow:Lcom/nemustech/tiffany/world/TFOverlayWindow;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFOverlayWorld;->mOverlayWindow:Lcom/nemustech/tiffany/world/TFOverlayWindow;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/world/TFOverlayWindow;->getEffectDecor()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 51
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFOverlayWorld;->mOverlayWindow:Lcom/nemustech/tiffany/world/TFOverlayWindow;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/world/TFOverlayWindow;->show()V

    .line 53
    :cond_0
    invoke-super {p0, p1}, Lcom/nemustech/tiffany/world/TFWorld;->show(Landroid/view/View;)Lcom/nemustech/tiffany/world/TFError;

    move-result-object v0

    return-object v0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 40
    invoke-super {p0}, Lcom/nemustech/tiffany/world/TFWorld;->stop()V

    .line 41
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFOverlayWorld;->mOverlayWindow:Lcom/nemustech/tiffany/world/TFOverlayWindow;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFOverlayWorld;->mOverlayWindow:Lcom/nemustech/tiffany/world/TFOverlayWindow;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/world/TFOverlayWindow;->stop()V

    .line 43
    :cond_0
    return-void
.end method

.method public toWorldCoord([I[FII)V
    .locals 1
    .parameter "uiCoord"
    .parameter "worldCoord"
    .parameter "offsetX"
    .parameter "offsetY"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFOverlayWorld;->mOverlayWindow:Lcom/nemustech/tiffany/world/TFOverlayWindow;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/world/TFOverlayWindow;->getX()I

    move-result v0

    add-int/2addr p3, v0

    .line 61
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFOverlayWorld;->mOverlayWindow:Lcom/nemustech/tiffany/world/TFOverlayWindow;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/world/TFOverlayWindow;->getY()I

    move-result v0

    add-int/2addr p4, v0

    .line 62
    invoke-super {p0, p1, p2, p3, p4}, Lcom/nemustech/tiffany/world/TFWorld;->toWorldCoord([I[FII)V

    .line 63
    return-void
.end method
