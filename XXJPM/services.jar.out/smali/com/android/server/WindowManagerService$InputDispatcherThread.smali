.class final Lcom/android/server/WindowManagerService$InputDispatcherThread;
.super Ljava/lang/Thread;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InputDispatcherThread"
.end annotation


# static fields
.field static final LONG_WAIT:I = 0x989298


# instance fields
.field final synthetic this$0:Lcom/android/server/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/WindowManagerService;)V
    .locals 1
    .parameter

    .prologue
    .line 6587
    iput-object p1, p0, Lcom/android/server/WindowManagerService$InputDispatcherThread;->this$0:Lcom/android/server/WindowManagerService;

    .line 6588
    const-string v0, "InputDispatcher"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 6589
    return-void
.end method

.method private process()V
    .locals 32

    .prologue
    .line 6603
    const/4 v5, -0x8

    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V

    .line 6607
    const/16 v18, 0x0

    .line 6610
    .local v18, lastKey:Landroid/view/KeyEvent;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v19

    .line 6611
    .local v19, lastKeyTime:J
    const-wide/32 v28, 0x989298

    add-long v25, v19, v28

    .line 6612
    .local v25, nextKeyTime:J
    const-wide/16 v12, 0x0

    .line 6615
    .local v12, downTime:J
    const/16 v17, 0x0

    .line 6618
    .local v17, keyRepeatCount:I
    const/4 v11, 0x0

    .line 6621
    .local v11, configChanged:Z
    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 6631
    .local v6, curTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$InputDispatcherThread;->this$0:Lcom/android/server/WindowManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/WindowManagerService;->mQueue:Lcom/android/server/WindowManagerService$KeyQ;

    if-nez v11, :cond_4

    cmp-long v8, v6, v25

    if-gez v8, :cond_4

    sub-long v28, v25, v6

    :goto_1
    move-wide/from16 v0, v28

    long-to-int v0, v0

    move v8, v0

    move v0, v8

    int-to-long v0, v0

    move-wide/from16 v28, v0

    move-object v0, v5

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/server/WindowManagerService$KeyQ;->getEvent(J)Lcom/android/server/KeyInputQueue$QueuedEvent;

    move-result-object v15

    .line 6642
    .local v15, ev:Lcom/android/server/KeyInputQueue$QueuedEvent;
    if-eqz v18, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$InputDispatcherThread;->this$0:Lcom/android/server/WindowManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy;->allowKeyRepeat()Z

    move-result v5

    if-nez v5, :cond_1

    .line 6644
    const/16 v18, 0x0

    .line 6645
    const-wide/16 v12, 0x0

    .line 6646
    move-wide/from16 v19, v6

    .line 6647
    const-wide/32 v28, 0x989298

    add-long v25, v6, v28

    .line 6650
    :cond_1
    if-eqz v15, :cond_f

    .line 6651
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 6653
    iget v5, v15, Lcom/android/server/KeyInputQueue$QueuedEvent;->classType:I

    const/4 v8, 0x4

    if-ne v5, v8, :cond_5

    .line 6654
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$InputDispatcherThread;->this$0:Lcom/android/server/WindowManagerService;

    move-object v8, v0

    iget-object v5, v15, Lcom/android/server/KeyInputQueue$QueuedEvent;->event:Ljava/lang/Object;

    check-cast v5, Landroid/view/MotionEvent;

    invoke-static {v8, v5}, Lcom/android/server/WindowManagerService;->access$1200(Lcom/android/server/WindowManagerService;Landroid/view/MotionEvent;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 6663
    .local v9, eventType:I
    :goto_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$InputDispatcherThread;->this$0:Lcom/android/server/WindowManagerService;

    move-object v5, v0

    move-object v0, v5

    iget-wide v0, v0, Lcom/android/server/WindowManagerService;->mLastBatteryStatsCallTime:J

    move-wide/from16 v28, v0

    sub-long v28, v6, v28

    const-wide/16 v30, 0x3e8

    cmp-long v5, v28, v30

    if-ltz v5, :cond_2

    .line 6665
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$InputDispatcherThread;->this$0:Lcom/android/server/WindowManagerService;

    move-object v5, v0

    iput-wide v6, v5, Lcom/android/server/WindowManagerService;->mLastBatteryStatsCallTime:J

    .line 6666
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$InputDispatcherThread;->this$0:Lcom/android/server/WindowManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/WindowManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v5}, Lcom/android/internal/app/IBatteryStats;->noteInputEvent()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 6672
    :cond_2
    :goto_3
    :try_start_2
    iget v5, v15, Lcom/android/server/KeyInputQueue$QueuedEvent;->classType:I

    const/high16 v8, 0x1000

    if-ne v5, v8, :cond_8

    .line 6688
    :cond_3
    :goto_4
    iget v5, v15, Lcom/android/server/KeyInputQueue$QueuedEvent;->classType:I

    sparse-switch v5, :sswitch_data_0

    .line 6753
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$InputDispatcherThread;->this$0:Lcom/android/server/WindowManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/WindowManagerService;->mQueue:Lcom/android/server/WindowManagerService$KeyQ;

    invoke-virtual {v5, v15}, Lcom/android/server/WindowManagerService$KeyQ;->recycleEvent(Lcom/android/server/KeyInputQueue$QueuedEvent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 6800
    .end local v9           #eventType:I
    :catch_0
    move-exception v5

    move-object v14, v5

    .line 6801
    .local v14, e:Ljava/lang/Exception;
    const-string v5, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Input thread received uncaught exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 6631
    .end local v14           #e:Ljava/lang/Exception;
    .end local v15           #ev:Lcom/android/server/KeyInputQueue$QueuedEvent;
    :cond_4
    const-wide/16 v28, 0x0

    goto/16 :goto_1

    .line 6655
    .restart local v15       #ev:Lcom/android/server/KeyInputQueue$QueuedEvent;
    :cond_5
    :try_start_3
    iget v5, v15, Lcom/android/server/KeyInputQueue$QueuedEvent;->classType:I

    const/4 v8, 0x1

    if-eq v5, v8, :cond_6

    iget v5, v15, Lcom/android/server/KeyInputQueue$QueuedEvent;->classType:I

    const/16 v8, 0x8

    if-eq v5, v8, :cond_6

    iget v5, v15, Lcom/android/server/KeyInputQueue$QueuedEvent;->classType:I

    const/16 v8, 0x40

    if-ne v5, v8, :cond_7

    .line 6658
    :cond_6
    const/4 v9, 0x5

    .restart local v9       #eventType:I
    goto :goto_2

    .line 6660
    .end local v9           #eventType:I
    :cond_7
    const/4 v9, 0x0

    .restart local v9       #eventType:I
    goto :goto_2

    .line 6674
    :cond_8
    const/4 v5, 0x2

    if-eq v9, v5, :cond_9

    const/4 v5, 0x3

    if-eq v9, v5, :cond_9

    const/4 v5, 0x1

    if-eq v9, v5, :cond_9

    .line 6677
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$InputDispatcherThread;->this$0:Lcom/android/server/WindowManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/WindowManagerService;->mPowerManager:Lcom/android/server/PowerManagerService;

    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/PowerManagerService;->userActivity(JZIZ)V

    goto :goto_4

    .line 6679
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$InputDispatcherThread;->this$0:Lcom/android/server/WindowManagerService;

    move-object v5, v0

    iget v5, v5, Lcom/android/server/WindowManagerService;->mLastTouchEventType:I

    if-ne v5, v9, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$InputDispatcherThread;->this$0:Lcom/android/server/WindowManagerService;

    move-object v5, v0

    move-object v0, v5

    iget-wide v0, v0, Lcom/android/server/WindowManagerService;->mLastUserActivityCallTime:J

    move-wide/from16 v28, v0

    sub-long v28, v6, v28

    const-wide/16 v30, 0x3e8

    cmp-long v5, v28, v30

    if-ltz v5, :cond_3

    .line 6682
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$InputDispatcherThread;->this$0:Lcom/android/server/WindowManagerService;

    move-object v5, v0

    iput-wide v6, v5, Lcom/android/server/WindowManagerService;->mLastUserActivityCallTime:J

    .line 6683
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$InputDispatcherThread;->this$0:Lcom/android/server/WindowManagerService;

    move-object v5, v0

    iput v9, v5, Lcom/android/server/WindowManagerService;->mLastTouchEventType:I

    .line 6684
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$InputDispatcherThread;->this$0:Lcom/android/server/WindowManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/WindowManagerService;->mPowerManager:Lcom/android/server/PowerManagerService;

    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/PowerManagerService;->userActivity(JZIZ)V

    goto/16 :goto_4

    .line 6690
    :sswitch_0
    move-object v0, v15

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$QueuedEvent;->event:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Landroid/view/KeyEvent;

    .line 6691
    .local v16, ke:Landroid/view/KeyEvent;
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->isDown()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 6692
    move-object/from16 v18, v16

    .line 6693
    move-wide v12, v6

    .line 6694
    const/16 v17, 0x0

    .line 6695
    move-wide/from16 v19, v6

    .line 6696
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v5

    move v0, v5

    int-to-long v0, v0

    move-wide/from16 v28, v0

    add-long v25, v19, v28

    .line 6711
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$InputDispatcherThread;->this$0:Lcom/android/server/WindowManagerService;

    move-object v8, v0

    iget-object v5, v15, Lcom/android/server/KeyInputQueue$QueuedEvent;->event:Ljava/lang/Object;

    check-cast v5, Landroid/view/KeyEvent;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v8, v5, v9, v10}, Lcom/android/server/WindowManagerService;->access$1300(Lcom/android/server/WindowManagerService;Landroid/view/KeyEvent;II)I

    .line 6712
    .end local v9           #eventType:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$InputDispatcherThread;->this$0:Lcom/android/server/WindowManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/WindowManagerService;->mQueue:Lcom/android/server/WindowManagerService$KeyQ;

    invoke-virtual {v5, v15}, Lcom/android/server/WindowManagerService$KeyQ;->recycleEvent(Lcom/android/server/KeyInputQueue$QueuedEvent;)V

    goto/16 :goto_0

    .line 6702
    .restart local v9       #eventType:I
    :cond_b
    const/16 v18, 0x0

    .line 6703
    const-wide/16 v12, 0x0

    .line 6705
    move-wide/from16 v19, v6

    .line 6706
    const-wide/32 v28, 0x989298

    add-long v25, v6, v28

    goto :goto_5

    .line 6716
    .end local v16           #ke:Landroid/view/KeyEvent;
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$InputDispatcherThread;->this$0:Lcom/android/server/WindowManagerService;

    move-object v8, v0

    iget-object v5, v15, Lcom/android/server/KeyInputQueue$QueuedEvent;->event:Ljava/lang/Object;

    check-cast v5, Landroid/view/MotionEvent;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v8, v15, v5, v9, v10}, Lcom/android/server/WindowManagerService;->access$1400(Lcom/android/server/WindowManagerService;Lcom/android/server/KeyInputQueue$QueuedEvent;Landroid/view/MotionEvent;II)I

    goto/16 :goto_0

    .line 6719
    :sswitch_2
    move-object v0, v15

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$QueuedEvent;->event:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Landroid/view/MotionEvent;

    .line 6720
    .local v23, mmev:Landroid/view/MotionEvent;
    invoke-virtual/range {v23 .. v23}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    move v0, v5

    float-to-int v0, v0

    move/from16 v21, v0

    .line 6721
    .local v21, mcx:I
    invoke-virtual/range {v23 .. v23}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    move v0, v5

    float-to-int v0, v0

    move/from16 v22, v0

    .line 6725
    .local v22, mcy:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$InputDispatcherThread;->this$0:Lcom/android/server/WindowManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/WindowManagerService;->mMouseSurface:Landroid/view/Surface;

    if-eqz v5, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$InputDispatcherThread;->this$0:Lcom/android/server/WindowManagerService;

    move-object v5, v0

    iget v5, v5, Lcom/android/server/WindowManagerService;->mMx:I

    move v0, v5

    move/from16 v1, v21

    if-ne v0, v1, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$InputDispatcherThread;->this$0:Lcom/android/server/WindowManagerService;

    move-object v5, v0

    iget v5, v5, Lcom/android/server/WindowManagerService;->mMy:I

    move v0, v5

    move/from16 v1, v22

    if-eq v0, v1, :cond_e

    .line 6726
    :cond_c
    invoke-static {}, Landroid/view/Surface;->openTransactionLocked()V

    .line 6727
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$InputDispatcherThread;->this$0:Lcom/android/server/WindowManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$InputDispatcherThread;->this$0:Lcom/android/server/WindowManagerService;

    move-object v8, v0

    iget-object v8, v8, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .end local v9           #eventType:I
    move-result-object v27

    check-cast v27, Lcom/android/server/WindowManagerService$WindowState;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 6730
    .local v27, top:Lcom/android/server/WindowManagerService$WindowState;
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$InputDispatcherThread;->this$0:Lcom/android/server/WindowManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/WindowManagerService;->mMouseSurface:Landroid/view/Surface;

    move-object v0, v5

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/view/Surface;->setPosition(II)V

    .line 6731
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$InputDispatcherThread;->this$0:Lcom/android/server/WindowManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/WindowManagerService;->mMouseSurface:Landroid/view/Surface;

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    move v8, v0

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v5, v8}, Landroid/view/Surface;->setLayer(I)V

    .line 6732
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$InputDispatcherThread;->this$0:Lcom/android/server/WindowManagerService;

    move-object v5, v0

    iget v5, v5, Lcom/android/server/WindowManagerService;->mShowMouse:I

    if-nez v5, :cond_d

    .line 6733
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$InputDispatcherThread;->this$0:Lcom/android/server/WindowManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/WindowManagerService;->mMouseSurface:Landroid/view/Surface;

    invoke-virtual {v5}, Landroid/view/Surface;->show()V

    .line 6734
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$InputDispatcherThread;->this$0:Lcom/android/server/WindowManagerService;

    move-object v5, v0

    const/4 v8, 0x1

    iput v8, v5, Lcom/android/server/WindowManagerService;->mShowMouse:I

    .line 6736
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$InputDispatcherThread;->this$0:Lcom/android/server/WindowManagerService;

    move-object v5, v0

    move/from16 v0, v21

    move-object v1, v5

    iput v0, v1, Lcom/android/server/WindowManagerService;->mMx:I

    .line 6737
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$InputDispatcherThread;->this$0:Lcom/android/server/WindowManagerService;

    move-object v5, v0

    move/from16 v0, v22

    move-object v1, v5

    iput v0, v1, Lcom/android/server/WindowManagerService;->mMy:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    .line 6741
    :try_start_5
    invoke-static {}, Landroid/view/Surface;->closeTransactionLocked()V

    .line 6744
    .end local v27           #top:Lcom/android/server/WindowManagerService$WindowState;
    :cond_e
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$InputDispatcherThread;->this$0:Lcom/android/server/WindowManagerService;

    move-object v8, v0

    iget-object v5, v15, Lcom/android/server/KeyInputQueue$QueuedEvent;->event:Ljava/lang/Object;

    check-cast v5, Landroid/view/MotionEvent;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v8, v15, v5, v9, v10}, Lcom/android/server/WindowManagerService;->access$1400(Lcom/android/server/WindowManagerService;Lcom/android/server/KeyInputQueue$QueuedEvent;Landroid/view/MotionEvent;II)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    .line 6738
    .restart local v27       #top:Lcom/android/server/WindowManagerService$WindowState;
    :catch_1
    move-exception v5

    move-object v14, v5

    .line 6739
    .local v14, e:Ljava/lang/RuntimeException;
    :try_start_6
    const-string v5, "WindowManager"

    const-string v8, "Failure showing mouse surface"

    invoke-static {v5, v8, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 6741
    :try_start_7
    invoke-static {}, Landroid/view/Surface;->closeTransactionLocked()V

    goto :goto_6

    .end local v14           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v5

    invoke-static {}, Landroid/view/Surface;->closeTransactionLocked()V

    throw v5

    .line 6747
    .end local v21           #mcx:I
    .end local v22           #mcy:I
    .end local v23           #mmev:Landroid/view/MotionEvent;
    .end local v27           #top:Lcom/android/server/WindowManagerService$WindowState;
    .restart local v9       #eventType:I
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$InputDispatcherThread;->this$0:Lcom/android/server/WindowManagerService;

    move-object v8, v0

    iget-object v5, v15, Lcom/android/server/KeyInputQueue$QueuedEvent;->event:Ljava/lang/Object;

    check-cast v5, Landroid/view/MotionEvent;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v8, v15, v5, v9, v10}, Lcom/android/server/WindowManagerService;->access$1500(Lcom/android/server/WindowManagerService;Lcom/android/server/KeyInputQueue$QueuedEvent;Landroid/view/MotionEvent;II)I

    goto/16 :goto_0

    .line 6750
    :sswitch_4
    const/4 v11, 0x1

    .line 6751
    goto/16 :goto_0

    .line 6757
    .end local v9           #eventType:I
    :cond_f
    if-eqz v11, :cond_10

    .line 6758
    const/4 v11, 0x0

    .line 6759
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$InputDispatcherThread;->this$0:Lcom/android/server/WindowManagerService;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/server/WindowManagerService;->sendNewConfiguration()V

    goto/16 :goto_0

    .line 6761
    :cond_10
    if-eqz v18, :cond_12

    .line 6762
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 6769
    cmp-long v5, v6, v25

    if-ltz v5, :cond_0

    .line 6773
    move-wide/from16 v19, v25

    .line 6774
    const-wide/16 v28, 0x32

    add-long v25, v25, v28

    .line 6775
    add-int/lit8 v17, v17, 0x1

    .line 6780
    const-wide/16 v28, 0x0

    cmp-long v5, v12, v28

    if-eqz v5, :cond_11

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v5

    move v0, v5

    int-to-long v0, v0

    move-wide/from16 v28, v0

    add-long v28, v28, v12

    cmp-long v5, v28, v6

    if-gtz v5, :cond_11

    .line 6783
    invoke-virtual/range {v18 .. v18}, Landroid/view/KeyEvent;->getFlags()I

    move-result v5

    or-int/lit16 v5, v5, 0x80

    move-object/from16 v0, v18

    move-wide v1, v6

    move/from16 v3, v17

    move v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JII)Landroid/view/KeyEvent;

    move-result-object v24

    .line 6786
    .local v24, newEvent:Landroid/view/KeyEvent;
    const-wide/16 v12, 0x0

    .line 6791
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$InputDispatcherThread;->this$0:Lcom/android/server/WindowManagerService;

    move-object v5, v0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, v5

    move-object/from16 v1, v24

    move v2, v8

    move v3, v9

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/WindowManagerService;->access$1300(Lcom/android/server/WindowManagerService;Landroid/view/KeyEvent;II)I

    goto/16 :goto_0

    .line 6788
    .end local v24           #newEvent:Landroid/view/KeyEvent;
    :cond_11
    move-object/from16 v0, v18

    move-wide v1, v6

    move/from16 v3, v17

    invoke-static {v0, v1, v2, v3}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JI)Landroid/view/KeyEvent;

    move-result-object v24

    .restart local v24       #newEvent:Landroid/view/KeyEvent;
    goto :goto_7

    .line 6794
    .end local v24           #newEvent:Landroid/view/KeyEvent;
    :cond_12
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    move-result-wide v6

    .line 6796
    move-wide/from16 v19, v6

    .line 6797
    const-wide/32 v28, 0x989298

    add-long v25, v6, v28

    goto/16 :goto_0

    .line 6668
    .restart local v9       #eventType:I
    :catch_2
    move-exception v5

    goto/16 :goto_3

    .line 6688
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x4 -> :sswitch_1
        0x8 -> :sswitch_3
        0x40 -> :sswitch_2
        0x10000000 -> :sswitch_4
    .end sparse-switch
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 6595
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/WindowManagerService$InputDispatcherThread;->process()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6596
    :catch_0
    move-exception v0

    .line 6597
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WindowManager"

    const-string v2, "Exception in input dispatcher"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
