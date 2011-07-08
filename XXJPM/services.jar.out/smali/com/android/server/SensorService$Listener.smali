.class final Lcom/android/server/SensorService$Listener;
.super Ljava/lang/Object;
.source "SensorService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SensorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Listener"
.end annotation


# instance fields
.field mDelay:I

.field mSensors:I

.field final mToken:Landroid/os/IBinder;

.field final mUid:I

.field final synthetic this$0:Lcom/android/server/SensorService;


# direct methods
.method constructor <init>(Lcom/android/server/SensorService;Landroid/os/IBinder;I)V
    .locals 1
    .parameter
    .parameter "token"
    .parameter "uid"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/server/SensorService$Listener;->this$0:Lcom/android/server/SensorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/SensorService$Listener;->mSensors:I

    .line 62
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/server/SensorService$Listener;->mDelay:I

    .line 65
    iput-object p2, p0, Lcom/android/server/SensorService$Listener;->mToken:Landroid/os/IBinder;

    .line 66
    iput p3, p0, Lcom/android/server/SensorService$Listener;->mUid:I

    .line 67
    return-void
.end method


# virtual methods
.method addSensor(II)V
    .locals 2
    .parameter "sensor"
    .parameter "delay"

    .prologue
    .line 70
    iget v0, p0, Lcom/android/server/SensorService$Listener;->mSensors:I

    const/4 v1, 0x1

    shl-int/2addr v1, p1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/SensorService$Listener;->mSensors:I

    .line 71
    iget v0, p0, Lcom/android/server/SensorService$Listener;->mDelay:I

    if-ge p2, v0, :cond_0

    .line 72
    iput p2, p0, Lcom/android/server/SensorService$Listener;->mDelay:I

    .line 73
    :cond_0
    return-void
.end method

.method public binderDied()V
    .locals 4

    .prologue
    .line 85
    iget-object v1, p0, Lcom/android/server/SensorService$Listener;->this$0:Lcom/android/server/SensorService;

    invoke-static {v1}, Lcom/android/server/SensorService;->access$000(Lcom/android/server/SensorService;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 86
    :try_start_0
    iget-object v2, p0, Lcom/android/server/SensorService$Listener;->this$0:Lcom/android/server/SensorService;

    invoke-static {v2}, Lcom/android/server/SensorService;->access$000(Lcom/android/server/SensorService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 87
    iget-object v2, p0, Lcom/android/server/SensorService$Listener;->mToken:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v2, p0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 90
    const/4 v0, 0x0

    .local v0, sensor:I
    :goto_0
    const/16 v2, 0x20

    if-ge v0, v2, :cond_1

    iget v2, p0, Lcom/android/server/SensorService$Listener;->mSensors:I

    if-eqz v2, :cond_1

    .line 91
    invoke-virtual {p0, v0}, Lcom/android/server/SensorService$Listener;->hasSensor(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 92
    invoke-virtual {p0, v0}, Lcom/android/server/SensorService$Listener;->removeSensor(I)V

    .line 93
    iget-object v2, p0, Lcom/android/server/SensorService$Listener;->this$0:Lcom/android/server/SensorService;

    invoke-static {v2, v0}, Lcom/android/server/SensorService;->access$100(Lcom/android/server/SensorService;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    :try_start_1
    iget-object v2, p0, Lcom/android/server/SensorService$Listener;->this$0:Lcom/android/server/SensorService;

    iget-object v2, v2, Lcom/android/server/SensorService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget v3, p0, Lcom/android/server/SensorService$Listener;->mUid:I

    invoke-interface {v2, v3, v0}, Lcom/android/internal/app/IBatteryStats;->noteStopSensor(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 90
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 101
    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/android/server/SensorService$Listener;->this$0:Lcom/android/server/SensorService;

    invoke-static {v2}, Lcom/android/server/SensorService;->access$000(Lcom/android/server/SensorService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 102
    invoke-static {}, Lcom/android/server/SensorService;->access$200()I

    .line 103
    invoke-static {}, Lcom/android/server/SensorService;->access$300()I

    .line 108
    :cond_2
    iget-object v2, p0, Lcom/android/server/SensorService$Listener;->this$0:Lcom/android/server/SensorService;

    invoke-static {v2}, Lcom/android/server/SensorService;->access$000(Lcom/android/server/SensorService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 109
    monitor-exit v1

    .line 110
    return-void

    .line 109
    .end local v0           #sensor:I
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 96
    .restart local v0       #sensor:I
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method hasSensor(I)Z
    .locals 3
    .parameter "sensor"

    .prologue
    const/4 v2, 0x1

    .line 80
    iget v0, p0, Lcom/android/server/SensorService$Listener;->mSensors:I

    shl-int v1, v2, p1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method removeSensor(I)V
    .locals 2
    .parameter "sensor"

    .prologue
    .line 76
    iget v0, p0, Lcom/android/server/SensorService$Listener;->mSensors:I

    const/4 v1, 0x1

    shl-int/2addr v1, p1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/SensorService$Listener;->mSensors:I

    .line 77
    return-void
.end method
