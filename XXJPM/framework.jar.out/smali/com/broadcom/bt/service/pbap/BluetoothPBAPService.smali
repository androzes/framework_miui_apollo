.class public Lcom/broadcom/bt/service/pbap/BluetoothPBAPService;
.super Lcom/broadcom/bt/service/framework/BaseService;
.source "BluetoothPBAPService.java"


# static fields
.field private static final BLUETOOTH_ADMIN_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH_ADMIN"

.field private static final BLUETOOTH_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH"

.field private static final DBG:Z = true

.field private static final PBAP_DISABLE_PBS:I = 0x0

.field private static final PBAP_ENABLE_PBS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BluetoothPBAPService"


# instance fields
.field private mIsFinish:Z

.field private mPbapNativeData:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 102
    invoke-static {}, Lcom/broadcom/bt/service/pbap/BluetoothPBAPService;->classInitNative()V

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 151
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/framework/BaseService;-><init>(Landroid/content/Context;)V

    .line 152
    return-void
.end method

.method private static native classInitNative()V
.end method

.method private native cleanupPbapNativeDataNative()V
.end method

.method private native disablePbapServerNative()V
.end method

.method private native enableDefaultPbapServerNative()V
.end method

.method private native enablePbapServerNative(ILjava/lang/String;Ljava/lang/String;ZB[B)V
.end method

.method private native initPbapNativeDataNative()V
.end method

.method private native pbapServerAccessRspNative(BZLjava/lang/String;)V
.end method

.method private native pbapServerAuthenRspNative(Ljava/lang/String;Ljava/lang/String;)V
.end method


# virtual methods
.method public declared-synchronized disablePbapServer()V
    .locals 3

    .prologue
    .line 179
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/broadcom/bt/service/pbap/BluetoothPBAPService;->disablePbapServerNative()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/broadcom/bt/service/pbap/BluetoothPBAPService;->onPbapDisabled()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 187
    monitor-exit p0

    return-void

    .line 180
    :catch_0
    move-exception v0

    .line 181
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    const-string v1, "BluetoothPBAPService"

    const-string v2, "disablePbapServerNative failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 179
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized enableDefaultPbapServer()V
    .locals 3

    .prologue
    .line 199
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/broadcom/bt/service/pbap/BluetoothPBAPService;->enableDefaultPbapServerNative()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    :goto_0
    monitor-exit p0

    return-void

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    const-string v1, "BluetoothPBAPService"

    const-string v2, "enableDefaultPbapServerNative failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 199
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized enablePbapServer(ILjava/lang/String;Ljava/lang/String;ZB[B)V
    .locals 3
    .parameter "security_mask"
    .parameter "service_name"
    .parameter "root_path"
    .parameter "enable_authen"
    .parameter "realm_len"
    .parameter "realm"

    .prologue
    .line 165
    monitor-enter p0

    :try_start_0
    invoke-direct/range {p0 .. p6}, Lcom/broadcom/bt/service/pbap/BluetoothPBAPService;->enablePbapServerNative(ILjava/lang/String;Ljava/lang/String;ZB[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :goto_0
    monitor-exit p0

    return-void

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    const-string v1, "BluetoothPBAPService"

    const-string v2, "enablePbapServerNative failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 165
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/broadcom/bt/service/pbap/BluetoothPBAPService;->finish()V

    .line 132
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 133
    return-void
.end method

.method public declared-synchronized finish()V
    .locals 3

    .prologue
    .line 119
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/broadcom/bt/service/pbap/BluetoothPBAPService;->mIsFinish:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 121
    :try_start_1
    invoke-direct {p0}, Lcom/broadcom/bt/service/pbap/BluetoothPBAPService;->cleanupPbapNativeDataNative()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 125
    :goto_0
    const/4 v1, 0x1

    :try_start_2
    iput-boolean v1, p0, Lcom/broadcom/bt/service/pbap/BluetoothPBAPService;->mIsFinish:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 127
    :cond_0
    monitor-exit p0

    return-void

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, t:Ljava/lang/Throwable;
    :try_start_3
    const-string v1, "BluetoothPBAPService"

    const-string v2, "Unable to cleanup pbap service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 119
    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    const-string v0, "bluetooth_pbs"

    return-object v0
.end method

.method public declared-synchronized init()V
    .locals 1

    .prologue
    .line 113
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/broadcom/bt/service/pbap/BluetoothPBAPService;->initPbapNativeDataNative()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    monitor-exit p0

    return-void

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onPbapAccessRequested(BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "opCode"
    .parameter "fileName"
    .parameter "remoteAddress"
    .parameter "remoteName"

    .prologue
    .line 288
    const-string v2, "BluetoothPBAPService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPbapAccessRequested "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " File name "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    const-string v2, "service.brcm.bt.secure_mode"

    const-string v3, "property not found"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 291
    .local v1, mSecureModeProperity:Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 292
    new-instance v0, Landroid/content/Intent;

    const-string v2, "broadcom.android.bluetooth.intent.action.BT_SERVICE_ACCESS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 295
    .local v0, accessReqIntent:Landroid/content/Intent;
    const-string v2, "broadcom.android.bluetooth.intent.FILE_NAME"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 296
    const-string v2, "broadcom.android.bluetooth.intent.RMT_DEV_ADDR"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 297
    const-string v2, "broadcom.android.bluetooth.intent.RMT_DEV_NAME"

    invoke-virtual {v0, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 298
    const-string v2, "broadcom.android.bluetooth.intent.SERVICE_OPER_CODE"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 299
    const-string v2, "broadcom.android.bluetooth.intent.BLUETOOTH_SERVICE_ID"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 301
    iget-object v2, p0, Lcom/broadcom/bt/service/pbap/BluetoothPBAPService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH"

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 308
    .end local v0           #accessReqIntent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 305
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2, p2}, Lcom/broadcom/bt/service/pbap/BluetoothPBAPService;->pbapServerAccessRsp(BZLjava/lang/String;)V

    goto :goto_0
.end method

.method public onPbapAuth()V
    .locals 0

    .prologue
    .line 271
    return-void
.end method

.method public onPbapClosed()V
    .locals 3

    .prologue
    .line 264
    const-string v1, "BluetoothPBAPService"

    const-string v2, "onPbapClosed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    new-instance v0, Landroid/content/Intent;

    const-string v1, "broadcom.android.bluetooth.intent.action.BT_SERVICE_CONNECTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 266
    .local v0, pbapClosedIntent:Landroid/content/Intent;
    const-string v1, "broadcom.android.bluetooth.intent.BLUETOOTH_SERVICE_CONNECTED"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 267
    iget-object v1, p0, Lcom/broadcom/bt/service/pbap/BluetoothPBAPService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 268
    return-void
.end method

.method public onPbapConnected()V
    .locals 3

    .prologue
    .line 244
    const-string v1, "BluetoothPBAPService"

    const-string v2, "onPbapConnected"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    new-instance v0, Landroid/content/Intent;

    const-string v1, "broadcom.android.bluetooth.intent.action.BT_SERVICE_CONNECTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 246
    .local v0, pbapOpenIntent:Landroid/content/Intent;
    const-string v1, "broadcom.android.bluetooth.intent.BLUETOOTH_SERVICE_CONNECTED"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 247
    iget-object v1, p0, Lcom/broadcom/bt/service/pbap/BluetoothPBAPService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 248
    return-void
.end method

.method public onPbapDisabled()V
    .locals 2

    .prologue
    .line 255
    const-string v0, "BluetoothPBAPService"

    const-string v1, "onPbapDisabled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/pbap/BluetoothPBAPService;->onStateChangeEvent(Z)V

    .line 257
    return-void
.end method

.method public onPbapEnabled()V
    .locals 2

    .prologue
    .line 250
    const-string v0, "BluetoothPBAPService"

    const-string v1, "onPbapEnabled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/pbap/BluetoothPBAPService;->onStateChangeEvent(Z)V

    .line 252
    return-void
.end method

.method public onPbapOperCompleted(Ljava/lang/String;BB)V
    .locals 0
    .parameter "file_name"
    .parameter "op_code"
    .parameter "status"

    .prologue
    .line 315
    return-void
.end method

.method public declared-synchronized pbapServerAccessRsp(BZLjava/lang/String;)V
    .locals 3
    .parameter "op_code"
    .parameter "access"
    .parameter "filename"

    .prologue
    .line 230
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/broadcom/bt/service/pbap/BluetoothPBAPService;->pbapServerAccessRspNative(BZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    :goto_0
    monitor-exit p0

    return-void

    .line 231
    :catch_0
    move-exception v0

    .line 232
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    const-string v1, "BluetoothPBAPService"

    const-string v2, "PbapServerAccessRspNative failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 230
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized pbapServerAuthenRsp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "password"
    .parameter "userId"

    .prologue
    .line 213
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/broadcom/bt/service/pbap/BluetoothPBAPService;->pbapServerAuthenRspNative(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    :goto_0
    monitor-exit p0

    return-void

    .line 214
    :catch_0
    move-exception v0

    .line 215
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    const-string v1, "BluetoothPBAPService"

    const-string v2, "PbapServerAuthRspNative failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 213
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public start()V
    .locals 0

    .prologue
    .line 320
    invoke-virtual {p0}, Lcom/broadcom/bt/service/pbap/BluetoothPBAPService;->enableDefaultPbapServer()V

    .line 322
    return-void
.end method

.method public stop()V
    .locals 0

    .prologue
    .line 326
    invoke-virtual {p0}, Lcom/broadcom/bt/service/pbap/BluetoothPBAPService;->disablePbapServer()V

    .line 328
    return-void
.end method
