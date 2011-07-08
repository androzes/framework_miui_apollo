.class public Lcom/android/server/status/CallOnGoingView;
.super Landroid/widget/FrameLayout;
.source "CallOnGoingView.java"


# static fields
.field static final TAG:Ljava/lang/String; = "CallOnGoingView"


# instance fields
.field mService:Lcom/android/server/status/StatusBarService;

.field private mTimer:Landroid/widget/Chronometer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 58
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 35
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 37
    iget-object v0, p0, Lcom/android/server/status/CallOnGoingView;->mTimer:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->start()V

    .line 38
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 43
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 30
    const v0, 0x204005e

    invoke-virtual {p0, v0}, Lcom/android/server/status/CallOnGoingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Chronometer;

    iput-object v0, p0, Lcom/android/server/status/CallOnGoingView;->mTimer:Landroid/widget/Chronometer;

    .line 31
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/server/status/CallOnGoingView;->mService:Lcom/android/server/status/StatusBarService;

    invoke-virtual {v0, p1}, Lcom/android/server/status/StatusBarService;->interceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 52
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 53
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 47
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 48
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 67
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/android/server/status/CallOnGoingView;->mService:Lcom/android/server/status/StatusBarService;

    invoke-virtual {v0, p1}, Lcom/android/server/status/StatusBarService;->interceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 70
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method setDurationBaseTime(J)V
    .locals 1
    .parameter "callDurationBaseTime"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/server/status/CallOnGoingView;->mTimer:Landroid/widget/Chronometer;

    invoke-virtual {v0, p1, p2}, Landroid/widget/Chronometer;->setBase(J)V

    .line 81
    return-void
.end method
