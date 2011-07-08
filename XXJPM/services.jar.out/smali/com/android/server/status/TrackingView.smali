.class public Lcom/android/server/status/TrackingView;
.super Landroid/widget/LinearLayout;
.source "TrackingView.java"


# instance fields
.field final mDisplay:Landroid/view/Display;

.field mService:Lcom/android/server/status/StatusBarService;

.field mStartX:I

.field mStartY:I

.field mTracking:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/status/TrackingView;->mDisplay:Landroid/view/Display;

    .line 37
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 51
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    move v0, v2

    .line 52
    .local v0, down:Z
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 59
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    :goto_1
    return v1

    .line 51
    .end local v0           #down:Z
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .line 54
    .restart local v0       #down:Z
    :pswitch_0
    if-eqz v0, :cond_1

    .line 55
    iget-object v1, p0, Lcom/android/server/status/TrackingView;->mService:Lcom/android/server/status/StatusBarService;

    invoke-virtual {v1}, Lcom/android/server/status/StatusBarService;->deactivate()V

    :cond_1
    move v1, v2

    .line 57
    goto :goto_1

    .line 52
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 64
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 65
    iget-object v0, p0, Lcom/android/server/status/TrackingView;->mService:Lcom/android/server/status/StatusBarService;

    invoke-virtual {v0}, Lcom/android/server/status/StatusBarService;->onTrackingViewAttached()V

    .line 66
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/server/status/TrackingView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/status/TrackingView;->getWidth()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 43
    iget-object v0, p0, Lcom/android/server/status/TrackingView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/status/TrackingView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/status/TrackingView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/status/TrackingView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/status/TrackingView;->onMeasure(II)V

    .line 45
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 46
    iget-object v0, p0, Lcom/android/server/status/TrackingView;->mService:Lcom/android/server/status/StatusBarService;

    invoke-virtual {v0}, Lcom/android/server/status/StatusBarService;->updateExpandedHeight()V

    .line 47
    return-void
.end method
