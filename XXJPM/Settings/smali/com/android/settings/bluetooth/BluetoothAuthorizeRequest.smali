.class public Lcom/android/settings/bluetooth/BluetoothAuthorizeRequest;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothAuthorizeRequest.java"


# static fields
.field public static final NOTIFICATION_ID:I = 0x1080080

.field private static final TAG:Ljava/lang/String; = "BluetoothAuthorizeRequest"

.field private static sWakeLock:Landroid/os/PowerManager$WakeLock;


# instance fields
.field private ctx:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private acquire(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 181
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 182
    .local v0, pm:Landroid/os/PowerManager;
    const v1, 0x3000001a

    const-string v2, "BluetoothAuthorizeRequest"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lcom/android/settings/bluetooth/BluetoothAuthorizeRequest;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 186
    sget-object v1, Lcom/android/settings/bluetooth/BluetoothAuthorizeRequest;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 187
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 21
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 89
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    .line 90
    .local v5, action:Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/bluetooth/BluetoothAuthorizeRequest;->ctx:Landroid/content/Context;

    .line 92
    const-string v17, "android.bluetooth.intent.action.AUTHORIZE_REQUEST"

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 94
    invoke-static/range {p1 .. p1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v9

    .line 96
    .local v9, localManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;
    const-string v17, "android.bluetooth.intent.DEVICE"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/bluetooth/BluetoothDevice;

    .line 98
    .local v8, device:Landroid/bluetooth/BluetoothDevice;
    const-string v17, "android.bluetooth.intent.PAIRING_VARIANT"

    const/high16 v18, -0x100

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    .line 99
    .local v16, type:I
    const-string v17, "android.bluetooth.intent.SERVICE"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 101
    .local v15, service:Ljava/lang/String;
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 102
    .local v6, authIntent:Landroid/content/Intent;
    const-class v17, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;

    move-object v0, v6

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 104
    const-string v17, "android.bluetooth.intent.DEVICE"

    move-object v0, v6

    move-object/from16 v1, v17

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 105
    const-string v17, "android.bluetooth.intent.SERVICE"

    move-object v0, v6

    move-object/from16 v1, v17

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    const-string v17, "android.bluetooth.intent.action.AUTHORIZE_REQUEST"

    move-object v0, v6

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    const/high16 v17, 0x1000

    move-object v0, v6

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 109
    if-eqz v9, :cond_1

    invoke-virtual {v9}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getForegroundActivity()Landroid/app/Activity;

    move-result-object v17

    if-eqz v17, :cond_1

    .line 113
    const-string v17, "BluetoothAuthorizeRequest"

    const-string v18, "onReceive"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 176
    .end local v6           #authIntent:Landroid/content/Intent;
    .end local v8           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v9           #localManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;
    .end local v15           #service:Ljava/lang/String;
    .end local v16           #type:I
    :cond_0
    :goto_0
    return-void

    .line 120
    .restart local v6       #authIntent:Landroid/content/Intent;
    .restart local v8       #device:Landroid/bluetooth/BluetoothDevice;
    .restart local v9       #localManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;
    .restart local v15       #service:Ljava/lang/String;
    .restart local v16       #type:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/bluetooth/BluetoothAuthorizeRequest;->ctx:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/bluetooth/BluetoothAuthorizeRequest;->ctx:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x7f0905a4

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    invoke-static/range {v17 .. v19}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Toast;->show()V

    .line 127
    const-string v17, "BluetoothAuthorizeRequest"

    const-string v18, "Launch Authorize dialog immediately"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-direct/range {p0 .. p1}, Lcom/android/settings/bluetooth/BluetoothAuthorizeRequest;->acquire(Landroid/content/Context;)V

    .line 131
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 132
    .local v14, res:Landroid/content/res/Resources;
    new-instance v12, Landroid/app/Notification;

    const v17, 0x1080080

    const v18, 0x7f090548

    move-object v0, v14

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    move-object v0, v12

    move/from16 v1, v17

    move-object/from16 v2, v18

    move-wide/from16 v3, v19

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 137
    .local v12, notification:Landroid/app/Notification;
    const/16 v17, 0x0

    const/high16 v18, 0x4000

    move-object/from16 v0, p1

    move/from16 v1, v17

    move-object v2, v6

    move/from16 v3, v18

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    .line 140
    .local v13, pending:Landroid/app/PendingIntent;
    const-string v17, "android.bluetooth.intent.NAME"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 141
    .local v11, name:Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 142
    invoke-virtual {v8}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v11

    .line 146
    :cond_2
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 147
    .local v7, clearIntent:Landroid/content/Intent;
    const-class v17, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;

    move-object v0, v7

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 148
    const-string v17, "android.bluetooth.intent.DEVICE"

    move-object v0, v7

    move-object/from16 v1, v17

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 149
    const-string v17, "android.bluetooth.intent.SERVICE"

    move-object v0, v7

    move-object/from16 v1, v17

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    const-string v17, "android.bluetooth.intent.action.AUTHORIZE_CANCEL"

    move-object v0, v7

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    const v17, 0x7f090549

    move-object v0, v14

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    const v18, 0x7f09054a

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v11, v19, v20

    move-object v0, v14

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object v0, v12

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-object v4, v13

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 157
    move-object v0, v12

    iget v0, v0, Landroid/app/Notification;->flags:I

    move/from16 v17, v0

    or-int/lit8 v17, v17, 0x10

    move/from16 v0, v17

    move-object v1, v12

    iput v0, v1, Landroid/app/Notification;->flags:I

    .line 158
    move-object v0, v12

    iget v0, v0, Landroid/app/Notification;->flags:I

    move/from16 v17, v0

    or-int/lit8 v17, v17, 0x8

    move/from16 v0, v17

    move-object v1, v12

    iput v0, v1, Landroid/app/Notification;->flags:I

    .line 160
    move-object v0, v12

    iget v0, v0, Landroid/app/Notification;->defaults:I

    move/from16 v17, v0

    or-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    move-object v1, v12

    iput v0, v1, Landroid/app/Notification;->defaults:I

    .line 161
    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move-object v2, v7

    move/from16 v3, v18

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v12

    iput-object v0, v1, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 164
    const-string v17, "notification"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/NotificationManager;

    .line 166
    .local v10, manager:Landroid/app/NotificationManager;
    const v17, 0x1080080

    move-object v0, v10

    move/from16 v1, v17

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 169
    .end local v6           #authIntent:Landroid/content/Intent;
    .end local v7           #clearIntent:Landroid/content/Intent;
    .end local v8           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v9           #localManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;
    .end local v10           #manager:Landroid/app/NotificationManager;
    .end local v11           #name:Ljava/lang/String;
    .end local v12           #notification:Landroid/app/Notification;
    .end local v13           #pending:Landroid/app/PendingIntent;
    .end local v14           #res:Landroid/content/res/Resources;
    .end local v15           #service:Ljava/lang/String;
    .end local v16           #type:I
    :cond_3
    const-string v17, "android.bluetooth.intent.action.AUTHORIZE_CANCEL"

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 172
    const-string v17, "notification"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/NotificationManager;

    .line 174
    .restart local v10       #manager:Landroid/app/NotificationManager;
    const v17, 0x1080080

    move-object v0, v10

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_0
.end method
