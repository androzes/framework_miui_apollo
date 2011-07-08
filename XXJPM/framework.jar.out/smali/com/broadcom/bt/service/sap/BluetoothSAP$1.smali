.class Lcom/broadcom/bt/service/sap/BluetoothSAP$1;
.super Lcom/broadcom/bt/service/sap/IBluetoothSAPCallback$Stub;
.source "BluetoothSAP.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/sap/BluetoothSAP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/service/sap/BluetoothSAP;


# direct methods
.method constructor <init>(Lcom/broadcom/bt/service/sap/BluetoothSAP;)V
    .locals 0
    .parameter

    .prologue
    .line 217
    iput-object p1, p0, Lcom/broadcom/bt/service/sap/BluetoothSAP$1;->this$0:Lcom/broadcom/bt/service/sap/BluetoothSAP;

    invoke-direct {p0}, Lcom/broadcom/bt/service/sap/IBluetoothSAPCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onConnected(Ljava/lang/String;)V
    .locals 1
    .parameter "address"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 212
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/sap/BluetoothSAP$1;->this$0:Lcom/broadcom/bt/service/sap/BluetoothSAP;

    invoke-static {v0}, Lcom/broadcom/bt/service/sap/BluetoothSAP;->access$000(Lcom/broadcom/bt/service/sap/BluetoothSAP;)Lcom/broadcom/bt/service/sap/IBluetoothSAPEventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/broadcom/bt/service/sap/BluetoothSAP$1;->this$0:Lcom/broadcom/bt/service/sap/BluetoothSAP;

    invoke-static {v0}, Lcom/broadcom/bt/service/sap/BluetoothSAP;->access$000(Lcom/broadcom/bt/service/sap/BluetoothSAP;)Lcom/broadcom/bt/service/sap/IBluetoothSAPEventHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/broadcom/bt/service/sap/IBluetoothSAPEventHandler;->onConnected(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    :cond_0
    monitor-exit p0

    return-void

    .line 212
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onDisconnected()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 222
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/sap/BluetoothSAP$1;->this$0:Lcom/broadcom/bt/service/sap/BluetoothSAP;

    invoke-static {v0}, Lcom/broadcom/bt/service/sap/BluetoothSAP;->access$000(Lcom/broadcom/bt/service/sap/BluetoothSAP;)Lcom/broadcom/bt/service/sap/IBluetoothSAPEventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/broadcom/bt/service/sap/BluetoothSAP$1;->this$0:Lcom/broadcom/bt/service/sap/BluetoothSAP;

    invoke-static {v0}, Lcom/broadcom/bt/service/sap/BluetoothSAP;->access$000(Lcom/broadcom/bt/service/sap/BluetoothSAP;)Lcom/broadcom/bt/service/sap/IBluetoothSAPEventHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/broadcom/bt/service/sap/IBluetoothSAPEventHandler;->onDisconnected()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    :cond_0
    monitor-exit p0

    return-void

    .line 222
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
