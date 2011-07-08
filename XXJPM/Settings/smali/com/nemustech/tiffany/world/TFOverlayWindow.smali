.class public Lcom/nemustech/tiffany/world/TFOverlayWindow;
.super Ljava/lang/Object;
.source "TFOverlayWindow.java"


# instance fields
.field protected mEffectDecor:Landroid/widget/FrameLayout;

.field protected mEffectWindow:Lcom/nemustech/tiffany/world/TFWindow;

.field protected mHeight:I

.field protected mWidth:I

.field protected mWindowManager:Landroid/view/WindowManager;

.field protected mX:I

.field protected mY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-virtual {p0, p1}, Lcom/nemustech/tiffany/world/TFOverlayWindow;->init(Landroid/content/Context;)V

    .line 23
    invoke-virtual {p0, v1, v1, v0, v0}, Lcom/nemustech/tiffany/world/TFOverlayWindow;->setPosition(IIII)V

    .line 24
    return-void
.end method


# virtual methods
.method public getEffectDecor()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFOverlayWindow;->mEffectDecor:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getEffectWindow()Landroid/view/Window;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFOverlayWindow;->mEffectWindow:Lcom/nemustech/tiffany/world/TFWindow;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/nemustech/tiffany/world/TFOverlayWindow;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/nemustech/tiffany/world/TFOverlayWindow;->mWidth:I

    return v0
.end method

.method public getWindowManager()Landroid/view/WindowManager;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFOverlayWindow;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method public getX()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/nemustech/tiffany/world/TFOverlayWindow;->mX:I

    return v0
.end method

.method public getY()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/nemustech/tiffany/world/TFOverlayWindow;->mY:I

    return v0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFOverlayWindow;->mEffectDecor:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 121
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFOverlayWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFOverlayWindow;->mEffectDecor:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 122
    return-void
.end method

.method protected init(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 156
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 158
    .local v1, w:Landroid/view/Window;
    const-string v2, "window"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iput-object v2, p0, Lcom/nemustech/tiffany/world/TFOverlayWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 159
    new-instance v2, Lcom/nemustech/tiffany/world/TFWindow;

    invoke-direct {v2, p1}, Lcom/nemustech/tiffany/world/TFWindow;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/nemustech/tiffany/world/TFOverlayWindow;->mEffectWindow:Lcom/nemustech/tiffany/world/TFWindow;

    .line 160
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFOverlayWindow;->mEffectWindow:Lcom/nemustech/tiffany/world/TFWindow;

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nemustech/tiffany/world/TFWindow;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 161
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFOverlayWindow;->mEffectWindow:Lcom/nemustech/tiffany/world/TFWindow;

    invoke-virtual {v2}, Lcom/nemustech/tiffany/world/TFWindow;->getDecorView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/nemustech/tiffany/world/TFOverlayWindow;->mEffectDecor:Landroid/widget/FrameLayout;

    .line 162
    invoke-virtual {p0, v4}, Lcom/nemustech/tiffany/world/TFOverlayWindow;->setFocusable(Z)V

    .line 163
    invoke-virtual {p0, v4}, Lcom/nemustech/tiffany/world/TFOverlayWindow;->setTouchable(Z)V

    .line 164
    return-void
.end method

.method public setFocusable(Z)V
    .locals 3
    .parameter "focusable"

    .prologue
    const/16 v2, 0x8

    .line 129
    const/16 v0, 0x8

    .line 130
    .local v0, flag:I
    if-eqz p1, :cond_0

    .line 131
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFOverlayWindow;->mEffectWindow:Lcom/nemustech/tiffany/world/TFWindow;

    invoke-virtual {v1, v2}, Lcom/nemustech/tiffany/world/TFWindow;->clearFlags(I)V

    .line 134
    :goto_0
    return-void

    .line 133
    :cond_0
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFOverlayWindow;->mEffectWindow:Lcom/nemustech/tiffany/world/TFWindow;

    invoke-virtual {v1, v2}, Lcom/nemustech/tiffany/world/TFWindow;->addFlags(I)V

    goto :goto_0
.end method

.method public setPosition(II)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v0, -0x1

    .line 50
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/nemustech/tiffany/world/TFOverlayWindow;->setPosition(IIII)V

    .line 51
    return-void
.end method

.method public setPosition(IIII)V
    .locals 0
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 57
    iput p1, p0, Lcom/nemustech/tiffany/world/TFOverlayWindow;->mX:I

    .line 58
    iput p2, p0, Lcom/nemustech/tiffany/world/TFOverlayWindow;->mY:I

    .line 59
    iput p3, p0, Lcom/nemustech/tiffany/world/TFOverlayWindow;->mWidth:I

    .line 60
    iput p4, p0, Lcom/nemustech/tiffany/world/TFOverlayWindow;->mHeight:I

    .line 61
    return-void
.end method

.method public setTouchable(Z)V
    .locals 3
    .parameter "touchable"

    .prologue
    const/16 v2, 0x10

    .line 140
    const/16 v0, 0x10

    .line 141
    .local v0, flag:I
    if-eqz p1, :cond_0

    .line 142
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFOverlayWindow;->mEffectWindow:Lcom/nemustech/tiffany/world/TFWindow;

    invoke-virtual {v1, v2}, Lcom/nemustech/tiffany/world/TFWindow;->clearFlags(I)V

    .line 145
    :goto_0
    return-void

    .line 144
    :cond_0
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFOverlayWindow;->mEffectWindow:Lcom/nemustech/tiffany/world/TFWindow;

    invoke-virtual {v1, v2}, Lcom/nemustech/tiffany/world/TFWindow;->addFlags(I)V

    goto :goto_0
.end method

.method public show()V
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/world/TFOverlayWindow;->show(Landroid/view/WindowManager$LayoutParams;)V

    .line 95
    return-void
.end method

.method public show(Landroid/view/WindowManager$LayoutParams;)V
    .locals 3
    .parameter "wl"

    .prologue
    .line 102
    if-nez p1, :cond_1

    .line 103
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFOverlayWindow;->mEffectWindow:Lcom/nemustech/tiffany/world/TFWindow;

    invoke-virtual {v1}, Lcom/nemustech/tiffany/world/TFWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    .line 104
    iget v1, p0, Lcom/nemustech/tiffany/world/TFOverlayWindow;->mX:I

    if-nez v1, :cond_0

    iget v1, p0, Lcom/nemustech/tiffany/world/TFOverlayWindow;->mY:I

    if-nez v1, :cond_0

    iget v1, p0, Lcom/nemustech/tiffany/world/TFOverlayWindow;->mWidth:I

    if-gez v1, :cond_0

    iget v1, p0, Lcom/nemustech/tiffany/world/TFOverlayWindow;->mHeight:I

    if-ltz v1, :cond_1

    .line 106
    :cond_0
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFOverlayWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 107
    .local v0, d:Landroid/view/Display;
    iget v1, p0, Lcom/nemustech/tiffany/world/TFOverlayWindow;->mX:I

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 108
    iget v1, p0, Lcom/nemustech/tiffany/world/TFOverlayWindow;->mY:I

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 109
    iget v1, p0, Lcom/nemustech/tiffany/world/TFOverlayWindow;->mWidth:I

    if-gez v1, :cond_2

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/nemustech/tiffany/world/TFOverlayWindow;->mX:I

    sub-int/2addr v1, v2

    :goto_0
    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 110
    iget v1, p0, Lcom/nemustech/tiffany/world/TFOverlayWindow;->mHeight:I

    if-gez v1, :cond_3

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/nemustech/tiffany/world/TFOverlayWindow;->mY:I

    sub-int/2addr v1, v2

    :goto_1
    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 113
    .end local v0           #d:Landroid/view/Display;
    :cond_1
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFOverlayWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFOverlayWindow;->mEffectDecor:Landroid/widget/FrameLayout;

    invoke-interface {v1, v2, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    return-void

    .line 109
    .restart local v0       #d:Landroid/view/Display;
    :cond_2
    iget v1, p0, Lcom/nemustech/tiffany/world/TFOverlayWindow;->mWidth:I

    goto :goto_0

    .line 110
    :cond_3
    iget v1, p0, Lcom/nemustech/tiffany/world/TFOverlayWindow;->mHeight:I

    goto :goto_1
.end method

.method public stop()V
    .locals 0

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFOverlayWindow;->hide()V

    .line 153
    return-void
.end method
