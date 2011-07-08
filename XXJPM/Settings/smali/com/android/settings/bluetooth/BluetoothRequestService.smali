.class public Lcom/android/settings/bluetooth/BluetoothRequestService;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothRequestService.java"


# static fields
.field private static final DBG:Z = false

.field private static final DEBUG:Z = false

.field public static final NOTIFICATION_ID:I = 0x1080080

.field private static final TAG:Ljava/lang/String; = "BluetoothServiceRequest"


# instance fields
.field accessResponse:Lcom/broadcom/android/bluetooth/BluetoothAccessResponse;

.field private mInForground:Z

.field private mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

.field private mNotificationMsg:Ljava/lang/String;

.field private mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothRequestService;->mInForground:Z

    .line 95
    new-instance v0, Lcom/broadcom/android/bluetooth/BluetoothAccessResponse;

    invoke-direct {v0}, Lcom/broadcom/android/bluetooth/BluetoothAccessResponse;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothRequestService;->accessResponse:Lcom/broadcom/android/bluetooth/BluetoothAccessResponse;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    const v11, 0x1080080

    const/4 v10, 0x0

    const-string v12, "broadcom.android.bluetooth.intent.action.BT_SERVICE_ACCESS"

    const-string v9, "BluetoothServiceRequest"

    .line 101
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, action:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/bluetooth/BluetoothRequestService;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/bluetooth/BluetoothRequestService;->mResources:Landroid/content/res/Resources;

    .line 109
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "broadcom.android.bluetooth.intent.action.BT_SERVICE_ACCESS"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 111
    const-string v7, "BluetoothServiceRequest"

    const-string v7, "Get Action Intent broadcom.android.bluetooth.intent.action.BT_SERVICE_ACCESS"

    invoke-static {v9, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const-string v7, "broadcom.android.bluetooth.intent.BLUETOOTH_SERVICE_ID"

    invoke-virtual {p2, v7, v10}, Landroid/content/Intent;->getByteExtra(Ljava/lang/String;B)B

    move-result v6

    .line 113
    .local v6, requestedServiceID:I
    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 114
    const-string v7, "BluetoothServiceRequest"

    const-string v7, "Received access request for OPP Push server. Ignoring the request from Settings app"

    invoke-static {v9, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    .end local v6           #requestedServiceID:I
    :goto_0
    return-void

    .line 118
    .restart local v6       #requestedServiceID:I
    :cond_0
    const-class v7, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;

    invoke-virtual {p2, p1, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 120
    iget-object v7, p0, Lcom/android/settings/bluetooth/BluetoothRequestService;->mResources:Landroid/content/res/Resources;

    const v8, 0x7f090547

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/bluetooth/BluetoothRequestService;->mNotificationMsg:Ljava/lang/String;

    .line 122
    const-string v7, "broadcom.android.bluetooth.intent.action.BT_SERVICE_ACCESS"

    invoke-virtual {p2, v12}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    const/high16 v7, 0x1000

    invoke-virtual {p2, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 162
    .end local v6           #requestedServiceID:I
    :goto_1
    const-string v7, "service.brcm.bt.secure_mode"

    const-string v8, "property not found"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 164
    .local v1, mSecureModeProperty:Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string v7, "true"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 166
    :cond_1
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 126
    .end local v1           #mSecureModeProperty:Ljava/lang/String;
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "broadcom.android.bluetooth.intent.action.BT_FTPS_AUTHEN"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 128
    const-string v7, "BluetoothServiceRequest"

    const-string v7, "Get Action Intent broadcom.android.bluetooth.intent.action.BT_FTPS_AUTHEN"

    invoke-static {v9, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 130
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "broadcom.android.bluetooth.intent.action.BT_FTPS_OPENTED"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 132
    const-string v7, "BluetoothServiceRequest"

    const-string v7, "Get Action Intent broadcom.android.bluetooth.intent.action.BT_FTPS_OPENTED"

    invoke-static {v9, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 134
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "broadcom.android.bluetooth.intent.action.BT_FTPS_CLOSED"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 136
    const-string v7, "BluetoothServiceRequest"

    const-string v7, "Get Action Intent broadcom.android.bluetooth.intent.action.BT_FTPS_CLOSED"

    invoke-static {v9, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 138
    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "broadcom.android.bluetooth.intent.action.BT_FILE_TRSF_IN_PRGS"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 140
    const-string v7, "BluetoothServiceRequest"

    const-string v7, "Get Action Intent broadcom.android.bluetooth.intent.action.BT_FILE_TRSF_IN_PRGS"

    invoke-static {v9, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 142
    :cond_6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "broadcom.android.bluetooth.intent.action.BT_FTPS_GET_CMPL"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 144
    const-string v7, "BluetoothServiceRequest"

    const-string v7, "Get Action Intent broadcom.android.bluetooth.intent.action.BT_FTPS_GET_CMPL"

    invoke-static {v9, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 146
    :cond_7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "broadcom.android.bluetooth.intent.action.BT_FTPS_PUT_CMPL"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 148
    const-string v7, "BluetoothServiceRequest"

    const-string v7, "Get Action Intent broadcom.android.bluetooth.intent.action.BT_FTPS_PUT_CMPL"

    invoke-static {v9, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 150
    :cond_8
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "broadcom.android.bluetooth.intent.action.BT_FTPS_DEL_CMPL"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 152
    const-string v7, "BluetoothServiceRequest"

    const-string v7, "Get Action Intent broadcom.android.bluetooth.intent.action.BT_FTPS_DEL_CMPL"

    invoke-static {v9, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 156
    :cond_9
    const-string v7, "BluetoothServiceRequest"

    const-string v7, "Unknown Intent "

    invoke-static {v9, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 167
    .restart local v1       #mSecureModeProperty:Ljava/lang/String;
    :cond_a
    iget-object v7, p0, Lcom/android/settings/bluetooth/BluetoothRequestService;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/android/settings/bluetooth/BluetoothRequestService;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v7}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getForegroundActivity()Landroid/app/Activity;

    move-result-object v7

    if-eqz v7, :cond_b

    .line 171
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 176
    :cond_b
    new-instance v4, Landroid/app/Notification;

    iget-object v7, p0, Lcom/android/settings/bluetooth/BluetoothRequestService;->mResources:Landroid/content/res/Resources;

    const v8, 0x7f09054e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v4, v11, v7, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 180
    .local v4, notification:Landroid/app/Notification;
    const/high16 v7, 0x4000

    invoke-static {p1, v10, p2, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 182
    .local v5, pending:Landroid/app/PendingIntent;
    const-string v7, "broadcom.android.bluetooth.intent.RMT_DEV_NAME"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 184
    .local v3, name:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 185
    iget-object v7, p0, Lcom/android/settings/bluetooth/BluetoothRequestService;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    if-eqz v7, :cond_c

    .line 186
    iget-object v7, p0, Lcom/android/settings/bluetooth/BluetoothRequestService;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v7}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v7

    const-string v8, "broadcom.android.bluetooth.intent.RMT_DEV_ADDR"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v7

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    .line 189
    :cond_c
    iget-object v7, p0, Lcom/android/settings/bluetooth/BluetoothRequestService;->mResources:Landroid/content/res/Resources;

    const v8, 0x7f09054f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/settings/bluetooth/BluetoothRequestService;->mNotificationMsg:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " by "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, p1, v7, v8, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 192
    iget v7, v4, Landroid/app/Notification;->flags:I

    or-int/lit8 v7, v7, 0x10

    iput v7, v4, Landroid/app/Notification;->flags:I

    .line 194
    const-string v7, "notification"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 196
    .local v2, manager:Landroid/app/NotificationManager;
    invoke-virtual {v2, v11, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0
.end method
