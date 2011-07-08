.class public Lcom/broadcom/bt/service/dun/BluetoothDUN;
.super Lcom/broadcom/bt/service/framework/BaseProxy;
.source "BluetoothDUN.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "BluetoothDUN"


# instance fields
.field private final mService:Lcom/broadcom/bt/service/dun/IBluetoothDUN;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/broadcom/bt/service/dun/IBluetoothDUN;Landroid/content/ServiceConnection;)V
    .locals 0
    .parameter "ctx"
    .parameter "service"
    .parameter "appServiceConn"

    .prologue
    .line 66
    invoke-direct {p0, p1, p3}, Lcom/broadcom/bt/service/framework/BaseProxy;-><init>(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    .line 67
    iput-object p2, p0, Lcom/broadcom/bt/service/dun/BluetoothDUN;->mService:Lcom/broadcom/bt/service/dun/IBluetoothDUN;

    .line 68
    return-void
.end method

.method public constructor <init>(Lcom/broadcom/bt/service/dun/IBluetoothDUN;)V
    .locals 0
    .parameter "service"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/broadcom/bt/service/dun/BluetoothDUN;->mService:Lcom/broadcom/bt/service/dun/IBluetoothDUN;

    .line 75
    return-void
.end method


# virtual methods
.method public closeDunServer()V
    .locals 3

    .prologue
    .line 118
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/dun/BluetoothDUN;->mService:Lcom/broadcom/bt/service/dun/IBluetoothDUN;

    invoke-interface {v1}, Lcom/broadcom/bt/service/dun/IBluetoothDUN;->closeDunServer()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :goto_0
    return-void

    .line 119
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 120
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothDUN"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 83
    invoke-super {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;->finalize()V

    .line 84
    return-void
.end method

.method public getConnectedDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 3

    .prologue
    .line 109
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/dun/BluetoothDUN;->mService:Lcom/broadcom/bt/service/dun/IBluetoothDUN;

    invoke-interface {v1}, Lcom/broadcom/bt/service/dun/IBluetoothDUN;->getConnectedDevice()Landroid/bluetooth/BluetoothDevice;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 112
    :goto_0
    return-object v1

    .line 110
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 111
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothDUN"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 112
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public registerCallback(Lcom/broadcom/bt/service/dun/IBluetoothDUNCallback;)V
    .locals 3
    .parameter "cb"

    .prologue
    .line 88
    iget-object v1, p0, Lcom/broadcom/bt/service/dun/BluetoothDUN;->mService:Lcom/broadcom/bt/service/dun/IBluetoothDUN;

    if-eqz v1, :cond_0

    .line 90
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/dun/BluetoothDUN;->mService:Lcom/broadcom/bt/service/dun/IBluetoothDUN;

    invoke-interface {v1, p1}, Lcom/broadcom/bt/service/dun/IBluetoothDUN;->registerCallback(Lcom/broadcom/bt/service/dun/IBluetoothDUNCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 91
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 92
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothDUN"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public requiresAccessProcessing()Z
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public unregisterCallback(Lcom/broadcom/bt/service/dun/IBluetoothDUNCallback;)V
    .locals 3
    .parameter "cb"

    .prologue
    .line 98
    iget-object v1, p0, Lcom/broadcom/bt/service/dun/BluetoothDUN;->mService:Lcom/broadcom/bt/service/dun/IBluetoothDUN;

    if-eqz v1, :cond_0

    .line 100
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/dun/BluetoothDUN;->mService:Lcom/broadcom/bt/service/dun/IBluetoothDUN;

    invoke-interface {v1, p1}, Lcom/broadcom/bt/service/dun/IBluetoothDUN;->unregisterCallback(Lcom/broadcom/bt/service/dun/IBluetoothDUNCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 101
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 102
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothDUN"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
