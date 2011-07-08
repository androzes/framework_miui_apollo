.class Landroid/hardware/SensorManager$ListenerDelegate;
.super Landroid/os/Binder;
.source "SensorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/SensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListenerDelegate"
.end annotation


# instance fields
.field private mDelay:[I

.field private final mHandler:Landroid/os/Handler;

.field private mLastDelivery:[J

.field final mSensorEventListener:Landroid/hardware/SensorEventListener;

.field private final mSensorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end field

.field public mSensors:I

.field private mValuesPool:Landroid/hardware/SensorEvent;

.field final synthetic this$0:Landroid/hardware/SensorManager;


# direct methods
.method constructor <init>(Landroid/hardware/SensorManager;Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;Landroid/os/Handler;)V
    .locals 3
    .parameter
    .parameter "listener"
    .parameter "sensor"
    .parameter "handler"

    .prologue
    const/16 v2, 0x8

    .line 440
    iput-object p1, p0, Landroid/hardware/SensorManager$ListenerDelegate;->this$0:Landroid/hardware/SensorManager;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 433
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/hardware/SensorManager$ListenerDelegate;->mSensorList:Ljava/util/ArrayList;

    .line 437
    new-array v1, v2, [I

    iput-object v1, p0, Landroid/hardware/SensorManager$ListenerDelegate;->mDelay:[I

    .line 438
    new-array v1, v2, [J

    iput-object v1, p0, Landroid/hardware/SensorManager$ListenerDelegate;->mLastDelivery:[J

    .line 441
    iput-object p2, p0, Landroid/hardware/SensorManager$ListenerDelegate;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    .line 442
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    move-object v0, v1

    .line 446
    .local v0, looper:Landroid/os/Looper;
    :goto_0
    new-instance v1, Landroid/hardware/SensorManager$ListenerDelegate$1;

    invoke-direct {v1, p0, v0, p1}, Landroid/hardware/SensorManager$ListenerDelegate$1;-><init>(Landroid/hardware/SensorManager$ListenerDelegate;Landroid/os/Looper;Landroid/hardware/SensorManager;)V

    iput-object v1, p0, Landroid/hardware/SensorManager$ListenerDelegate;->mHandler:Landroid/os/Handler;

    .line 457
    invoke-virtual {p0, p3}, Landroid/hardware/SensorManager$ListenerDelegate;->addSensor(Landroid/hardware/Sensor;)I

    .line 458
    return-void

    .line 442
    .end local v0           #looper:Landroid/os/Looper;
    :cond_0
    iget-object v1, p1, Landroid/hardware/SensorManager;->mMainLooper:Landroid/os/Looper;

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method addSensor(Landroid/hardware/Sensor;)I
    .locals 3
    .parameter "sensor"

    .prologue
    .line 493
    iget v0, p0, Landroid/hardware/SensorManager$ListenerDelegate;->mSensors:I

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v2

    shl-int/2addr v1, v2

    or-int/2addr v0, v1

    iput v0, p0, Landroid/hardware/SensorManager$ListenerDelegate;->mSensors:I

    .line 494
    iget-object v0, p0, Landroid/hardware/SensorManager$ListenerDelegate;->mSensorList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 495
    iget v0, p0, Landroid/hardware/SensorManager$ListenerDelegate;->mSensors:I

    return v0
.end method

.method protected createSensorEvent()Landroid/hardware/SensorEvent;
    .locals 2

    .prologue
    .line 462
    new-instance v0, Landroid/hardware/SensorEvent;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/hardware/SensorEvent;-><init>(I)V

    return-object v0
.end method

.method protected getFromPool()Landroid/hardware/SensorEvent;
    .locals 2

    .prologue
    .line 466
    const/4 v0, 0x0

    .line 467
    .local v0, t:Landroid/hardware/SensorEvent;
    monitor-enter p0

    .line 469
    :try_start_0
    iget-object v0, p0, Landroid/hardware/SensorManager$ListenerDelegate;->mValuesPool:Landroid/hardware/SensorEvent;

    .line 470
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/hardware/SensorManager$ListenerDelegate;->mValuesPool:Landroid/hardware/SensorEvent;

    .line 471
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 472
    if-nez v0, :cond_0

    .line 474
    invoke-virtual {p0}, Landroid/hardware/SensorManager$ListenerDelegate;->createSensorEvent()Landroid/hardware/SensorEvent;

    move-result-object v0

    .line 476
    :cond_0
    return-object v0

    .line 471
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method getListener()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Landroid/hardware/SensorManager$ListenerDelegate;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    return-object v0
.end method

.method getSensors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 506
    iget-object v0, p0, Landroid/hardware/SensorManager$ListenerDelegate;->mSensorList:Ljava/util/ArrayList;

    return-object v0
.end method

.method hasSensor(Landroid/hardware/Sensor;)Z
    .locals 3
    .parameter "sensor"

    .prologue
    const/4 v2, 0x1

    .line 503
    iget v0, p0, Landroid/hardware/SensorManager$ListenerDelegate;->mSensors:I

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v1

    shl-int v1, v2, v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onSensorChangedLocked(Landroid/hardware/Sensor;[F[JI)V
    .locals 10
    .parameter "sensor"
    .parameter "values"
    .parameter "timestamp"
    .parameter "accuracy"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v9, 0x0

    .line 514
    invoke-virtual {p0}, Landroid/hardware/SensorManager$ListenerDelegate;->getFromPool()Landroid/hardware/SensorEvent;

    move-result-object v1

    .line 515
    .local v1, t:Landroid/hardware/SensorEvent;
    iget-object v4, v1, Landroid/hardware/SensorEvent;->values:[F

    .line 516
    .local v4, v:[F
    aget v5, p2, v9

    aput v5, v4, v9

    .line 517
    aget v5, p2, v6

    aput v5, v4, v6

    .line 518
    aget v5, p2, v7

    aput v5, v4, v7

    .line 519
    aget-wide v5, p3, v9

    iget-object v7, p0, Landroid/hardware/SensorManager$ListenerDelegate;->mLastDelivery:[J

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v8

    aget-wide v7, v7, v8

    sub-long v2, v5, v7

    .line 520
    .local v2, timeAfterLastDelivery:J
    long-to-float v5, v2

    iget-object v6, p0, Landroid/hardware/SensorManager$ListenerDelegate;->mDelay:[I

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v7

    aget v6, v6, v7

    const v7, 0xf4240

    mul-int/2addr v6, v7

    int-to-float v6, v6

    const/high16 v7, 0x3f40

    mul-float/2addr v6, v7

    cmpl-float v5, v5, v6

    if-gez v5, :cond_0

    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-ltz v5, :cond_0

    iget-object v5, p0, Landroid/hardware/SensorManager$ListenerDelegate;->mDelay:[I

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v6

    aget v5, v5, v6

    const/16 v6, 0x1e

    if-le v5, v6, :cond_0

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_1

    .line 528
    :cond_0
    aget-wide v5, p3, v9

    iput-wide v5, v1, Landroid/hardware/SensorEvent;->timestamp:J

    .line 529
    iput p4, v1, Landroid/hardware/SensorEvent;->accuracy:I

    .line 530
    iput-object p1, v1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 531
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 532
    .local v0, msg:Landroid/os/Message;
    iput v9, v0, Landroid/os/Message;->what:I

    .line 533
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 534
    iget-object v5, p0, Landroid/hardware/SensorManager$ListenerDelegate;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 535
    iget-object v5, p0, Landroid/hardware/SensorManager$ListenerDelegate;->mLastDelivery:[J

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v6

    aget-wide v7, p3, v9

    aput-wide v7, v5, v6

    .line 542
    .end local v0           #msg:Landroid/os/Message;
    :cond_1
    return-void
.end method

.method removeSensor(Landroid/hardware/Sensor;)I
    .locals 3
    .parameter "sensor"

    .prologue
    .line 498
    iget v0, p0, Landroid/hardware/SensorManager$ListenerDelegate;->mSensors:I

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v2

    shl-int/2addr v1, v2

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/hardware/SensorManager$ListenerDelegate;->mSensors:I

    .line 499
    iget-object v0, p0, Landroid/hardware/SensorManager$ListenerDelegate;->mSensorList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 500
    iget v0, p0, Landroid/hardware/SensorManager$ListenerDelegate;->mSensors:I

    return v0
.end method

.method protected returnToPool(Landroid/hardware/SensorEvent;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 480
    monitor-enter p0

    .line 482
    :try_start_0
    iget-object v0, p0, Landroid/hardware/SensorManager$ListenerDelegate;->mValuesPool:Landroid/hardware/SensorEvent;

    if-nez v0, :cond_0

    .line 483
    iput-object p1, p0, Landroid/hardware/SensorManager$ListenerDelegate;->mValuesPool:Landroid/hardware/SensorEvent;

    .line 485
    :cond_0
    monitor-exit p0

    .line 486
    return-void

    .line 485
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setDelay(Landroid/hardware/Sensor;I)V
    .locals 2
    .parameter "sensor"
    .parameter "delay"

    .prologue
    .line 510
    iget-object v0, p0, Landroid/hardware/SensorManager$ListenerDelegate;->mDelay:[I

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v1

    aput p2, v0, v1

    .line 511
    return-void
.end method
