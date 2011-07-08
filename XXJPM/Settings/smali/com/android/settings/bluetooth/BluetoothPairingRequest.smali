.class public Lcom/android/settings/bluetooth/BluetoothPairingRequest;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothPairingRequest.java"


# static fields
.field public static final NOTIFICATION_ID:I = 0x1080080

.field private static final TAG:Ljava/lang/String; = "BluetoothPairingRequest"

.field private static sWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private acquire(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 147
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 148
    .local v0, pm:Landroid/os/PowerManager;
    const v1, 0x3000001a

    const-string v2, "BluetoothPairingRequest"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lcom/android/settings/bluetooth/BluetoothPairingRequest;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 152
    sget-object v1, Lcom/android/settings/bluetooth/BluetoothPairingRequest;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 153
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    const/high16 v8, -0x8000

    const-string v12, "android.bluetooth.device.extra.PASSKEY"

    const-string v11, "android.bluetooth.device.extra.PAIRING_VARIANT"

    const-string v10, "android.bluetooth.device.extra.DEVICE"

    const-string v9, "android.bluetooth.device.action.PAIRING_REQUEST"

    .line 59
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, action:Ljava/lang/String;
    const-string v7, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 62
    invoke-static {p1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v2

    .line 64
    .local v2, localManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;
    const-string v7, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 66
    .local v1, device:Landroid/bluetooth/BluetoothDevice;
    const-string v7, "android.bluetooth.device.extra.PAIRING_VARIANT"

    invoke-virtual {p2, v11, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 68
    .local v6, type:I
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 69
    .local v4, pairingIntent:Landroid/content/Intent;
    const-class v7, Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    invoke-virtual {v4, p1, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 70
    const-string v7, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v4, v10, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 71
    const-string v7, "android.bluetooth.device.extra.PAIRING_VARIANT"

    invoke-virtual {v4, v11, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 72
    const/4 v7, 0x2

    if-eq v6, v7, :cond_0

    const/4 v7, 0x4

    if-ne v6, v7, :cond_1

    .line 74
    :cond_0
    const-string v7, "android.bluetooth.device.extra.PASSKEY"

    invoke-virtual {p2, v12, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 75
    .local v5, passkey:I
    const-string v7, "android.bluetooth.device.extra.PASSKEY"

    invoke-virtual {v4, v12, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 77
    .end local v5           #passkey:I
    :cond_1
    const-string v7, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-virtual {v4, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    const/high16 v7, 0x1000

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 89
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothPairingRequest;->acquire(Landroid/content/Context;)V

    .line 90
    invoke-virtual {p1, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 143
    .end local v1           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #localManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;
    .end local v4           #pairingIntent:Landroid/content/Intent;
    .end local v6           #type:I
    :cond_2
    :goto_0
    return-void

    .line 136
    :cond_3
    const-string v7, "android.bluetooth.device.action.PAIRING_CANCEL"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 139
    const-string v7, "notification"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 141
    .local v3, manager:Landroid/app/NotificationManager;
    const v7, 0x1080080

    invoke-virtual {v3, v7}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method
