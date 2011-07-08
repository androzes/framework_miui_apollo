.class Landroid/view/ViewRoot$W;
.super Landroid/view/IWindow$Stub;
.source "ViewRoot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRoot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "W"
.end annotation


# instance fields
.field private final mMainLooper:Landroid/os/Looper;

.field private final mViewRoot:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/ViewRoot;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/ViewRoot;Landroid/content/Context;)V
    .locals 1
    .parameter "viewRoot"
    .parameter "context"

    .prologue
    .line 2906
    invoke-direct {p0}, Landroid/view/IWindow$Stub;-><init>()V

    .line 2907
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/view/ViewRoot$W;->mViewRoot:Ljava/lang/ref/WeakReference;

    .line 2908
    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewRoot$W;->mMainLooper:Landroid/os/Looper;

    .line 2909
    return-void
.end method

.method private static checkCallingPermission(Ljava/lang/String;)I
    .locals 4
    .parameter "permission"

    .prologue
    .line 2976
    invoke-static {}, Landroid/os/Process;->supportsProcesses()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2977
    const/4 v1, 0x0

    .line 2984
    :goto_0
    return v1

    .line 2981
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-interface {v1, p0, v2, v3}, Landroid/app/IActivityManager;->checkPermission(Ljava/lang/String;II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 2983
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 2984
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method


# virtual methods
.method public closeSystemDialogs(Ljava/lang/String;)V
    .locals 2
    .parameter "reason"

    .prologue
    .line 3020
    iget-object v1, p0, Landroid/view/ViewRoot$W;->mViewRoot:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRoot;

    .line 3021
    .local v0, viewRoot:Landroid/view/ViewRoot;
    if-eqz v0, :cond_0

    .line 3022
    invoke-virtual {v0, p1}, Landroid/view/ViewRoot;->dispatchCloseSystemDialogs(Ljava/lang/String;)V

    .line 3024
    :cond_0
    return-void
.end method

.method public dispatchAppVisibility(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 2955
    iget-object v1, p0, Landroid/view/ViewRoot$W;->mViewRoot:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRoot;

    .line 2956
    .local v0, viewRoot:Landroid/view/ViewRoot;
    if-eqz v0, :cond_0

    .line 2957
    invoke-virtual {v0, p1}, Landroid/view/ViewRoot;->dispatchAppVisibility(Z)V

    .line 2959
    :cond_0
    return-void
.end method

.method public dispatchGetNewSurface()V
    .locals 2

    .prologue
    .line 2962
    iget-object v1, p0, Landroid/view/ViewRoot$W;->mViewRoot:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRoot;

    .line 2963
    .local v0, viewRoot:Landroid/view/ViewRoot;
    if-eqz v0, :cond_0

    .line 2964
    invoke-virtual {v0}, Landroid/view/ViewRoot;->dispatchGetNewSurface()V

    .line 2966
    :cond_0
    return-void
.end method

.method public dispatchKey(Landroid/view/KeyEvent;)V
    .locals 7
    .parameter "event"

    .prologue
    .line 2921
    iget-object v0, p0, Landroid/view/ViewRoot$W;->mViewRoot:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/ViewRoot;

    .line 2922
    .local v6, viewRoot:Landroid/view/ViewRoot;
    if-eqz v6, :cond_0

    .line 2923
    invoke-virtual {v6, p1}, Landroid/view/ViewRoot;->dispatchKey(Landroid/view/KeyEvent;)V

    .line 2928
    :goto_0
    return-void

    .line 2925
    :cond_0
    const-string v0, "ViewRoot.W"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Key event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but no ViewRoot available!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2926
    new-instance v0, Landroid/view/ViewRoot$EventCompletion;

    iget-object v1, p0, Landroid/view/ViewRoot$W;->mMainLooper:Landroid/os/Looper;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Landroid/view/ViewRoot$EventCompletion;-><init>(Landroid/os/Looper;Landroid/view/IWindow;Landroid/view/KeyEvent;ZLandroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method public dispatchPointer(Landroid/view/MotionEvent;JZ)V
    .locals 7
    .parameter "event"
    .parameter "eventTime"
    .parameter "callWhenDone"

    .prologue
    .line 2932
    iget-object v0, p0, Landroid/view/ViewRoot$W;->mViewRoot:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/ViewRoot;

    .line 2933
    .local v6, viewRoot:Landroid/view/ViewRoot;
    if-eqz v6, :cond_0

    .line 2938
    invoke-virtual {v6, p1, p2, p3, p4}, Landroid/view/ViewRoot;->dispatchPointer(Landroid/view/MotionEvent;JZ)V

    .line 2942
    :goto_0
    return-void

    .line 2940
    :cond_0
    new-instance v0, Landroid/view/ViewRoot$EventCompletion;

    iget-object v1, p0, Landroid/view/ViewRoot$W;->mMainLooper:Landroid/os/Looper;

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Landroid/view/ViewRoot$EventCompletion;-><init>(Landroid/os/Looper;Landroid/view/IWindow;Landroid/view/KeyEvent;ZLandroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method public dispatchTrackball(Landroid/view/MotionEvent;JZ)V
    .locals 7
    .parameter "event"
    .parameter "eventTime"
    .parameter "callWhenDone"

    .prologue
    .line 2946
    iget-object v0, p0, Landroid/view/ViewRoot$W;->mViewRoot:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/ViewRoot;

    .line 2947
    .local v6, viewRoot:Landroid/view/ViewRoot;
    if-eqz v6, :cond_0

    .line 2948
    invoke-virtual {v6, p1, p2, p3, p4}, Landroid/view/ViewRoot;->dispatchTrackball(Landroid/view/MotionEvent;JZ)V

    .line 2952
    :goto_0
    return-void

    .line 2950
    :cond_0
    new-instance v0, Landroid/view/ViewRoot$EventCompletion;

    iget-object v1, p0, Landroid/view/ViewRoot$W;->mMainLooper:Landroid/os/Looper;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Landroid/view/ViewRoot$EventCompletion;-><init>(Landroid/os/Looper;Landroid/view/IWindow;Landroid/view/KeyEvent;ZLandroid/view/MotionEvent;)V

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
    .line 3038
    if-eqz p6, :cond_0

    .line 3040
    :try_start_0
    sget-object v0, Landroid/view/ViewRoot;->sWindowSession:Landroid/view/IWindowSession;

    invoke-virtual {p0}, Landroid/view/ViewRoot$W;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/view/IWindowSession;->wallpaperCommandComplete(Landroid/os/IBinder;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3044
    :cond_0
    :goto_0
    return-void

    .line 3041
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
    .line 3028
    if-eqz p5, :cond_0

    .line 3030
    :try_start_0
    sget-object v0, Landroid/view/ViewRoot;->sWindowSession:Landroid/view/IWindowSession;

    invoke-virtual {p0}, Landroid/view/ViewRoot$W;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/IWindowSession;->wallpaperOffsetsComplete(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3034
    :cond_0
    :goto_0
    return-void

    .line 3031
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public executeCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    .locals 8
    .parameter "command"
    .parameter "parameters"
    .parameter "out"

    .prologue
    .line 2989
    iget-object v5, p0, Landroid/view/ViewRoot$W;->mViewRoot:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewRoot;

    .line 2990
    .local v4, viewRoot:Landroid/view/ViewRoot;
    if-eqz v4, :cond_1

    .line 2991
    iget-object v3, v4, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    .line 2992
    .local v3, view:Landroid/view/View;
    if-eqz v3, :cond_1

    .line 2993
    const-string v5, "android.permission.DUMP"

    invoke-static {v5}, Landroid/view/ViewRoot$W;->checkCallingPermission(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    .line 2995
    new-instance v5, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Insufficient permissions to invoke executeCommand() from pid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3000
    :cond_0
    const/4 v0, 0x0

    .line 3002
    .local v0, clientStream:Ljava/io/OutputStream;
    :try_start_0
    new-instance v1, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v1, p3}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3003
    .end local v0           #clientStream:Ljava/io/OutputStream;
    .local v1, clientStream:Ljava/io/OutputStream;
    :try_start_1
    invoke-static {v3, p1, p2, v1}, Landroid/view/ViewDebug;->dispatchCommand(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 3007
    if-eqz v1, :cond_1

    .line 3009
    :try_start_2
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 3017
    .end local v1           #clientStream:Ljava/io/OutputStream;
    .end local v3           #view:Landroid/view/View;
    :cond_1
    :goto_0
    return-void

    .line 3004
    .restart local v0       #clientStream:Ljava/io/OutputStream;
    .restart local v3       #view:Landroid/view/View;
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 3005
    .local v2, e:Ljava/io/IOException;
    :goto_1
    :try_start_3
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3007
    if-eqz v0, :cond_1

    .line 3009
    :try_start_4
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 3010
    :catch_1
    move-exception v2

    .line 3011
    .end local v0           #clientStream:Ljava/io/OutputStream;
    :goto_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 3007
    .end local v2           #e:Ljava/io/IOException;
    .restart local v0       #clientStream:Ljava/io/OutputStream;
    :catchall_0
    move-exception v5

    :goto_3
    if-eqz v0, :cond_2

    .line 3009
    :try_start_5
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 3007
    :cond_2
    :goto_4
    throw v5

    .line 3010
    :catch_2
    move-exception v2

    .line 3011
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 3010
    .end local v0           #clientStream:Ljava/io/OutputStream;
    .end local v2           #e:Ljava/io/IOException;
    .restart local v1       #clientStream:Ljava/io/OutputStream;
    :catch_3
    move-exception v2

    goto :goto_2

    .line 3007
    :catchall_1
    move-exception v5

    move-object v0, v1

    .end local v1           #clientStream:Ljava/io/OutputStream;
    .restart local v0       #clientStream:Ljava/io/OutputStream;
    goto :goto_3

    .line 3004
    .end local v0           #clientStream:Ljava/io/OutputStream;
    .restart local v1       #clientStream:Ljava/io/OutputStream;
    :catch_4
    move-exception v5

    move-object v2, v5

    move-object v0, v1

    .end local v1           #clientStream:Ljava/io/OutputStream;
    .restart local v0       #clientStream:Ljava/io/OutputStream;
    goto :goto_1
.end method

.method public resized(IILandroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/content/res/Configuration;)V
    .locals 7
    .parameter "w"
    .parameter "h"
    .parameter "coveredInsets"
    .parameter "visibleInsets"
    .parameter "reportDraw"
    .parameter "newConfig"

    .prologue
    .line 2913
    iget-object v1, p0, Landroid/view/ViewRoot$W;->mViewRoot:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRoot;

    .line 2914
    .local v0, viewRoot:Landroid/view/ViewRoot;
    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    .line 2915
    invoke-virtual/range {v0 .. v6}, Landroid/view/ViewRoot;->dispatchResized(IILandroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/content/res/Configuration;)V

    .line 2918
    :cond_0
    return-void
.end method

.method public windowFocusChanged(ZZ)V
    .locals 2
    .parameter "hasFocus"
    .parameter "inTouchMode"

    .prologue
    .line 2969
    iget-object v1, p0, Landroid/view/ViewRoot$W;->mViewRoot:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRoot;

    .line 2970
    .local v0, viewRoot:Landroid/view/ViewRoot;
    if-eqz v0, :cond_0

    .line 2971
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewRoot;->windowFocusChanged(ZZ)V

    .line 2973
    :cond_0
    return-void
.end method
