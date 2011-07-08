.class final Lcom/android/server/WindowManagerService$KeyWaiter;
.super Ljava/lang/Object;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "KeyWaiter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/WindowManagerService$KeyWaiter$DispatchState;
    }
.end annotation


# static fields
.field public static final RETURN_NOTHING:I = 0x0

.field public static final RETURN_PENDING_POINTER:I = 0x1

.field public static final RETURN_PENDING_TRACKBALL:I = 0x2


# instance fields
.field final CONSUMED_EVENT_TOKEN:Ljava/lang/Object;

.field final SKIP_TARGET_TOKEN:Ljava/lang/Object;

.field private mDispatchState:Lcom/android/server/WindowManagerService$KeyWaiter$DispatchState;

.field private mEventDispatching:Z

.field private mFinished:Z

.field private mGotFirstWindow:Z

.field private mLastBinder:Landroid/os/IBinder;

.field private mLastWin:Lcom/android/server/WindowManagerService$WindowState;

.field mMotionTarget:Lcom/android/server/WindowManagerService$WindowState;

.field mOutsideTouchTargets:Lcom/android/server/WindowManagerService$WindowState;

.field private mTimeToSwitch:J

.field mWasFrozen:Z

.field final synthetic this$0:Lcom/android/server/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/WindowManagerService;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 5650
    iput-object p1, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->this$0:Lcom/android/server/WindowManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5696
    iput-object v1, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mDispatchState:Lcom/android/server/WindowManagerService$KeyWaiter$DispatchState;

    .line 5706
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->SKIP_TARGET_TOKEN:Ljava/lang/Object;

    .line 5707
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->CONSUMED_EVENT_TOKEN:Ljava/lang/Object;

    .line 5709
    iput-object v1, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mLastWin:Lcom/android/server/WindowManagerService$WindowState;

    .line 5710
    iput-object v1, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mLastBinder:Landroid/os/IBinder;

    .line 5711
    iput-boolean v3, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mFinished:Z

    .line 5712
    iput-boolean v2, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mGotFirstWindow:Z

    .line 5713
    iput-boolean v3, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mEventDispatching:Z

    .line 5714
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mTimeToSwitch:J

    .line 5715
    iput-boolean v2, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mWasFrozen:Z

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/WindowManagerService$KeyWaiter;)Lcom/android/server/WindowManagerService$WindowState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5650
    iget-object v0, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mLastWin:Lcom/android/server/WindowManagerService$WindowState;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/WindowManagerService$KeyWaiter;)Landroid/os/IBinder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5650
    iget-object v0, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mLastBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/WindowManagerService$KeyWaiter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 5650
    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mFinished:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/WindowManagerService$KeyWaiter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 5650
    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mGotFirstWindow:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/WindowManagerService$KeyWaiter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 5650
    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mEventDispatching:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/WindowManagerService$KeyWaiter;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 5650
    iget-wide v0, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mTimeToSwitch:J

    return-wide v0
.end method

.method private final doFinishedKeyLocked(Z)V
    .locals 2
    .parameter "force"

    .prologue
    const/4 v1, 0x0

    .line 6395
    iget-object v0, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mLastWin:Lcom/android/server/WindowManagerService$WindowState;

    if-eqz v0, :cond_0

    .line 6396
    iget-object v0, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mLastWin:Lcom/android/server/WindowManagerService$WindowState;

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    invoke-virtual {p0, v0}, Lcom/android/server/WindowManagerService$KeyWaiter;->releasePendingPointerLocked(Lcom/android/server/WindowManagerService$Session;)V

    .line 6397
    iget-object v0, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mLastWin:Lcom/android/server/WindowManagerService$WindowState;

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    invoke-virtual {p0, v0}, Lcom/android/server/WindowManagerService$KeyWaiter;->releasePendingTrackballLocked(Lcom/android/server/WindowManagerService$Session;)V

    .line 6400
    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mLastWin:Lcom/android/server/WindowManagerService$WindowState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mLastWin:Lcom/android/server/WindowManagerService$WindowState;

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mToken:Lcom/android/server/WindowManagerService$WindowToken;

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowToken;->paused:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mLastWin:Lcom/android/server/WindowManagerService$WindowState;

    invoke-virtual {v0}, Lcom/android/server/WindowManagerService$WindowState;->isVisibleLw()Z

    move-result v0

    if-nez v0, :cond_2

    .line 6404
    :cond_1
    iput-object v1, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mLastWin:Lcom/android/server/WindowManagerService$WindowState;

    .line 6405
    iput-object v1, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mLastBinder:Landroid/os/IBinder;

    .line 6407
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mFinished:Z

    .line 6408
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 6409
    return-void
.end method


# virtual methods
.method appSwitchComing()V
    .locals 6

    .prologue
    .line 6382
    monitor-enter p0

    .line 6385
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x1f4

    add-long v0, v2, v4

    .line 6387
    .local v0, now:J
    iget-wide v2, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mTimeToSwitch:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mTimeToSwitch:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 6388
    :cond_0
    iput-wide v0, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mTimeToSwitch:J

    .line 6390
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 6391
    monitor-exit p0

    .line 6392
    return-void

    .line 6391
    .end local v0           #now:J
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method bindTargetWindowLocked(Lcom/android/server/WindowManagerService$WindowState;)V
    .locals 2
    .parameter "win"

    .prologue
    .line 6169
    monitor-enter p0

    .line 6170
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/WindowManagerService$KeyWaiter;->bindTargetWindowLockedLocked(Lcom/android/server/WindowManagerService$WindowState;ILcom/android/server/KeyInputQueue$QueuedEvent;)V

    .line 6171
    monitor-exit p0

    .line 6172
    return-void

    .line 6171
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method bindTargetWindowLocked(Lcom/android/server/WindowManagerService$WindowState;ILcom/android/server/KeyInputQueue$QueuedEvent;)V
    .locals 1
    .parameter "win"
    .parameter "pendingWhat"
    .parameter "pendingMotion"

    .prologue
    .line 6163
    monitor-enter p0

    .line 6164
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/WindowManagerService$KeyWaiter;->bindTargetWindowLockedLocked(Lcom/android/server/WindowManagerService$WindowState;ILcom/android/server/KeyInputQueue$QueuedEvent;)V

    .line 6165
    monitor-exit p0

    .line 6166
    return-void

    .line 6165
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method bindTargetWindowLockedLocked(Lcom/android/server/WindowManagerService$WindowState;ILcom/android/server/KeyInputQueue$QueuedEvent;)V
    .locals 2
    .parameter "win"
    .parameter "pendingWhat"
    .parameter "pendingMotion"

    .prologue
    .line 6176
    iput-object p1, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mLastWin:Lcom/android/server/WindowManagerService$WindowState;

    .line 6177
    iget-object v1, p1, Lcom/android/server/WindowManagerService$WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mLastBinder:Landroid/os/IBinder;

    .line 6178
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mFinished:Z

    .line 6179
    if-eqz p3, :cond_0

    .line 6180
    iget-object v0, p1, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    .line 6181
    .local v0, s:Lcom/android/server/WindowManagerService$Session;
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 6182
    invoke-virtual {p0, v0}, Lcom/android/server/WindowManagerService$KeyWaiter;->releasePendingPointerLocked(Lcom/android/server/WindowManagerService$Session;)V

    .line 6183
    iput-object p3, v0, Lcom/android/server/WindowManagerService$Session;->mPendingPointerMove:Lcom/android/server/KeyInputQueue$QueuedEvent;

    .line 6184
    iput-object p1, v0, Lcom/android/server/WindowManagerService$Session;->mPendingPointerWindow:Lcom/android/server/WindowManagerService$WindowState;

    .line 6193
    .end local v0           #s:Lcom/android/server/WindowManagerService$Session;
    :cond_0
    :goto_0
    return-void

    .line 6187
    .restart local v0       #s:Lcom/android/server/WindowManagerService$Session;
    :cond_1
    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    .line 6188
    invoke-virtual {p0, v0}, Lcom/android/server/WindowManagerService$KeyWaiter;->releasePendingTrackballLocked(Lcom/android/server/WindowManagerService$Session;)V

    .line 6189
    iput-object p3, v0, Lcom/android/server/WindowManagerService$Session;->mPendingTrackballMove:Lcom/android/server/KeyInputQueue$QueuedEvent;

    .line 6190
    iput-object p1, v0, Lcom/android/server/WindowManagerService$Session;->mPendingTrackballWindow:Lcom/android/server/WindowManagerService$WindowState;

    goto :goto_0
.end method

.method checkShouldDispatchKey(I)Z
    .locals 5
    .parameter "keycode"

    .prologue
    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    .line 6148
    monitor-enter p0

    .line 6149
    :try_start_0
    iget-object v0, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1}, Landroid/view/WindowManagerPolicy;->isAppSwitchKeyTqTiLwLi(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6150
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mTimeToSwitch:J

    .line 6151
    monitor-exit p0

    move v0, v4

    .line 6157
    :goto_0
    return v0

    .line 6153
    :cond_0
    iget-wide v0, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mTimeToSwitch:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mTimeToSwitch:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 6155
    const/4 v0, 0x0

    monitor-exit p0

    goto :goto_0

    .line 6158
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 6157
    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v4

    goto :goto_0
.end method

.method findTargetWindow(Landroid/view/KeyEvent;Lcom/android/server/KeyInputQueue$QueuedEvent;Landroid/view/MotionEvent;ZII)Ljava/lang/Object;
    .locals 29
    .parameter "nextKey"
    .parameter "qev"
    .parameter "nextMotion"
    .parameter "isPointerEvent"
    .parameter "callingPid"
    .parameter "callingUid"

    .prologue
    .line 5952
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService$KeyWaiter;->mOutsideTouchTargets:Lcom/android/server/WindowManagerService$WindowState;

    .line 5954
    if-eqz p1, :cond_7

    .line 5956
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    .line 5957
    .local v6, keycode:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v9

    .line 5958
    .local v9, repeatCount:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    const/4 v4, 0x1

    move v8, v4

    .line 5959
    .local v8, down:Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->this$0:Lcom/android/server/WindowManagerService;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    invoke-virtual {v4, v6}, Lcom/android/server/WindowManagerService$KeyWaiter;->checkShouldDispatchKey(I)Z

    move-result v14

    .line 5961
    .local v14, dispatch:Z
    if-nez v14, :cond_3

    .line 5962
    if-eqz p6, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->this$0:Lcom/android/server/WindowManagerService;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.INJECT_EVENTS"

    move-object v0, v4

    move-object v1, v5

    move/from16 v2, p5

    move/from16 v3, p6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v4

    if-nez v4, :cond_1

    .line 5967
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->this$0:Lcom/android/server/WindowManagerService;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    const/4 v5, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v10

    invoke-interface/range {v4 .. v10}, Landroid/view/WindowManagerPolicy;->interceptKeyTi(Landroid/view/WindowManagerPolicy$WindowState;IIZII)Z

    .line 5971
    :cond_1
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Event timeout during app switch: dropping "

    .end local v6           #keycode:I
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5973
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->SKIP_TARGET_TOKEN:Ljava/lang/Object;

    move-object v4, v0

    .line 6144
    .end local v8           #down:Z
    .end local v9           #repeatCount:I
    .end local v14           #dispatch:Z
    :goto_1
    return-object v4

    .line 5958
    .restart local v6       #keycode:I
    .restart local v9       #repeatCount:I
    :cond_2
    const/4 v4, 0x0

    move v8, v4

    goto :goto_0

    .line 5978
    .restart local v8       #down:Z
    .restart local v14       #dispatch:Z
    :cond_3
    const/4 v5, 0x0

    .line 5979
    .local v5, focus:Lcom/android/server/WindowManagerService$WindowState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->this$0:Lcom/android/server/WindowManagerService;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 5980
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->this$0:Lcom/android/server/WindowManagerService;

    move-object v7, v0

    invoke-static {v7}, Lcom/android/server/WindowManagerService;->access$1000(Lcom/android/server/WindowManagerService;)Lcom/android/server/WindowManagerService$WindowState;

    move-result-object v5

    .line 5981
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5983
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->this$0:Lcom/android/server/WindowManagerService;

    move-object v4, v0

    const/4 v7, 0x5

    invoke-static {v4, v5, v7}, Lcom/android/server/WindowManagerService;->access$1100(Lcom/android/server/WindowManagerService;Lcom/android/server/WindowManagerService$WindowState;I)V

    .line 5985
    if-eqz p6, :cond_5

    if-eqz v5, :cond_4

    iget-object v4, v5, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    iget v4, v4, Lcom/android/server/WindowManagerService$Session;->mUid:I

    move/from16 v0, p6

    move v1, v4

    if-eq v0, v1, :cond_5

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->this$0:Lcom/android/server/WindowManagerService;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v7, "android.permission.INJECT_EVENTS"

    move-object v0, v4

    move-object v1, v7

    move/from16 v2, p5

    move/from16 v3, p6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v4

    if-nez v4, :cond_6

    .line 5991
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->this$0:Lcom/android/server/WindowManagerService;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v10

    invoke-interface/range {v4 .. v10}, Landroid/view/WindowManagerPolicy;->interceptKeyTi(Landroid/view/WindowManagerPolicy$WindowState;IIZII)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 5994
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->CONSUMED_EVENT_TOKEN:Ljava/lang/Object;

    move-object v4, v0

    goto :goto_1

    .line 5981
    .end local v6           #keycode:I
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .restart local v6       #keycode:I
    :cond_6
    move-object v4, v5

    .line 5998
    goto :goto_1

    .line 6000
    .end local v5           #focus:Lcom/android/server/WindowManagerService$WindowState;
    .end local v6           #keycode:I
    .end local v8           #down:Z
    .end local v9           #repeatCount:I
    .end local v14           #dispatch:Z
    :cond_7
    if-nez p4, :cond_9

    .line 6001
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->this$0:Lcom/android/server/WindowManagerService;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Lcom/android/server/WindowManagerService$KeyWaiter;->checkShouldDispatchKey(I)Z

    move-result v14

    .line 6002
    .restart local v14       #dispatch:Z
    if-nez v14, :cond_8

    .line 6003
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Event timeout during app switch: dropping trackball "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6005
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->SKIP_TARGET_TOKEN:Ljava/lang/Object;

    move-object v4, v0

    goto/16 :goto_1

    .line 6008
    :cond_8
    const/4 v5, 0x0

    .line 6009
    .restart local v5       #focus:Lcom/android/server/WindowManagerService$WindowState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->this$0:Lcom/android/server/WindowManagerService;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 6010
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->this$0:Lcom/android/server/WindowManagerService;

    move-object v6, v0

    invoke-static {v6}, Lcom/android/server/WindowManagerService;->access$1000(Lcom/android/server/WindowManagerService;)Lcom/android/server/WindowManagerService$WindowState;

    move-result-object v5

    .line 6011
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 6013
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->this$0:Lcom/android/server/WindowManagerService;

    move-object v4, v0

    const/4 v6, 0x5

    invoke-static {v4, v5, v6}, Lcom/android/server/WindowManagerService;->access$1100(Lcom/android/server/WindowManagerService;Lcom/android/server/WindowManagerService$WindowState;I)V

    move-object v4, v5

    .line 6014
    goto/16 :goto_1

    .line 6011
    :catchall_1
    move-exception v6

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v6

    .line 6017
    .end local v5           #focus:Lcom/android/server/WindowManagerService$WindowState;
    .end local v14           #dispatch:Z
    :cond_9
    if-nez p3, :cond_a

    .line 6018
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->SKIP_TARGET_TOKEN:Ljava/lang/Object;

    move-object v4, v0

    goto/16 :goto_1

    .line 6021
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->this$0:Lcom/android/server/WindowManagerService;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/server/WindowManagerService$KeyWaiter;->checkShouldDispatchKey(I)Z

    move-result v14

    .line 6023
    .restart local v14       #dispatch:Z
    if-nez v14, :cond_b

    .line 6024
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Event timeout during app switch: dropping pointer "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6026
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->SKIP_TARGET_TOKEN:Ljava/lang/Object;

    move-object v4, v0

    goto/16 :goto_1

    .line 6030
    :cond_b
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v12

    .line 6031
    .local v12, action:I
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getX()F

    move-result v26

    .line 6032
    .local v26, xf:F
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getY()F

    move-result v28

    .line 6033
    .local v28, yf:F
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v15

    .line 6035
    .local v15, eventTime:J
    if-eqz p2, :cond_f

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/server/KeyInputQueue$QueuedEvent;->flags:I

    move v4, v0

    const/high16 v5, 0x2000

    and-int/2addr v4, v5

    if-eqz v4, :cond_f

    const/4 v4, 0x1

    move/from16 v19, v4

    .line 6038
    .local v19, screenWasOff:Z
    :goto_2
    const/16 v20, 0x0

    .line 6040
    .local v20, target:Lcom/android/server/WindowManagerService$WindowState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->this$0:Lcom/android/server/WindowManagerService;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 6041
    :try_start_4
    monitor-enter p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 6042
    if-nez v12, :cond_16

    .line 6043
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->mMotionTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object v5, v0

    if-eqz v5, :cond_c

    .line 6048
    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Pointer down received while already down in: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->mMotionTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6050
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService$KeyWaiter;->mMotionTarget:Lcom/android/server/WindowManagerService$WindowState;

    .line 6055
    :cond_c
    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v25, v0

    .line 6056
    .local v25, x:I
    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v27, v0

    .line 6058
    .local v27, y:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->this$0:Lcom/android/server/WindowManagerService;

    move-object v5, v0

    move-object v0, v5

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    .line 6059
    .local v24, windows:Ljava/util/ArrayList;
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 6060
    .local v11, N:I
    const/16 v22, 0x0

    .line 6061
    .local v22, topErrWindow:Lcom/android/server/WindowManagerService$WindowState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->this$0:Lcom/android/server/WindowManagerService;

    move-object v5, v0

    move-object v0, v5

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    .line 6062
    .local v21, tmpRect:Landroid/graphics/Rect;
    const/4 v5, 0x1

    sub-int v18, v11, v5

    .local v18, i:I
    :goto_3
    if-ltz v18, :cond_15

    .line 6063
    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/WindowManagerService$WindowState;

    .line 6065
    .local v13, child:Lcom/android/server/WindowManagerService$WindowState;
    iget-object v5, v13, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object v0, v5

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v17, v0

    .line 6066
    .local v17, flags:I
    const/high16 v5, 0x4000

    and-int v5, v5, v17

    if-eqz v5, :cond_d

    .line 6067
    if-nez v22, :cond_d

    .line 6068
    move-object/from16 v22, v13

    .line 6071
    :cond_d
    invoke-virtual {v13}, Lcom/android/server/WindowManagerService$WindowState;->isVisibleLw()Z

    move-result v5

    if-nez v5, :cond_10

    .line 6062
    :cond_e
    :goto_4
    add-int/lit8 v18, v18, -0x1

    goto :goto_3

    .line 6035
    .end local v11           #N:I
    .end local v13           #child:Lcom/android/server/WindowManagerService$WindowState;
    .end local v17           #flags:I
    .end local v18           #i:I
    .end local v19           #screenWasOff:Z
    .end local v20           #target:Lcom/android/server/WindowManagerService$WindowState;
    .end local v21           #tmpRect:Landroid/graphics/Rect;
    .end local v22           #topErrWindow:Lcom/android/server/WindowManagerService$WindowState;
    .end local v24           #windows:Ljava/util/ArrayList;
    .end local v25           #x:I
    .end local v27           #y:I
    :cond_f
    const/4 v4, 0x0

    move/from16 v19, v4

    goto/16 :goto_2

    .line 6075
    .restart local v11       #N:I
    .restart local v13       #child:Lcom/android/server/WindowManagerService$WindowState;
    .restart local v17       #flags:I
    .restart local v18       #i:I
    .restart local v19       #screenWasOff:Z
    .restart local v20       #target:Lcom/android/server/WindowManagerService$WindowState;
    .restart local v21       #tmpRect:Landroid/graphics/Rect;
    .restart local v22       #topErrWindow:Lcom/android/server/WindowManagerService$WindowState;
    .restart local v24       #windows:Ljava/util/ArrayList;
    .restart local v25       #x:I
    .restart local v27       #y:I
    :cond_10
    and-int/lit8 v5, v17, 0x10

    if-eqz v5, :cond_11

    .line 6077
    const/high16 v5, 0x4

    and-int v5, v5, v17

    if-eqz v5, :cond_e

    .line 6079
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->mOutsideTouchTargets:Lcom/android/server/WindowManagerService$WindowState;

    move-object v5, v0

    iput-object v5, v13, Lcom/android/server/WindowManagerService$WindowState;->mNextOutsideTouch:Lcom/android/server/WindowManagerService$WindowState;

    .line 6080
    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService$KeyWaiter;->mOutsideTouchTargets:Lcom/android/server/WindowManagerService$WindowState;

    goto :goto_4

    .line 6137
    .end local v11           #N:I
    .end local v13           #child:Lcom/android/server/WindowManagerService$WindowState;
    .end local v17           #flags:I
    .end local v18           #i:I
    .end local v21           #tmpRect:Landroid/graphics/Rect;
    .end local v22           #topErrWindow:Lcom/android/server/WindowManagerService$WindowState;
    .end local v24           #windows:Ljava/util/ArrayList;
    .end local v25           #x:I
    .end local v27           #y:I
    :catchall_2
    move-exception v5

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw v5

    .line 6138
    :catchall_3
    move-exception v5

    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v5

    .line 6084
    .restart local v11       #N:I
    .restart local v13       #child:Lcom/android/server/WindowManagerService$WindowState;
    .restart local v17       #flags:I
    .restart local v18       #i:I
    .restart local v21       #tmpRect:Landroid/graphics/Rect;
    .restart local v22       #topErrWindow:Lcom/android/server/WindowManagerService$WindowState;
    .restart local v24       #windows:Ljava/util/ArrayList;
    .restart local v25       #x:I
    .restart local v27       #y:I
    :cond_11
    :try_start_7
    iget-object v5, v13, Lcom/android/server/WindowManagerService$WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 6085
    iget v5, v13, Lcom/android/server/WindowManagerService$WindowState;->mTouchableInsets:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_17

    .line 6090
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v5, v0

    iget-object v6, v13, Lcom/android/server/WindowManagerService$WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 6091
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v5, v0

    iget-object v6, v13, Lcom/android/server/WindowManagerService$WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 6092
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v5, v0

    iget-object v6, v13, Lcom/android/server/WindowManagerService$WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 6093
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v5, v0

    iget-object v6, v13, Lcom/android/server/WindowManagerService$WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 6104
    :cond_12
    :goto_5
    and-int/lit8 v23, v17, 0x28

    .line 6107
    .local v23, touchFlags:I
    move-object/from16 v0, v21

    move/from16 v1, v25

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-nez v5, :cond_13

    if-nez v23, :cond_19

    .line 6109
    :cond_13
    if-eqz v19, :cond_14

    and-int/lit8 v5, v17, 0x40

    if-eqz v5, :cond_18

    .line 6111
    :cond_14
    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService$KeyWaiter;->mMotionTarget:Lcom/android/server/WindowManagerService$WindowState;

    .line 6131
    .end local v13           #child:Lcom/android/server/WindowManagerService$WindowState;
    .end local v17           #flags:I
    .end local v23           #touchFlags:I
    :cond_15
    :goto_6
    if-eqz v22, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->mMotionTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_16

    .line 6132
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService$KeyWaiter;->mMotionTarget:Lcom/android/server/WindowManagerService$WindowState;

    .line 6136
    .end local v11           #N:I
    .end local v18           #i:I
    .end local v21           #tmpRect:Landroid/graphics/Rect;
    .end local v22           #topErrWindow:Lcom/android/server/WindowManagerService$WindowState;
    .end local v24           #windows:Ljava/util/ArrayList;
    .end local v25           #x:I
    .end local v27           #y:I
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->mMotionTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v20, v0

    .line 6137
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 6138
    :try_start_8
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 6140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->this$0:Lcom/android/server/WindowManagerService;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->this$0:Lcom/android/server/WindowManagerService;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/android/server/WindowManagerService;->access$1200(Lcom/android/server/WindowManagerService;Landroid/view/MotionEvent;)I

    move-result v5

    move-object v0, v4

    move-object/from16 v1, v20

    move v2, v5

    invoke-static {v0, v1, v2}, Lcom/android/server/WindowManagerService;->access$1100(Lcom/android/server/WindowManagerService;Lcom/android/server/WindowManagerService$WindowState;I)V

    .line 6144
    if-eqz v20, :cond_1a

    move-object/from16 v4, v20

    goto/16 :goto_1

    .line 6094
    .restart local v11       #N:I
    .restart local v13       #child:Lcom/android/server/WindowManagerService$WindowState;
    .restart local v17       #flags:I
    .restart local v18       #i:I
    .restart local v21       #tmpRect:Landroid/graphics/Rect;
    .restart local v22       #topErrWindow:Lcom/android/server/WindowManagerService$WindowState;
    .restart local v24       #windows:Ljava/util/ArrayList;
    .restart local v25       #x:I
    .restart local v27       #y:I
    :cond_17
    :try_start_9
    iget v5, v13, Lcom/android/server/WindowManagerService$WindowState;->mTouchableInsets:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_12

    .line 6099
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v5, v0

    iget-object v6, v13, Lcom/android/server/WindowManagerService$WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 6100
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v5, v0

    iget-object v6, v13, Lcom/android/server/WindowManagerService$WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 6101
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v5, v0

    iget-object v6, v13, Lcom/android/server/WindowManagerService$WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 6102
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v5, v0

    iget-object v6, v13, Lcom/android/server/WindowManagerService$WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_5

    .line 6114
    .restart local v23       #touchFlags:I
    :cond_18
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService$KeyWaiter;->mMotionTarget:Lcom/android/server/WindowManagerService$WindowState;

    goto/16 :goto_6

    .line 6119
    :cond_19
    const/high16 v5, 0x4

    and-int v5, v5, v17

    if-eqz v5, :cond_e

    .line 6121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->mOutsideTouchTargets:Lcom/android/server/WindowManagerService$WindowState;

    move-object v5, v0

    iput-object v5, v13, Lcom/android/server/WindowManagerService$WindowState;->mNextOutsideTouch:Lcom/android/server/WindowManagerService$WindowState;

    .line 6122
    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService$KeyWaiter;->mOutsideTouchTargets:Lcom/android/server/WindowManagerService$WindowState;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto/16 :goto_4

    .line 6144
    .end local v11           #N:I
    .end local v13           #child:Lcom/android/server/WindowManagerService$WindowState;
    .end local v17           #flags:I
    .end local v18           #i:I
    .end local v21           #tmpRect:Landroid/graphics/Rect;
    .end local v22           #topErrWindow:Lcom/android/server/WindowManagerService$WindowState;
    .end local v23           #touchFlags:I
    .end local v24           #windows:Ljava/util/ArrayList;
    .end local v25           #x:I
    .end local v27           #y:I
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->SKIP_TARGET_TOKEN:Ljava/lang/Object;

    move-object v4, v0

    goto/16 :goto_1
.end method

.method finishedKey(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;ZI)Landroid/view/MotionEvent;
    .locals 10
    .parameter "session"
    .parameter "client"
    .parameter "force"
    .parameter "returnWhat"

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 6216
    if-nez p2, :cond_0

    .line 6275
    :goto_0
    return-object v1

    .line 6220
    :cond_0
    const/4 v4, 0x0

    .line 6221
    .local v4, res:Landroid/view/MotionEvent;
    const/4 v8, 0x0

    .line 6222
    .local v8, qev:Lcom/android/server/KeyInputQueue$QueuedEvent;
    const/4 v2, 0x0

    .line 6224
    .local v2, win:Lcom/android/server/WindowManagerService$WindowState;
    monitor-enter p0

    .line 6230
    if-ne p4, v6, :cond_6

    .line 6231
    :try_start_0
    iget-object v8, p1, Lcom/android/server/WindowManagerService$Session;->mPendingPointerMove:Lcom/android/server/KeyInputQueue$QueuedEvent;

    .line 6232
    iget-object v2, p1, Lcom/android/server/WindowManagerService$Session;->mPendingPointerWindow:Lcom/android/server/WindowManagerService$WindowState;

    .line 6233
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/server/WindowManagerService$Session;->mPendingPointerMove:Lcom/android/server/KeyInputQueue$QueuedEvent;

    .line 6234
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/server/WindowManagerService$Session;->mPendingPointerWindow:Lcom/android/server/WindowManagerService$WindowState;

    .line 6242
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mLastBinder:Landroid/os/IBinder;

    invoke-interface {p2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    if-ne v1, v3, :cond_3

    .line 6246
    iget-object v1, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mLastWin:Lcom/android/server/WindowManagerService$WindowState;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mLastWin:Lcom/android/server/WindowManagerService$WindowState;

    iget-object v1, v1, Lcom/android/server/WindowManagerService$WindowState;->mToken:Lcom/android/server/WindowManagerService$WindowToken;

    iget-boolean v1, v1, Lcom/android/server/WindowManagerService$WindowToken;->paused:Z

    if-eqz v1, :cond_2

    if-nez p3, :cond_2

    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mEventDispatching:Z

    if-nez v1, :cond_7

    .line 6248
    :cond_2
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/WindowManagerService$KeyWaiter;->doFinishedKeyLocked(Z)V

    .line 6258
    :cond_3
    :goto_2
    if-eqz v8, :cond_4

    .line 6259
    iget-object v5, v8, Lcom/android/server/KeyInputQueue$QueuedEvent;->event:Ljava/lang/Object;

    move-object v0, v5

    check-cast v0, Landroid/view/MotionEvent;

    move-object v4, v0

    .line 6262
    iget-object v1, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/WindowManagerService;->mQueue:Lcom/android/server/WindowManagerService$KeyQ;

    invoke-virtual {v1, v8}, Lcom/android/server/WindowManagerService$KeyQ;->recycleEvent(Lcom/android/server/KeyInputQueue$QueuedEvent;)V

    .line 6263
    if-eqz v2, :cond_4

    if-ne p4, v6, :cond_4

    .line 6264
    iget-object v1, v2, Lcom/android/server/WindowManagerService$WindowState;->mFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    int-to-float v1, v1

    iget-object v3, v2, Lcom/android/server/WindowManagerService$WindowState;->mFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v4, v1, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 6267
    :cond_4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6269
    if-eqz v4, :cond_5

    if-ne p4, v6, :cond_5

    .line 6270
    iget-object v1, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v9, v1, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v9

    .line 6271
    :try_start_1
    iget-object v1, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->this$0:Lcom/android/server/WindowManagerService;

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    const/4 v7, 0x0

    move-object v3, v2

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/WindowManagerService;->dispatchPointerElsewhereLocked(Lcom/android/server/WindowManagerService$WindowState;Lcom/android/server/WindowManagerService$WindowState;Landroid/view/MotionEvent;JZ)V

    .line 6272
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_5
    move-object v1, v4

    .line 6275
    goto :goto_0

    .line 6235
    :cond_6
    const/4 v1, 0x2

    if-ne p4, v1, :cond_1

    .line 6236
    :try_start_2
    iget-object v8, p1, Lcom/android/server/WindowManagerService$Session;->mPendingTrackballMove:Lcom/android/server/KeyInputQueue$QueuedEvent;

    .line 6237
    iget-object v2, p1, Lcom/android/server/WindowManagerService$Session;->mPendingTrackballWindow:Lcom/android/server/WindowManagerService$WindowState;

    .line 6238
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/server/WindowManagerService$Session;->mPendingTrackballMove:Lcom/android/server/KeyInputQueue$QueuedEvent;

    .line 6239
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/server/WindowManagerService$Session;->mPendingTrackballWindow:Lcom/android/server/WindowManagerService$WindowState;

    goto :goto_1

    .line 6267
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 6253
    :cond_7
    const/4 v1, 0x1

    :try_start_3
    iput-boolean v1, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mFinished:Z

    .line 6254
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 6272
    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method handleNewWindowLocked(Lcom/android/server/WindowManagerService$WindowState;)V
    .locals 2
    .parameter "newWindow"

    .prologue
    .line 6285
    invoke-virtual {p1}, Lcom/android/server/WindowManagerService$WindowState;->canReceiveKeys()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6331
    :goto_0
    return-void

    .line 6288
    :cond_0
    monitor-enter p0

    .line 6300
    :try_start_0
    iget-object v0, p1, Lcom/android/server/WindowManagerService$WindowState;->mToken:Lcom/android/server/WindowManagerService$WindowToken;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/WindowManagerService$WindowToken;->paused:Z

    .line 6302
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mGotFirstWindow:Z

    .line 6304
    iget-object v0, p1, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x4000

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 6307
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mLastWin:Lcom/android/server/WindowManagerService$WindowState;

    .line 6308
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mLastBinder:Landroid/os/IBinder;

    .line 6309
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mMotionTarget:Lcom/android/server/WindowManagerService$WindowState;

    .line 6310
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mFinished:Z

    .line 6329
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 6330
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 6311
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mLastWin:Lcom/android/server/WindowManagerService$WindowState;

    if-eqz v0, :cond_1

    .line 6318
    iget v0, p1, Lcom/android/server/WindowManagerService$WindowState;->mLayer:I

    iget-object v1, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mLastWin:Lcom/android/server/WindowManagerService$WindowState;

    iget v1, v1, Lcom/android/server/WindowManagerService$WindowState;->mLayer:I

    if-lt v0, v1, :cond_1

    .line 6321
    iget-object v0, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mLastWin:Lcom/android/server/WindowManagerService$WindowState;

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mToken:Lcom/android/server/WindowManagerService$WindowToken;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/WindowManagerService$WindowToken;->paused:Z

    .line 6322
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/WindowManagerService$KeyWaiter;->doFinishedKeyLocked(Z)V

    .line 6323
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method pauseDispatchingLocked(Lcom/android/server/WindowManagerService$WindowToken;)V
    .locals 1
    .parameter "token"

    .prologue
    .line 6334
    monitor-enter p0

    .line 6337
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p1, Lcom/android/server/WindowManagerService$WindowToken;->paused:Z

    .line 6352
    monitor-exit p0

    .line 6353
    return-void

    .line 6352
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public recordDispatchState(Landroid/view/KeyEvent;Lcom/android/server/WindowManagerService$WindowState;)V
    .locals 1
    .parameter "theEvent"
    .parameter "theFocus"

    .prologue
    .line 5698
    new-instance v0, Lcom/android/server/WindowManagerService$KeyWaiter$DispatchState;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/WindowManagerService$KeyWaiter$DispatchState;-><init>(Lcom/android/server/WindowManagerService$KeyWaiter;Landroid/view/KeyEvent;Lcom/android/server/WindowManagerService$WindowState;)V

    iput-object v0, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mDispatchState:Lcom/android/server/WindowManagerService$KeyWaiter$DispatchState;

    .line 5699
    return-void
.end method

.method releasePendingPointerLocked(Lcom/android/server/WindowManagerService$Session;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 6198
    iget-object v0, p1, Lcom/android/server/WindowManagerService$Session;->mPendingPointerMove:Lcom/android/server/KeyInputQueue$QueuedEvent;

    if-eqz v0, :cond_0

    .line 6199
    iget-object v0, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mQueue:Lcom/android/server/WindowManagerService$KeyQ;

    iget-object v1, p1, Lcom/android/server/WindowManagerService$Session;->mPendingPointerMove:Lcom/android/server/KeyInputQueue$QueuedEvent;

    invoke-virtual {v0, v1}, Lcom/android/server/WindowManagerService$KeyQ;->recycleEvent(Lcom/android/server/KeyInputQueue$QueuedEvent;)V

    .line 6200
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/server/WindowManagerService$Session;->mPendingPointerMove:Lcom/android/server/KeyInputQueue$QueuedEvent;

    .line 6202
    :cond_0
    return-void
.end method

.method releasePendingTrackballLocked(Lcom/android/server/WindowManagerService$Session;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 6205
    iget-object v0, p1, Lcom/android/server/WindowManagerService$Session;->mPendingTrackballMove:Lcom/android/server/KeyInputQueue$QueuedEvent;

    if-eqz v0, :cond_0

    .line 6206
    iget-object v0, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mQueue:Lcom/android/server/WindowManagerService$KeyQ;

    iget-object v1, p1, Lcom/android/server/WindowManagerService$Session;->mPendingTrackballMove:Lcom/android/server/KeyInputQueue$QueuedEvent;

    invoke-virtual {v0, v1}, Lcom/android/server/WindowManagerService$KeyQ;->recycleEvent(Lcom/android/server/KeyInputQueue$QueuedEvent;)V

    .line 6207
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/server/WindowManagerService$Session;->mPendingTrackballMove:Lcom/android/server/KeyInputQueue$QueuedEvent;

    .line 6209
    :cond_0
    return-void
.end method

.method resumeDispatchingLocked(Lcom/android/server/WindowManagerService$WindowToken;)V
    .locals 1
    .parameter "token"

    .prologue
    .line 6356
    monitor-enter p0

    .line 6357
    :try_start_0
    iget-boolean v0, p1, Lcom/android/server/WindowManagerService$WindowToken;->paused:Z

    if-eqz v0, :cond_0

    .line 6364
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/WindowManagerService$WindowToken;->paused:Z

    .line 6365
    iget-object v0, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mLastWin:Lcom/android/server/WindowManagerService$WindowState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mLastWin:Lcom/android/server/WindowManagerService$WindowState;

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mToken:Lcom/android/server/WindowManagerService$WindowToken;

    if-ne v0, p1, :cond_1

    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mFinished:Z

    if-eqz v0, :cond_1

    .line 6366
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/WindowManagerService$KeyWaiter;->doFinishedKeyLocked(Z)V

    .line 6371
    :cond_0
    :goto_0
    monitor-exit p0

    .line 6372
    return-void

    .line 6368
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_0

    .line 6371
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setEventDispatchingLocked(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 6375
    monitor-enter p0

    .line 6376
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mEventDispatching:Z

    .line 6377
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 6378
    monitor-exit p0

    .line 6379
    return-void

    .line 6378
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method tickle()V
    .locals 1

    .prologue
    .line 6279
    monitor-enter p0

    .line 6280
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 6281
    monitor-exit p0

    .line 6282
    return-void

    .line 6281
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method waitForNextEventTarget(Landroid/view/KeyEvent;Lcom/android/server/KeyInputQueue$QueuedEvent;Landroid/view/MotionEvent;ZZII)Ljava/lang/Object;
    .locals 31
    .parameter "nextKey"
    .parameter "qev"
    .parameter "nextMotion"
    .parameter "isPointerEvent"
    .parameter "failIfTimeout"
    .parameter "callingPid"
    .parameter "callingUid"

    .prologue
    .line 5732
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v19

    .line 5733
    .local v19, startTime:J
    const-wide/16 v15, 0x1388

    .line 5734
    .local v15, keyDispatchingTimeout:J
    const-wide/16 v29, 0x0

    .line 5742
    .local v29, waitedFor:J
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->mLastWin:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v26, v0

    .line 5743
    .local v26, targetWin:Lcom/android/server/WindowManagerService$WindowState;
    if-nez v26, :cond_1

    const/4 v4, 0x1

    move/from16 v25, v4

    .line 5747
    .local v25, targetIsNew:Z
    :goto_1
    if-eqz v25, :cond_4

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p6

    move/from16 v10, p7

    .line 5748
    invoke-virtual/range {v4 .. v10}, Lcom/android/server/WindowManagerService$KeyWaiter;->findTargetWindow(Landroid/view/KeyEvent;Lcom/android/server/KeyInputQueue$QueuedEvent;Landroid/view/MotionEvent;ZII)Ljava/lang/Object;

    move-result-object v23

    .line 5750
    .local v23, target:Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->SKIP_TARGET_TOKEN:Ljava/lang/Object;

    move-object v4, v0

    move-object/from16 v0, v23

    move-object v1, v4

    if-ne v0, v1, :cond_2

    .line 5755
    const/4 v4, 0x0

    .line 5938
    .end local v23           #target:Ljava/lang/Object;
    :goto_2
    return-object v4

    .line 5743
    .end local v25           #targetIsNew:Z
    :cond_1
    const/4 v4, 0x0

    move/from16 v25, v4

    goto :goto_1

    .line 5757
    .restart local v23       #target:Ljava/lang/Object;
    .restart local v25       #targetIsNew:Z
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->CONSUMED_EVENT_TOKEN:Ljava/lang/Object;

    move-object v4, v0

    move-object/from16 v0, v23

    move-object v1, v4

    if-ne v0, v1, :cond_3

    move-object/from16 v4, v23

    .line 5760
    goto :goto_2

    .line 5762
    :cond_3
    move-object/from16 v0, v23

    check-cast v0, Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v26, v0

    .line 5765
    .end local v23           #target:Ljava/lang/Object;
    :cond_4
    const/16 v24, 0x0

    .line 5768
    .local v24, targetApp:Lcom/android/server/WindowManagerService$AppWindowToken;
    monitor-enter p0

    .line 5772
    if-nez v25, :cond_5

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->mLastWin:Lcom/android/server/WindowManagerService$WindowState;

    move-object v4, v0

    if-nez v4, :cond_5

    .line 5773
    monitor-exit p0

    goto :goto_0

    .line 5873
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 5778
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->mFinished:Z

    move v4, v0

    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->this$0:Lcom/android/server/WindowManagerService;

    move-object v4, v0

    iget-boolean v4, v4, Lcom/android/server/WindowManagerService;->mDisplayFrozen:Z

    if-nez v4, :cond_8

    .line 5781
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->mEventDispatching:Z

    move v4, v0

    if-nez v4, :cond_6

    .line 5785
    const/4 v4, 0x0

    monitor-exit p0

    goto :goto_2

    .line 5787
    :cond_6
    if-eqz v26, :cond_7

    .line 5791
    if-eqz v25, :cond_8

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mToken:Lcom/android/server/WindowManagerService$WindowToken;

    move-object v4, v0

    iget-boolean v4, v4, Lcom/android/server/WindowManagerService$WindowToken;->paused:Z

    if-nez v4, :cond_8

    .line 5792
    monitor-exit p0

    move-object/from16 v4, v26

    goto :goto_2

    .line 5797
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->this$0:Lcom/android/server/WindowManagerService;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/WindowManagerService;->mFocusedApp:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-nez v4, :cond_8

    .line 5801
    const/4 v4, 0x0

    monitor-exit p0

    goto :goto_2

    .line 5816
    :cond_8
    if-eqz v26, :cond_9

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object v4, v0

    move-object/from16 v24, v4

    .line 5819
    :goto_3
    move-wide v13, v15

    .line 5820
    .local v13, curTimeout:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->mTimeToSwitch:J

    move-wide v4, v0

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_b

    .line 5821
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v17

    .line 5822
    .local v17, now:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->mTimeToSwitch:J

    move-wide v4, v0

    cmp-long v4, v4, v17

    if-gtz v4, :cond_a

    .line 5826
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v4

    invoke-direct {v0, v1}, Lcom/android/server/WindowManagerService$KeyWaiter;->doFinishedKeyLocked(Z)V

    .line 5827
    monitor-exit p0

    goto/16 :goto_0

    .line 5816
    .end local v13           #curTimeout:J
    .end local v17           #now:J
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->this$0:Lcom/android/server/WindowManagerService;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/WindowManagerService;->mFocusedApp:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v24, v4

    goto :goto_3

    .line 5829
    .restart local v13       #curTimeout:J
    .restart local v17       #now:J
    :cond_a
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->mTimeToSwitch:J

    move-wide v4, v0

    sub-long v21, v4, v17

    .line 5830
    .local v21, switchTimeout:J
    cmp-long v4, v13, v21

    if-lez v4, :cond_b

    .line 5831
    move-wide/from16 v13, v21

    .line 5839
    .end local v17           #now:J
    .end local v21           #switchTimeout:J
    :cond_b
    if-nez v26, :cond_d

    if-nez v24, :cond_d

    .line 5840
    if-nez p1, :cond_c

    .line 5841
    const-string v4, "WindowManager"

    const-string v5, "[SS] Dropping this key event because both targetWin and targetApp for keycode is null"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5845
    :goto_4
    const/4 v4, 0x0

    monitor-exit p0

    goto/16 :goto_2

    .line 5843
    :cond_c
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[SS] Dropping this key event because both targetWin and targetApp for keycode "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is null"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 5847
    :cond_d
    if-nez v26, :cond_f

    .line 5848
    if-nez p1, :cond_e

    .line 5849
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[SS] Dropping this key event, targetApp is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5854
    :goto_5
    const/4 v4, 0x0

    monitor-exit p0

    goto/16 :goto_2

    .line 5851
    :cond_e
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[SS] Dropping this key event because targetWin for keycode "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is null, and targetApp is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    .line 5864
    :cond_f
    :try_start_2
    move-object/from16 v0, p0

    move-wide v1, v13

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 5873
    :goto_6
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 5878
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->mWasFrozen:Z

    move v4, v0

    if-eqz v4, :cond_11

    .line 5879
    const-wide/16 v29, 0x0

    .line 5880
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$KeyWaiter;->mWasFrozen:Z

    .line 5885
    :goto_7
    cmp-long v4, v29, v15

    if-ltz v4, :cond_0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->mTimeToSwitch:J

    move-wide v4, v0

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 5886
    const/4 v12, 0x0

    .line 5887
    .local v12, at:Landroid/view/IApplicationToken;
    monitor-enter p0

    .line 5888
    :try_start_4
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Key dispatching timed out sending to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v26, :cond_12

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    :goto_8
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5892
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Previous dispatch state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->mDispatchState:Lcom/android/server/WindowManagerService$KeyWaiter$DispatchState;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5893
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Current dispatch state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Lcom/android/server/WindowManagerService$KeyWaiter$DispatchState;

    move-object v0, v6

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/WindowManagerService$KeyWaiter$DispatchState;-><init>(Lcom/android/server/WindowManagerService$KeyWaiter;Landroid/view/KeyEvent;Lcom/android/server/WindowManagerService$WindowState;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5897
    if-eqz v26, :cond_13

    .line 5898
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/WindowManagerService$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v12

    .line 5902
    :cond_10
    :goto_9
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 5904
    const/4 v11, 0x1

    .line 5905
    .local v11, abort:Z
    if-eqz v12, :cond_15

    .line 5907
    :try_start_5
    invoke-interface {v12}, Landroid/view/IApplicationToken;->getKeyDispatchingTimeout()J
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    move-result-wide v27

    .line 5908
    .local v27, timeout:J
    cmp-long v4, v27, v29

    if-lez v4, :cond_14

    .line 5911
    sub-long v15, v27, v29

    goto/16 :goto_0

    .line 5882
    .end local v11           #abort:Z
    .end local v12           #at:Landroid/view/IApplicationToken;
    .end local v27           #timeout:J
    :cond_11
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long v29, v4, v19

    goto/16 :goto_7

    .line 5888
    .restart local v12       #at:Landroid/view/IApplicationToken;
    :cond_12
    :try_start_6
    const-string v6, "<null>: no window ready for key dispatch"

    goto :goto_8

    .line 5899
    :cond_13
    if-eqz v24, :cond_10

    .line 5900
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    move-object v12, v0

    goto :goto_9

    .line 5902
    :catchall_1
    move-exception v4

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v4

    .line 5914
    .restart local v11       #abort:Z
    .restart local v27       #timeout:J
    :cond_14
    :try_start_7
    invoke-interface {v12}, Landroid/view/IApplicationToken;->keyDispatchingTimedOut()Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1

    move-result v11

    .line 5920
    .end local v27           #timeout:J
    :cond_15
    :goto_a
    monitor-enter p0

    .line 5921
    if-eqz v11, :cond_1a

    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->mLastWin:Lcom/android/server/WindowManagerService$WindowState;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v26

    if-eq v0, v1, :cond_16

    if-nez v26, :cond_1a

    .line 5922
    :cond_16
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$KeyWaiter;->mFinished:Z

    .line 5923
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->mLastWin:Lcom/android/server/WindowManagerService$WindowState;

    move-object v4, v0

    if-eqz v4, :cond_17

    .line 5927
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->mLastWin:Lcom/android/server/WindowManagerService$WindowState;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/WindowManagerService$WindowState;->mToken:Lcom/android/server/WindowManagerService$WindowToken;

    iget-boolean v4, v4, Lcom/android/server/WindowManagerService$WindowToken;->paused:Z

    if-eqz v4, :cond_17

    .line 5928
    const-string v4, "WindowManager"

    const-string v5, "Un-pausing dispatching to this window"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5929
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->mLastWin:Lcom/android/server/WindowManagerService$WindowState;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/WindowManagerService$WindowState;->mToken:Lcom/android/server/WindowManagerService$WindowToken;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/server/WindowManagerService$WindowToken;->paused:Z

    .line 5932
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->mMotionTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_18

    .line 5933
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService$KeyWaiter;->mMotionTarget:Lcom/android/server/WindowManagerService$WindowState;

    .line 5935
    :cond_18
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService$KeyWaiter;->mLastWin:Lcom/android/server/WindowManagerService$WindowState;

    .line 5936
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService$KeyWaiter;->mLastBinder:Landroid/os/IBinder;

    .line 5937
    if-nez p5, :cond_19

    if-nez v26, :cond_1b

    .line 5938
    :cond_19
    const/4 v4, 0x0

    monitor-exit p0

    goto/16 :goto_2

    .line 5944
    :catchall_2
    move-exception v4

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v4

    .line 5941
    :cond_1a
    :try_start_9
    const-string v4, "WindowManager"

    const-string v5, "Continuing to wait for key to be dispatched"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5942
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v19

    .line 5944
    :cond_1b
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto/16 :goto_0

    .line 5871
    .end local v11           #abort:Z
    .end local v12           #at:Landroid/view/IApplicationToken;
    :catch_0
    move-exception v4

    goto/16 :goto_6

    .line 5916
    .restart local v11       #abort:Z
    .restart local v12       #at:Landroid/view/IApplicationToken;
    :catch_1
    move-exception v4

    goto :goto_a
.end method
