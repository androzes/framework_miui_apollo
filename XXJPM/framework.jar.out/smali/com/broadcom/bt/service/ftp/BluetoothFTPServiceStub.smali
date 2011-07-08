.class public Lcom/broadcom/bt/service/ftp/BluetoothFTPServiceStub;
.super Lcom/broadcom/bt/service/ftp/IBluetoothFTP$Stub;
.source "BluetoothFTPServiceStub.java"

# interfaces
.implements Lcom/broadcom/bt/service/framework/IServiceStateListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothFTPServiceStub"


# instance fields
.field private final mContext:Landroid/content/Context;

.field mSvc:Lcom/broadcom/bt/service/ftp/BluetoothFTPService;

.field private mSvcStarted:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/broadcom/bt/service/ftp/IBluetoothFTP$Stub;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPServiceStub;->mSvcStarted:Z

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPServiceStub;->mSvc:Lcom/broadcom/bt/service/ftp/BluetoothFTPService;

    .line 66
    iput-object p1, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPServiceStub;->mContext:Landroid/content/Context;

    .line 67
    const-string v0, "bluetooth_ftp"

    invoke-static {v0}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->getService(Ljava/lang/String;)Lcom/broadcom/bt/service/framework/IBtService;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;

    iput-object v0, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPServiceStub;->mSvc:Lcom/broadcom/bt/service/ftp/BluetoothFTPService;

    .line 68
    iget-object v0, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPServiceStub;->mSvc:Lcom/broadcom/bt/service/ftp/BluetoothFTPService;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPServiceStub;->mSvc:Lcom/broadcom/bt/service/ftp/BluetoothFTPService;

    invoke-virtual {v0, p0}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->setStateListener(Lcom/broadcom/bt/service/framework/IServiceStateListener;)V

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPServiceStub;->mSvcStarted:Z

    .line 72
    :cond_0
    return-void
.end method


# virtual methods
.method public closeFtpServer()V
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPServiceStub;->mSvcStarted:Z

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPServiceStub;->mSvc:Lcom/broadcom/bt/service/ftp/BluetoothFTPService;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->closeFtpServer()V

    .line 118
    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/broadcom/bt/service/ftp/BluetoothFTPServiceStub;->finish()V

    .line 92
    return-void
.end method

.method public declared-synchronized finish()V
    .locals 1

    .prologue
    .line 83
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPServiceStub;->mSvc:Lcom/broadcom/bt/service/ftp/BluetoothFTPService;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPServiceStub;->mSvc:Lcom/broadcom/bt/service/ftp/BluetoothFTPService;

    invoke-virtual {v0, p0}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->removeStateListener(Lcom/broadcom/bt/service/framework/IServiceStateListener;)V

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPServiceStub;->mSvc:Lcom/broadcom/bt/service/ftp/BluetoothFTPService;

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPServiceStub;->mSvcStarted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    :cond_0
    monitor-exit p0

    return-void

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized ftpServerAccessRsp(BZLjava/lang/String;)V
    .locals 1
    .parameter "op_code"
    .parameter "access"
    .parameter "fileName"

    .prologue
    .line 102
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPServiceStub;->mSvcStarted:Z

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPServiceStub;->mSvc:Lcom/broadcom/bt/service/ftp/BluetoothFTPService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->ftpServerAccessRsp(BZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    :cond_0
    monitor-exit p0

    return-void

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized ftpServerAuthenRsp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "password"
    .parameter "userId"

    .prologue
    .line 95
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPServiceStub;->mSvcStarted:Z

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPServiceStub;->mSvc:Lcom/broadcom/bt/service/ftp/BluetoothFTPService;

    invoke-virtual {v0, p1, p2}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->ftpServerAuthenRsp(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    :cond_0
    monitor-exit p0

    return-void

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getConnectedDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPServiceStub;->mSvcStarted:Z

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPServiceStub;->mSvc:Lcom/broadcom/bt/service/ftp/BluetoothFTPService;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->getConnectedDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 111
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPServiceStub;->mSvcStarted:Z

    .line 76
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPServiceStub;->mSvcStarted:Z

    .line 80
    return-void
.end method
