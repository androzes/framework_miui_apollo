.class public Lcom/broadcom/bt/service/ftp/BluetoothFTP;
.super Lcom/broadcom/bt/service/framework/BaseProxy;
.source "BluetoothFTP.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "BluetoothFTP"


# instance fields
.field private final mService:Lcom/broadcom/bt/service/ftp/IBluetoothFTP;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/broadcom/bt/service/ftp/IBluetoothFTP;Landroid/content/ServiceConnection;)V
    .locals 0
    .parameter "ctx"
    .parameter "service"
    .parameter "appServiceConn"

    .prologue
    .line 91
    invoke-direct {p0, p1, p3}, Lcom/broadcom/bt/service/framework/BaseProxy;-><init>(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    .line 92
    iput-object p2, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTP;->mService:Lcom/broadcom/bt/service/ftp/IBluetoothFTP;

    .line 93
    return-void
.end method

.method public constructor <init>(Lcom/broadcom/bt/service/ftp/IBluetoothFTP;)V
    .locals 0
    .parameter "service"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;-><init>()V

    .line 101
    iput-object p1, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTP;->mService:Lcom/broadcom/bt/service/ftp/IBluetoothFTP;

    .line 102
    return-void
.end method


# virtual methods
.method public closeFtpServer()V
    .locals 3

    .prologue
    .line 153
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTP;->mService:Lcom/broadcom/bt/service/ftp/IBluetoothFTP;

    invoke-interface {v1}, Lcom/broadcom/bt/service/ftp/IBluetoothFTP;->closeFtpServer()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :goto_0
    return-void

    .line 154
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 155
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothFTP"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 139
    invoke-super {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;->finalize()V

    .line 140
    return-void
.end method

.method public ftpServerAccessRsp(BZLjava/lang/String;)V
    .locals 3
    .parameter "op_code"
    .parameter "access"
    .parameter "filename"

    .prologue
    .line 124
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTP;->mService:Lcom/broadcom/bt/service/ftp/IBluetoothFTP;

    invoke-interface {v1, p1, p2, p3}, Lcom/broadcom/bt/service/ftp/IBluetoothFTP;->ftpServerAccessRsp(BZLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :goto_0
    return-void

    .line 125
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 126
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothFTP"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public ftpServerAuthenRsp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "password"
    .parameter "userId"

    .prologue
    .line 109
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTP;->mService:Lcom/broadcom/bt/service/ftp/IBluetoothFTP;

    invoke-interface {v1, p1, p2}, Lcom/broadcom/bt/service/ftp/IBluetoothFTP;->ftpServerAuthenRsp(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :goto_0
    return-void

    .line 110
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 111
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothFTP"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getConnectedDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 3

    .prologue
    .line 144
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTP;->mService:Lcom/broadcom/bt/service/ftp/IBluetoothFTP;

    invoke-interface {v1}, Lcom/broadcom/bt/service/ftp/IBluetoothFTP;->getConnectedDevice()Landroid/bluetooth/BluetoothDevice;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 147
    :goto_0
    return-object v1

    .line 145
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 146
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothFTP"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 147
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public requiresAccessProcessing()Z
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x1

    return v0
.end method

.method public setAccess(IZLjava/lang/Object;)V
    .locals 1
    .parameter "opCode"
    .parameter "allow"
    .parameter "name"

    .prologue
    .line 135
    int-to-byte v0, p1

    check-cast p3, Ljava/lang/String;

    .end local p3
    invoke-virtual {p0, v0, p2, p3}, Lcom/broadcom/bt/service/ftp/BluetoothFTP;->ftpServerAccessRsp(BZLjava/lang/String;)V

    .line 136
    return-void
.end method
