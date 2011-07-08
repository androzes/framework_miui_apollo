.class public Lcom/android/internal/view/BaseIWindow;
.super Landroid/view/IWindow$Stub;
.source "BaseIWindow.java"


# instance fields
.field private mSession:Landroid/view/IWindowSession;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/view/IWindow$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public closeSystemDialogs(Ljava/lang/String;)V
    .locals 0
    .parameter "reason"

    .prologue
    .line 112
    return-void
.end method

.method public dispatchAppVisibility(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 100
    return-void
.end method

.method public dispatchGetNewSurface()V
    .locals 0

    .prologue
    .line 103
    return-void
.end method

.method public dispatchKey(Landroid/view/KeyEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/view/BaseIWindow;->mSession:Landroid/view/IWindowSession;

    invoke-interface {v0, p0}, Landroid/view/IWindowSession;->finishKey(Landroid/view/IWindow;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :goto_0
    return-void

    .line 49
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public dispatchPointer(Landroid/view/MotionEvent;JZ)V
    .locals 1
    .parameter "event"
    .parameter "eventTime"
    .parameter "callWhenDone"

    .prologue
    .line 62
    if-nez p1, :cond_1

    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/view/BaseIWindow;->mSession:Landroid/view/IWindowSession;

    invoke-interface {v0, p0}, Landroid/view/IWindowSession;->getPendingPointerMove(Landroid/view/IWindow;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 64
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/internal/view/BaseIWindow;->onDispatchPointer(Landroid/view/MotionEvent;JZ)Z

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    if-eqz p4, :cond_2

    .line 66
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/internal/view/BaseIWindow;->onDispatchPointer(Landroid/view/MotionEvent;JZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/android/internal/view/BaseIWindow;->mSession:Landroid/view/IWindowSession;

    invoke-interface {v0, p0}, Landroid/view/IWindowSession;->finishKey(Landroid/view/IWindow;)V

    goto :goto_0

    .line 72
    :catch_0
    move-exception v0

    goto :goto_0

    .line 70
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/internal/view/BaseIWindow;->onDispatchPointer(Landroid/view/MotionEvent;JZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public dispatchTrackball(Landroid/view/MotionEvent;JZ)V
    .locals 1
    .parameter "event"
    .parameter "eventTime"
    .parameter "callWhenDone"

    .prologue
    .line 85
    if-nez p1, :cond_1

    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/view/BaseIWindow;->mSession:Landroid/view/IWindowSession;

    invoke-interface {v0, p0}, Landroid/view/IWindowSession;->getPendingTrackballMove(Landroid/view/IWindow;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 87
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/internal/view/BaseIWindow;->onDispatchTrackball(Landroid/view/MotionEvent;JZ)Z

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    if-eqz p4, :cond_2

    .line 89
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/internal/view/BaseIWindow;->onDispatchTrackball(Landroid/view/MotionEvent;JZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/android/internal/view/BaseIWindow;->mSession:Landroid/view/IWindowSession;

    invoke-interface {v0, p0}, Landroid/view/IWindowSession;->finishKey(Landroid/view/IWindow;)V

    goto :goto_0

    .line 95
    :catch_0
    move-exception v0

    goto :goto_0

    .line 93
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/internal/view/BaseIWindow;->onDispatchTrackball(Landroid/view/MotionEvent;JZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public dispatchWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V
    .locals 3
    .parameter "action"
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "extras"
    .parameter "sync"

    .prologue
    .line 125
    if-eqz p6, :cond_0

    .line 127
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/view/BaseIWindow;->mSession:Landroid/view/IWindowSession;

    invoke-virtual {p0}, Lcom/android/internal/view/BaseIWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/view/IWindowSession;->wallpaperCommandComplete(Landroid/os/IBinder;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 128
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public dispatchWallpaperOffsets(FFFFZ)V
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "xStep"
    .parameter "yStep"
    .parameter "sync"

    .prologue
    .line 115
    if-eqz p5, :cond_0

    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/view/BaseIWindow;->mSession:Landroid/view/IWindowSession;

    invoke-virtual {p0}, Lcom/android/internal/view/BaseIWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/IWindowSession;->wallpaperOffsetsComplete(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 118
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public executeCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    .locals 0
    .parameter "command"
    .parameter "parameters"
    .parameter "out"

    .prologue
    .line 109
    return-void
.end method

.method public onDispatchPointer(Landroid/view/MotionEvent;JZ)Z
    .locals 1
    .parameter "event"
    .parameter "eventTime"
    .parameter "callWhenDone"

    .prologue
    .line 55
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public onDispatchTrackball(Landroid/view/MotionEvent;JZ)Z
    .locals 1
    .parameter "event"
    .parameter "eventTime"
    .parameter "callWhenDone"

    .prologue
    .line 78
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public resized(IILandroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/content/res/Configuration;)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "coveredInsets"
    .parameter "visibleInsets"
    .parameter "reportDraw"
    .parameter "newConfig"

    .prologue
    .line 38
    if-eqz p5, :cond_0

    .line 40
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/view/BaseIWindow;->mSession:Landroid/view/IWindowSession;

    invoke-interface {v0, p0}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :cond_0
    :goto_0
    return-void

    .line 41
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setSession(Landroid/view/IWindowSession;)V
    .locals 0
    .parameter "session"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/internal/view/BaseIWindow;->mSession:Landroid/view/IWindowSession;

    .line 34
    return-void
.end method

.method public windowFocusChanged(ZZ)V
    .locals 0
    .parameter "hasFocus"
    .parameter "touchEnabled"

    .prologue
    .line 106
    return-void
.end method
