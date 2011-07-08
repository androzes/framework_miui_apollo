.class Lcom/android/server/KeyInputQueue$2;
.super Ljava/lang/Thread;
.source "KeyInputQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/KeyInputQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/KeyInputQueue;


# direct methods
.method constructor <init>(Lcom/android/server/KeyInputQueue;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 560
    iput-object p1, p0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 45

    .prologue
    .line 561
    const-string v3, "KeyInputQueue"

    const-string v4, "InputDeviceReader.run()"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    const/4 v3, -0x8

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 565
    const/16 v41, 0x0

    .line 566
    .local v41, screenCaptureKeyFlag:I
    new-instance v36, Landroid/view/RawInputEvent;

    invoke-direct/range {v36 .. v36}, Landroid/view/RawInputEvent;-><init>()V

    .line 572
    .local v36, ev:Landroid/view/RawInputEvent;
    :cond_0
    :goto_0
    :try_start_0
    invoke-static/range {v36 .. v36}, Lcom/android/server/KeyInputQueue;->access$100(Landroid/view/RawInputEvent;)Z

    .line 574
    const/16 v42, 0x0

    .line 575
    .local v42, send:Z
    const/16 v33, 0x0

    .line 578
    .local v33, configChanged:Z
    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->type:I

    move v3, v0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    invoke-static {}, Lcom/android/internal/app/ShutdownThread;->IsShutDownStarted()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 580
    const-string v3, "KeyInputQueue"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "skip key while shutdown "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->keycode:I

    move v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1204
    .end local v33           #configChanged:Z
    .end local v42           #send:Z
    :catch_0
    move-exception v3

    move-object/from16 v37, v3

    .line 1205
    .local v37, exc:Ljava/lang/RuntimeException;
    const-string v3, "KeyInputQueue"

    const-string v4, "InputReaderThread uncaught exception"

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, v37

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 586
    .end local v37           #exc:Ljava/lang/RuntimeException;
    .restart local v33       #configChanged:Z
    .restart local v42       #send:Z
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/server/KeyInputQueue;->mDisplay:Landroid/view/Display;

    if-nez v3, :cond_3

    .line 588
    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->type:I

    move v3, v0

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->type:I

    move v3, v0

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->type:I

    move v3, v0

    if-nez v3, :cond_3

    .line 590
    :cond_2
    const-string v3, "KeyInputQueue"

    const-string v4, "Skip Touch Event until mDisplay is set"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 596
    :cond_3
    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->type:I

    move v3, v0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 597
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v3

    if-nez v3, :cond_a

    .line 598
    const-string v3, "KeyInputQueue"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Input event: dev=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->deviceId:I

    move v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " type=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->type:I

    move v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " scancode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->scancode:I

    move v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " keycode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->keycode:I

    move v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " value="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->value:I

    move v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/server/KeyInputQueue;->access$200(Lcom/android/server/KeyInputQueue;)Landroid/os/PowerManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v3

    if-nez v3, :cond_6

    .line 615
    const/4 v3, 0x1

    move/from16 v0, v41

    move v1, v3

    if-ne v0, v1, :cond_5

    const/16 v41, 0x0

    .line 616
    :cond_5
    const-string v3, "KeyInputQueue"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "screenCaptureKeyFlag setting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    :cond_6
    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->type:I

    move v3, v0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_8

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->keycode:I

    move v3, v0

    const/16 v4, 0x1a

    if-ne v3, v4, :cond_8

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->value:I

    move v3, v0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_8

    .line 621
    const/4 v3, 0x1

    move/from16 v0, v41

    move v1, v3

    if-ne v0, v1, :cond_7

    const/16 v41, 0x0

    .line 622
    :cond_7
    const-string v3, "KeyInputQueue"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "screenCaptureKeyFlag setting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    :cond_8
    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->type:I

    move v3, v0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_9

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->keycode:I

    move v3, v0

    const/4 v4, 0x4

    if-ne v3, v4, :cond_9

    .line 627
    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->value:I

    move/from16 v41, v0

    .line 628
    const-string v3, "KeyInputQueue"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "screenCaptureKeyFlag setting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    :cond_9
    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->type:I

    move v3, v0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_b

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->keycode:I

    move v3, v0

    const/4 v4, 0x3

    if-ne v3, v4, :cond_b

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->value:I

    move v3, v0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_b

    .line 633
    const/4 v3, 0x1

    move/from16 v0, v41

    move v1, v3

    if-ne v0, v1, :cond_b

    .line 635
    :try_start_2
    new-instance v43, Lcom/android/server/KeyInputQueue$2$1;

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/KeyInputQueue$2$1;-><init>(Lcom/android/server/KeyInputQueue$2;)V

    .line 643
    .local v43, t:Ljava/lang/Thread;
    invoke-virtual/range {v43 .. v43}, Ljava/lang/Thread;->start()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 644
    .end local v43           #t:Ljava/lang/Thread;
    :catch_1
    move-exception v3

    move-object/from16 v35, v3

    .line 645
    .local v35, e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual/range {v35 .. v35}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 606
    .end local v35           #e:Ljava/lang/Exception;
    :cond_a
    const-string v3, "KeyInputQueue"

    const-string v4, "Input event"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 651
    :cond_b
    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->type:I

    move v3, v0

    const/high16 v4, 0x1000

    if-ne v3, v4, :cond_14

    .line 652
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/server/KeyInputQueue;->mFirst:Lcom/android/server/KeyInputQueue$QueuedEvent;

    monitor-enter v3
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    .line 653
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v4, v0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->deviceId:I

    move v5, v0

    invoke-static {v4, v5}, Lcom/android/server/KeyInputQueue;->access$400(Lcom/android/server/KeyInputQueue;I)Lcom/android/server/InputDevice;

    move-result-object v4

    .line 654
    .local v4, di:Lcom/android/server/InputDevice;
    iget v5, v4, Lcom/android/server/InputDevice;->classes:I

    if-eqz v5, :cond_13

    .line 657
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/KeyInputQueue;->mDevices:Landroid/util/SparseArray;

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->deviceId:I

    move v6, v0

    invoke-virtual {v5, v6, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 658
    iget v5, v4, Lcom/android/server/InputDevice;->classes:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_c

    .line 659
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    iget-object v6, v4, Lcom/android/server/InputDevice;->name:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/android/server/KeyInputQueue;->access$500(Lcom/android/server/KeyInputQueue;Ljava/lang/String;)V

    .line 662
    :cond_c
    iget v5, v4, Lcom/android/server/InputDevice;->classes:I

    and-int/lit8 v5, v5, 0x40

    if-eqz v5, :cond_d

    .line 663
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    iget v6, v5, Lcom/android/server/KeyInputQueue;->mMouseCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/android/server/KeyInputQueue;->mMouseCount:I

    .line 671
    :cond_d
    const/16 v33, 0x1

    .line 679
    :goto_2
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 733
    :cond_e
    :goto_3
    if-eqz v33, :cond_f

    .line 734
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v3, v0

    iget-object v10, v3, Lcom/android/server/KeyInputQueue;->mFirst:Lcom/android/server/KeyInputQueue$QueuedEvent;

    monitor-enter v10
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    .line 735
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v3, v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    const/4 v7, 0x0

    const/high16 v8, 0x1000

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lcom/android/server/KeyInputQueue;->access$700(Lcom/android/server/KeyInputQueue;Lcom/android/server/InputDevice;JIILjava/lang/Object;)V

    .line 738
    monitor-exit v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 741
    :cond_f
    if-eqz v42, :cond_0

    .line 745
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/server/KeyInputQueue;->mFirst:Lcom/android/server/KeyInputQueue$QueuedEvent;

    monitor-enter v3
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0

    .line 749
    :try_start_8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 750
    .local v7, curTime:J
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v15

    .line 753
    .local v15, curTimeNano:J
    move-object v0, v4

    iget v0, v0, Lcom/android/server/InputDevice;->classes:I

    move/from16 v32, v0

    .line 754
    .local v32, classes:I
    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->type:I

    move/from16 v44, v0

    .line 755
    .local v44, type:I
    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->scancode:I

    move v12, v0

    .line 756
    .local v12, scancode:I
    const/16 v42, 0x0

    .line 759
    const/4 v5, 0x1

    move/from16 v0, v44

    move v1, v5

    if-ne v0, v1, :cond_1d

    and-int/lit8 v5, v32, 0x1

    if-eqz v5, :cond_1d

    const/16 v5, 0x100

    if-lt v12, v5, :cond_10

    const/16 v5, 0x15f

    if-le v12, v5, :cond_1d

    .line 764
    :cond_10
    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->value:I

    move v5, v0

    if-eqz v5, :cond_1b

    .line 765
    const/4 v9, 0x1

    .line 766
    .local v9, down:Z
    iput-wide v7, v4, Lcom/android/server/InputDevice;->mKeyDownTime:J

    .line 771
    :goto_4
    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->keycode:I

    move v10, v0

    .line 772
    .local v10, keycode:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v14, v0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->flags:I

    move/from16 v17, v0

    const/16 v18, 0x1

    iget-wide v5, v4, Lcom/android/server/InputDevice;->mKeyDownTime:J

    const/4 v11, 0x0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->flags:I

    move v13, v0

    const/high16 v19, 0x1000

    and-int v13, v13, v19

    if-eqz v13, :cond_1c

    const/4 v13, 0x1

    :goto_5
    invoke-static/range {v4 .. v13}, Lcom/android/server/KeyInputQueue;->newKeyEvent(Lcom/android/server/InputDevice;JJZIIII)Landroid/view/KeyEvent;

    move-result-object v19

    move-object v13, v14

    move-object v14, v4

    invoke-static/range {v13 .. v19}, Lcom/android/server/KeyInputQueue;->access$700(Lcom/android/server/KeyInputQueue;Lcom/android/server/InputDevice;JIILjava/lang/Object;)V

    .line 1040
    .end local v9           #down:Z
    .end local v10           #keycode:I
    :cond_11
    :goto_6
    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->type:I

    move v5, v0

    if-nez v5, :cond_48

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->scancode:I

    move v5, v0

    const/4 v6, 0x2

    if-ne v5, v6, :cond_48

    iget-object v5, v4, Lcom/android/server/InputDevice;->mAbs:Lcom/android/server/InputDevice$MotionState;

    if-eqz v5, :cond_48

    .line 1043
    iget-object v5, v4, Lcom/android/server/InputDevice;->mAbs:Lcom/android/server/InputDevice$MotionState;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/server/InputDevice$MotionState;->changed:Z

    .line 1044
    iget-object v5, v4, Lcom/android/server/InputDevice;->mAbs:Lcom/android/server/InputDevice$MotionState;

    iget-object v5, v5, Lcom/android/server/InputDevice$MotionState;->mNextData:[I

    const/4 v6, 0x2

    aget v5, v5, v6

    if-lez v5, :cond_12

    .line 1048
    iget-object v5, v4, Lcom/android/server/InputDevice;->mAbs:Lcom/android/server/InputDevice$MotionState;

    iget-object v5, v5, Lcom/android/server/InputDevice$MotionState;->mNextData:[I

    iget-object v6, v4, Lcom/android/server/InputDevice;->mAbs:Lcom/android/server/InputDevice$MotionState;

    iget v6, v6, Lcom/android/server/InputDevice$MotionState;->mAddingPointerOffset:I

    add-int/lit8 v6, v6, 0x2

    aget v5, v5, v6

    if-eqz v5, :cond_12

    .line 1069
    iget-object v5, v4, Lcom/android/server/InputDevice;->mAbs:Lcom/android/server/InputDevice$MotionState;

    iget v5, v5, Lcom/android/server/InputDevice$MotionState;->mNextNumPointers:I

    add-int/lit8 v40, v5, 0x1

    .line 1070
    .local v40, num:I
    iget-object v5, v4, Lcom/android/server/InputDevice;->mAbs:Lcom/android/server/InputDevice$MotionState;

    move/from16 v0, v40

    move-object v1, v5

    iput v0, v1, Lcom/android/server/InputDevice$MotionState;->mNextNumPointers:I

    .line 1073
    const/4 v5, 0x5

    move/from16 v0, v40

    move v1, v5

    if-gt v0, v1, :cond_47

    mul-int/lit8 v5, v40, 0x4

    move/from16 v39, v5

    .line 1077
    .local v39, newOffset:I
    :goto_7
    iget-object v5, v4, Lcom/android/server/InputDevice;->mAbs:Lcom/android/server/InputDevice$MotionState;

    move/from16 v0, v39

    move-object v1, v5

    iput v0, v1, Lcom/android/server/InputDevice$MotionState;->mAddingPointerOffset:I

    .line 1078
    iget-object v4, v4, Lcom/android/server/InputDevice;->mAbs:Lcom/android/server/InputDevice$MotionState;

    .end local v4           #di:Lcom/android/server/InputDevice;
    iget-object v4, v4, Lcom/android/server/InputDevice$MotionState;->mNextData:[I

    add-int/lit8 v5, v39, 0x2

    const/4 v6, 0x0

    aput v6, v4, v5

    .line 1202
    .end local v39           #newOffset:I
    .end local v40           #num:I
    :cond_12
    :goto_8
    monitor-exit v3

    goto/16 :goto_0

    .end local v7           #curTime:J
    .end local v12           #scancode:I
    .end local v15           #curTimeNano:J
    .end local v32           #classes:I
    .end local v44           #type:I
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    throw v4
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_0

    .line 674
    .restart local v4       #di:Lcom/android/server/InputDevice;
    :cond_13
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/KeyInputQueue;->mIgnoredDevices:Landroid/util/SparseArray;

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->deviceId:I

    move v6, v0

    invoke-virtual {v5, v6, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 675
    const-string v5, "KeyInputQueue"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ignoring non-input device: id=0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Lcom/android/server/InputDevice;->id:I

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", name="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Lcom/android/server/InputDevice;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 679
    .end local v4           #di:Lcom/android/server/InputDevice;
    :catchall_1
    move-exception v4

    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    throw v4

    .line 680
    :cond_14
    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->type:I

    move v3, v0

    const/high16 v4, 0x2000

    if-ne v3, v4, :cond_19

    .line 681
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/server/KeyInputQueue;->mFirst:Lcom/android/server/KeyInputQueue$QueuedEvent;

    monitor-enter v3
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_0

    .line 686
    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/KeyInputQueue;->mDevices:Landroid/util/SparseArray;

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->deviceId:I

    move v5, v0

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/InputDevice;

    .line 687
    .restart local v4       #di:Lcom/android/server/InputDevice;
    if-eqz v4, :cond_17

    .line 688
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/KeyInputQueue;->mDevices:Landroid/util/SparseArray;

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->deviceId:I

    move v6, v0

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->delete(I)V

    .line 690
    iget v5, v4, Lcom/android/server/InputDevice;->classes:I

    and-int/lit8 v5, v5, 0x40

    if-eqz v5, :cond_15

    .line 691
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    iget v5, v5, Lcom/android/server/KeyInputQueue;->mMouseCount:I

    if-lez v5, :cond_16

    .line 692
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    iget v6, v5, Lcom/android/server/KeyInputQueue;->mMouseCount:I

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    iput v6, v5, Lcom/android/server/KeyInputQueue;->mMouseCount:I

    .line 700
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    iget v5, v5, Lcom/android/server/KeyInputQueue;->mMouseCount:I

    if-nez v5, :cond_15

    .line 701
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/server/KeyInputQueue;->onAllMiceDisconnectedEvent()V

    .line 707
    :cond_15
    const/16 v33, 0x1

    .line 715
    :goto_a
    monitor-exit v3

    goto/16 :goto_3

    .end local v4           #di:Lcom/android/server/InputDevice;
    :catchall_2
    move-exception v4

    monitor-exit v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :try_start_d
    throw v4
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_0

    .line 695
    .restart local v4       #di:Lcom/android/server/InputDevice;
    :cond_16
    :try_start_e
    const-string v5, "KeyInputQueue"

    const-string v6, "Remove a mouse when mMouseCount = 0"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 708
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v4, v0

    .end local v4           #di:Lcom/android/server/InputDevice;
    iget-object v4, v4, Lcom/android/server/KeyInputQueue;->mIgnoredDevices:Landroid/util/SparseArray;

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->deviceId:I

    move v5, v0

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/InputDevice;

    .restart local v4       #di:Lcom/android/server/InputDevice;
    if-eqz v4, :cond_18

    .line 709
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/KeyInputQueue;->mIgnoredDevices:Landroid/util/SparseArray;

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->deviceId:I

    move v6, v0

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_a

    .line 711
    :cond_18
    const-string v4, "KeyInputQueue"

    .end local v4           #di:Lcom/android/server/InputDevice;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removing bad device id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->deviceId:I

    move v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    monitor-exit v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    goto/16 :goto_0

    .line 717
    :cond_19
    :try_start_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v3, v0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->deviceId:I

    move v4, v0

    invoke-virtual {v3, v4}, Lcom/android/server/KeyInputQueue;->getInputDevice(I)Lcom/android/server/InputDevice;

    move-result-object v4

    .line 718
    .restart local v4       #di:Lcom/android/server/InputDevice;
    if-eqz v4, :cond_0

    .line 724
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/android/server/KeyInputQueue;->preprocessEvent(Lcom/android/server/InputDevice;Landroid/view/RawInputEvent;)Z

    move-result v42

    .line 726
    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->type:I

    move v3, v0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_e

    .line 727
    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->keycode:I

    move v3, v0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->value:I

    move v5, v0

    if-eqz v5, :cond_1a

    const/4 v5, 0x1

    :goto_b
    iget v6, v4, Lcom/android/server/InputDevice;->mMetaKeysState:I

    invoke-static {v3, v5, v6}, Lcom/android/server/KeyInputQueue;->access$600(IZI)I

    move-result v3

    iput v3, v4, Lcom/android/server/InputDevice;->mMetaKeysState:I

    .line 729
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v3, v0

    const/4 v5, 0x0

    iput-boolean v5, v3, Lcom/android/server/KeyInputQueue;->mHaveGlobalMetaState:Z
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_0

    goto/16 :goto_3

    .line 727
    :cond_1a
    const/4 v5, 0x0

    goto :goto_b

    .line 738
    :catchall_3
    move-exception v3

    :try_start_10
    monitor-exit v10
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    :try_start_11
    throw v3
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_0

    .line 768
    .restart local v7       #curTime:J
    .restart local v12       #scancode:I
    .restart local v15       #curTimeNano:J
    .restart local v32       #classes:I
    .restart local v44       #type:I
    :cond_1b
    const/4 v9, 0x0

    .restart local v9       #down:Z
    goto/16 :goto_4

    .line 772
    .restart local v10       #keycode:I
    :cond_1c
    const/4 v13, 0x0

    goto/16 :goto_5

    .line 779
    .end local v9           #down:Z
    .end local v10           #keycode:I
    :cond_1d
    :try_start_12
    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->type:I

    move v5, v0

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2a

    .line 781
    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->scancode:I

    move v5, v0

    const/16 v6, 0x14a

    if-eq v5, v6, :cond_1e

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->scancode:I

    move v5, v0

    const/16 v6, 0x110

    if-ne v5, v6, :cond_20

    :cond_1e
    and-int/lit8 v5, v32, 0x14

    const/4 v6, 0x4

    if-ne v5, v6, :cond_20

    .line 786
    iget-object v5, v4, Lcom/android/server/InputDevice;->mAbs:Lcom/android/server/InputDevice$MotionState;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/server/InputDevice$MotionState;->changed:Z

    .line 787
    iget-object v5, v4, Lcom/android/server/InputDevice;->mAbs:Lcom/android/server/InputDevice$MotionState;

    iget-object v5, v5, Lcom/android/server/InputDevice$MotionState;->mDown:[Z

    const/4 v6, 0x0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->value:I

    move v9, v0

    if-eqz v9, :cond_1f

    const/4 v9, 0x1

    :goto_c
    aput-boolean v9, v5, v6

    goto/16 :goto_6

    :cond_1f
    const/4 v9, 0x0

    goto :goto_c

    .line 790
    :cond_20
    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->scancode:I

    move v5, v0

    const/16 v6, 0x110

    if-ne v5, v6, :cond_24

    .line 791
    and-int/lit8 v5, v32, 0x8

    if-eqz v5, :cond_22

    .line 792
    iget-object v5, v4, Lcom/android/server/InputDevice;->mRel:Lcom/android/server/InputDevice$MotionState;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/server/InputDevice$MotionState;->changed:Z

    .line 793
    iget-object v5, v4, Lcom/android/server/InputDevice;->mRel:Lcom/android/server/InputDevice$MotionState;

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->value:I

    move v6, v0

    if-eqz v6, :cond_21

    const/4 v6, 0x1

    :goto_d
    iput v6, v5, Lcom/android/server/InputDevice$MotionState;->mNextNumPointers:I

    .line 794
    const/16 v42, 0x1

    goto/16 :goto_6

    .line 793
    :cond_21
    const/4 v6, 0x0

    goto :goto_d

    .line 795
    :cond_22
    and-int/lit8 v5, v32, 0x40

    if-eqz v5, :cond_11

    .line 800
    iget-object v5, v4, Lcom/android/server/InputDevice;->mAbs:Lcom/android/server/InputDevice$MotionState;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/server/InputDevice$MotionState;->changed:Z

    .line 801
    iget-object v5, v4, Lcom/android/server/InputDevice;->mAbs:Lcom/android/server/InputDevice$MotionState;

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->value:I

    move v6, v0

    if-eqz v6, :cond_23

    const/4 v6, 0x1

    :goto_e
    iput v6, v5, Lcom/android/server/InputDevice$MotionState;->mNextNumPointers:I

    .line 802
    const/16 v42, 0x1

    goto/16 :goto_6

    .line 801
    :cond_23
    const/4 v6, 0x2

    goto :goto_e

    .line 804
    :cond_24
    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->scancode:I

    move v5, v0

    const/16 v6, 0x111

    if-eq v5, v6, :cond_25

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->scancode:I

    move v5, v0

    const/16 v6, 0x112

    if-ne v5, v6, :cond_11

    :cond_25
    and-int/lit8 v5, v32, 0x40

    if-eqz v5, :cond_11

    .line 807
    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->value:I

    move v5, v0

    if-eqz v5, :cond_27

    const/4 v5, 0x1

    move v9, v5

    .line 808
    .restart local v9       #down:Z
    :goto_f
    if-eqz v9, :cond_26

    .line 809
    iput-wide v7, v4, Lcom/android/server/InputDevice;->mKeyDownTime:J

    .line 811
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->flags:I

    move v6, v0

    const/4 v10, 0x1

    move-object v0, v4

    iget-wide v0, v0, Lcom/android/server/InputDevice;->mKeyDownTime:J

    move-wide/from16 v18, v0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->scancode:I

    move v11, v0

    const/16 v13, 0x111

    if-ne v11, v13, :cond_28

    const/4 v11, 0x4

    move/from16 v23, v11

    :goto_10
    const/16 v24, 0x0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->flags:I

    move v11, v0

    const/high16 v13, 0x1000

    and-int/2addr v11, v13

    if-eqz v11, :cond_29

    const/4 v11, 0x1

    move/from16 v26, v11

    :goto_11
    move-object/from16 v17, v4

    move-wide/from16 v20, v7

    move/from16 v22, v9

    move/from16 v25, v12

    invoke-static/range {v17 .. v26}, Lcom/android/server/KeyInputQueue;->newKeyEvent(Lcom/android/server/InputDevice;JJZIIII)Landroid/view/KeyEvent;

    move-result-object v23

    move-object/from16 v17, v5

    move-object/from16 v18, v4

    move-wide/from16 v19, v7

    move/from16 v21, v6

    move/from16 v22, v10

    invoke-static/range {v17 .. v23}, Lcom/android/server/KeyInputQueue;->access$700(Lcom/android/server/KeyInputQueue;Lcom/android/server/InputDevice;JIILjava/lang/Object;)V

    goto/16 :goto_6

    .line 807
    .end local v9           #down:Z
    :cond_27
    const/4 v5, 0x0

    move v9, v5

    goto :goto_f

    .line 811
    .restart local v9       #down:Z
    :cond_28
    const/16 v11, 0x52

    move/from16 v23, v11

    goto :goto_10

    :cond_29
    const/4 v11, 0x0

    move/from16 v26, v11

    goto :goto_11

    .line 822
    .end local v9           #down:Z
    :cond_2a
    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->type:I

    move v5, v0

    const/4 v6, 0x3

    if-ne v5, v6, :cond_2e

    and-int/lit8 v5, v32, 0x10

    if-eqz v5, :cond_2e

    .line 824
    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->scancode:I

    move v5, v0

    const/16 v6, 0x30

    if-ne v5, v6, :cond_2b

    .line 825
    iget-object v5, v4, Lcom/android/server/InputDevice;->mAbs:Lcom/android/server/InputDevice$MotionState;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/server/InputDevice$MotionState;->changed:Z

    .line 826
    iget-object v5, v4, Lcom/android/server/InputDevice;->mAbs:Lcom/android/server/InputDevice$MotionState;

    iget-object v5, v5, Lcom/android/server/InputDevice$MotionState;->mNextData:[I

    iget-object v6, v4, Lcom/android/server/InputDevice;->mAbs:Lcom/android/server/InputDevice$MotionState;

    iget v6, v6, Lcom/android/server/InputDevice$MotionState;->mAddingPointerOffset:I

    add-int/lit8 v6, v6, 0x2

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->value:I

    move v9, v0

    aput v9, v5, v6

    goto/16 :goto_6

    .line 828
    :cond_2b
    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->scancode:I

    move v5, v0

    const/16 v6, 0x35

    if-ne v5, v6, :cond_2c

    .line 829
    iget-object v5, v4, Lcom/android/server/InputDevice;->mAbs:Lcom/android/server/InputDevice$MotionState;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/server/InputDevice$MotionState;->changed:Z

    .line 830
    iget-object v5, v4, Lcom/android/server/InputDevice;->mAbs:Lcom/android/server/InputDevice$MotionState;

    iget-object v5, v5, Lcom/android/server/InputDevice$MotionState;->mNextData:[I

    iget-object v6, v4, Lcom/android/server/InputDevice;->mAbs:Lcom/android/server/InputDevice$MotionState;

    iget v6, v6, Lcom/android/server/InputDevice$MotionState;->mAddingPointerOffset:I

    add-int/lit8 v6, v6, 0x0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->value:I

    move v9, v0

    aput v9, v5, v6

    goto/16 :goto_6

    .line 835
    :cond_2c
    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->scancode:I

    move v5, v0

    const/16 v6, 0x36

    if-ne v5, v6, :cond_2d

    .line 836
    iget-object v5, v4, Lcom/android/server/InputDevice;->mAbs:Lcom/android/server/InputDevice$MotionState;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/server/InputDevice$MotionState;->changed:Z

    .line 837
    iget-object v5, v4, Lcom/android/server/InputDevice;->mAbs:Lcom/android/server/InputDevice$MotionState;

    iget-object v5, v5, Lcom/android/server/InputDevice$MotionState;->mNextData:[I

    iget-object v6, v4, Lcom/android/server/InputDevice;->mAbs:Lcom/android/server/InputDevice$MotionState;

    iget v6, v6, Lcom/android/server/InputDevice$MotionState;->mAddingPointerOffset:I

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->value:I

    move v9, v0

    aput v9, v5, v6

    goto/16 :goto_6

    .line 842
    :cond_2d
    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->scancode:I

    move v5, v0

    const/16 v6, 0x32

    if-ne v5, v6, :cond_11

    .line 843
    iget-object v5, v4, Lcom/android/server/InputDevice;->mAbs:Lcom/android/server/InputDevice$MotionState;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/server/InputDevice$MotionState;->changed:Z

    .line 844
    iget-object v5, v4, Lcom/android/server/InputDevice;->mAbs:Lcom/android/server/InputDevice$MotionState;

    iget-object v5, v5, Lcom/android/server/InputDevice$MotionState;->mNextData:[I

    iget-object v6, v4, Lcom/android/server/InputDevice;->mAbs:Lcom/android/server/InputDevice$MotionState;

    iget v6, v6, Lcom/android/server/InputDevice$MotionState;->mAddingPointerOffset:I

    add-int/lit8 v6, v6, 0x3

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->value:I

    move v9, v0

    aput v9, v5, v6

    goto/16 :goto_6

    .line 849
    :cond_2e
    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->type:I

    move v5, v0

    const/4 v6, 0x3

    if-ne v5, v6, :cond_34

    and-int/lit8 v5, v32, 0x4

    if-eqz v5, :cond_34

    .line 851
    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->scancode:I

    move v5, v0

    if-eqz v5, :cond_2f

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->scancode:I

    move v5, v0

    const/4 v6, 0x2

    if-ne v5, v6, :cond_30

    .line 853
    :cond_2f
    iget-object v5, v4, Lcom/android/server/InputDevice;->mAbs:Lcom/android/server/InputDevice$MotionState;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/server/InputDevice$MotionState;->changed:Z

    .line 854
    iget-object v5, v4, Lcom/android/server/InputDevice;->curTouchVals:[I

    const/4 v6, 0x0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->value:I

    move v9, v0

    aput v9, v5, v6

    goto/16 :goto_6

    .line 855
    :cond_30
    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->scancode:I

    move v5, v0

    const/4 v6, 0x1

    if-eq v5, v6, :cond_31

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->scancode:I

    move v5, v0

    const/4 v6, 0x3

    if-ne v5, v6, :cond_32

    .line 857
    :cond_31
    iget-object v5, v4, Lcom/android/server/InputDevice;->mAbs:Lcom/android/server/InputDevice$MotionState;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/server/InputDevice$MotionState;->changed:Z

    .line 858
    iget-object v5, v4, Lcom/android/server/InputDevice;->curTouchVals:[I

    const/4 v6, 0x1

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->value:I

    move v9, v0

    aput v9, v5, v6

    goto/16 :goto_6

    .line 859
    :cond_32
    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->scancode:I

    move v5, v0

    const/16 v6, 0x18

    if-ne v5, v6, :cond_33

    .line 860
    iget-object v5, v4, Lcom/android/server/InputDevice;->mAbs:Lcom/android/server/InputDevice$MotionState;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/server/InputDevice$MotionState;->changed:Z

    .line 861
    iget-object v5, v4, Lcom/android/server/InputDevice;->curTouchVals:[I

    const/4 v6, 0x2

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->value:I

    move v9, v0

    aput v9, v5, v6

    .line 862
    iget-object v5, v4, Lcom/android/server/InputDevice;->curTouchVals:[I

    const/4 v6, 0x6

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->value:I

    move v9, v0

    aput v9, v5, v6

    goto/16 :goto_6

    .line 864
    :cond_33
    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->scancode:I

    move v5, v0

    const/16 v6, 0x1c

    if-ne v5, v6, :cond_11

    .line 865
    iget-object v5, v4, Lcom/android/server/InputDevice;->mAbs:Lcom/android/server/InputDevice$MotionState;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/server/InputDevice$MotionState;->changed:Z

    .line 866
    iget-object v5, v4, Lcom/android/server/InputDevice;->curTouchVals:[I

    const/4 v6, 0x3

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->value:I

    move v9, v0

    aput v9, v5, v6

    .line 867
    iget-object v5, v4, Lcom/android/server/InputDevice;->curTouchVals:[I

    const/4 v6, 0x7

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->value:I

    move v9, v0

    aput v9, v5, v6

    goto/16 :goto_6

    .line 872
    :cond_34
    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->type:I

    move v5, v0

    const/4 v6, 0x2

    if-ne v5, v6, :cond_11

    .line 876
    and-int/lit8 v5, v32, 0x8

    if-eqz v5, :cond_36

    .line 878
    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->scancode:I

    move v5, v0

    if-nez v5, :cond_35

    .line 879
    iget-object v5, v4, Lcom/android/server/InputDevice;->mRel:Lcom/android/server/InputDevice$MotionState;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/server/InputDevice$MotionState;->changed:Z

    .line 880
    iget-object v5, v4, Lcom/android/server/InputDevice;->mRel:Lcom/android/server/InputDevice$MotionState;

    iget-object v5, v5, Lcom/android/server/InputDevice$MotionState;->mNextData:[I

    const/4 v6, 0x0

    aget v9, v5, v6

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->value:I

    move v10, v0

    add-int/2addr v9, v10

    aput v9, v5, v6

    goto/16 :goto_6

    .line 881
    :cond_35
    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->scancode:I

    move v5, v0

    const/4 v6, 0x1

    if-ne v5, v6, :cond_11

    .line 882
    iget-object v5, v4, Lcom/android/server/InputDevice;->mRel:Lcom/android/server/InputDevice$MotionState;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/server/InputDevice$MotionState;->changed:Z

    .line 883
    iget-object v5, v4, Lcom/android/server/InputDevice;->mRel:Lcom/android/server/InputDevice$MotionState;

    iget-object v5, v5, Lcom/android/server/InputDevice$MotionState;->mNextData:[I

    const/4 v6, 0x1

    aget v9, v5, v6

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->value:I

    move v10, v0

    add-int/2addr v9, v10

    aput v9, v5, v6

    goto/16 :goto_6

    .line 885
    :cond_36
    and-int/lit8 v5, v32, 0x40

    if-eqz v5, :cond_11

    .line 899
    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->scancode:I

    move v5, v0

    if-nez v5, :cond_3b

    .line 906
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    iget v5, v5, Lcom/android/server/KeyInputQueue;->mOrientation:I

    packed-switch v5, :pswitch_data_0

    .line 921
    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    iget v5, v5, Lcom/android/server/KeyInputQueue;->mCx:I

    if-gez v5, :cond_39

    .line 922
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Lcom/android/server/KeyInputQueue;->mCx:I

    .line 926
    :cond_37
    :goto_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    iget v5, v5, Lcom/android/server/KeyInputQueue;->mCy:I

    if-gez v5, :cond_3a

    .line 927
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Lcom/android/server/KeyInputQueue;->mCy:I

    .line 932
    :cond_38
    :goto_14
    iget-object v5, v4, Lcom/android/server/InputDevice;->mAbs:Lcom/android/server/InputDevice$MotionState;

    iget-object v5, v5, Lcom/android/server/InputDevice$MotionState;->mNextData:[I

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v9, v0

    iget v9, v9, Lcom/android/server/KeyInputQueue;->mCx:I

    aput v9, v5, v6

    .line 933
    iget-object v5, v4, Lcom/android/server/InputDevice;->mAbs:Lcom/android/server/InputDevice$MotionState;

    iget-object v5, v5, Lcom/android/server/InputDevice$MotionState;->mNextData:[I

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v9, v0

    iget v9, v9, Lcom/android/server/KeyInputQueue;->mCy:I

    aput v9, v5, v6

    .line 934
    iget-object v5, v4, Lcom/android/server/InputDevice;->mAbs:Lcom/android/server/InputDevice$MotionState;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/server/InputDevice$MotionState;->changed:Z

    goto/16 :goto_6

    .line 908
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    iget v6, v5, Lcom/android/server/KeyInputQueue;->mCx:I

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->value:I

    move v9, v0

    add-int/2addr v6, v9

    iput v6, v5, Lcom/android/server/KeyInputQueue;->mCx:I

    goto :goto_12

    .line 911
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    iget v6, v5, Lcom/android/server/KeyInputQueue;->mCy:I

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->value:I

    move v9, v0

    add-int/2addr v6, v9

    iput v6, v5, Lcom/android/server/KeyInputQueue;->mCy:I

    goto :goto_12

    .line 914
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    iget v6, v5, Lcom/android/server/KeyInputQueue;->mCx:I

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->value:I

    move v9, v0

    sub-int/2addr v6, v9

    iput v6, v5, Lcom/android/server/KeyInputQueue;->mCx:I

    goto :goto_12

    .line 917
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    iget v6, v5, Lcom/android/server/KeyInputQueue;->mCy:I

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->value:I

    move v9, v0

    sub-int/2addr v6, v9

    iput v6, v5, Lcom/android/server/KeyInputQueue;->mCy:I

    goto/16 :goto_12

    .line 923
    :cond_39
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    iget v5, v5, Lcom/android/server/KeyInputQueue;->mCx:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v6, v0

    iget v6, v6, Lcom/android/server/KeyInputQueue;->mDisplayWidth:I

    if-lt v5, v6, :cond_37

    .line 924
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v6, v0

    iget v6, v6, Lcom/android/server/KeyInputQueue;->mDisplayWidth:I

    const/4 v9, 0x1

    sub-int/2addr v6, v9

    iput v6, v5, Lcom/android/server/KeyInputQueue;->mCx:I

    goto/16 :goto_13

    .line 928
    :cond_3a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    iget v5, v5, Lcom/android/server/KeyInputQueue;->mCy:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v6, v0

    iget v6, v6, Lcom/android/server/KeyInputQueue;->mDisplayHeight:I

    if-lt v5, v6, :cond_38

    .line 929
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v6, v0

    iget v6, v6, Lcom/android/server/KeyInputQueue;->mDisplayHeight:I

    const/4 v9, 0x1

    sub-int/2addr v6, v9

    iput v6, v5, Lcom/android/server/KeyInputQueue;->mCy:I

    goto/16 :goto_14

    .line 936
    :cond_3b
    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->scancode:I

    move v5, v0

    const/4 v6, 0x1

    if-ne v5, v6, :cond_40

    .line 943
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    iget v5, v5, Lcom/android/server/KeyInputQueue;->mOrientation:I

    packed-switch v5, :pswitch_data_1

    .line 958
    :goto_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    iget v5, v5, Lcom/android/server/KeyInputQueue;->mCx:I

    if-gez v5, :cond_3e

    .line 959
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Lcom/android/server/KeyInputQueue;->mCx:I

    .line 963
    :cond_3c
    :goto_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    iget v5, v5, Lcom/android/server/KeyInputQueue;->mCy:I

    if-gez v5, :cond_3f

    .line 964
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Lcom/android/server/KeyInputQueue;->mCy:I

    .line 969
    :cond_3d
    :goto_17
    iget-object v5, v4, Lcom/android/server/InputDevice;->mAbs:Lcom/android/server/InputDevice$MotionState;

    iget-object v5, v5, Lcom/android/server/InputDevice$MotionState;->mNextData:[I

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v9, v0

    iget v9, v9, Lcom/android/server/KeyInputQueue;->mCx:I

    aput v9, v5, v6

    .line 970
    iget-object v5, v4, Lcom/android/server/InputDevice;->mAbs:Lcom/android/server/InputDevice$MotionState;

    iget-object v5, v5, Lcom/android/server/InputDevice$MotionState;->mNextData:[I

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v9, v0

    iget v9, v9, Lcom/android/server/KeyInputQueue;->mCy:I

    aput v9, v5, v6

    .line 971
    iget-object v5, v4, Lcom/android/server/InputDevice;->mAbs:Lcom/android/server/InputDevice$MotionState;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/server/InputDevice$MotionState;->changed:Z

    goto/16 :goto_6

    .line 945
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    iget v6, v5, Lcom/android/server/KeyInputQueue;->mCy:I

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->value:I

    move v9, v0

    add-int/2addr v6, v9

    iput v6, v5, Lcom/android/server/KeyInputQueue;->mCy:I

    goto :goto_15

    .line 948
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    iget v6, v5, Lcom/android/server/KeyInputQueue;->mCx:I

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->value:I

    move v9, v0

    sub-int/2addr v6, v9

    iput v6, v5, Lcom/android/server/KeyInputQueue;->mCx:I

    goto :goto_15

    .line 951
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    iget v6, v5, Lcom/android/server/KeyInputQueue;->mCy:I

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->value:I

    move v9, v0

    sub-int/2addr v6, v9

    iput v6, v5, Lcom/android/server/KeyInputQueue;->mCy:I

    goto :goto_15

    .line 954
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    iget v6, v5, Lcom/android/server/KeyInputQueue;->mCx:I

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->value:I

    move v9, v0

    add-int/2addr v6, v9

    iput v6, v5, Lcom/android/server/KeyInputQueue;->mCx:I

    goto/16 :goto_15

    .line 960
    :cond_3e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    iget v5, v5, Lcom/android/server/KeyInputQueue;->mCx:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v6, v0

    iget v6, v6, Lcom/android/server/KeyInputQueue;->mDisplayWidth:I

    if-lt v5, v6, :cond_3c

    .line 961
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v6, v0

    iget v6, v6, Lcom/android/server/KeyInputQueue;->mDisplayWidth:I

    const/4 v9, 0x1

    sub-int/2addr v6, v9

    iput v6, v5, Lcom/android/server/KeyInputQueue;->mCx:I

    goto/16 :goto_16

    .line 965
    :cond_3f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    iget v5, v5, Lcom/android/server/KeyInputQueue;->mCy:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v6, v0

    iget v6, v6, Lcom/android/server/KeyInputQueue;->mDisplayHeight:I

    if-lt v5, v6, :cond_3d

    .line 966
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v6, v0

    iget v6, v6, Lcom/android/server/KeyInputQueue;->mDisplayHeight:I

    const/4 v9, 0x1

    sub-int/2addr v6, v9

    iput v6, v5, Lcom/android/server/KeyInputQueue;->mCy:I

    goto/16 :goto_17

    .line 972
    :cond_40
    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->scancode:I

    move v5, v0

    const/16 v6, 0x8

    if-ne v5, v6, :cond_11

    and-int/lit8 v5, v32, 0x40

    if-eqz v5, :cond_11

    .line 979
    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->value:I

    move v5, v0

    if-eqz v5, :cond_41

    .line 980
    const/4 v9, 0x1

    .line 981
    .restart local v9       #down:Z
    iput-wide v7, v4, Lcom/android/server/InputDevice;->mKeyDownTime:J

    .line 986
    :goto_18
    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->value:I

    move v5, v0

    if-gez v5, :cond_42

    .line 987
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    iget v5, v5, Lcom/android/server/KeyInputQueue;->mOrientation:I

    packed-switch v5, :pswitch_data_2

    .line 998
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    const/16 v6, 0x14

    invoke-static {v5, v6}, Lcom/android/server/KeyInputQueue;->access$800(Lcom/android/server/KeyInputQueue;I)I

    move-result v10

    .line 1021
    .restart local v10       #keycode:I
    :goto_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object/from16 v17, v0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->flags:I

    move/from16 v21, v0

    const/16 v22, 0x1

    iget-wide v5, v4, Lcom/android/server/InputDevice;->mKeyDownTime:J

    const/4 v11, 0x0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->flags:I

    move v13, v0

    const/high16 v14, 0x1000

    and-int/2addr v13, v14

    if-eqz v13, :cond_44

    const/4 v13, 0x1

    :goto_1a
    invoke-static/range {v4 .. v13}, Lcom/android/server/KeyInputQueue;->newKeyEvent(Lcom/android/server/InputDevice;JJZIIII)Landroid/view/KeyEvent;

    move-result-object v23

    move-object/from16 v18, v4

    move-wide/from16 v19, v7

    invoke-static/range {v17 .. v23}, Lcom/android/server/KeyInputQueue;->access$700(Lcom/android/server/KeyInputQueue;Lcom/android/server/InputDevice;JIILjava/lang/Object;)V

    .line 1027
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->flags:I

    move v6, v0

    const/4 v11, 0x1

    move-object v0, v4

    iget-wide v0, v0, Lcom/android/server/InputDevice;->mKeyDownTime:J

    move-wide/from16 v18, v0

    if-nez v9, :cond_45

    const/4 v9, 0x1

    move/from16 v22, v9

    .end local v9           #down:Z
    :goto_1b
    const/16 v24, 0x0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->flags:I

    move v9, v0

    const/high16 v13, 0x1000

    and-int/2addr v9, v13

    if-eqz v9, :cond_46

    const/4 v9, 0x1

    move/from16 v26, v9

    :goto_1c
    move-object/from16 v17, v4

    move-wide/from16 v20, v7

    move/from16 v23, v10

    move/from16 v25, v12

    invoke-static/range {v17 .. v26}, Lcom/android/server/KeyInputQueue;->newKeyEvent(Lcom/android/server/InputDevice;JJZIIII)Landroid/view/KeyEvent;

    move-result-object v23

    move-object/from16 v17, v5

    move-object/from16 v18, v4

    move-wide/from16 v19, v7

    move/from16 v21, v6

    move/from16 v22, v11

    invoke-static/range {v17 .. v23}, Lcom/android/server/KeyInputQueue;->access$700(Lcom/android/server/KeyInputQueue;Lcom/android/server/InputDevice;JIILjava/lang/Object;)V

    goto/16 :goto_6

    .line 983
    .end local v10           #keycode:I
    :cond_41
    const/4 v9, 0x0

    .restart local v9       #down:Z
    goto/16 :goto_18

    .line 989
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    const/16 v6, 0x15

    invoke-static {v5, v6}, Lcom/android/server/KeyInputQueue;->access$800(Lcom/android/server/KeyInputQueue;I)I

    move-result v10

    .line 990
    .restart local v10       #keycode:I
    goto :goto_19

    .line 992
    .end local v10           #keycode:I
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    const/16 v6, 0x13

    invoke-static {v5, v6}, Lcom/android/server/KeyInputQueue;->access$800(Lcom/android/server/KeyInputQueue;I)I

    move-result v10

    .line 993
    .restart local v10       #keycode:I
    goto :goto_19

    .line 995
    .end local v10           #keycode:I
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    const/16 v6, 0x16

    invoke-static {v5, v6}, Lcom/android/server/KeyInputQueue;->access$800(Lcom/android/server/KeyInputQueue;I)I

    move-result v10

    .line 996
    .restart local v10       #keycode:I
    goto/16 :goto_19

    .line 1002
    .end local v10           #keycode:I
    :cond_42
    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->value:I

    move v5, v0

    if-lez v5, :cond_43

    .line 1003
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    iget v5, v5, Lcom/android/server/KeyInputQueue;->mOrientation:I

    packed-switch v5, :pswitch_data_3

    .line 1014
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    const/16 v6, 0x13

    invoke-static {v5, v6}, Lcom/android/server/KeyInputQueue;->access$800(Lcom/android/server/KeyInputQueue;I)I

    move-result v10

    .line 1015
    .restart local v10       #keycode:I
    goto/16 :goto_19

    .line 1005
    .end local v10           #keycode:I
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    const/16 v6, 0x16

    invoke-static {v5, v6}, Lcom/android/server/KeyInputQueue;->access$800(Lcom/android/server/KeyInputQueue;I)I

    move-result v10

    .line 1006
    .restart local v10       #keycode:I
    goto/16 :goto_19

    .line 1008
    .end local v10           #keycode:I
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    const/16 v6, 0x14

    invoke-static {v5, v6}, Lcom/android/server/KeyInputQueue;->access$800(Lcom/android/server/KeyInputQueue;I)I

    move-result v10

    .line 1009
    .restart local v10       #keycode:I
    goto/16 :goto_19

    .line 1011
    .end local v10           #keycode:I
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    const/16 v6, 0x15

    invoke-static {v5, v6}, Lcom/android/server/KeyInputQueue;->access$800(Lcom/android/server/KeyInputQueue;I)I

    move-result v10

    .line 1012
    .restart local v10       #keycode:I
    goto/16 :goto_19

    .line 1019
    .end local v10           #keycode:I
    :cond_43
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->keycode:I

    move v6, v0

    invoke-static {v5, v6}, Lcom/android/server/KeyInputQueue;->access$800(Lcom/android/server/KeyInputQueue;I)I

    move-result v10

    .restart local v10       #keycode:I
    goto/16 :goto_19

    .line 1021
    :cond_44
    const/4 v13, 0x0

    goto/16 :goto_1a

    .line 1027
    :cond_45
    const/4 v9, 0x0

    move/from16 v22, v9

    goto/16 :goto_1b

    .end local v9           #down:Z
    :cond_46
    const/4 v9, 0x0

    move/from16 v26, v9

    goto/16 :goto_1c

    .line 1073
    .end local v10           #keycode:I
    .restart local v40       #num:I
    :cond_47
    const/16 v5, 0x14

    move/from16 v39, v5

    goto/16 :goto_7

    .line 1088
    .end local v40           #num:I
    :cond_48
    if-nez v42, :cond_49

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->type:I

    move v5, v0

    if-nez v5, :cond_12

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->scancode:I

    move v5, v0

    if-nez v5, :cond_12

    .line 1090
    :cond_49
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/KeyInputQueue;->mDisplay:Landroid/view/Display;

    if-eqz v5, :cond_12

    .line 1091
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    iget-boolean v5, v5, Lcom/android/server/KeyInputQueue;->mHaveGlobalMetaState:Z

    if-nez v5, :cond_4a

    .line 1092
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/server/KeyInputQueue;->access$900(Lcom/android/server/KeyInputQueue;)V

    .line 1097
    :cond_4a
    move-object v0, v4

    iget-object v0, v0, Lcom/android/server/InputDevice;->mAbs:Lcom/android/server/InputDevice$MotionState;

    move-object/from16 v38, v0

    .line 1098
    .local v38, ms:Lcom/android/server/InputDevice$MotionState;
    move-object/from16 v0, v38

    iget-boolean v0, v0, Lcom/android/server/InputDevice$MotionState;->changed:Z

    move v5, v0

    if-eqz v5, :cond_52

    .line 1099
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, v38

    iput-boolean v0, v1, Lcom/android/server/InputDevice$MotionState;->everChanged:Z

    .line 1100
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v38

    iput-boolean v0, v1, Lcom/android/server/InputDevice$MotionState;->changed:Z

    .line 1102
    and-int/lit8 v5, v32, 0x14

    const/4 v6, 0x4

    if-ne v5, v6, :cond_4b

    .line 1105
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v38

    iput v0, v1, Lcom/android/server/InputDevice$MotionState;->mNextNumPointers:I

    .line 1106
    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/InputDevice$MotionState;->mDown:[Z

    move-object v5, v0

    const/4 v6, 0x0

    aget-boolean v5, v5, v6

    if-eqz v5, :cond_4b

    .line 1107
    iget-object v5, v4, Lcom/android/server/InputDevice;->curTouchVals:[I

    const/4 v6, 0x0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/InputDevice$MotionState;->mNextData:[I

    move-object v9, v0

    const/4 v10, 0x0

    const/4 v11, 0x4

    invoke-static {v5, v6, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1110
    move-object/from16 v0, v38

    iget v0, v0, Lcom/android/server/InputDevice$MotionState;->mNextNumPointers:I

    move v5, v0

    add-int/lit8 v5, v5, 0x1

    move v0, v5

    move-object/from16 v1, v38

    iput v0, v1, Lcom/android/server/InputDevice$MotionState;->mNextNumPointers:I

    .line 1114
    :cond_4b
    sget-boolean v5, Lcom/android/server/KeyInputQueue;->BAD_TOUCH_HACK:Z

    if-eqz v5, :cond_4c

    .line 1115
    move-object/from16 v0, v38

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/server/InputDevice$MotionState;->dropBadPoint(Lcom/android/server/InputDevice;)V

    .line 1117
    :cond_4c
    sget-boolean v5, Lcom/android/server/KeyInputQueue;->JUMPY_TOUCH_HACK:Z

    if-eqz v5, :cond_4d

    .line 1118
    move-object/from16 v0, v38

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/server/InputDevice$MotionState;->dropJumpyPoint(Lcom/android/server/InputDevice;)V

    .line 1121
    :cond_4d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object/from16 v17, v0

    move-object/from16 v18, v4

    move-object/from16 v19, v36

    move-wide/from16 v20, v7

    move-wide/from16 v22, v15

    invoke-static/range {v17 .. v23}, Lcom/android/server/KeyInputQueue;->access$1000(Lcom/android/server/KeyInputQueue;Lcom/android/server/InputDevice;Landroid/view/RawInputEvent;JJ)Z

    move-result v5

    if-nez v5, :cond_54

    const/4 v5, 0x1

    move/from16 v34, v5

    .line 1124
    .local v34, doMotion:Z
    :goto_1d
    if-eqz v34, :cond_4f

    move-object/from16 v0, v38

    iget v0, v0, Lcom/android/server/InputDevice$MotionState;->mNextNumPointers:I

    move v5, v0

    if-lez v5, :cond_4f

    move-object/from16 v0, v38

    iget v0, v0, Lcom/android/server/InputDevice$MotionState;->mLastNumPointers:I

    move v5, v0

    if-eqz v5, :cond_4e

    move-object/from16 v0, v38

    iget-boolean v0, v0, Lcom/android/server/InputDevice$MotionState;->mSkipLastPointers:Z

    move v5, v0

    if-eqz v5, :cond_4f

    .line 1127
    :cond_4e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object/from16 v17, v0

    move-object/from16 v18, v4

    move-object/from16 v19, v36

    move-wide/from16 v20, v7

    move-wide/from16 v22, v15

    invoke-static/range {v17 .. v23}, Lcom/android/server/KeyInputQueue;->access$1100(Lcom/android/server/KeyInputQueue;Lcom/android/server/InputDevice;Landroid/view/RawInputEvent;JJ)Z

    move-result v5

    if-nez v5, :cond_55

    const/4 v5, 0x1

    move/from16 v34, v5

    .line 1131
    :cond_4f
    :goto_1e
    if-eqz v34, :cond_58

    .line 1137
    :cond_50
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    move-object v0, v5

    iget-object v0, v0, Lcom/android/server/KeyInputQueue;->mDisplay:Landroid/view/Display;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    move-object v0, v5

    iget v0, v0, Lcom/android/server/KeyInputQueue;->mOrientation:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    move-object v0, v5

    iget v0, v0, Lcom/android/server/KeyInputQueue;->mGlobalMetaState:I

    move/from16 v25, v0

    move-object/from16 v17, v38

    move-object/from16 v18, v4

    move-wide/from16 v19, v7

    move-wide/from16 v21, v15

    invoke-virtual/range {v17 .. v25}, Lcom/android/server/InputDevice$MotionState;->generateAbsMotion(Lcom/android/server/InputDevice;JJLandroid/view/Display;II)Landroid/view/MotionEvent;

    move-result-object v23

    .line 1146
    .local v23, me:Landroid/view/MotionEvent;
    if-eqz v23, :cond_51

    .line 1150
    and-int/lit8 v5, v32, 0x4

    if-eqz v5, :cond_56

    .line 1151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object/from16 v17, v0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->flags:I

    move/from16 v21, v0

    const/16 v22, 0x4

    move-object/from16 v18, v4

    move-wide/from16 v19, v7

    invoke-static/range {v17 .. v23}, Lcom/android/server/KeyInputQueue;->access$700(Lcom/android/server/KeyInputQueue;Lcom/android/server/InputDevice;JIILjava/lang/Object;)V

    .line 1160
    :cond_51
    :goto_1f
    invoke-virtual/range {v38 .. v38}, Lcom/android/server/InputDevice$MotionState;->hasMore()Z

    move-result v5

    if-nez v5, :cond_50

    .line 1177
    .end local v23           #me:Landroid/view/MotionEvent;
    :goto_20
    invoke-virtual/range {v38 .. v38}, Lcom/android/server/InputDevice$MotionState;->finish()V

    .line 1180
    .end local v34           #doMotion:Z
    :cond_52
    move-object v0, v4

    iget-object v0, v0, Lcom/android/server/InputDevice;->mRel:Lcom/android/server/InputDevice$MotionState;

    move-object/from16 v24, v0

    .line 1181
    .end local v38           #ms:Lcom/android/server/InputDevice$MotionState;
    .local v24, ms:Lcom/android/server/InputDevice$MotionState;
    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/server/InputDevice$MotionState;->changed:Z

    move v5, v0

    if-eqz v5, :cond_12

    .line 1182
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/server/InputDevice$MotionState;->everChanged:Z

    .line 1183
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/server/InputDevice$MotionState;->changed:Z

    .line 1185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    move-object v0, v5

    iget v0, v0, Lcom/android/server/KeyInputQueue;->mOrientation:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v5, v0

    move-object v0, v5

    iget v0, v0, Lcom/android/server/KeyInputQueue;->mGlobalMetaState:I

    move/from16 v31, v0

    move-object/from16 v25, v4

    move-wide/from16 v26, v7

    move-wide/from16 v28, v15

    invoke-virtual/range {v24 .. v31}, Lcom/android/server/InputDevice$MotionState;->generateRelMotion(Lcom/android/server/InputDevice;JJII)Landroid/view/MotionEvent;

    move-result-object v23

    .line 1193
    .restart local v23       #me:Landroid/view/MotionEvent;
    if-eqz v23, :cond_53

    .line 1194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object v13, v0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->flags:I

    move/from16 v17, v0

    const/16 v18, 0x8

    move-object v14, v4

    move-object/from16 v19, v23

    invoke-static/range {v13 .. v19}, Lcom/android/server/KeyInputQueue;->access$700(Lcom/android/server/KeyInputQueue;Lcom/android/server/InputDevice;JIILjava/lang/Object;)V

    .line 1198
    :cond_53
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/InputDevice$MotionState;->finish()V

    goto/16 :goto_8

    .line 1121
    .end local v23           #me:Landroid/view/MotionEvent;
    .end local v24           #ms:Lcom/android/server/InputDevice$MotionState;
    .restart local v38       #ms:Lcom/android/server/InputDevice$MotionState;
    :cond_54
    const/4 v5, 0x0

    move/from16 v34, v5

    goto/16 :goto_1d

    .line 1127
    .restart local v34       #doMotion:Z
    :cond_55
    const/4 v5, 0x0

    move/from16 v34, v5

    goto/16 :goto_1e

    .line 1153
    .restart local v23       #me:Landroid/view/MotionEvent;
    :cond_56
    and-int/lit8 v5, v32, 0x40

    if-eqz v5, :cond_57

    .line 1154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    move-object/from16 v17, v0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/RawInputEvent;->flags:I

    move/from16 v21, v0

    const/16 v22, 0x40

    move-object/from16 v18, v4

    move-wide/from16 v19, v7

    invoke-static/range {v17 .. v23}, Lcom/android/server/KeyInputQueue;->access$700(Lcom/android/server/KeyInputQueue;Lcom/android/server/InputDevice;JIILjava/lang/Object;)V

    goto :goto_1f

    .line 1157
    :cond_57
    const-string v5, "KeyInputQueue"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown classes? "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1f

    .line 1166
    .end local v23           #me:Landroid/view/MotionEvent;
    :cond_58
    move-object/from16 v0, v38

    iget v0, v0, Lcom/android/server/InputDevice$MotionState;->mNextNumPointers:I

    move/from16 v40, v0

    .line 1167
    .restart local v40       #num:I
    const/4 v5, 0x5

    move/from16 v0, v40

    move v1, v5

    if-le v0, v1, :cond_59

    .line 1168
    const/16 v40, 0x5

    .line 1170
    :cond_59
    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/InputDevice$MotionState;->mNextData:[I

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/InputDevice$MotionState;->mLastData:[I

    move-object v9, v0

    const/4 v10, 0x0

    mul-int/lit8 v11, v40, 0x4

    invoke-static {v5, v6, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1173
    move/from16 v0, v40

    move-object/from16 v1, v38

    iput v0, v1, Lcom/android/server/InputDevice$MotionState;->mLastNumPointers:I

    .line 1174
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, v38

    iput-boolean v0, v1, Lcom/android/server/InputDevice$MotionState;->mSkipLastPointers:Z
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto/16 :goto_20

    .line 906
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 943
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 987
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 1003
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method
