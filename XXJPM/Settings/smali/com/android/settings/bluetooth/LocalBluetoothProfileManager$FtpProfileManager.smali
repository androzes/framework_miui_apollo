.class Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$FtpProfileManager;
.super Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
.source "LocalBluetoothProfileManager.java"

# interfaces
.implements Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FtpProfileManager"
.end annotation


# static fields
.field protected static mFTPProxy:Lcom/broadcom/bt/service/ftp/BluetoothFTP;


# instance fields
.field protected ctx:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 881
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$FtpProfileManager;->mFTPProxy:Lcom/broadcom/bt/service/ftp/BluetoothFTP;

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/bluetooth/LocalBluetoothManager;)V
    .locals 1
    .parameter "localManager"

    .prologue
    .line 884
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;-><init>(Lcom/android/settings/bluetooth/LocalBluetoothManager;)V

    .line 885
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$FtpProfileManager;->ctx:Landroid/content/Context;

    .line 886
    invoke-direct {p0}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$FtpProfileManager;->setProxy()V

    .line 887
    return-void
.end method

.method private setProxy()V
    .locals 2

    .prologue
    .line 890
    sget-object v0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$FtpProfileManager;->mFTPProxy:Lcom/broadcom/bt/service/ftp/BluetoothFTP;

    if-nez v0, :cond_0

    .line 891
    const-string v0, "bluetooth_ftp"

    iget-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$FtpProfileManager;->ctx:Landroid/content/Context;

    invoke-static {v0, v1, p0}, Lcom/broadcom/bt/service/framework/BluetoothProxyManager;->getProxy(Ljava/lang/String;Landroid/content/Context;Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;)Z

    .line 892
    :cond_0
    return-void
.end method


# virtual methods
.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .parameter "device"

    .prologue
    .line 919
    const/4 v0, 0x0

    return v0
.end method

.method public convertState(I)I
    .locals 1
    .parameter "ftpState"

    .prologue
    .line 982
    packed-switch p1, :pswitch_data_0

    .line 988
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 984
    :pswitch_0
    const/4 v0, 0x2

    goto :goto_0

    .line 986
    :pswitch_1
    const/4 v0, 0x4

    goto :goto_0

    .line 982
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .parameter "device"

    .prologue
    .line 924
    sget-object v0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$FtpProfileManager;->mFTPProxy:Lcom/broadcom/bt/service/ftp/BluetoothFTP;

    if-eqz v0, :cond_0

    .line 925
    sget-object v0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$FtpProfileManager;->mFTPProxy:Lcom/broadcom/bt/service/ftp/BluetoothFTP;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/ftp/BluetoothFTP;->closeFtpServer()V

    .line 926
    const/4 v0, 0x1

    .line 931
    :goto_0
    return v0

    .line 929
    :cond_0
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "FTS disconnect: mFTPProxy is NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    invoke-direct {p0}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$FtpProfileManager;->setProxy()V

    .line 931
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getConnectedDevices()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 900
    const/4 v1, 0x0

    .line 901
    .local v1, devices:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    const/4 v0, 0x0

    .line 903
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    sget-object v2, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$FtpProfileManager;->mFTPProxy:Lcom/broadcom/bt/service/ftp/BluetoothFTP;

    if-eqz v2, :cond_1

    .line 904
    sget-object v2, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$FtpProfileManager;->mFTPProxy:Lcom/broadcom/bt/service/ftp/BluetoothFTP;

    invoke-virtual {v2}, Lcom/broadcom/bt/service/ftp/BluetoothFTP;->getConnectedDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 910
    :goto_0
    if-eqz v0, :cond_0

    .line 911
    new-instance v1, Ljava/util/HashSet;

    .end local v1           #devices:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 912
    .restart local v1       #devices:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 914
    :cond_0
    return-object v1

    .line 906
    :cond_1
    const-string v2, "LocalBluetoothProfileManager"

    const-string v3, "FTS getConnectedDevices: mFTPProxy is NULL"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    invoke-direct {p0}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$FtpProfileManager;->setProxy()V

    goto :goto_0
.end method

.method public getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I
    .locals 3
    .parameter "device"

    .prologue
    .line 941
    const/4 v0, 0x0

    .line 943
    .local v0, mdevice:Landroid/bluetooth/BluetoothDevice;
    sget-object v1, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$FtpProfileManager;->mFTPProxy:Lcom/broadcom/bt/service/ftp/BluetoothFTP;

    if-eqz v1, :cond_0

    .line 944
    sget-object v1, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$FtpProfileManager;->mFTPProxy:Lcom/broadcom/bt/service/ftp/BluetoothFTP;

    invoke-virtual {v1}, Lcom/broadcom/bt/service/ftp/BluetoothFTP;->getConnectedDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 951
    :goto_0
    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    :goto_1
    return v1

    .line 947
    :cond_0
    const-string v1, "LocalBluetoothProfileManager"

    const-string v2, "FTS getConnectionStatus: mFTPProxy is NULL"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    invoke-direct {p0}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$FtpProfileManager;->setProxy()V

    goto :goto_0

    .line 951
    :cond_1
    const/4 v1, 0x4

    goto :goto_1
.end method

.method public getPreferred(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .parameter "device"

    .prologue
    .line 977
    const/4 v0, -0x1

    return v0
.end method

.method public getSummary(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .parameter "device"

    .prologue
    .line 958
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$FtpProfileManager;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 959
    .local v0, connectionStatus:I
    invoke-static {v0}, Lcom/android/settings/bluetooth/SettingsBtStatus;->isConnectionStatusConnected(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 960
    const v1, 0x7f090594

    .line 962
    :goto_0
    return v1

    :cond_0
    invoke-static {v0}, Lcom/android/settings/bluetooth/SettingsBtStatus;->getConnectionStatusSummary(I)I

    move-result v1

    goto :goto_0
.end method

.method public isPreferred(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .parameter "device"

    .prologue
    .line 968
    const/4 v0, 0x0

    return v0
.end method

.method public onProxyAvailable(Ljava/lang/Object;)V
    .locals 0
    .parameter "proxyObject"

    .prologue
    .line 895
    check-cast p1, Lcom/broadcom/bt/service/ftp/BluetoothFTP;

    .end local p1
    sput-object p1, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$FtpProfileManager;->mFTPProxy:Lcom/broadcom/bt/service/ftp/BluetoothFTP;

    .line 896
    return-void
.end method

.method public setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 0
    .parameter "device"
    .parameter "preferred"

    .prologue
    .line 973
    return-void
.end method

.method public virtualUnplug(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .parameter "device"

    .prologue
    .line 936
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$FtpProfileManager;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method
