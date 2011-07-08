.class public Lcom/broadcom/bt/service/framework/BluetoothServiceManager;
.super Ljava/lang/Object;
.source "BluetoothServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;
    }
.end annotation


# static fields
.field private static BT_AdapterState:Z = false

.field public static final TAG:Ljava/lang/String; = "BluetoothServiceManager"

.field private static _DBG:Z

.field private static mBtServiceMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private static mIsFactoryTest:Z

.field private static final mReceiver:Landroid/content/BroadcastReceiver;

.field private static mSystemContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 78
    const-string v0, "BluetoothServiceManager"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->_DBG:Z

    .line 79
    const/4 v0, 0x0

    sput-boolean v0, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->BT_AdapterState:Z

    .line 104
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mBtServiceMap:Ljava/util/LinkedHashMap;

    .line 108
    new-instance v0, Lcom/broadcom/bt/service/framework/BluetoothServiceManager$1;

    invoke-direct {v0}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager$1;-><init>()V

    sput-object v0, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    return-void
.end method

.method private static _registerService(Ljava/lang/String;Lcom/broadcom/bt/service/framework/IBtService;)V
    .locals 6
    .parameter "svcName"
    .parameter "svc"

    .prologue
    const-string v5, "null"

    const-string v4, "BluetoothServiceManager"

    const-string v3, ": "

    .line 130
    invoke-static {p0}, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->isServiceSupported(Ljava/lang/String;)Z

    move-result v0

    .line 132
    .local v0, isSupported:Z
    sget-boolean v1, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->_DBG:Z

    if-eqz v1, :cond_1

    .line 133
    if-nez v0, :cond_0

    .line 134
    const-string v1, "BluetoothServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "****Bluetooth Service not supported "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    const-string v1, "null"

    move-object v1, v5

    :goto_0
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_0
    const-string v1, "BluetoothServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "****Registering Bluetooth Service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    const-string v1, "null"

    move-object v1, v5

    :goto_1
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_1
    if-eqz v0, :cond_2

    .line 144
    sget-object v1, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mBtServiceMap:Ljava/util/LinkedHashMap;

    monitor-enter v1

    .line 145
    :try_start_0
    sget-object v2, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mBtServiceMap:Ljava/util/LinkedHashMap;

    new-instance v3, Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v4}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;-><init>(Lcom/broadcom/bt/service/framework/IBtService;Z)V

    invoke-virtual {v2, p0, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    :cond_2
    return-void

    .line 134
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "...Skipping. ****"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 140
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "****"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 146
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private static _startService(Ljava/lang/String;)V
    .locals 6
    .parameter "svcName"

    .prologue
    const-string v5, "***"

    const-string v4, "BluetoothServiceManager"

    .line 160
    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->isServiceEnabled(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 162
    :cond_0
    sget-boolean v2, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->_DBG:Z

    if-eqz v2, :cond_1

    .line 163
    const-string v2, "BluetoothServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "***startService(): Bluetooth service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p0, :cond_2

    const-string v3, "null"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not enabled. Skipping...***"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_1
    :goto_1
    return-void

    :cond_2
    move-object v3, p0

    .line 163
    goto :goto_0

    .line 170
    :cond_3
    const/4 v1, 0x0

    .line 171
    .local v1, svcWrapper:Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;
    sget-object v3, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mBtServiceMap:Ljava/util/LinkedHashMap;

    monitor-enter v3

    .line 172
    :try_start_0
    sget-object v2, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mBtServiceMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;

    move-object v1, v0

    .line 173
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    if-nez v1, :cond_4

    .line 176
    sget-boolean v2, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->_DBG:Z

    if-eqz v2, :cond_1

    .line 177
    const-string v2, "BluetoothServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "***startService(): Unable to find service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Skipping...***"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 173
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 183
    :cond_4
    sget-boolean v2, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->_DBG:Z

    if-eqz v2, :cond_5

    .line 184
    const-string v2, "BluetoothServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "***startService(): Starting service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "***"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_5
    monitor-enter v1

    .line 189
    :try_start_2
    invoke-static {v1}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;->access$000(Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;)Lcom/broadcom/bt/service/framework/IBtService;

    move-result-object v2

    invoke-interface {v2}, Lcom/broadcom/bt/service/framework/IBtService;->init()V

    .line 190
    invoke-static {v1}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;->access$000(Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;)Lcom/broadcom/bt/service/framework/IBtService;

    move-result-object v2

    invoke-interface {v2}, Lcom/broadcom/bt/service/framework/IBtService;->start()V

    .line 192
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 193
    const-string v2, "BluetoothServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "***startService(): Done starting service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "***"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 192
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method private static _stopService(Ljava/lang/String;)V
    .locals 5
    .parameter "svcName"

    .prologue
    .line 198
    if-nez p0, :cond_0

    .line 216
    :goto_0
    return-void

    .line 202
    :cond_0
    const/4 v1, 0x0

    .line 203
    .local v1, svcWrapper:Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;
    sget-object v3, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mBtServiceMap:Ljava/util/LinkedHashMap;

    monitor-enter v3

    .line 204
    :try_start_0
    sget-object v2, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mBtServiceMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;

    move-object v1, v0

    .line 205
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 207
    sget-boolean v2, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->_DBG:Z

    if-eqz v2, :cond_1

    .line 208
    const-string v2, "BluetoothServiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "***stopService(): Stopping service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "***"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_1
    monitor-enter v1

    .line 213
    :try_start_1
    invoke-static {v1}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;->access$000(Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;)Lcom/broadcom/bt/service/framework/IBtService;

    move-result-object v2

    invoke-interface {v2}, Lcom/broadcom/bt/service/framework/IBtService;->stop()V

    .line 215
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 205
    :catchall_1
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method public static disableService(Ljava/lang/String;)V
    .locals 5
    .parameter "svcName"

    .prologue
    const-string v3, "BluetoothServiceManager"

    .line 304
    const-string v1, "BluetoothServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "***disableService() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "***"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    sget-object v1, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mBtServiceMap:Ljava/util/LinkedHashMap;

    monitor-enter v1

    .line 308
    :try_start_0
    sget-object v2, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mBtServiceMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;

    .line 309
    .local v0, svcWrapper:Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;
    if-nez v0, :cond_0

    .line 310
    const-string v2, "BluetoothServiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "***disableService() Service not found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Skipping...***"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :cond_0
    sget-object v2, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bt_svcst_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 316
    invoke-static {p0}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->_stopService(Ljava/lang/String;)V

    .line 317
    monitor-exit v1

    .line 318
    return-void

    .line 317
    .end local v0           #svcWrapper:Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static enableService(Ljava/lang/String;)V
    .locals 5
    .parameter "svcName"

    .prologue
    const-string v3, "BluetoothServiceManager"

    .line 287
    const-string v1, "BluetoothServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableService() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    sget-object v1, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mBtServiceMap:Ljava/util/LinkedHashMap;

    monitor-enter v1

    .line 291
    :try_start_0
    sget-object v2, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mBtServiceMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;

    .line 292
    .local v0, svcWrapper:Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;
    if-nez v0, :cond_0

    .line 293
    const-string v2, "BluetoothServiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "***enableService(): Service not found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Skipping...***"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :cond_0
    sget-object v2, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bt_svcst_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 299
    invoke-static {p0}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->_startService(Ljava/lang/String;)V

    .line 300
    monitor-exit v1

    .line 301
    return-void

    .line 300
    .end local v0           #svcWrapper:Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static getBluetoothSAPEventLoop()Lcom/broadcom/bt/service/sap/BluetoothSAPEventLoop;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 367
    sget-object v1, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mBtServiceMap:Ljava/util/LinkedHashMap;

    monitor-enter v1

    .line 368
    :try_start_0
    sget-object v2, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mBtServiceMap:Ljava/util/LinkedHashMap;

    const-string v3, "bluetooth_sap"

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;

    .line 369
    .local v0, svcWrapper:Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;
    if-nez v0, :cond_0

    const/4 v2, 0x0

    .end local v0           #svcWrapper:Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;
    :goto_0
    monitor-exit v1

    return-object v2

    .restart local v0       #svcWrapper:Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;
    :cond_0
    invoke-static {v0}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;->access$000(Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;)Lcom/broadcom/bt/service/framework/IBtService;

    move-result-object v0

    .end local v0           #svcWrapper:Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;
    check-cast v0, Lcom/broadcom/bt/service/sap/BluetoothSAPEventLoop;

    move-object v2, v0

    goto :goto_0

    .line 370
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static getFmReceiverEventLoop()Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 357
    sget-object v1, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mBtServiceMap:Ljava/util/LinkedHashMap;

    monitor-enter v1

    .line 358
    :try_start_0
    sget-object v2, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mBtServiceMap:Ljava/util/LinkedHashMap;

    const-string v3, "bluetooth_fm_receiver_service"

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;

    .line 360
    .local v0, svcWrapper:Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;
    if-nez v0, :cond_0

    const/4 v2, 0x0

    .end local v0           #svcWrapper:Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;
    :goto_0
    monitor-exit v1

    return-object v2

    .restart local v0       #svcWrapper:Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;
    :cond_0
    invoke-static {v0}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;->access$000(Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;)Lcom/broadcom/bt/service/framework/IBtService;

    move-result-object v0

    .end local v0           #svcWrapper:Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;
    check-cast v0, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;

    move-object v2, v0

    goto :goto_0

    .line 362
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static getOppEventLoop()Lcom/broadcom/bt/service/opp/OppEventLoop;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 347
    sget-object v1, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mBtServiceMap:Ljava/util/LinkedHashMap;

    monitor-enter v1

    .line 348
    :try_start_0
    sget-object v2, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mBtServiceMap:Ljava/util/LinkedHashMap;

    const-string v3, "bluetooth_opp_service"

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;

    .line 350
    .local v0, svcWrapper:Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;
    if-nez v0, :cond_0

    const/4 v2, 0x0

    .end local v0           #svcWrapper:Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;
    :goto_0
    monitor-exit v1

    return-object v2

    .restart local v0       #svcWrapper:Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;
    :cond_0
    invoke-static {v0}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;->access$000(Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;)Lcom/broadcom/bt/service/framework/IBtService;

    move-result-object v0

    .end local v0           #svcWrapper:Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;
    check-cast v0, Lcom/broadcom/bt/service/opp/OppEventLoop;

    move-object v2, v0

    goto :goto_0

    .line 352
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static getService(Ljava/lang/String;)Lcom/broadcom/bt/service/framework/IBtService;
    .locals 3
    .parameter "svcName"

    .prologue
    .line 321
    sget-object v1, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mBtServiceMap:Ljava/util/LinkedHashMap;

    monitor-enter v1

    .line 322
    :try_start_0
    sget-object v2, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mBtServiceMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;

    .line 323
    .local v0, svcWrapper:Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;
    if-nez v0, :cond_0

    const/4 v2, 0x0

    :goto_0
    monitor-exit v1

    return-object v2

    :cond_0
    invoke-static {v0}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;->access$000(Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;)Lcom/broadcom/bt/service/framework/IBtService;

    move-result-object v2

    goto :goto_0

    .line 324
    .end local v0           #svcWrapper:Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static getServiceState(Ljava/lang/String;)I
    .locals 2
    .parameter "svcName"

    .prologue
    .line 334
    sget-object v1, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mBtServiceMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;

    .line 335
    .local v0, svcWrapper:Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;
    if-nez v0, :cond_0

    .line 336
    const/4 v1, -0x1

    .line 338
    :goto_0
    return v1

    :cond_0
    invoke-static {v0}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;->access$100(Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;ZZ)V
    .locals 4
    .parameter "systemContext"
    .parameter "isEmulator"
    .parameter "isFactoryTest"

    .prologue
    .line 152
    sput-object p0, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mSystemContext:Landroid/content/Context;

    .line 153
    invoke-static {}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->registerServices()V

    .line 155
    sget-object v0, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mSystemContext:Landroid/content/Context;

    sget-object v1, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "broadcom.bt.intent.action.BT_SVC_STATE_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 157
    return-void
.end method

.method public static onBluetoothDisabled()V
    .locals 4

    .prologue
    .line 272
    const-string v2, "BluetoothServiceManager"

    const-string v3, "onBluetoothDisabled()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    const/4 v2, 0x0

    sput-boolean v2, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->BT_AdapterState:Z

    .line 277
    sget-object v2, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mBtServiceMap:Ljava/util/LinkedHashMap;

    monitor-enter v2

    .line 278
    :try_start_0
    sget-object v3, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mBtServiceMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 279
    .local v0, svcIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 280
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 281
    .local v1, svcName:Ljava/lang/String;
    invoke-static {v1}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->_stopService(Ljava/lang/String;)V

    goto :goto_0

    .line 283
    .end local v0           #svcIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v1           #svcName:Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0       #svcIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 284
    return-void
.end method

.method public static onBluetoothEnabled()V
    .locals 4

    .prologue
    .line 255
    sget-boolean v2, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mIsFactoryTest:Z

    if-eqz v2, :cond_0

    .line 269
    :goto_0
    return-void

    .line 259
    :cond_0
    const/4 v2, 0x1

    sput-boolean v2, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->BT_AdapterState:Z

    .line 261
    const-string v2, "BluetoothServiceManager"

    const-string v3, "onBluetoothEnabled()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    sget-object v2, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mBtServiceMap:Ljava/util/LinkedHashMap;

    monitor-enter v2

    .line 263
    :try_start_0
    sget-object v3, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mBtServiceMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 264
    .local v0, svcIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 265
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 266
    .local v1, svcName:Ljava/lang/String;
    invoke-static {v1}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->_startService(Ljava/lang/String;)V

    goto :goto_1

    .line 268
    .end local v0           #svcIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v1           #svcName:Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0       #svcIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public static onBluetoothServiceStateChanged(Ljava/lang/String;I)V
    .locals 7
    .parameter "svcName"
    .parameter "state"

    .prologue
    const/4 v6, 0x1

    const-string v5, "BluetoothServiceManager"

    .line 219
    const/4 v1, 0x0

    .line 220
    .local v1, svcWrapper:Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;
    sget-object v4, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mBtServiceMap:Ljava/util/LinkedHashMap;

    monitor-enter v4

    .line 221
    :try_start_0
    sget-object v3, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mBtServiceMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;

    move-object v1, v0

    .line 222
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    if-nez v1, :cond_1

    .line 225
    sget-boolean v3, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->_DBG:Z

    if-eqz v3, :cond_0

    .line 226
    const-string v3, "BluetoothServiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "***onBluetoothServiceStateChanged(): Unable to find service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Skipping...***"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 222
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 233
    :cond_1
    monitor-enter v1

    .line 234
    const/4 v3, 0x2

    if-ne v3, p1, :cond_3

    .line 235
    const/4 v3, 0x1

    :try_start_2
    invoke-static {v1, v3}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;->access$102(Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;Z)Z

    .line 251
    :cond_2
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v3

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    .line 236
    :cond_3
    if-ne v6, p1, :cond_2

    .line 237
    const/4 v3, 0x0

    :try_start_3
    invoke-static {v1, v3}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;->access$102(Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;Z)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 239
    :try_start_4
    const-string v3, "BluetoothServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Finishing service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    sget-boolean v3, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->BT_AdapterState:Z

    if-nez v3, :cond_2

    .line 242
    invoke-static {v1}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;->access$000(Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;)Lcom/broadcom/bt/service/framework/IBtService;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 243
    invoke-static {v1}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;->access$000(Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;)Lcom/broadcom/bt/service/framework/IBtService;

    move-result-object v3

    invoke-interface {v3}, Lcom/broadcom/bt/service/framework/IBtService;->finish()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 247
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 248
    .local v2, t:Ljava/lang/Throwable;
    :try_start_5
    const-string v3, "BluetoothServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error finishing service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1
.end method

.method private static registerServices()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 85
    const-string v0, "bluetooth_opp_service"

    new-instance v1, Lcom/broadcom/bt/service/opp/OppEventLoop;

    sget-object v2, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mSystemContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lcom/broadcom/bt/service/opp/OppEventLoop;-><init>(Landroid/content/Context;Lcom/broadcom/bt/service/opp/OppService;)V

    invoke-static {v0, v1}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->_registerService(Ljava/lang/String;Lcom/broadcom/bt/service/framework/IBtService;)V

    .line 87
    const-string v0, "bluetooth_ftp"

    new-instance v1, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;

    sget-object v2, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mSystemContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->_registerService(Ljava/lang/String;Lcom/broadcom/bt/service/framework/IBtService;)V

    .line 89
    const-string v0, "bluetooth_pbs"

    new-instance v1, Lcom/broadcom/bt/service/pbap/BluetoothPBAPService;

    sget-object v2, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mSystemContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/broadcom/bt/service/pbap/BluetoothPBAPService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->_registerService(Ljava/lang/String;Lcom/broadcom/bt/service/framework/IBtService;)V

    .line 91
    const-string v0, "bluetooth_dun"

    new-instance v1, Lcom/broadcom/bt/service/dun/BluetoothDUNService;

    sget-object v2, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mSystemContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/broadcom/bt/service/dun/BluetoothDUNService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->_registerService(Ljava/lang/String;Lcom/broadcom/bt/service/framework/IBtService;)V

    .line 93
    const-string v0, "bluetooth_sap"

    new-instance v1, Lcom/broadcom/bt/service/sap/BluetoothSAPEventLoop;

    sget-object v2, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mSystemContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lcom/broadcom/bt/service/sap/BluetoothSAPEventLoop;-><init>(Landroid/content/Context;Lcom/broadcom/bt/service/sap/BluetoothSAPService;)V

    invoke-static {v0, v1}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->_registerService(Ljava/lang/String;Lcom/broadcom/bt/service/framework/IBtService;)V

    .line 98
    const-string v0, "bluetooth_fm_receiver_service"

    new-instance v1, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;

    sget-object v2, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mSystemContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;-><init>(Landroid/content/Context;Lcom/broadcom/bt/service/fm/FmReceiverService;)V

    invoke-static {v0, v1}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->_registerService(Ljava/lang/String;Lcom/broadcom/bt/service/framework/IBtService;)V

    .line 100
    const-string v0, "bluetooth_test"

    new-instance v1, Lcom/broadcom/bt/service/test/BluetoothTestModeEventLoop;

    sget-object v2, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->mSystemContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/broadcom/bt/service/test/BluetoothTestModeEventLoop;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->_registerService(Ljava/lang/String;Lcom/broadcom/bt/service/framework/IBtService;)V

    .line 102
    return-void
.end method
