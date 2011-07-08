.class Landroid/view/ViewRoot$EventCompletion;
.super Landroid/os/Handler;
.source "ViewRoot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRoot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EventCompletion"
.end annotation


# instance fields
.field final mIsPointer:Z

.field final mKeyEvent:Landroid/view/KeyEvent;

.field final mMotionEvent:Landroid/view/MotionEvent;

.field final mWindow:Landroid/view/IWindow;


# direct methods
.method constructor <init>(Landroid/os/Looper;Landroid/view/IWindow;Landroid/view/KeyEvent;ZLandroid/view/MotionEvent;)V
    .locals 1
    .parameter "looper"
    .parameter "window"
    .parameter "key"
    .parameter "isPointer"
    .parameter "motion"

    .prologue
    .line 2852
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2853
    iput-object p2, p0, Landroid/view/ViewRoot$EventCompletion;->mWindow:Landroid/view/IWindow;

    .line 2854
    iput-object p3, p0, Landroid/view/ViewRoot$EventCompletion;->mKeyEvent:Landroid/view/KeyEvent;

    .line 2855
    iput-boolean p4, p0, Landroid/view/ViewRoot$EventCompletion;->mIsPointer:Z

    .line 2856
    iput-object p5, p0, Landroid/view/ViewRoot$EventCompletion;->mMotionEvent:Landroid/view/MotionEvent;

    .line 2857
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewRoot$EventCompletion;->sendEmptyMessage(I)Z

    .line 2858
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 2862
    iget-object v2, p0, Landroid/view/ViewRoot$EventCompletion;->mKeyEvent:Landroid/view/KeyEvent;

    if-eqz v2, :cond_1

    .line 2864
    :try_start_0
    sget-object v2, Landroid/view/ViewRoot;->sWindowSession:Landroid/view/IWindowSession;

    iget-object v3, p0, Landroid/view/ViewRoot$EventCompletion;->mWindow:Landroid/view/IWindow;

    invoke-interface {v2, v3}, Landroid/view/IWindowSession;->finishKey(Landroid/view/IWindow;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_4

    .line 2899
    :cond_0
    :goto_0
    return-void

    .line 2867
    :cond_1
    iget-boolean v2, p0, Landroid/view/ViewRoot$EventCompletion;->mIsPointer:Z

    if-eqz v2, :cond_4

    .line 2869
    iget-object v1, p0, Landroid/view/ViewRoot$EventCompletion;->mMotionEvent:Landroid/view/MotionEvent;

    .line 2870
    .local v1, event:Landroid/view/MotionEvent;
    if-nez v1, :cond_2

    .line 2872
    :try_start_1
    sget-object v2, Landroid/view/ViewRoot;->sWindowSession:Landroid/view/IWindowSession;

    iget-object v3, p0, Landroid/view/ViewRoot$EventCompletion;->mWindow:Landroid/view/IWindow;

    invoke-interface {v2, v3}, Landroid/view/IWindowSession;->getPendingPointerMove(Landroid/view/IWindow;)Landroid/view/MotionEvent;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v1

    .line 2875
    :goto_1
    const/4 v0, 0x1

    .line 2879
    .local v0, didFinish:Z
    :goto_2
    if-nez v0, :cond_0

    .line 2881
    :try_start_2
    sget-object v2, Landroid/view/ViewRoot;->sWindowSession:Landroid/view/IWindowSession;

    iget-object v3, p0, Landroid/view/ViewRoot$EventCompletion;->mWindow:Landroid/view/IWindow;

    invoke-interface {v2, v3}, Landroid/view/IWindowSession;->finishKey(Landroid/view/IWindow;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 2882
    :catch_0
    move-exception v2

    goto :goto_0

    .line 2877
    .end local v0           #didFinish:Z
    :cond_2
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    const/4 v2, 0x1

    move v0, v2

    .restart local v0       #didFinish:Z
    :goto_3
    goto :goto_2

    .end local v0           #didFinish:Z
    :cond_3
    const/4 v2, 0x0

    move v0, v2

    goto :goto_3

    .line 2886
    .end local v1           #event:Landroid/view/MotionEvent;
    :cond_4
    iget-object v1, p0, Landroid/view/ViewRoot$EventCompletion;->mMotionEvent:Landroid/view/MotionEvent;

    .line 2887
    .restart local v1       #event:Landroid/view/MotionEvent;
    if-nez v1, :cond_5

    .line 2889
    :try_start_3
    sget-object v2, Landroid/view/ViewRoot;->sWindowSession:Landroid/view/IWindowSession;

    iget-object v3, p0, Landroid/view/ViewRoot$EventCompletion;->mWindow:Landroid/view/IWindow;

    invoke-interface {v2, v3}, Landroid/view/IWindowSession;->getPendingTrackballMove(Landroid/view/IWindow;)Landroid/view/MotionEvent;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v1

    goto :goto_0

    .line 2894
    :cond_5
    :try_start_4
    sget-object v2, Landroid/view/ViewRoot;->sWindowSession:Landroid/view/IWindowSession;

    iget-object v3, p0, Landroid/view/ViewRoot$EventCompletion;->mWindow:Landroid/view/IWindow;

    invoke-interface {v2, v3}, Landroid/view/IWindowSession;->finishKey(Landroid/view/IWindow;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 2895
    :catch_1
    move-exception v2

    goto :goto_0

    .line 2890
    :catch_2
    move-exception v2

    goto :goto_0

    .line 2873
    :catch_3
    move-exception v2

    goto :goto_1

    .line 2865
    .end local v1           #event:Landroid/view/MotionEvent;
    :catch_4
    move-exception v2

    goto :goto_0
.end method
