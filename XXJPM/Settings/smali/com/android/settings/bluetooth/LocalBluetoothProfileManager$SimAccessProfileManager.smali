.class Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$SimAccessProfileManager;
.super Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
.source "LocalBluetoothProfileManager.java"

# interfaces
.implements Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;
.implements Lcom/broadcom/bt/service/sap/IBluetoothSAPEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimAccessProfileManager"
.end annotation


# static fields
.field protected static address:Ljava/lang/String;

.field protected static mSAPProxy:Lcom/broadcom/bt/service/sap/BluetoothSAP;


# instance fields
.field protected ctx:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 762
    sput-object v0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$SimAccessProfileManager;->mSAPProxy:Lcom/broadcom/bt/service/sap/BluetoothSAP;

    .line 763
    sput-object v0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$SimAccessProfileManager;->address:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/bluetooth/LocalBluetoothManager;)V
    .locals 1
    .parameter "localManager"

    .prologue
    .line 766
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;-><init>(Lcom/android/settings/bluetooth/LocalBluetoothManager;)V

    .line 767
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$SimAccessProfileManager;->ctx:Landroid/content/Context;

    .line 768
    invoke-direct {p0}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$SimAccessProfileManager;->setProxy()V

    .line 769
    return-void
.end method

.method private setProxy()V
    .locals 2

    .prologue
    .line 772
    sget-object v0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$SimAccessProfileManager;->mSAPProxy:Lcom/broadcom/bt/service/sap/BluetoothSAP;

    if-nez v0, :cond_0

    .line 773
    const-string v0, "bluetooth_sap"

    iget-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$SimAccessProfileManager;->ctx:Landroid/content/Context;

    invoke-static {v0, v1, p0}, Lcom/broadcom/bt/service/framework/BluetoothProxyManager;->getProxy(Ljava/lang/String;Landroid/content/Context;Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;)Z

    .line 774
    :cond_0
    return-void
.end method


# virtual methods
.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .parameter "device"

    .prologue
    .line 810
    const/4 v0, 0x0

    return v0
.end method

.method public convertState(I)I
    .locals 1
    .parameter "sapState"

    .prologue
    .line 864
    packed-switch p1, :pswitch_data_0

    .line 870
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 866
    :pswitch_0
    const/4 v0, 0x2

    goto :goto_0

    .line 868
    :pswitch_1
    const/4 v0, 0x4

    goto :goto_0

    .line 864
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .parameter "device"

    .prologue
    const/4 v2, 0x0

    .line 815
    sget-object v0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$SimAccessProfileManager;->mSAPProxy:Lcom/broadcom/bt/service/sap/BluetoothSAP;

    if-eqz v0, :cond_0

    .line 816
    sget-object v0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$SimAccessProfileManager;->mSAPProxy:Lcom/broadcom/bt/service/sap/BluetoothSAP;

    invoke-virtual {v0, v2}, Lcom/broadcom/bt/service/sap/BluetoothSAP;->disconnect(B)V

    .line 817
    const/4 v0, 0x1

    .line 822
    :goto_0
    return v0

    .line 820
    :cond_0
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "disconnect: mSAPProxy is NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    invoke-direct {p0}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$SimAccessProfileManager;->setProxy()V

    move v0, v2

    .line 822
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
    .line 795
    const/4 v1, 0x0

    .line 796
    .local v1, devices:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    const/4 v0, 0x0

    .line 798
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    sget-object v2, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$SimAccessProfileManager;->address:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 799
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    sget-object v3, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$SimAccessProfileManager;->address:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 801
    :cond_0
    if-eqz v0, :cond_1

    .line 802
    new-instance v1, Ljava/util/HashSet;

    .end local v1           #devices:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 803
    .restart local v1       #devices:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 805
    :cond_1
    return-object v1
.end method

.method public getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .parameter "device"

    .prologue
    .line 833
    sget-object v0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$SimAccessProfileManager;->address:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$SimAccessProfileManager;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public getPreferred(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .parameter "device"

    .prologue
    .line 859
    const/4 v0, -0x1

    return v0
.end method

.method public getSummary(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .parameter "device"

    .prologue
    .line 840
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$SimAccessProfileManager;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 841
    .local v0, connectionStatus:I
    invoke-static {v0}, Lcom/android/settings/bluetooth/SettingsBtStatus;->isConnectionStatusConnected(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 842
    const v1, 0x7f090593

    .line 844
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
    .line 850
    const/4 v0, 0x0

    return v0
.end method

.method public onConnected(Ljava/lang/String;)V
    .locals 3
    .parameter "addr"

    .prologue
    .line 777
    const-string v0, "LocalBluetoothProfileManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    sput-object p1, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$SimAccessProfileManager;->address:Ljava/lang/String;

    .line 779
    return-void
.end method

.method public onDisconnected()V
    .locals 2

    .prologue
    .line 782
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "onDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$SimAccessProfileManager;->address:Ljava/lang/String;

    .line 784
    return-void
.end method

.method public onProxyAvailable(Ljava/lang/Object;)V
    .locals 1
    .parameter "proxyObject"

    .prologue
    .line 787
    check-cast p1, Lcom/broadcom/bt/service/sap/BluetoothSAP;

    .end local p1
    sput-object p1, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$SimAccessProfileManager;->mSAPProxy:Lcom/broadcom/bt/service/sap/BluetoothSAP;

    .line 788
    sget-object v0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$SimAccessProfileManager;->mSAPProxy:Lcom/broadcom/bt/service/sap/BluetoothSAP;

    if-eqz v0, :cond_0

    .line 789
    sget-object v0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$SimAccessProfileManager;->mSAPProxy:Lcom/broadcom/bt/service/sap/BluetoothSAP;

    invoke-virtual {v0, p0}, Lcom/broadcom/bt/service/sap/BluetoothSAP;->registerEventHandler(Lcom/broadcom/bt/service/sap/IBluetoothSAPEventHandler;)V

    .line 791
    :cond_0
    return-void
.end method

.method public setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 0
    .parameter "device"
    .parameter "preferred"

    .prologue
    .line 855
    return-void
.end method

.method public virtualUnplug(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .parameter "device"

    .prologue
    .line 827
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$SimAccessProfileManager;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method
