.class Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog$ListenForPairingCancel;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothAuthorizeDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListenForPairingCancel"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;


# direct methods
.method private constructor <init>(Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 270
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog$ListenForPairingCancel;->this$0:Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 270
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog$ListenForPairingCancel;-><init>(Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const-string v3, "BluetoothAuthorizeDialog"

    .line 274
    const-string v1, "BluetoothAuthorizeDialog"

    const-string v1, "ListenForPairingCancel: onReceive"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 277
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 278
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog$ListenForPairingCancel;->this$0:Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;

    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->access$100(Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 279
    const-string v1, "BluetoothAuthorizeDialog"

    const-string v1, "ACL_DISCONNECT_REJECT_REQUEST"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog$ListenForPairingCancel;->this$0:Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;

    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->access$200(Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;)V

    .line 284
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    :cond_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog$ListenForPairingCancel;->this$0:Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;

    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->access$300(Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;)V

    .line 285
    return-void
.end method
