.class Lcom/android/server/PowerManagerService$11;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/PowerManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 2788
    iput-object p1, p0, Lcom/android/server/PowerManagerService$11;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 2790
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 13
    .parameter "event"

    .prologue
    .line 2751
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 2752
    .local v3, milliseconds:J
    iget-object v8, p0, Lcom/android/server/PowerManagerService$11;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v8}, Lcom/android/server/PowerManagerService;->access$500(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$LockList;

    move-result-object v8

    monitor-enter v8

    .line 2753
    :try_start_0
    iget-object v9, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v10, 0x0

    aget v1, v9, v10

    .line 2754
    .local v1, distance:F
    iget-object v9, p0, Lcom/android/server/PowerManagerService$11;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v9}, Lcom/android/server/PowerManagerService;->access$5100(Lcom/android/server/PowerManagerService;)J

    move-result-wide v9

    sub-long v6, v3, v9

    .line 2755
    .local v6, timeSinceLastEvent:J
    iget-object v9, p0, Lcom/android/server/PowerManagerService$11;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v9, v3, v4}, Lcom/android/server/PowerManagerService;->access$5102(Lcom/android/server/PowerManagerService;J)J

    .line 2756
    iget-object v9, p0, Lcom/android/server/PowerManagerService$11;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v9}, Lcom/android/server/PowerManagerService;->access$3300(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/PowerManagerService$11;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v10}, Lcom/android/server/PowerManagerService;->access$5200(Lcom/android/server/PowerManagerService;)Ljava/lang/Runnable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2757
    const/4 v5, 0x0

    .line 2760
    .local v5, proximityTaskQueued:Z
    float-to-double v9, v1

    const-wide/16 v11, 0x0

    cmpl-double v9, v9, v11

    if-ltz v9, :cond_1

    const/high16 v9, 0x40a0

    cmpg-float v9, v1, v9

    if-gez v9, :cond_1

    iget-object v9, p0, Lcom/android/server/PowerManagerService$11;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v9}, Lcom/android/server/PowerManagerService;->access$5300(Lcom/android/server/PowerManagerService;)Landroid/hardware/Sensor;

    move-result-object v9

    invoke-virtual {v9}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v9

    cmpg-float v9, v1, v9

    if-gez v9, :cond_1

    const/4 v9, 0x1

    move v0, v9

    .line 2764
    .local v0, active:Z
    :goto_0
    const-string v9, "PowerManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mProximityListener.onSensorChanged active: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2766
    const-wide/16 v9, 0x3e8

    cmp-long v9, v6, v9

    if-gez v9, :cond_3

    .line 2768
    iget-object v9, p0, Lcom/android/server/PowerManagerService$11;->this$0:Lcom/android/server/PowerManagerService;

    if-eqz v0, :cond_2

    const/4 v10, 0x1

    :goto_1
    invoke-static {v9, v10}, Lcom/android/server/PowerManagerService;->access$4502(Lcom/android/server/PowerManagerService;I)I

    .line 2769
    iget-object v9, p0, Lcom/android/server/PowerManagerService$11;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v9}, Lcom/android/server/PowerManagerService;->access$3300(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/PowerManagerService$11;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v10}, Lcom/android/server/PowerManagerService;->access$5200(Lcom/android/server/PowerManagerService;)Ljava/lang/Runnable;

    move-result-object v10

    const-wide/16 v11, 0x3e8

    sub-long/2addr v11, v6

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2770
    const/4 v5, 0x1

    .line 2778
    :goto_2
    iget-object v9, p0, Lcom/android/server/PowerManagerService$11;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v9}, Lcom/android/server/PowerManagerService;->access$4700(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->isHeld()Z

    move-result v2

    .line 2779
    .local v2, held:Z
    if-nez v2, :cond_4

    if-eqz v5, :cond_4

    .line 2781
    iget-object v9, p0, Lcom/android/server/PowerManagerService$11;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v9}, Lcom/android/server/PowerManagerService;->access$4700(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->acquire()V

    .line 2785
    :cond_0
    :goto_3
    monitor-exit v8

    .line 2786
    return-void

    .line 2760
    .end local v0           #active:Z
    .end local v2           #held:Z
    :cond_1
    const/4 v9, 0x0

    move v0, v9

    goto :goto_0

    .line 2768
    .restart local v0       #active:Z
    :cond_2
    const/4 v10, 0x0

    goto :goto_1

    .line 2773
    :cond_3
    iget-object v9, p0, Lcom/android/server/PowerManagerService$11;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v10, -0x1

    invoke-static {v9, v10}, Lcom/android/server/PowerManagerService;->access$4502(Lcom/android/server/PowerManagerService;I)I

    .line 2774
    iget-object v9, p0, Lcom/android/server/PowerManagerService$11;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v9, v0}, Lcom/android/server/PowerManagerService;->access$4600(Lcom/android/server/PowerManagerService;Z)V

    goto :goto_2

    .line 2785
    .end local v0           #active:Z
    .end local v1           #distance:F
    .end local v5           #proximityTaskQueued:Z
    .end local v6           #timeSinceLastEvent:J
    :catchall_0
    move-exception v9

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .line 2782
    .restart local v0       #active:Z
    .restart local v1       #distance:F
    .restart local v2       #held:Z
    .restart local v5       #proximityTaskQueued:Z
    .restart local v6       #timeSinceLastEvent:J
    :cond_4
    if-eqz v2, :cond_0

    if-nez v5, :cond_0

    .line 2783
    :try_start_1
    iget-object v9, p0, Lcom/android/server/PowerManagerService$11;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v9}, Lcom/android/server/PowerManagerService;->access$4700(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3
.end method
