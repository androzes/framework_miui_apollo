.class Lcom/broadcom/android/bluetooth/BluetoothSPP$1;
.super Lcom/broadcom/android/bluetooth/IBluetoothSPPCallback$Stub;
.source "BluetoothSPP.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/android/bluetooth/BluetoothSPP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/android/bluetooth/BluetoothSPP;


# direct methods
.method constructor <init>(Lcom/broadcom/android/bluetooth/BluetoothSPP;)V
    .locals 0
    .parameter

    .prologue
    .line 422
    iput-object p1, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP$1;->this$0:Lcom/broadcom/android/bluetooth/BluetoothSPP;

    invoke-direct {p0}, Lcom/broadcom/android/bluetooth/IBluetoothSPPCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onPortConnected(BLjava/lang/String;)V
    .locals 2
    .parameter "appId"
    .parameter "remoteAddress"

    .prologue
    .line 352
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP$1;->this$0:Lcom/broadcom/android/bluetooth/BluetoothSPP;

    invoke-static {v0}, Lcom/broadcom/android/bluetooth/BluetoothSPP;->access$400(Lcom/broadcom/android/bluetooth/BluetoothSPP;)B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eq v0, p1, :cond_0

    .line 365
    :goto_0
    monitor-exit p0

    return-void

    .line 357
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP$1;->this$0:Lcom/broadcom/android/bluetooth/BluetoothSPP;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/broadcom/android/bluetooth/BluetoothSPP;->access$102(Lcom/broadcom/android/bluetooth/BluetoothSPP;I)I

    .line 360
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP$1;->this$0:Lcom/broadcom/android/bluetooth/BluetoothSPP;

    invoke-static {v0}, Lcom/broadcom/android/bluetooth/BluetoothSPP;->access$600(Lcom/broadcom/android/bluetooth/BluetoothSPP;)Lcom/broadcom/android/bluetooth/IBluetoothSPPEventHandler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 361
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP$1;->this$0:Lcom/broadcom/android/bluetooth/BluetoothSPP;

    invoke-static {v0}, Lcom/broadcom/android/bluetooth/BluetoothSPP;->access$600(Lcom/broadcom/android/bluetooth/BluetoothSPP;)Lcom/broadcom/android/bluetooth/IBluetoothSPPEventHandler;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/broadcom/android/bluetooth/IBluetoothSPPEventHandler;->onPortConnected(BLjava/lang/String;)V

    .line 364
    :cond_1
    const-string v0, "BluetoothSPP"

    const-string v1, "onPortConnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 352
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onPortConnectingToHost(B)V
    .locals 2
    .parameter "appId"

    .prologue
    .line 387
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP$1;->this$0:Lcom/broadcom/android/bluetooth/BluetoothSPP;

    invoke-static {v0}, Lcom/broadcom/android/bluetooth/BluetoothSPP;->access$400(Lcom/broadcom/android/bluetooth/BluetoothSPP;)B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eq v0, p1, :cond_0

    .line 398
    :goto_0
    monitor-exit p0

    return-void

    .line 391
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP$1;->this$0:Lcom/broadcom/android/bluetooth/BluetoothSPP;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/broadcom/android/bluetooth/BluetoothSPP;->access$102(Lcom/broadcom/android/bluetooth/BluetoothSPP;I)I

    .line 394
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP$1;->this$0:Lcom/broadcom/android/bluetooth/BluetoothSPP;

    invoke-static {v0}, Lcom/broadcom/android/bluetooth/BluetoothSPP;->access$600(Lcom/broadcom/android/bluetooth/BluetoothSPP;)Lcom/broadcom/android/bluetooth/IBluetoothSPPEventHandler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 395
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP$1;->this$0:Lcom/broadcom/android/bluetooth/BluetoothSPP;

    invoke-static {v0}, Lcom/broadcom/android/bluetooth/BluetoothSPP;->access$600(Lcom/broadcom/android/bluetooth/BluetoothSPP;)Lcom/broadcom/android/bluetooth/IBluetoothSPPEventHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/broadcom/android/bluetooth/IBluetoothSPPEventHandler;->onPortConnectingToHost(B)V

    .line 397
    :cond_1
    const-string v0, "BluetoothSPP"

    const-string v1, "onPortDisconnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 387
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onPortConnectingToHostFailed(B)V
    .locals 2
    .parameter "appId"

    .prologue
    .line 403
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP$1;->this$0:Lcom/broadcom/android/bluetooth/BluetoothSPP;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/broadcom/android/bluetooth/BluetoothSPP;->access$102(Lcom/broadcom/android/bluetooth/BluetoothSPP;I)I

    .line 404
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP$1;->this$0:Lcom/broadcom/android/bluetooth/BluetoothSPP;

    invoke-static {v0}, Lcom/broadcom/android/bluetooth/BluetoothSPP;->access$600(Lcom/broadcom/android/bluetooth/BluetoothSPP;)Lcom/broadcom/android/bluetooth/IBluetoothSPPEventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP$1;->this$0:Lcom/broadcom/android/bluetooth/BluetoothSPP;

    invoke-static {v0}, Lcom/broadcom/android/bluetooth/BluetoothSPP;->access$600(Lcom/broadcom/android/bluetooth/BluetoothSPP;)Lcom/broadcom/android/bluetooth/IBluetoothSPPEventHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/broadcom/android/bluetooth/IBluetoothSPPEventHandler;->onPortConnectingToHostFailed(B)V

    .line 407
    :cond_0
    const-string v0, "BluetoothSPP"

    const-string v1, "onPortConnectingtoHostFailed()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 408
    monitor-exit p0

    return-void

    .line 403
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onPortDataArrived(B)V
    .locals 1
    .parameter "appId"

    .prologue
    .line 425
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP$1;->this$0:Lcom/broadcom/android/bluetooth/BluetoothSPP;

    invoke-static {v0}, Lcom/broadcom/android/bluetooth/BluetoothSPP;->access$600(Lcom/broadcom/android/bluetooth/BluetoothSPP;)Lcom/broadcom/android/bluetooth/IBluetoothSPPEventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP$1;->this$0:Lcom/broadcom/android/bluetooth/BluetoothSPP;

    invoke-static {v0}, Lcom/broadcom/android/bluetooth/BluetoothSPP;->access$600(Lcom/broadcom/android/bluetooth/BluetoothSPP;)Lcom/broadcom/android/bluetooth/IBluetoothSPPEventHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/broadcom/android/bluetooth/IBluetoothSPPEventHandler;->onPortDataArrived(B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 429
    :cond_0
    monitor-exit p0

    return-void

    .line 425
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onPortDataSent(B)V
    .locals 2
    .parameter "appId"

    .prologue
    .line 412
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP$1;->this$0:Lcom/broadcom/android/bluetooth/BluetoothSPP;

    invoke-static {v0}, Lcom/broadcom/android/bluetooth/BluetoothSPP;->access$600(Lcom/broadcom/android/bluetooth/BluetoothSPP;)Lcom/broadcom/android/bluetooth/IBluetoothSPPEventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP$1;->this$0:Lcom/broadcom/android/bluetooth/BluetoothSPP;

    invoke-static {v0}, Lcom/broadcom/android/bluetooth/BluetoothSPP;->access$600(Lcom/broadcom/android/bluetooth/BluetoothSPP;)Lcom/broadcom/android/bluetooth/IBluetoothSPPEventHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/broadcom/android/bluetooth/IBluetoothSPPEventHandler;->onPortDataSent(B)V

    .line 415
    :cond_0
    const-string v0, "BluetoothSPP"

    const-string v1, "onPortDataSent()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 416
    monitor-exit p0

    return-void

    .line 412
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onPortDisconnected(B)V
    .locals 2
    .parameter "appId"

    .prologue
    .line 370
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP$1;->this$0:Lcom/broadcom/android/bluetooth/BluetoothSPP;

    invoke-static {v0}, Lcom/broadcom/android/bluetooth/BluetoothSPP;->access$400(Lcom/broadcom/android/bluetooth/BluetoothSPP;)B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eq v0, p1, :cond_0

    .line 382
    :goto_0
    monitor-exit p0

    return-void

    .line 374
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP$1;->this$0:Lcom/broadcom/android/bluetooth/BluetoothSPP;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/broadcom/android/bluetooth/BluetoothSPP;->access$102(Lcom/broadcom/android/bluetooth/BluetoothSPP;I)I

    .line 377
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP$1;->this$0:Lcom/broadcom/android/bluetooth/BluetoothSPP;

    invoke-static {v0}, Lcom/broadcom/android/bluetooth/BluetoothSPP;->access$600(Lcom/broadcom/android/bluetooth/BluetoothSPP;)Lcom/broadcom/android/bluetooth/IBluetoothSPPEventHandler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 378
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP$1;->this$0:Lcom/broadcom/android/bluetooth/BluetoothSPP;

    invoke-static {v0}, Lcom/broadcom/android/bluetooth/BluetoothSPP;->access$600(Lcom/broadcom/android/bluetooth/BluetoothSPP;)Lcom/broadcom/android/bluetooth/IBluetoothSPPEventHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/broadcom/android/bluetooth/IBluetoothSPPEventHandler;->onPortDisconnected(B)V

    .line 381
    :cond_1
    const-string v0, "BluetoothSPP"

    const-string v1, "onPortDisconnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 370
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onSppServerPortEnabled(B)V
    .locals 2
    .parameter "appId"

    .prologue
    .line 340
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP$1;->this$0:Lcom/broadcom/android/bluetooth/BluetoothSPP;

    invoke-static {v0}, Lcom/broadcom/android/bluetooth/BluetoothSPP;->access$400(Lcom/broadcom/android/bluetooth/BluetoothSPP;)B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eq v0, p1, :cond_1

    .line 348
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 343
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP$1;->this$0:Lcom/broadcom/android/bluetooth/BluetoothSPP;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/broadcom/android/bluetooth/BluetoothSPP;->access$102(Lcom/broadcom/android/bluetooth/BluetoothSPP;I)I

    .line 344
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP$1;->this$0:Lcom/broadcom/android/bluetooth/BluetoothSPP;

    invoke-static {v0}, Lcom/broadcom/android/bluetooth/BluetoothSPP;->access$600(Lcom/broadcom/android/bluetooth/BluetoothSPP;)Lcom/broadcom/android/bluetooth/IBluetoothSPPEventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP$1;->this$0:Lcom/broadcom/android/bluetooth/BluetoothSPP;

    invoke-static {v0}, Lcom/broadcom/android/bluetooth/BluetoothSPP;->access$600(Lcom/broadcom/android/bluetooth/BluetoothSPP;)Lcom/broadcom/android/bluetooth/IBluetoothSPPEventHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/broadcom/android/bluetooth/IBluetoothSPPEventHandler;->onSppServerPortEnabled(B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 340
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
