.class public Lcom/android/server/status/LatestItemView;
.super Landroid/widget/FrameLayout;
.source "LatestItemView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lcom/android/server/status/LatestItemView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 75
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 38
    :pswitch_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/status/LatestItemView;->setSelected(Z)V

    goto :goto_0

    .line 42
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/status/LatestItemView;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {p0, v1}, Lcom/android/server/status/LatestItemView;->setSelected(Z)V

    .line 44
    invoke-virtual {p0}, Lcom/android/server/status/LatestItemView;->performClick()Z

    goto :goto_0

    .line 61
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/server/status/LatestItemView;->isPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/android/server/status/LatestItemView;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {p0, v1}, Lcom/android/server/status/LatestItemView;->setSelected(Z)V

    goto :goto_0

    .line 69
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/server/status/LatestItemView;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p0, v1}, Lcom/android/server/status/LatestItemView;->setSelected(Z)V

    goto :goto_0

    .line 36
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
