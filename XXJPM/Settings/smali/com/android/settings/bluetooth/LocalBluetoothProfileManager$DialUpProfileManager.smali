.class Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$DialUpProfileManager;
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
    name = "DialUpProfileManager"
.end annotation


# static fields
.field protected static mDUNProxy:Lcom/broadcom/bt/service/dun/BluetoothDUN;


# instance fields
.field protected ctx:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 996
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$DialUpProfileManager;->mDUNProxy:Lcom/broadcom/bt/service/dun/BluetoothDUN;

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/bluetooth/LocalBluetoothManager;)V
    .locals 1
    .parameter "localManager"

    .prologue
    .line 999
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;-><init>(Lcom/android/settings/bluetooth/LocalBluetoothManager;)V

    .line 1000
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$DialUpProfileManager;->ctx:Landroid/content/Context;

    .line 1001
    invoke-direct {p0}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$DialUpProfileManager;->setProxy()V

    .line 1002
    return-void
.end method

.method private setProxy()V
    .locals 2

    .prologue
    .line 1005
    sget-object v0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$DialUpProfileManager;->mDUNProxy:Lcom/broadcom/bt/service/dun/BluetoothDUN;

    if-nez v0, :cond_0

    .line 1006
    const-string v0, "bluetooth_dun"

    iget-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$DialUpProfileManager;->ctx:Landroid/content/Context;

    invoke-static {v0, v1, p0}, Lcom/broadcom/bt/service/framework/BluetoothProxyManager;->getProxy(Ljava/lang/String;Landroid/content/Context;Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;)Z

    .line 1007
    :cond_0
    return-void
.end method


# virtual methods
.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .parameter "device"

    .prologue
    .line 1034
    const/4 v0, 0x0

    return v0
.end method

.method public convertState(I)I
    .locals 1
    .parameter "dunState"

    .prologue
    .line 1097
    packed-switch p1, :pswitch_data_0

    .line 1103
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1099
    :pswitch_0
    const/4 v0, 0x2

    goto :goto_0

    .line 1101
    :pswitch_1
    const/4 v0, 0x4

    goto :goto_0

    .line 1097
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
    .line 1039
    sget-object v0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$DialUpProfileManager;->mDUNProxy:Lcom/broadcom/bt/service/dun/BluetoothDUN;

    if-eqz v0, :cond_0

    .line 1040
    sget-object v0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$DialUpProfileManager;->mDUNProxy:Lcom/broadcom/bt/service/dun/BluetoothDUN;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/dun/BluetoothDUN;->closeDunServer()V

    .line 1041
    const/4 v0, 0x1

    .line 1046
    :goto_0
    return v0

    .line 1044
    :cond_0
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "DUN disconnect: mDUNProxy is NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    invoke-direct {p0}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$DialUpProfileManager;->setProxy()V

    .line 1046
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
    .line 1015
    const/4 v1, 0x0

    .line 1016
    .local v1, devices:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    const/4 v0, 0x0

    .line 1018
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    sget-object v2, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$DialUpProfileManager;->mDUNProxy:Lcom/broadcom/bt/service/dun/BluetoothDUN;

    if-eqz v2, :cond_1

    .line 1019
    sget-object v2, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$DialUpProfileManager;->mDUNProxy:Lcom/broadcom/bt/service/dun/BluetoothDUN;

    invoke-virtual {v2}, Lcom/broadcom/bt/service/dun/BluetoothDUN;->getConnectedDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 1025
    :goto_0
    if-eqz v0, :cond_0

    .line 1026
    new-instance v1, Ljava/util/HashSet;

    .end local v1           #devices:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1027
    .restart local v1       #devices:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1029
    :cond_0
    return-object v1

    .line 1021
    :cond_1
    const-string v2, "LocalBluetoothProfileManager"

    const-string v3, "DUN getConnectedDevices: mDUNProxy is NULL"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    invoke-direct {p0}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$DialUpProfileManager;->setProxy()V

    goto :goto_0
.end method

.method public getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I
    .locals 3
    .parameter "device"

    .prologue
    .line 1056
    const/4 v0, 0x0

    .line 1058
    .local v0, mdevice:Landroid/bluetooth/BluetoothDevice;
    sget-object v1, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$DialUpProfileManager;->mDUNProxy:Lcom/broadcom/bt/service/dun/BluetoothDUN;

    if-eqz v1, :cond_0

    .line 1059
    sget-object v1, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$DialUpProfileManager;->mDUNProxy:Lcom/broadcom/bt/service/dun/BluetoothDUN;

    invoke-virtual {v1}, Lcom/broadcom/bt/service/dun/BluetoothDUN;->getConnectedDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 1066
    :goto_0
    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    :goto_1
    return v1

    .line 1062
    :cond_0
    const-string v1, "LocalBluetoothProfileManager"

    const-string v2, "DUN getConnectionStatus: mDUNProxy is NULL"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    invoke-direct {p0}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$DialUpProfileManager;->setProxy()V

    goto :goto_0

    .line 1066
    :cond_1
    const/4 v1, 0x4

    goto :goto_1
.end method

.method public getPreferred(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .parameter "device"

    .prologue
    .line 1092
    const/4 v0, -0x1

    return v0
.end method

.method public getSummary(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .parameter "device"

    .prologue
    .line 1073
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$DialUpProfileManager;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 1074
    .local v0, connectionStatus:I
    invoke-static {v0}, Lcom/android/settings/bluetooth/SettingsBtStatus;->isConnectionStatusConnected(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1075
    const v1, 0x7f090595

    .line 1077
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
    .line 1083
    const/4 v0, 0x0

    return v0
.end method

.method public onProxyAvailable(Ljava/lang/Object;)V
    .locals 0
    .parameter "proxyObject"

    .prologue
    .line 1010
    check-cast p1, Lcom/broadcom/bt/service/dun/BluetoothDUN;

    .end local p1
    sput-object p1, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$DialUpProfileManager;->mDUNProxy:Lcom/broadcom/bt/service/dun/BluetoothDUN;

    .line 1011
    return-void
.end method

.method public setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 0
    .parameter "device"
    .parameter "preferred"

    .prologue
    .line 1088
    return-void
.end method

.method public virtualUnplug(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .parameter "device"

    .prologue
    .line 1051
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$DialUpProfileManager;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method
