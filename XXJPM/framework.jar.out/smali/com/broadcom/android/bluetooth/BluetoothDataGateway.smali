.class public Lcom/broadcom/android/bluetooth/BluetoothDataGateway;
.super Lcom/broadcom/bt/service/framework/BaseProxy;
.source "BluetoothDataGateway.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "BluetoothDataGateway"


# instance fields
.field private final mService:Lcom/broadcom/android/bluetooth/IBluetoothDataGateway;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/broadcom/android/bluetooth/IBluetoothDataGateway;Landroid/content/ServiceConnection;)V
    .locals 0
    .parameter "ctx"
    .parameter "service"
    .parameter "appServiceConn"

    .prologue
    .line 44
    invoke-direct {p0, p1, p3}, Lcom/broadcom/bt/service/framework/BaseProxy;-><init>(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    .line 45
    iput-object p2, p0, Lcom/broadcom/android/bluetooth/BluetoothDataGateway;->mService:Lcom/broadcom/android/bluetooth/IBluetoothDataGateway;

    .line 46
    return-void
.end method

.method public constructor <init>(Lcom/broadcom/android/bluetooth/IBluetoothDataGateway;)V
    .locals 2
    .parameter "service"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;-><init>()V

    .line 39
    const-string v0, "BluetoothDataGateway"

    const-string v1, "BluetoothDataGateway Constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    iput-object p1, p0, Lcom/broadcom/android/bluetooth/BluetoothDataGateway;->mService:Lcom/broadcom/android/bluetooth/IBluetoothDataGateway;

    .line 41
    return-void
.end method


# virtual methods
.method public dataGatewayClose(BB)V
    .locals 3
    .parameter "serviceId"
    .parameter "appId"

    .prologue
    .line 216
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/android/bluetooth/BluetoothDataGateway;->mService:Lcom/broadcom/android/bluetooth/IBluetoothDataGateway;

    invoke-interface {v1, p1, p2}, Lcom/broadcom/android/bluetooth/IBluetoothDataGateway;->dataGatewayClose(BB)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    :goto_0
    return-void

    .line 217
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 218
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothDataGateway"

    const-string v2, "dataGatewayClose Failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public declared-synchronized dataGatewayDisable()V
    .locals 3

    .prologue
    .line 168
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/broadcom/android/bluetooth/BluetoothDataGateway;->mService:Lcom/broadcom/android/bluetooth/IBluetoothDataGateway;

    invoke-interface {v1}, Lcom/broadcom/android/bluetooth/IBluetoothDataGateway;->dataGatewayDisable()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :goto_0
    monitor-exit p0

    return-void

    .line 169
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 170
    .local v0, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v1, "BluetoothDataGateway"

    const-string v2, "dataGatewayDisable failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 168
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized dataGatewayEnable()V
    .locals 3

    .prologue
    .line 155
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/broadcom/android/bluetooth/BluetoothDataGateway;->mService:Lcom/broadcom/android/bluetooth/IBluetoothDataGateway;

    invoke-interface {v1}, Lcom/broadcom/android/bluetooth/IBluetoothDataGateway;->dataGatewayEnable()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :goto_0
    monitor-exit p0

    return-void

    .line 156
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 157
    .local v0, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v1, "BluetoothDataGateway"

    const-string v2, "dataGatewayEnable failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 155
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized dataGatewayListen(BBLjava/lang/String;B)V
    .locals 3
    .parameter "serviceId"
    .parameter "securityMask"
    .parameter "serviceName"
    .parameter "appId"

    .prologue
    .line 186
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/broadcom/android/bluetooth/BluetoothDataGateway;->mService:Lcom/broadcom/android/bluetooth/IBluetoothDataGateway;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/broadcom/android/bluetooth/IBluetoothDataGateway;->dataGatewayListen(BBLjava/lang/String;B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :goto_0
    monitor-exit p0

    return-void

    .line 187
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 188
    .local v0, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v1, "BluetoothDataGateway"

    const-string v2, "dataGatewayListen failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 186
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public dataGatewayOpen(Ljava/lang/String;BBLjava/lang/String;B)V
    .locals 7
    .parameter "bdAddress"
    .parameter "serviceId"
    .parameter "securityMask"
    .parameter "serviceName"
    .parameter "appId"

    .prologue
    .line 203
    :try_start_0
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothDataGateway;->mService:Lcom/broadcom/android/bluetooth/IBluetoothDataGateway;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/broadcom/android/bluetooth/IBluetoothDataGateway;->dataGatewayOpen(Ljava/lang/String;BBLjava/lang/String;B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    :goto_0
    return-void

    .line 204
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 205
    .local v6, e:Landroid/os/RemoteException;
    const-string v0, "BluetoothDataGateway"

    const-string v1, "dataGatewayOpen Failed"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public dataGatewayShutdown(BB)V
    .locals 3
    .parameter "serviceId"
    .parameter "appId"

    .prologue
    .line 231
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/android/bluetooth/BluetoothDataGateway;->mService:Lcom/broadcom/android/bluetooth/IBluetoothDataGateway;

    invoke-interface {v1, p1, p2}, Lcom/broadcom/android/bluetooth/IBluetoothDataGateway;->dataGatewayShutdown(BB)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    :goto_0
    return-void

    .line 232
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 233
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothDataGateway"

    const-string v2, "dataGatewayShutdown Failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public declared-synchronized getFirstAvailableSerialPort()B
    .locals 3

    .prologue
    .line 53
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/broadcom/android/bluetooth/BluetoothDataGateway;->mService:Lcom/broadcom/android/bluetooth/IBluetoothDataGateway;

    invoke-interface {v1}, Lcom/broadcom/android/bluetooth/IBluetoothDataGateway;->getFirstAvailableSerialPort()B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 56
    :goto_0
    monitor-exit p0

    return v1

    .line 54
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 55
    .local v0, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v1, "BluetoothDataGateway"

    const-string v2, "getFirstAvailableSerialPort failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    const/4 v1, -0x1

    goto :goto_0

    .line 53
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getSerialPortStatus(B)I
    .locals 3
    .parameter "portId"

    .prologue
    .line 67
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/broadcom/android/bluetooth/BluetoothDataGateway;->mService:Lcom/broadcom/android/bluetooth/IBluetoothDataGateway;

    invoke-interface {v1, p1}, Lcom/broadcom/android/bluetooth/IBluetoothDataGateway;->getSerialPortStatus(B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 70
    :goto_0
    monitor-exit p0

    return v1

    .line 68
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 69
    .local v0, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v1, "BluetoothDataGateway"

    const-string v2, "getSerialPortStatus failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    const/4 v1, -0x1

    goto :goto_0

    .line 67
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized registerSppCallback(ILcom/broadcom/android/bluetooth/IBluetoothSPPCallback;)V
    .locals 4
    .parameter "portId"
    .parameter "callback"

    .prologue
    const-string v1, "BluetoothDataGateway"

    .line 95
    monitor-enter p0

    :try_start_0
    const-string v1, "BluetoothDataGateway"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerSppCallback "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v1, p0, Lcom/broadcom/android/bluetooth/BluetoothDataGateway;->mService:Lcom/broadcom/android/bluetooth/IBluetoothDataGateway;

    invoke-interface {v1, p1, p2}, Lcom/broadcom/android/bluetooth/IBluetoothDataGateway;->registerSppCallback(ILcom/broadcom/android/bluetooth/IBluetoothSPPCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :goto_0
    monitor-exit p0

    return-void

    .line 97
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 98
    .local v0, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v1, "BluetoothDataGateway"

    const-string v2, "registerSppCallback failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 95
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setSerialPortStatus(BI)V
    .locals 3
    .parameter "portId"
    .parameter "status"

    .prologue
    .line 81
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/broadcom/android/bluetooth/BluetoothDataGateway;->mService:Lcom/broadcom/android/bluetooth/IBluetoothDataGateway;

    invoke-interface {v1, p1, p2}, Lcom/broadcom/android/bluetooth/IBluetoothDataGateway;->setSerialPortStatus(BI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :goto_0
    monitor-exit p0

    return-void

    .line 82
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 83
    .local v0, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v1, "BluetoothDataGateway"

    const-string/jumbo v2, "unregisterSppCallback failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 81
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized sppRead(B)[B
    .locals 3
    .parameter "portId"

    .prologue
    .line 141
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/broadcom/android/bluetooth/BluetoothDataGateway;->mService:Lcom/broadcom/android/bluetooth/IBluetoothDataGateway;

    invoke-interface {v1, p1}, Lcom/broadcom/android/bluetooth/IBluetoothDataGateway;->sppRead(B)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 144
    :goto_0
    monitor-exit p0

    return-object v1

    .line 142
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 143
    .local v0, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v1, "BluetoothDataGateway"

    const-string/jumbo v2, "sppRead failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    const/4 v1, 0x0

    goto :goto_0

    .line 141
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized sppWrite(BI[B)I
    .locals 3
    .parameter "portId"
    .parameter "length"
    .parameter "buffer"

    .prologue
    .line 126
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/broadcom/android/bluetooth/BluetoothDataGateway;->mService:Lcom/broadcom/android/bluetooth/IBluetoothDataGateway;

    invoke-interface {v1, p1, p2, p3}, Lcom/broadcom/android/bluetooth/IBluetoothDataGateway;->sppWrite(BI[B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 129
    :goto_0
    monitor-exit p0

    return v1

    .line 127
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 128
    .local v0, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v1, "BluetoothDataGateway"

    const-string/jumbo v2, "sppWrite failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    const/4 v1, -0x1

    goto :goto_0

    .line 126
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized unregisterSppCallback(I)V
    .locals 3
    .parameter "portId"

    .prologue
    .line 110
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/broadcom/android/bluetooth/BluetoothDataGateway;->mService:Lcom/broadcom/android/bluetooth/IBluetoothDataGateway;

    invoke-interface {v1, p1}, Lcom/broadcom/android/bluetooth/IBluetoothDataGateway;->unregisterSppCallback(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :goto_0
    monitor-exit p0

    return-void

    .line 111
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 112
    .local v0, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v1, "BluetoothDataGateway"

    const-string/jumbo v2, "unregisterSppCallback failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 110
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public waitForDataOnPort(B)V
    .locals 3
    .parameter "appId"

    .prologue
    .line 245
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/android/bluetooth/BluetoothDataGateway;->mService:Lcom/broadcom/android/bluetooth/IBluetoothDataGateway;

    invoke-interface {v1, p1}, Lcom/broadcom/android/bluetooth/IBluetoothDataGateway;->waitForDataOnPort(B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    :goto_0
    return-void

    .line 246
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 247
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothDataGateway"

    const-string/jumbo v2, "waitForDataOnPort Failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
