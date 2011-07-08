.class public Lcom/broadcom/android/bluetooth/BluetoothAccessResponse;
.super Ljava/lang/Object;
.source "BluetoothAccessResponse.java"

# interfaces
.implements Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "BluetoothAccessResponse"


# instance fields
.field private mAllow:Z

.field private mFileName:Ljava/lang/String;

.field private mOpCode:B

.field private mRequestedServiceID:B


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string v0, "BluetoothAccessResponse"

    const-string v1, "BluetoothAccessResponse Constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    return-void
.end method


# virtual methods
.method public AccessRequestResponse(Landroid/content/Context;Landroid/content/Intent;Z)V
    .locals 7
    .parameter "ctx"
    .parameter "intent"
    .parameter "allow"

    .prologue
    const/4 v6, 0x0

    .line 51
    const-string v3, "broadcom.android.bluetooth.intent.BLUETOOTH_SERVICE_ID"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getByteExtra(Ljava/lang/String;B)B

    move-result v3

    iput-byte v3, p0, Lcom/broadcom/android/bluetooth/BluetoothAccessResponse;->mRequestedServiceID:B

    .line 53
    const-string v3, "broadcom.android.bluetooth.intent.SERVICE_OPER_CODE"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getByteExtra(Ljava/lang/String;B)B

    move-result v3

    iput-byte v3, p0, Lcom/broadcom/android/bluetooth/BluetoothAccessResponse;->mOpCode:B

    .line 54
    const-string v3, "broadcom.android.bluetooth.intent.FILE_NAME"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/broadcom/android/bluetooth/BluetoothAccessResponse;->mFileName:Ljava/lang/String;

    .line 55
    iput-boolean p3, p0, Lcom/broadcom/android/bluetooth/BluetoothAccessResponse;->mAllow:Z

    .line 57
    const/4 v2, 0x0

    .line 70
    .local v2, serviceName:Ljava/lang/String;
    iget-byte v3, p0, Lcom/broadcom/android/bluetooth/BluetoothAccessResponse;->mRequestedServiceID:B

    packed-switch v3, :pswitch_data_0

    .line 82
    :goto_0
    invoke-static {v2}, Lcom/broadcom/bt/service/framework/BluetoothProxyManager;->getServiceType(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    move v0, v3

    .line 86
    .local v0, isBluetoothAppService:Z
    :goto_1
    if-eqz v2, :cond_0

    .line 87
    if-eqz v0, :cond_2

    .line 90
    invoke-static {v2, p1, p0}, Lcom/broadcom/bt/service/framework/BluetoothProxyManager;->getProxy(Ljava/lang/String;Landroid/content/Context;Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;)Z

    .line 105
    :cond_0
    :goto_2
    return-void

    .line 72
    .end local v0           #isBluetoothAppService:Z
    :pswitch_0
    const-string v2, "bluetooth_opp_service"

    .line 73
    goto :goto_0

    .line 75
    :pswitch_1
    const-string v2, "bluetooth_pbs"

    .line 76
    goto :goto_0

    .line 78
    :pswitch_2
    const-string v2, "bluetooth_ftp"

    goto :goto_0

    :cond_1
    move v0, v6

    .line 82
    goto :goto_1

    .line 94
    .restart local v0       #isBluetoothAppService:Z
    :cond_2
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/broadcom/bt/service/framework/BaseProxy;

    .line 95
    .local v1, proxy:Lcom/broadcom/bt/service/framework/BaseProxy;
    invoke-virtual {v1}, Lcom/broadcom/bt/service/framework/BaseProxy;->requiresAccessProcessing()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 96
    iget-byte v3, p0, Lcom/broadcom/android/bluetooth/BluetoothAccessResponse;->mOpCode:B

    iget-boolean v4, p0, Lcom/broadcom/android/bluetooth/BluetoothAccessResponse;->mAllow:Z

    iget-object v5, p0, Lcom/broadcom/android/bluetooth/BluetoothAccessResponse;->mFileName:Ljava/lang/String;

    invoke-virtual {v1, v3, v4, v5}, Lcom/broadcom/bt/service/framework/BaseProxy;->setAccess(IZLjava/lang/Object;)V

    .line 98
    :cond_3
    iput-byte v6, p0, Lcom/broadcom/android/bluetooth/BluetoothAccessResponse;->mRequestedServiceID:B

    .line 99
    iput-byte v6, p0, Lcom/broadcom/android/bluetooth/BluetoothAccessResponse;->mOpCode:B

    .line 100
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/broadcom/android/bluetooth/BluetoothAccessResponse;->mFileName:Ljava/lang/String;

    .line 101
    iput-boolean v6, p0, Lcom/broadcom/android/bluetooth/BluetoothAccessResponse;->mAllow:Z

    .line 102
    invoke-virtual {v1}, Lcom/broadcom/bt/service/framework/BaseProxy;->finish()V

    goto :goto_2

    .line 70
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onProxyAvailable(Ljava/lang/Object;)V
    .locals 6
    .parameter "proxyObject"

    .prologue
    const/4 v5, 0x0

    .line 34
    move-object v0, p1

    check-cast v0, Lcom/broadcom/bt/service/framework/BaseProxy;

    move-object v1, v0

    .line 39
    .local v1, proxy:Lcom/broadcom/bt/service/framework/BaseProxy;
    invoke-virtual {v1}, Lcom/broadcom/bt/service/framework/BaseProxy;->requiresAccessProcessing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 40
    iget-byte v2, p0, Lcom/broadcom/android/bluetooth/BluetoothAccessResponse;->mOpCode:B

    iget-boolean v3, p0, Lcom/broadcom/android/bluetooth/BluetoothAccessResponse;->mAllow:Z

    iget-object v4, p0, Lcom/broadcom/android/bluetooth/BluetoothAccessResponse;->mFileName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/broadcom/bt/service/framework/BaseProxy;->setAccess(IZLjava/lang/Object;)V

    .line 42
    :cond_0
    iput-byte v5, p0, Lcom/broadcom/android/bluetooth/BluetoothAccessResponse;->mRequestedServiceID:B

    .line 43
    iput-byte v5, p0, Lcom/broadcom/android/bluetooth/BluetoothAccessResponse;->mOpCode:B

    .line 44
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/broadcom/android/bluetooth/BluetoothAccessResponse;->mFileName:Ljava/lang/String;

    .line 45
    iput-boolean v5, p0, Lcom/broadcom/android/bluetooth/BluetoothAccessResponse;->mAllow:Z

    .line 46
    invoke-virtual {v1}, Lcom/broadcom/bt/service/framework/BaseProxy;->finish()V

    .line 47
    return-void
.end method
