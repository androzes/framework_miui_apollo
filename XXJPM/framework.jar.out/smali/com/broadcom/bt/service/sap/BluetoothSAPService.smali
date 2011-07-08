.class public Lcom/broadcom/bt/service/sap/BluetoothSAPService;
.super Lcom/broadcom/bt/service/sap/IBluetoothSAPService$Stub;
.source "BluetoothSAPService.java"


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "BluetoothSAPService"

.field private static mEventLoop:Lcom/broadcom/bt/service/sap/BluetoothSAPEventLoop;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/broadcom/bt/service/sap/IBluetoothSAPService$Stub;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/broadcom/bt/service/sap/BluetoothSAPService;->mContext:Landroid/content/Context;

    .line 85
    invoke-static {}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->getBluetoothSAPEventLoop()Lcom/broadcom/bt/service/sap/BluetoothSAPEventLoop;

    move-result-object v0

    sput-object v0, Lcom/broadcom/bt/service/sap/BluetoothSAPService;->mEventLoop:Lcom/broadcom/bt/service/sap/BluetoothSAPEventLoop;

    .line 86
    return-void
.end method

.method private native disconnectNative(B)V
.end method


# virtual methods
.method public declared-synchronized disable()V
    .locals 1

    .prologue
    .line 143
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/broadcom/bt/service/sap/BluetoothSAPService;->mEventLoop:Lcom/broadcom/bt/service/sap/BluetoothSAPEventLoop;

    if-eqz v0, :cond_0

    .line 144
    sget-object v0, Lcom/broadcom/bt/service/sap/BluetoothSAPService;->mEventLoop:Lcom/broadcom/bt/service/sap/BluetoothSAPEventLoop;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/sap/BluetoothSAPEventLoop;->disable()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    :cond_0
    monitor-exit p0

    return-void

    .line 143
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized disconnect(B)V
    .locals 3
    .parameter "type"

    .prologue
    const-string v1, "BluetoothSAPService"

    .line 152
    monitor-enter p0

    :try_start_0
    const-string v1, "BluetoothSAPService"

    const-string v2, "disconnect..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    :try_start_1
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/sap/BluetoothSAPService;->disconnectNative(B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 158
    :goto_0
    monitor-exit p0

    return-void

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    const-string v1, "BluetoothSAPService"

    const-string v2, "disconnectNative failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 152
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized enable()V
    .locals 1

    .prologue
    .line 133
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/broadcom/bt/service/sap/BluetoothSAPService;->mEventLoop:Lcom/broadcom/bt/service/sap/BluetoothSAPEventLoop;

    if-eqz v0, :cond_0

    .line 134
    sget-object v0, Lcom/broadcom/bt/service/sap/BluetoothSAPService;->mEventLoop:Lcom/broadcom/bt/service/sap/BluetoothSAPEventLoop;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/sap/BluetoothSAPEventLoop;->enable()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    :cond_0
    monitor-exit p0

    return-void

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 102
    invoke-super {p0}, Lcom/broadcom/bt/service/sap/IBluetoothSAPService$Stub;->finalize()V

    .line 103
    return-void
.end method

.method public declared-synchronized init()V
    .locals 0

    .prologue
    .line 96
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized registerCallback(Lcom/broadcom/bt/service/sap/IBluetoothSAPCallback;)V
    .locals 1
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 112
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/broadcom/bt/service/sap/BluetoothSAPService;->mEventLoop:Lcom/broadcom/bt/service/sap/BluetoothSAPEventLoop;

    if-eqz v0, :cond_0

    .line 113
    sget-object v0, Lcom/broadcom/bt/service/sap/BluetoothSAPService;->mEventLoop:Lcom/broadcom/bt/service/sap/BluetoothSAPEventLoop;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/sap/BluetoothSAPEventLoop;->registerCallback(Lcom/broadcom/bt/service/sap/IBluetoothSAPCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    :cond_0
    monitor-exit p0

    return-void

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unregisterCallback(Lcom/broadcom/bt/service/sap/IBluetoothSAPCallback;)V
    .locals 1
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 123
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/broadcom/bt/service/sap/BluetoothSAPService;->mEventLoop:Lcom/broadcom/bt/service/sap/BluetoothSAPEventLoop;

    if-eqz v0, :cond_0

    .line 124
    sget-object v0, Lcom/broadcom/bt/service/sap/BluetoothSAPService;->mEventLoop:Lcom/broadcom/bt/service/sap/BluetoothSAPEventLoop;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/sap/BluetoothSAPEventLoop;->unregisterCallback(Lcom/broadcom/bt/service/sap/IBluetoothSAPCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    :cond_0
    monitor-exit p0

    return-void

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
