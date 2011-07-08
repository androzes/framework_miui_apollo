.class Lcom/broadcom/bt/service/opp/BluetoothOPP$1;
.super Lcom/broadcom/bt/service/opp/IOppCallback$Stub;
.source "BluetoothOPP.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/opp/BluetoothOPP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;


# direct methods
.method constructor <init>(Lcom/broadcom/bt/service/opp/BluetoothOPP;)V
    .locals 0
    .parameter

    .prologue
    .line 279
    iput-object p1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$1;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    invoke-direct {p0}, Lcom/broadcom/bt/service/opp/IOppCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onOpCreateVcal(ILjava/lang/String;)V
    .locals 3
    .parameter "status"
    .parameter "filePathName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 281
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$1;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    invoke-static {v0}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$000(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 282
    const-string v0, "BluetoothOPP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOpCreateVcal ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$1;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    invoke-static {v0}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$000(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/broadcom/bt/service/opp/IOppEventHandler;->onOpCreateVcal(ILjava/lang/String;)V

    .line 286
    :cond_0
    return-void
.end method

.method public declared-synchronized onOpOwnerVcardNotSet(Ljava/lang/String;)V
    .locals 3
    .parameter "filePathName"

    .prologue
    .line 261
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$1;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    invoke-static {v0}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$000(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 262
    const-string v0, "BluetoothOPP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOpOwnerVcardNotSet ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$1;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    invoke-static {v0}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$000(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/broadcom/bt/service/opp/IOppEventHandler;->onOpOwnerVcardNotSet(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    :cond_0
    monitor-exit p0

    return-void

    .line 261
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onOpcClose(I)V
    .locals 1
    .parameter "status"

    .prologue
    .line 212
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$1;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    invoke-static {v0}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$000(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$1;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    invoke-static {v0}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$000(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/broadcom/bt/service/opp/IOppEventHandler;->onOpcClose(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    :cond_0
    monitor-exit p0

    return-void

    .line 212
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onOpcEnable()V
    .locals 1

    .prologue
    .line 181
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$1;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    invoke-static {v0}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$000(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$1;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    invoke-static {v0}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$000(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/broadcom/bt/service/opp/IOppEventHandler;->onOpcEnable()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    :cond_0
    monitor-exit p0

    return-void

    .line 181
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onOpcObjectPushed(ILjava/lang/String;)V
    .locals 2
    .parameter "status"
    .parameter "filePathName"

    .prologue
    const-string v0, "BluetoothOPP"

    .line 204
    monitor-enter p0

    :try_start_0
    const-string v0, "BluetoothOPP"

    const-string v1, "onOpcObjectPushed()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$1;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    invoke-static {v0}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$000(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 206
    const-string v0, "BluetoothOPP"

    const-string v1, "onOpcObjectPushed ... ()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$1;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    invoke-static {v0}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$000(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/broadcom/bt/service/opp/IOppEventHandler;->onOpcObjectPushed(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    :cond_0
    monitor-exit p0

    return-void

    .line 204
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onOpcObjectReceived(ILjava/lang/String;)V
    .locals 1
    .parameter "status"
    .parameter "filePathName"

    .prologue
    .line 198
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$1;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    invoke-static {v0}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$000(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$1;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    invoke-static {v0}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$000(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/broadcom/bt/service/opp/IOppEventHandler;->onOpcObjectReceived(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    :cond_0
    monitor-exit p0

    return-void

    .line 198
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onOpcOpen()V
    .locals 1

    .prologue
    .line 186
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$1;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    invoke-static {v0}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$000(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$1;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    invoke-static {v0}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$000(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/broadcom/bt/service/opp/IOppEventHandler;->onOpcOpen()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    :cond_0
    monitor-exit p0

    return-void

    .line 186
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onOpcProgress(II)V
    .locals 1
    .parameter "bytesTransferred"
    .parameter "totalBytes"

    .prologue
    .line 192
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$1;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    invoke-static {v0}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$000(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$1;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    invoke-static {v0}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$000(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/broadcom/bt/service/opp/IOppEventHandler;->onOpcProgress(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    :cond_0
    monitor-exit p0

    return-void

    .line 192
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onOpsAccessRequest(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;I)V
    .locals 7
    .parameter "peerDeviceName"
    .parameter "peerBDAddress"
    .parameter "operation"
    .parameter "format"
    .parameter "filePathName"
    .parameter "totalBytes"

    .prologue
    .line 236
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$1;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    invoke-static {v0}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$000(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$1;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    invoke-static {v0}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$000(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/broadcom/bt/service/opp/IOppEventHandler;->onOpsAccessRequest(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    :cond_0
    monitor-exit p0

    return-void

    .line 236
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onOpsClose()V
    .locals 2

    .prologue
    const-string v0, "BluetoothOPP"

    .line 243
    monitor-enter p0

    :try_start_0
    const-string v0, "BluetoothOPP"

    const-string v1, "onOpsClose()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$1;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    invoke-static {v0}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$000(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 245
    const-string v0, "BluetoothOPP"

    const-string v1, "onOpsClose ... ()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$1;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    invoke-static {v0}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$000(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/broadcom/bt/service/opp/IOppEventHandler;->onOpsClose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    :cond_0
    monitor-exit p0

    return-void

    .line 243
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onOpsObjectReceived(ILjava/lang/String;)V
    .locals 1
    .parameter "format"
    .parameter "filePathName"

    .prologue
    .line 224
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$1;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    invoke-static {v0}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$000(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$1;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    invoke-static {v0}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$000(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/broadcom/bt/service/opp/IOppEventHandler;->onOpsObjectReceived(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    :cond_0
    monitor-exit p0

    return-void

    .line 224
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onOpsOpen()V
    .locals 1

    .prologue
    .line 229
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$1;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    invoke-static {v0}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$000(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$1;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    invoke-static {v0}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$000(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/broadcom/bt/service/opp/IOppEventHandler;->onOpsOpen()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    :cond_0
    monitor-exit p0

    return-void

    .line 229
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onOpsProgress(II)V
    .locals 1
    .parameter "bytesTransferred"
    .parameter "totalBytes"

    .prologue
    .line 218
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$1;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    invoke-static {v0}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$000(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$1;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    invoke-static {v0}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$000(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/broadcom/bt/service/opp/IOppEventHandler;->onOpsProgress(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    :cond_0
    monitor-exit p0

    return-void

    .line 218
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
