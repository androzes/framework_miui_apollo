.class Lcom/android/server/SensorService;
.super Landroid/hardware/ISensorService$Stub;
.source "SensorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SensorService$Listener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final SENSOR_DISABLE:I = -0x1

.field static final TAG:Ljava/lang/String;

.field private static final localLOGV:Z


# instance fields
.field final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mCurrentDelay:I

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/SensorService$Listener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/android/server/SensorService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/SensorService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 114
    invoke-direct {p0}, Landroid/hardware/ISensorService$Stub;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/SensorService;->mCurrentDelay:I

    .line 55
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/SensorService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 274
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/SensorService;->mListeners:Ljava/util/ArrayList;

    .line 116
    invoke-static {}, Lcom/android/server/SensorService;->_sensors_control_init()I

    .line 117
    return-void
.end method

.method private static native _sensors_control_activate(IZ)Z
.end method

.method private static native _sensors_control_close()I
.end method

.method private static native _sensors_control_init()I
.end method

.method private static native _sensors_control_open()Landroid/os/Bundle;
.end method

.method private static native _sensors_control_set_delay(I)I
.end method

.method private static native _sensors_control_wake()I
.end method

.method static synthetic access$000(Lcom/android/server/SensorService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/server/SensorService;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/SensorService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/server/SensorService;->deactivateIfUnusedLocked(I)V

    return-void
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 45
    invoke-static {}, Lcom/android/server/SensorService;->_sensors_control_wake()I

    move-result v0

    return v0
.end method

.method static synthetic access$300()I
    .locals 1

    .prologue
    .line 45
    invoke-static {}, Lcom/android/server/SensorService;->_sensors_control_close()I

    move-result v0

    return v0
.end method

.method private deactivateIfUnusedLocked(I)V
    .locals 5
    .parameter "sensor"

    .prologue
    .line 245
    iget-object v2, p0, Lcom/android/server/SensorService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 246
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 247
    iget-object v2, p0, Lcom/android/server/SensorService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/SensorService$Listener;

    invoke-virtual {v2, p1}, Lcom/android/server/SensorService$Listener;->hasSensor(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 255
    :cond_0
    :goto_1
    return-void

    .line 246
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 252
    :cond_2
    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/android/server/SensorService;->_sensors_control_activate(IZ)Z

    move-result v2

    if-nez v2, :cond_0

    .line 253
    sget-object v2, Lcom/android/server/SensorService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "could not disable sensor "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private enableSensorInternalLocked(Landroid/os/IBinder;ILjava/lang/String;II)Z
    .locals 8
    .parameter "binder"
    .parameter "uid"
    .parameter "name"
    .parameter "sensor"
    .parameter "enable"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 164
    const/4 v1, 0x0

    .line 165
    .local v1, l:Lcom/android/server/SensorService$Listener;
    iget-object v4, p0, Lcom/android/server/SensorService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/SensorService$Listener;

    .line 166
    .local v2, listener:Lcom/android/server/SensorService$Listener;
    iget-object v4, v2, Lcom/android/server/SensorService$Listener;->mToken:Landroid/os/IBinder;

    if-ne p1, v4, :cond_0

    .line 167
    move-object v1, v2

    .line 172
    .end local v2           #listener:Lcom/android/server/SensorService$Listener;
    :cond_1
    const/4 v4, -0x1

    if-eq p5, v4, :cond_6

    .line 174
    invoke-static {p4, v5}, Lcom/android/server/SensorService;->_sensors_control_activate(IZ)Z

    move-result v4

    if-nez v4, :cond_2

    .line 175
    sget-object v4, Lcom/android/server/SensorService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "could not enable sensor "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v7

    .line 241
    :goto_0
    return v4

    .line 179
    :cond_2
    if-nez v1, :cond_3

    .line 184
    new-instance v1, Lcom/android/server/SensorService$Listener;

    .end local v1           #l:Lcom/android/server/SensorService$Listener;
    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/SensorService$Listener;-><init>(Lcom/android/server/SensorService;Landroid/os/IBinder;I)V

    .line 185
    .restart local v1       #l:Lcom/android/server/SensorService$Listener;
    invoke-interface {p1, v1, v7}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 186
    iget-object v4, p0, Lcom/android/server/SensorService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    iget-object v4, p0, Lcom/android/server/SensorService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V

    .line 191
    :cond_3
    invoke-virtual {v1, p4, p5}, Lcom/android/server/SensorService$Listener;->addSensor(II)V

    .line 231
    :cond_4
    :goto_1
    const v3, 0x7fffffff

    .line 232
    .local v3, minDelay:I
    iget-object v4, p0, Lcom/android/server/SensorService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/SensorService$Listener;

    .line 233
    .restart local v2       #listener:Lcom/android/server/SensorService$Listener;
    iget v4, v2, Lcom/android/server/SensorService$Listener;->mDelay:I

    if-ge v4, v3, :cond_5

    .line 234
    iget v3, v2, Lcom/android/server/SensorService$Listener;->mDelay:I

    goto :goto_2

    .line 195
    .end local v2           #listener:Lcom/android/server/SensorService$Listener;
    .end local v3           #minDelay:I
    :cond_6
    if-nez v1, :cond_7

    .line 202
    sget-object v4, Lcom/android/server/SensorService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "listener with binder "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", doesn\'t exist (sensor="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v7

    .line 205
    goto :goto_0

    .line 209
    :cond_7
    invoke-virtual {v1, p4}, Lcom/android/server/SensorService$Listener;->removeSensor(I)V

    .line 212
    invoke-direct {p0, p4}, Lcom/android/server/SensorService;->deactivateIfUnusedLocked(I)V

    .line 216
    iget v4, v1, Lcom/android/server/SensorService$Listener;->mSensors:I

    if-nez v4, :cond_4

    .line 218
    invoke-interface {p1, v1, v7}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 220
    iget-object v4, p0, Lcom/android/server/SensorService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 222
    iget-object v4, p0, Lcom/android/server/SensorService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_8

    .line 223
    invoke-static {}, Lcom/android/server/SensorService;->_sensors_control_wake()I

    .line 224
    invoke-static {}, Lcom/android/server/SensorService;->_sensors_control_close()I

    .line 226
    :cond_8
    iget-object v4, p0, Lcom/android/server/SensorService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V

    goto :goto_1

    .line 236
    .restart local v3       #minDelay:I
    :cond_9
    const v4, 0x7fffffff

    if-eq v3, v4, :cond_a

    .line 237
    iput v3, p0, Lcom/android/server/SensorService;->mCurrentDelay:I

    .line 238
    invoke-static {v3}, Lcom/android/server/SensorService;->_sensors_control_set_delay(I)I

    :cond_a
    move v4, v5

    .line 241
    goto/16 :goto_0
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    const-string v4, " ms"

    .line 259
    iget-object v4, p0, Lcom/android/server/SensorService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v4

    .line 260
    :try_start_0
    new-instance v3, Landroid/util/PrintWriterPrinter;

    invoke-direct {v3, p2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 261
    .local v3, pr:Landroid/util/Printer;
    const/4 v0, 0x0

    .line 262
    .local v0, c:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/server/SensorService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " listener(s), delay="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/SensorService;->mCurrentDelay:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 263
    iget-object v5, p0, Lcom/android/server/SensorService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/SensorService$Listener;

    .line 264
    .local v2, l:Lcom/android/server/SensorService$Listener;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "listener["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "sensors=0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/android/server/SensorService$Listener;->mSensors:I

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/android/server/SensorService$Listener;->mUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", delay="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/android/server/SensorService$Listener;->mDelay:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 269
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 271
    .end local v2           #l:Lcom/android/server/SensorService$Listener;
    :cond_0
    monitor-exit v4

    .line 272
    return-void

    .line 271
    .end local v0           #c:I
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #pr:Landroid/util/Printer;
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public enableSensor(Landroid/os/IBinder;Ljava/lang/String;II)Z
    .locals 11
    .parameter "binder"
    .parameter "name"
    .parameter "sensor"
    .parameter "enable"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v10, -0x1

    const-string v9, ", id="

    const-string v5, ")"

    .line 131
    if-nez p1, :cond_0

    .line 132
    sget-object v0, Lcom/android/server/SensorService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "listener is null (sensor="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", id="

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    .line 157
    :goto_0
    return v0

    .line 136
    :cond_0
    if-gez p4, :cond_1

    if-eq p4, v10, :cond_1

    .line 137
    sget-object v0, Lcom/android/server/SensorService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid enable parameter (enable="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", sensor="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", id="

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    .line 139
    goto :goto_0

    .line 143
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 144
    .local v2, uid:I
    iget-object v9, p0, Lcom/android/server/SensorService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v9

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    .line 145
    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcom/android/server/SensorService;->enableSensorInternalLocked(Landroid/os/IBinder;ILjava/lang/String;II)Z

    move-result v8

    .line 146
    .local v8, res:Z
    const/4 v0, 0x1

    if-ne v8, v0, :cond_2

    .line 148
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 149
    .local v6, identity:J
    if-ne p4, v10, :cond_3

    .line 150
    iget-object v0, p0, Lcom/android/server/SensorService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0, v2, p3}, Lcom/android/internal/app/IBatteryStats;->noteStopSensor(II)V

    .line 154
    :goto_1
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 156
    .end local v6           #identity:J
    :cond_2
    monitor-exit v9

    move v0, v8

    .line 157
    goto :goto_0

    .line 152
    .restart local v6       #identity:J
    :cond_3
    iget-object v0, p0, Lcom/android/server/SensorService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0, v2, p3}, Lcom/android/internal/app/IBatteryStats;->noteStartSensor(II)V

    goto :goto_1

    .line 156
    .end local v6           #identity:J
    .end local v8           #res:Z
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDataChannel()Landroid/os/Bundle;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/server/SensorService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 122
    :try_start_0
    invoke-static {}, Lcom/android/server/SensorService;->_sensors_control_open()Landroid/os/Bundle;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 123
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
