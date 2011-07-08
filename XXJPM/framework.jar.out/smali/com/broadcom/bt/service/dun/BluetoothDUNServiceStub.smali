.class public Lcom/broadcom/bt/service/dun/BluetoothDUNServiceStub;
.super Lcom/broadcom/bt/service/dun/IBluetoothDUN$Stub;
.source "BluetoothDUNServiceStub.java"

# interfaces
.implements Lcom/broadcom/bt/service/framework/IServiceStateListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothDUNServiceStub"


# instance fields
.field private final mContext:Landroid/content/Context;

.field mSvc:Lcom/broadcom/bt/service/dun/BluetoothDUNService;

.field private mSvcStarted:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/broadcom/bt/service/dun/IBluetoothDUN$Stub;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNServiceStub;->mSvcStarted:Z

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNServiceStub;->mSvc:Lcom/broadcom/bt/service/dun/BluetoothDUNService;

    .line 70
    iput-object p1, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNServiceStub;->mContext:Landroid/content/Context;

    .line 71
    const-string v0, "bluetooth_dun"

    invoke-static {v0}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->getService(Ljava/lang/String;)Lcom/broadcom/bt/service/framework/IBtService;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/dun/BluetoothDUNService;

    iput-object v0, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNServiceStub;->mSvc:Lcom/broadcom/bt/service/dun/BluetoothDUNService;

    .line 72
    iget-object v0, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNServiceStub;->mSvc:Lcom/broadcom/bt/service/dun/BluetoothDUNService;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNServiceStub;->mSvc:Lcom/broadcom/bt/service/dun/BluetoothDUNService;

    invoke-virtual {v0, p0}, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->setStateListener(Lcom/broadcom/bt/service/framework/IServiceStateListener;)V

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNServiceStub;->mSvcStarted:Z

    .line 76
    :cond_0
    return-void
.end method


# virtual methods
.method public closeDunServer()V
    .locals 1

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNServiceStub;->mSvcStarted:Z

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNServiceStub;->mSvc:Lcom/broadcom/bt/service/dun/BluetoothDUNService;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->closeDunServer()V

    .line 135
    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/broadcom/bt/service/dun/BluetoothDUNServiceStub;->finish()V

    .line 96
    return-void
.end method

.method public declared-synchronized finish()V
    .locals 1

    .prologue
    .line 87
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNServiceStub;->mSvc:Lcom/broadcom/bt/service/dun/BluetoothDUNService;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNServiceStub;->mSvc:Lcom/broadcom/bt/service/dun/BluetoothDUNService;

    invoke-virtual {v0, p0}, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->removeStateListener(Lcom/broadcom/bt/service/framework/IServiceStateListener;)V

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNServiceStub;->mSvc:Lcom/broadcom/bt/service/dun/BluetoothDUNService;

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNServiceStub;->mSvcStarted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    :cond_0
    monitor-exit p0

    return-void

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAllPortStatus()Landroid/os/Bundle;
    .locals 7

    .prologue
    .line 111
    new-instance v0, Landroid/os/Bundle;

    const/4 v5, 0x3

    invoke-direct {v0, v5}, Landroid/os/Bundle;-><init>(I)V

    .line 112
    .local v0, b:Landroid/os/Bundle;
    iget-object v5, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNServiceStub;->mSvc:Lcom/broadcom/bt/service/dun/BluetoothDUNService;

    invoke-virtual {v5}, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->getAllPortStatus()Ljava/util/LinkedHashMap;

    move-result-object v3

    .line 113
    .local v3, status:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/Byte;Ljava/lang/Byte;>;"
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 114
    .local v1, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Byte;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 115
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    .line 116
    .local v2, key:Ljava/lang/Byte;
    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Byte;

    .line 117
    .local v4, val:Ljava/lang/Byte;
    if-eqz v4, :cond_0

    .line 118
    invoke-virtual {v2}, Ljava/lang/Byte;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    goto :goto_0

    .line 121
    .end local v2           #key:Ljava/lang/Byte;
    .end local v4           #val:Ljava/lang/Byte;
    :cond_1
    return-object v0
.end method

.method public getConnectedDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNServiceStub;->mSvcStarted:Z

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNServiceStub;->mSvc:Lcom/broadcom/bt/service/dun/BluetoothDUNService;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->getConnectedDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 128
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNServiceStub;->mSvcStarted:Z

    .line 80
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNServiceStub;->mSvcStarted:Z

    .line 84
    return-void
.end method

.method public registerCallback(Lcom/broadcom/bt/service/dun/IBluetoothDUNCallback;)V
    .locals 1
    .parameter "cb"

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNServiceStub;->mSvcStarted:Z

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNServiceStub;->mSvc:Lcom/broadcom/bt/service/dun/BluetoothDUNService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->registerCallback(Lcom/broadcom/bt/service/dun/IBluetoothDUNCallback;)V

    .line 102
    :cond_0
    return-void
.end method

.method public unregisterCallback(Lcom/broadcom/bt/service/dun/IBluetoothDUNCallback;)V
    .locals 1
    .parameter "cb"

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNServiceStub;->mSvcStarted:Z

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNServiceStub;->mSvc:Lcom/broadcom/bt/service/dun/BluetoothDUNService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->unregisterCallback(Lcom/broadcom/bt/service/dun/IBluetoothDUNCallback;)V

    .line 108
    :cond_0
    return-void
.end method
