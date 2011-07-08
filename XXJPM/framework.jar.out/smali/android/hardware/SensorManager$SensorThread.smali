.class Landroid/hardware/SensorManager$SensorThread;
.super Ljava/lang/Object;
.source "SensorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/SensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SensorThread"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/SensorManager$SensorThread$SensorThreadRunnable;
    }
.end annotation


# instance fields
.field mSensorsReady:Z

.field mThread:Ljava/lang/Thread;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 294
    invoke-static {}, Landroid/hardware/SensorManager;->sensors_data_init()I

    .line 295
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 0

    .prologue
    .line 299
    invoke-static {}, Landroid/hardware/SensorManager;->sensors_data_uninit()I

    .line 300
    return-void
.end method

.method startLocked(Landroid/hardware/ISensorService;)Z
    .locals 7
    .parameter "service"

    .prologue
    const/4 v6, 0x0

    .line 305
    :try_start_0
    iget-object v4, p0, Landroid/hardware/SensorManager$SensorThread;->mThread:Ljava/lang/Thread;

    if-nez v4, :cond_0

    .line 306
    invoke-interface {p1}, Landroid/hardware/ISensorService;->getDataChannel()Landroid/os/Bundle;

    move-result-object v0

    .line 307
    .local v0, dataChannel:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 308
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/hardware/SensorManager$SensorThread;->mSensorsReady:Z

    .line 309
    new-instance v2, Landroid/hardware/SensorManager$SensorThread$SensorThreadRunnable;

    invoke-direct {v2, p0, v0}, Landroid/hardware/SensorManager$SensorThread$SensorThreadRunnable;-><init>(Landroid/hardware/SensorManager$SensorThread;Landroid/os/Bundle;)V

    .line 310
    .local v2, runnable:Landroid/hardware/SensorManager$SensorThread$SensorThreadRunnable;
    new-instance v3, Ljava/lang/Thread;

    const-class v4, Landroid/hardware/SensorManager$SensorThread;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 311
    .local v3, thread:Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 312
    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 313
    :goto_0
    :try_start_1
    iget-boolean v4, p0, Landroid/hardware/SensorManager$SensorThread;->mSensorsReady:Z

    if-nez v4, :cond_1

    .line 314
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 316
    :catchall_0
    move-exception v4

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v4
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 320
    .end local v0           #dataChannel:Landroid/os/Bundle;
    .end local v2           #runnable:Landroid/hardware/SensorManager$SensorThread$SensorThreadRunnable;
    .end local v3           #thread:Ljava/lang/Thread;
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 321
    .local v1, e:Landroid/os/RemoteException;
    const-string v4, "SensorManager"

    const-string v5, "RemoteException in startLocked: "

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 324
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_0
    :goto_1
    iget-object v4, p0, Landroid/hardware/SensorManager$SensorThread;->mThread:Ljava/lang/Thread;

    if-nez v4, :cond_2

    move v4, v6

    :goto_2
    return v4

    .line 316
    .restart local v0       #dataChannel:Landroid/os/Bundle;
    .restart local v2       #runnable:Landroid/hardware/SensorManager$SensorThread$SensorThreadRunnable;
    .restart local v3       #thread:Ljava/lang/Thread;
    :cond_1
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 317
    :try_start_4
    iput-object v3, p0, Landroid/hardware/SensorManager$SensorThread;->mThread:Ljava/lang/Thread;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 322
    .end local v0           #dataChannel:Landroid/os/Bundle;
    .end local v2           #runnable:Landroid/hardware/SensorManager$SensorThread$SensorThreadRunnable;
    .end local v3           #thread:Ljava/lang/Thread;
    :catch_1
    move-exception v4

    goto :goto_1

    .line 324
    :cond_2
    const/4 v4, 0x1

    goto :goto_2
.end method
