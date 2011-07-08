.class public Lcom/broadcom/bt/app/settings/BluetoothSAPDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "BluetoothSAPDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothSAPDialog"


# instance fields
.field protected mSAPProxy:Lcom/broadcom/bt/service/sap/BluetoothSAP;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method private createView()Landroid/view/View;
    .locals 5

    .prologue
    .line 69
    const-string v2, "BluetoothSAPDialog"

    const-string v3, "createView"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-virtual {p0}, Lcom/broadcom/bt/app/settings/BluetoothSAPDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03000d

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 73
    .local v1, view:Landroid/view/View;
    const v2, 0x7f0b0022

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 74
    .local v0, messageView1:Landroid/widget/TextView;
    const v2, 0x7f0905a3

    invoke-virtual {p0, v2}, Lcom/broadcom/bt/app/settings/BluetoothSAPDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    return-object v1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 94
    const-string v0, "BluetoothSAPDialog"

    const-string v1, "onClick"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    packed-switch p2, :pswitch_data_0

    .line 104
    :goto_0
    return-void

    .line 97
    :pswitch_0
    invoke-virtual {p0}, Lcom/broadcom/bt/app/settings/BluetoothSAPDialog;->onDisconnect()V

    goto :goto_0

    .line 101
    :pswitch_1
    invoke-virtual {p0}, Lcom/broadcom/bt/app/settings/BluetoothSAPDialog;->finish()V

    goto :goto_0

    .line 95
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const-string v6, "BluetoothSAPDialog"

    .line 43
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const-string v3, "BluetoothSAPDialog"

    const-string v3, "onCreate"

    invoke-static {v6, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-virtual {p0}, Lcom/broadcom/bt/app/settings/BluetoothSAPDialog;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, action:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/broadcom/bt/app/settings/BluetoothSAPDialog;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "broadcom.android.bluetooth.intent.BLUETOOTH_SERVICE_ID"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getByteExtra(Ljava/lang/String;B)B

    move-result v2

    .line 49
    .local v2, service_id:B
    const-string v3, "broadcom.android.bluetooth.intent.action.BT_SERVICE_CONNECTION"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    .line 50
    :cond_0
    const-string v3, "BluetoothSAPDialog"

    const-string v3, "Not BT_SERVICE_CONNECTION_ACTION, BLUETOOTH_SAP_SERVICE_ID"

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-virtual {p0}, Lcom/broadcom/bt/app/settings/BluetoothSAPDialog;->finish()V

    .line 54
    :cond_1
    iget-object v1, p0, Lcom/broadcom/bt/app/settings/BluetoothSAPDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 55
    .local v1, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v3, 0x10801ce

    iput v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 57
    const v3, 0x7f0905a1

    invoke-virtual {p0, v3}, Lcom/broadcom/bt/app/settings/BluetoothSAPDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 59
    invoke-direct {p0}, Lcom/broadcom/bt/app/settings/BluetoothSAPDialog;->createView()Landroid/view/View;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 61
    const v3, 0x7f09057e

    invoke-virtual {p0, v3}, Lcom/broadcom/bt/app/settings/BluetoothSAPDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 62
    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 63
    const v3, 0x7f09057f

    invoke-virtual {p0, v3}, Lcom/broadcom/bt/app/settings/BluetoothSAPDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 64
    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 65
    invoke-virtual {p0}, Lcom/broadcom/bt/app/settings/BluetoothSAPDialog;->setupAlert()V

    .line 66
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 107
    const-string v0, "BluetoothSAPDialog"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v0, p0, Lcom/broadcom/bt/app/settings/BluetoothSAPDialog;->mSAPProxy:Lcom/broadcom/bt/service/sap/BluetoothSAP;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/broadcom/bt/app/settings/BluetoothSAPDialog;->mSAPProxy:Lcom/broadcom/bt/service/sap/BluetoothSAP;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/sap/BluetoothSAP;->finish()V

    .line 111
    :cond_0
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 112
    return-void
.end method

.method public onDisconnect()V
    .locals 3

    .prologue
    const-string v2, "bluetooth_sap"

    .line 87
    const-string v0, "BluetoothSAPDialog"

    const-string v1, "onDisconnect"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const-string v0, "bluetooth_sap"

    invoke-static {v2}, Lcom/broadcom/bt/service/framework/BluetoothProxyManager;->getServiceType(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 89
    const-string v0, "bluetooth_sap"

    invoke-static {v2, p0, p0}, Lcom/broadcom/bt/service/framework/BluetoothProxyManager;->getProxy(Ljava/lang/String;Landroid/content/Context;Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;)Z

    .line 91
    :cond_0
    return-void
.end method

.method public onProxyAvailable(Ljava/lang/Object;)V
    .locals 2
    .parameter "ProxyObject"

    .prologue
    .line 80
    check-cast p1, Lcom/broadcom/bt/service/sap/BluetoothSAP;

    .end local p1
    iput-object p1, p0, Lcom/broadcom/bt/app/settings/BluetoothSAPDialog;->mSAPProxy:Lcom/broadcom/bt/service/sap/BluetoothSAP;

    .line 81
    const-string v0, "BluetoothSAPDialog"

    const-string v1, "onProxyAvailable"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v0, p0, Lcom/broadcom/bt/app/settings/BluetoothSAPDialog;->mSAPProxy:Lcom/broadcom/bt/service/sap/BluetoothSAP;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/broadcom/bt/app/settings/BluetoothSAPDialog;->mSAPProxy:Lcom/broadcom/bt/service/sap/BluetoothSAP;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/service/sap/BluetoothSAP;->disconnect(B)V

    .line 84
    :cond_0
    return-void
.end method
