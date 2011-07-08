.class public abstract Lcom/android/internal/view/BaseSurfaceHolder;
.super Ljava/lang/Object;
.source "BaseSurfaceHolder.java"

# interfaces
.implements Landroid/view/SurfaceHolder;


# static fields
.field static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "BaseSurfaceHolder"


# instance fields
.field public final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/SurfaceHolder$Callback;",
            ">;"
        }
    .end annotation
.end field

.field mLastLockTime:J

.field mRequestedFormat:I

.field mRequestedHeight:I

.field mRequestedType:I

.field mRequestedWidth:I

.field public final mSurface:Landroid/view/Surface;

.field final mSurfaceFrame:Landroid/graphics/Rect;

.field public final mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

.field mType:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mCallbacks:Ljava/util/ArrayList;

    .line 37
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 38
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;

    .line 40
    iput v2, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mRequestedWidth:I

    .line 41
    iput v2, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mRequestedHeight:I

    .line 42
    iput v2, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mRequestedFormat:I

    .line 43
    iput v2, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mRequestedType:I

    .line 45
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mLastLockTime:J

    .line 47
    iput v2, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mType:I

    .line 48
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceFrame:Landroid/graphics/Rect;

    return-void
.end method

.method private final internalLockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    .locals 11
    .parameter "dirty"

    .prologue
    .line 136
    iget v7, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mType:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_0

    .line 137
    new-instance v7, Landroid/view/SurfaceHolder$BadSurfaceTypeException;

    const-string v8, "Surface type is SURFACE_TYPE_PUSH_BUFFERS"

    invoke-direct {v7, v8}, Landroid/view/SurfaceHolder$BadSurfaceTypeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 140
    :cond_0
    iget-object v7, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 144
    const/4 v0, 0x0

    .line 145
    .local v0, c:Landroid/graphics/Canvas;
    invoke-virtual {p0}, Lcom/android/internal/view/BaseSurfaceHolder;->onAllowLockCanvas()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 146
    if-eqz p1, :cond_2

    move-object v2, p1

    .line 148
    .local v2, frame:Landroid/graphics/Rect;
    :goto_0
    :try_start_0
    iget-object v7, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;

    invoke-virtual {v7, v2}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 155
    .end local v2           #frame:Landroid/graphics/Rect;
    :cond_1
    :goto_1
    if-eqz v0, :cond_3

    .line 156
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mLastLockTime:J

    move-object v7, v0

    .line 175
    :goto_2
    return-object v7

    .line 146
    :cond_2
    iget-object v7, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceFrame:Landroid/graphics/Rect;

    move-object v2, v7

    goto :goto_0

    .line 149
    .restart local v2       #frame:Landroid/graphics/Rect;
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 150
    .local v1, e:Ljava/lang/Exception;
    const-string v7, "BaseSurfaceHolder"

    const-string v8, "Exception locking surface"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 163
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #frame:Landroid/graphics/Rect;
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 164
    .local v5, now:J
    iget-wide v7, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mLastLockTime:J

    const-wide/16 v9, 0x64

    add-long v3, v7, v9

    .line 165
    .local v3, nextTime:J
    cmp-long v7, v3, v5

    if-lez v7, :cond_4

    .line 167
    sub-long v7, v3, v5

    :try_start_1
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 170
    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 172
    :cond_4
    iput-wide v5, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mLastLockTime:J

    .line 173
    iget-object v7, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 175
    const/4 v7, 0x0

    goto :goto_2

    .line 168
    :catch_1
    move-exception v7

    goto :goto_3
.end method


# virtual methods
.method public addCallback(Landroid/view/SurfaceHolder$Callback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 74
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 75
    iget-object v1, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    :cond_0
    monitor-exit v0

    .line 78
    return-void

    .line 77
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getRequestedFormat()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mRequestedFormat:I

    return v0
.end method

.method public getRequestedHeight()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mRequestedHeight:I

    return v0
.end method

.method public getRequestedType()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mRequestedType:I

    return v0
.end method

.method public getRequestedWidth()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mRequestedWidth:I

    return v0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public getSurfaceFrame()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method public lockCanvas()Landroid/graphics/Canvas;
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/view/BaseSurfaceHolder;->internalLockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v0

    return-object v0
.end method

.method public lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    .locals 1
    .parameter "dirty"

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcom/android/internal/view/BaseSurfaceHolder;->internalLockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v0

    return-object v0
.end method

.method public abstract onAllowLockCanvas()Z
.end method

.method public abstract onRelayoutContainer()V
.end method

.method public abstract onUpdateSurface()V
.end method

.method public removeCallback(Landroid/view/SurfaceHolder$Callback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 82
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 83
    monitor-exit v0

    .line 84
    return-void

    .line 83
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setFixedSize(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 87
    iget v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mRequestedWidth:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mRequestedHeight:I

    if-eq v0, p2, :cond_1

    .line 88
    :cond_0
    iput p1, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mRequestedWidth:I

    .line 89
    iput p2, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mRequestedHeight:I

    .line 90
    invoke-virtual {p0}, Lcom/android/internal/view/BaseSurfaceHolder;->onRelayoutContainer()V

    .line 92
    :cond_1
    return-void
.end method

.method public setFormat(I)V
    .locals 1
    .parameter "format"

    .prologue
    .line 102
    iget v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mRequestedFormat:I

    if-eq v0, p1, :cond_0

    .line 103
    iput p1, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mRequestedFormat:I

    .line 104
    invoke-virtual {p0}, Lcom/android/internal/view/BaseSurfaceHolder;->onUpdateSurface()V

    .line 106
    :cond_0
    return-void
.end method

.method public setSizeFromLayout()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 95
    iget v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mRequestedWidth:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mRequestedHeight:I

    if-eq v0, v1, :cond_1

    .line 96
    :cond_0
    iput v1, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mRequestedHeight:I

    iput v1, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mRequestedWidth:I

    .line 97
    invoke-virtual {p0}, Lcom/android/internal/view/BaseSurfaceHolder;->onRelayoutContainer()V

    .line 99
    :cond_1
    return-void
.end method

.method public setType(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 109
    packed-switch p1, :pswitch_data_0

    .line 116
    :goto_0
    packed-switch p1, :pswitch_data_1

    .line 125
    :cond_0
    :goto_1
    :pswitch_0
    return-void

    .line 113
    :pswitch_1
    const/4 p1, 0x0

    goto :goto_0

    .line 119
    :pswitch_2
    iget v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mRequestedType:I

    if-eq v0, p1, :cond_0

    .line 120
    iput p1, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mRequestedType:I

    .line 121
    invoke-virtual {p0}, Lcom/android/internal/view/BaseSurfaceHolder;->onUpdateSurface()V

    goto :goto_1

    .line 109
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 116
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, p1}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 180
    iget-object v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 181
    return-void
.end method
