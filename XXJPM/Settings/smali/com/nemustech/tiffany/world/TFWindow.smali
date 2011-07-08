.class public Lcom/nemustech/tiffany/world/TFWindow;
.super Landroid/view/Window;
.source "TFWindow.java"


# instance fields
.field mMyDecorView:Landroid/widget/FrameLayout;

.field private mWindowFeatures:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/view/Window;-><init>(Landroid/content/Context;)V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFWindow;->mMyDecorView:Landroid/widget/FrameLayout;

    .line 18
    const/16 v0, 0x41

    iput v0, p0, Lcom/nemustech/tiffany/world/TFWindow;->mWindowFeatures:I

    .line 22
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFWindow;->mMyDecorView:Landroid/widget/FrameLayout;

    .line 23
    return-void
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .parameter "view"
    .parameter "params"

    .prologue
    .line 35
    return-void
.end method

.method public closeAllPanels()V
    .locals 0

    .prologue
    .line 40
    return-void
.end method

.method public closePanel(I)V
    .locals 0
    .parameter "featureId"

    .prologue
    .line 45
    return-void
.end method

.method public getCurrentFocus()Landroid/view/View;
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDecorView()Landroid/view/View;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFWindow;->mMyDecorView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVolumeControlStream()I
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method public getWindowFeatures()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/nemustech/tiffany/world/TFWindow;->mWindowFeatures:I

    return v0
.end method

.method public isFloating()Z
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public isShortcutKey(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method protected onActive()V
    .locals 0

    .prologue
    .line 80
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 85
    return-void
.end method

.method public openPanel(ILandroid/view/KeyEvent;)V
    .locals 0
    .parameter "featureId"
    .parameter "event"

    .prologue
    .line 90
    return-void
.end method

.method public peekDecorView()Landroid/view/View;
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    return-object v0
.end method

.method public performContextMenuIdentifierAction(II)Z
    .locals 1
    .parameter "id"
    .parameter "flags"

    .prologue
    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public performPanelIdentifierAction(III)Z
    .locals 1
    .parameter "featureId"
    .parameter "id"
    .parameter "flags"

    .prologue
    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method public performPanelShortcut(IILandroid/view/KeyEvent;I)Z
    .locals 1
    .parameter "featureId"
    .parameter "keyCode"
    .parameter "event"
    .parameter "flags"

    .prologue
    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method public restoreHierarchyState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 117
    return-void
.end method

.method public saveHierarchyState()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    return-object v0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "drawable"

    .prologue
    .line 127
    return-void
.end method

.method public setChildDrawable(ILandroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "featureId"
    .parameter "drawable"

    .prologue
    .line 132
    return-void
.end method

.method public setChildInt(II)V
    .locals 0
    .parameter "featureId"
    .parameter "value"

    .prologue
    .line 137
    return-void
.end method

.method public setContentView(I)V
    .locals 0
    .parameter "layoutResID"

    .prologue
    .line 142
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 147
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .parameter "view"
    .parameter "params"

    .prologue
    .line 152
    return-void
.end method

.method public setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "featureId"
    .parameter "drawable"

    .prologue
    .line 157
    return-void
.end method

.method public setFeatureDrawableAlpha(II)V
    .locals 0
    .parameter "featureId"
    .parameter "alpha"

    .prologue
    .line 162
    return-void
.end method

.method public setFeatureDrawableResource(II)V
    .locals 0
    .parameter "featureId"
    .parameter "resId"

    .prologue
    .line 167
    return-void
.end method

.method public setFeatureDrawableUri(ILandroid/net/Uri;)V
    .locals 0
    .parameter "featureId"
    .parameter "uri"

    .prologue
    .line 172
    return-void
.end method

.method public setFeatureInt(II)V
    .locals 0
    .parameter "featureId"
    .parameter "value"

    .prologue
    .line 177
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 182
    return-void
.end method

.method public setTitleColor(I)V
    .locals 0
    .parameter "textColor"

    .prologue
    .line 187
    return-void
.end method

.method public setVolumeControlStream(I)V
    .locals 0
    .parameter "streamType"

    .prologue
    .line 192
    return-void
.end method

.method public setWindowFeatures(I)V
    .locals 0
    .parameter "features"

    .prologue
    .line 30
    iput p1, p0, Lcom/nemustech/tiffany/world/TFWindow;->mWindowFeatures:I

    .line 31
    return-void
.end method

.method public superDispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 196
    const/4 v0, 0x0

    return v0
.end method

.method public superDispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 201
    const/4 v0, 0x0

    return v0
.end method

.method public superDispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 206
    const/4 v0, 0x0

    return v0
.end method

.method public takeKeyEvents(Z)V
    .locals 0
    .parameter "get"

    .prologue
    .line 212
    return-void
.end method

.method public togglePanel(ILandroid/view/KeyEvent;)V
    .locals 0
    .parameter "featureId"
    .parameter "event"

    .prologue
    .line 217
    return-void
.end method
