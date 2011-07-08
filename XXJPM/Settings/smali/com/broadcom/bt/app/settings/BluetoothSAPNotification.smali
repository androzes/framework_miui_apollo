.class public Lcom/broadcom/bt/app/settings/BluetoothSAPNotification;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothSAPNotification.java"


# static fields
.field public static final SAP_NOTIFICATION_ID:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "BluetoothSAPNotification"


# instance fields
.field private ctx:Landroid/content/Context;

.field private device:Landroid/bluetooth/BluetoothDevice;

.field private mAddr:Ljava/lang/String;

.field private mConnected:I

.field private mDeviceName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private updateNotification()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 78
    const-string v4, "BluetoothSAPNotification"

    const-string v5, "updateNotification"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    new-instance v0, Landroid/content/Intent;

    iget-object v4, p0, Lcom/broadcom/bt/app/settings/BluetoothSAPNotification;->ctx:Landroid/content/Context;

    const-class v5, Lcom/broadcom/bt/app/settings/BluetoothSAPDialog;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 80
    .local v0, intent:Landroid/content/Intent;
    const-string v4, "broadcom.android.bluetooth.intent.action.BT_SERVICE_CONNECTION"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    const-string v4, "broadcom.android.bluetooth.intent.BLUETOOTH_SERVICE_ID"

    const/4 v5, 0x4

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 83
    new-instance v2, Landroid/app/Notification;

    const v4, 0x1080080

    iget-object v5, p0, Lcom/broadcom/bt/app/settings/BluetoothSAPNotification;->ctx:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09059f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v2, v4, v5, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 88
    .local v2, notification:Landroid/app/Notification;
    iget-object v4, p0, Lcom/broadcom/bt/app/settings/BluetoothSAPNotification;->ctx:Landroid/content/Context;

    const/high16 v5, 0x800

    invoke-static {v4, v11, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 91
    .local v3, pending:Landroid/app/PendingIntent;
    iget-object v4, p0, Lcom/broadcom/bt/app/settings/BluetoothSAPNotification;->ctx:Landroid/content/Context;

    iget-object v5, p0, Lcom/broadcom/bt/app/settings/BluetoothSAPNotification;->ctx:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0905a1

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/broadcom/bt/app/settings/BluetoothSAPNotification;->ctx:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0905a2

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/broadcom/bt/app/settings/BluetoothSAPNotification;->device:Landroid/bluetooth/BluetoothDevice;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/broadcom/bt/app/settings/BluetoothSAPNotification;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v9}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v9

    :goto_0
    aput-object v9, v8, v11

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v5, v6, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 95
    iget v4, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x8

    iput v4, v2, Landroid/app/Notification;->flags:I

    .line 96
    iget v4, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x20

    iput v4, v2, Landroid/app/Notification;->flags:I

    .line 97
    iget v4, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x2

    iput v4, v2, Landroid/app/Notification;->flags:I

    .line 98
    iget v4, v2, Landroid/app/Notification;->defaults:I

    or-int/lit8 v4, v4, 0x1

    iput v4, v2, Landroid/app/Notification;->defaults:I

    .line 100
    iget-object v4, p0, Lcom/broadcom/bt/app/settings/BluetoothSAPNotification;->ctx:Landroid/content/Context;

    iget-object v5, p0, Lcom/broadcom/bt/app/settings/BluetoothSAPNotification;->ctx:Landroid/content/Context;

    const-string v5, "notification"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 102
    .local v1, manager:Landroid/app/NotificationManager;
    const/16 v4, 0x3e8

    invoke-virtual {v1, v4, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 103
    return-void

    .line 91
    .end local v1           #manager:Landroid/app/NotificationManager;
    :cond_0
    iget-object v9, p0, Lcom/broadcom/bt/app/settings/BluetoothSAPNotification;->ctx:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f09050f

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_0
.end method


# virtual methods
.method public destroyNotification()V
    .locals 2

    .prologue
    .line 106
    const-string v0, "BluetoothSAPNotification"

    const-string v1, "destroyNotification"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v0, p0, Lcom/broadcom/bt/app/settings/BluetoothSAPNotification;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lcom/broadcom/bt/app/settings/BluetoothSAPNotification;->ctx:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/app/NotificationManager;

    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 108
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x0

    .line 51
    const-string v3, "BluetoothSAPNotification"

    const-string v4, "onReceive"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, action:Ljava/lang/String;
    iput-object p1, p0, Lcom/broadcom/bt/app/settings/BluetoothSAPNotification;->ctx:Landroid/content/Context;

    .line 55
    const-string v3, "broadcom.android.bluetooth.intent.action.BT_SERVICE_CONNECTION"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 57
    const-string v3, "broadcom.android.bluetooth.intent.BLUETOOTH_SERVICE_ID"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getByteExtra(Ljava/lang/String;B)B

    move-result v2

    .line 58
    .local v2, service_id:B
    const-string v3, "broadcom.android.bluetooth.intent.BLUETOOTH_SERVICE_CONNECTED"

    const/16 v4, 0xf

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getByteExtra(Ljava/lang/String;B)B

    move-result v1

    .line 60
    .local v1, mConnected:B
    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    .line 75
    .end local v1           #mConnected:B
    .end local v2           #service_id:B
    :cond_0
    :goto_0
    return-void

    .line 64
    .restart local v1       #mConnected:B
    .restart local v2       #service_id:B
    :cond_1
    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    .line 65
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    iput-object v3, p0, Lcom/broadcom/bt/app/settings/BluetoothSAPNotification;->device:Landroid/bluetooth/BluetoothDevice;

    .line 66
    invoke-direct {p0}, Lcom/broadcom/bt/app/settings/BluetoothSAPNotification;->updateNotification()V

    goto :goto_0

    .line 67
    :cond_2
    if-nez v1, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/broadcom/bt/app/settings/BluetoothSAPNotification;->destroyNotification()V

    .line 69
    iget-object v3, p0, Lcom/broadcom/bt/app/settings/BluetoothSAPNotification;->ctx:Landroid/content/Context;

    iget-object v4, p0, Lcom/broadcom/bt/app/settings/BluetoothSAPNotification;->ctx:Landroid/content/Context;

    const v5, 0x7f0905a0

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 71
    .end local v1           #mConnected:B
    .end local v2           #service_id:B
    :cond_3
    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 72
    const/16 v3, 0xd

    const-string v4, "android.bluetooth.adapter.extra.STATE"

    const/high16 v5, -0x8000

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/broadcom/bt/app/settings/BluetoothSAPNotification;->destroyNotification()V

    goto :goto_0
.end method
