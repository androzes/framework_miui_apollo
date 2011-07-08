.class Lcom/android/settings/bluetooth/BluetoothEventRedirector$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothEventRedirector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/BluetoothEventRedirector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothEventRedirector;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothEventRedirector;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/android/settings/bluetooth/BluetoothEventRedirector;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 22
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 52
    const-string v19, "BluetoothEventRedirector"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Received "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    .line 55
    .local v5, action:Ljava/lang/String;
    const-string v19, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/bluetooth/BluetoothDevice;

    .line 57
    .local v10, device:Landroid/bluetooth/BluetoothDevice;
    const-string v19, "android.bluetooth.adapter.action.STATE_CHANGED"

    move-object v0, v5

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 58
    const-string v19, "android.bluetooth.adapter.extra.STATE"

    const/high16 v20, -0x8000

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    .line 60
    .local v18, state:I
    const-string v19, "BluetoothEventRedirector"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "state "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/android/settings/bluetooth/BluetoothEventRedirector;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/bluetooth/BluetoothEventRedirector;->access$000(Lcom/android/settings/bluetooth/BluetoothEventRedirector;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->setBluetoothStateInt(I)V

    .line 169
    .end local v18           #state:I
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    const-string v19, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    move-object v0, v5

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 63
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/android/settings/bluetooth/BluetoothEventRedirector;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/bluetooth/BluetoothEventRedirector;->access$100(Lcom/android/settings/bluetooth/BluetoothEventRedirector;)V

    .line 64
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/android/settings/bluetooth/BluetoothEventRedirector;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/bluetooth/BluetoothEventRedirector;->access$000(Lcom/android/settings/bluetooth/BluetoothEventRedirector;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v19

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->onScanningStateChanged(Z)V

    goto :goto_0

    .line 66
    :cond_2
    const-string v19, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    move-object v0, v5

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 67
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/android/settings/bluetooth/BluetoothEventRedirector;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/bluetooth/BluetoothEventRedirector;->access$100(Lcom/android/settings/bluetooth/BluetoothEventRedirector;)V

    .line 68
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/android/settings/bluetooth/BluetoothEventRedirector;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/bluetooth/BluetoothEventRedirector;->access$000(Lcom/android/settings/bluetooth/BluetoothEventRedirector;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->onScanningStateChanged(Z)V

    goto :goto_0

    .line 70
    :cond_3
    const-string v19, "android.bluetooth.device.action.FOUND"

    move-object v0, v5

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 71
    const-string v19, "android.bluetooth.device.extra.RSSI"

    const/16 v20, -0x8000

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getShortExtra(Ljava/lang/String;S)S

    move-result v16

    .line 72
    .local v16, rssi:S
    const-string v19, "android.bluetooth.device.extra.CLASS"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/bluetooth/BluetoothClass;

    .line 73
    .local v8, btClass:Landroid/bluetooth/BluetoothClass;
    const-string v19, "android.bluetooth.device.extra.NAME"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 76
    .local v12, name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/android/settings/bluetooth/BluetoothEventRedirector;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/bluetooth/BluetoothEventRedirector;->access$000(Lcom/android/settings/bluetooth/BluetoothEventRedirector;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v10

    move/from16 v2, v16

    move-object v3, v8

    move-object v4, v12

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->onDeviceAppeared(Landroid/bluetooth/BluetoothDevice;SLandroid/bluetooth/BluetoothClass;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 78
    .end local v8           #btClass:Landroid/bluetooth/BluetoothClass;
    .end local v12           #name:Ljava/lang/String;
    .end local v16           #rssi:S
    :cond_4
    const-string v19, "android.bluetooth.device.action.DISAPPEARED"

    move-object v0, v5

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 79
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/android/settings/bluetooth/BluetoothEventRedirector;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/bluetooth/BluetoothEventRedirector;->access$000(Lcom/android/settings/bluetooth/BluetoothEventRedirector;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v10

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->onDeviceDisappeared(Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 81
    :cond_5
    const-string v19, "android.bluetooth.device.action.NAME_CHANGED"

    move-object v0, v5

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 82
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/android/settings/bluetooth/BluetoothEventRedirector;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/bluetooth/BluetoothEventRedirector;->access$000(Lcom/android/settings/bluetooth/BluetoothEventRedirector;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v10

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->onDeviceNameUpdated(Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 84
    :cond_6
    const-string v19, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    move-object v0, v5

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 85
    const-string v19, "android.bluetooth.device.extra.BOND_STATE"

    const/high16 v20, -0x8000

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 87
    .local v7, bondState:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/android/settings/bluetooth/BluetoothEventRedirector;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/bluetooth/BluetoothEventRedirector;->access$000(Lcom/android/settings/bluetooth/BluetoothEventRedirector;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v9

    .line 88
    .local v9, cachedDeviceMgr:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;
    invoke-virtual {v9, v10, v7}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->onBondingStateChanged(Landroid/bluetooth/BluetoothDevice;I)V

    .line 89
    const/16 v19, 0xa

    move v0, v7

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    .line 90
    invoke-virtual {v10}, Landroid/bluetooth/BluetoothDevice;->isBluetoothDock()Z

    move-result v19

    if-eqz v19, :cond_7

    .line 93
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/android/settings/bluetooth/BluetoothEventRedirector;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/bluetooth/BluetoothEventRedirector;->access$000(Lcom/android/settings/bluetooth/BluetoothEventRedirector;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v19

    invoke-virtual {v10}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->removeDockAutoConnectSetting(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v10}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/android/settings/bluetooth/BluetoothEventRedirector;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/BluetoothEventRedirector;->access$200(Lcom/android/settings/bluetooth/BluetoothEventRedirector;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_7

    .line 98
    invoke-virtual {v9, v10}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->onDeviceDisappeared(Landroid/bluetooth/BluetoothDevice;)V

    .line 101
    :cond_7
    const-string v19, "android.bluetooth.device.extra.REASON"

    const/high16 v20, -0x8000

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    .line 103
    .local v15, reason:I
    invoke-virtual {v9, v10, v15}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->showUnbondMessage(Landroid/bluetooth/BluetoothDevice;I)V

    goto/16 :goto_0

    .line 106
    .end local v7           #bondState:I
    .end local v9           #cachedDeviceMgr:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;
    .end local v15           #reason:I
    :cond_8
    const-string v19, "android.bluetooth.headset.action.STATE_CHANGED"

    move-object v0, v5

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 107
    const-string v19, "android.bluetooth.headset.extra.STATE"

    const/16 v20, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 108
    .local v13, newState:I
    const-string v19, "android.bluetooth.headset.extra.PREVIOUS_STATE"

    const/16 v20, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 109
    .local v14, oldState:I
    if-nez v13, :cond_9

    const/16 v19, 0x1

    move v0, v14

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    .line 111
    const-string v19, "BluetoothEventRedirector"

    const-string v20, "Failed to connect BT headset"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/android/settings/bluetooth/BluetoothEventRedirector;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/bluetooth/BluetoothEventRedirector;->access$000(Lcom/android/settings/bluetooth/BluetoothEventRedirector;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v19

    sget-object v20, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->HEADSET:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    move-object/from16 v0, v19

    move-object v1, v10

    move-object/from16 v2, v20

    move v3, v13

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->onProfileStateChanged(Landroid/bluetooth/BluetoothDevice;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;I)V

    goto/16 :goto_0

    .line 117
    .end local v13           #newState:I
    .end local v14           #oldState:I
    :cond_a
    const-string v19, "android.bluetooth.a2dp.action.SINK_STATE_CHANGED"

    move-object v0, v5

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_c

    .line 118
    const-string v19, "android.bluetooth.a2dp.extra.SINK_STATE"

    const/16 v20, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 119
    .restart local v13       #newState:I
    const-string v19, "android.bluetooth.a2dp.extra.PREVIOUS_SINK_STATE"

    const/16 v20, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 120
    .restart local v14       #oldState:I
    if-nez v13, :cond_b

    const/16 v19, 0x1

    move v0, v14

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    .line 122
    const-string v19, "BluetoothEventRedirector"

    const-string v20, "Failed to connect BT A2DP"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/android/settings/bluetooth/BluetoothEventRedirector;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/bluetooth/BluetoothEventRedirector;->access$000(Lcom/android/settings/bluetooth/BluetoothEventRedirector;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v19

    sget-object v20, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->A2DP:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    move-object/from16 v0, v19

    move-object v1, v10

    move-object/from16 v2, v20

    move v3, v13

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->onProfileStateChanged(Landroid/bluetooth/BluetoothDevice;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;I)V

    goto/16 :goto_0

    .line 128
    .end local v13           #newState:I
    .end local v14           #oldState:I
    :cond_c
    const-string v19, "com.broadcom.bt.service.hid.action.STATE_CHANGED"

    move-object v0, v5

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_d

    .line 129
    const-string v19, "com.broadcom.bt.service.hid.extra.STATE"

    const/16 v20, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 130
    .restart local v13       #newState:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/android/settings/bluetooth/BluetoothEventRedirector;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/bluetooth/BluetoothEventRedirector;->access$000(Lcom/android/settings/bluetooth/BluetoothEventRedirector;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v19

    sget-object v20, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->HID:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    move-object/from16 v0, v19

    move-object v1, v10

    move-object/from16 v2, v20

    move v3, v13

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->onProfileStateChanged(Landroid/bluetooth/BluetoothDevice;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;I)V

    goto/16 :goto_0

    .line 132
    .end local v13           #newState:I
    :cond_d
    const-string v19, "android.bluetooth.device.action.CLASS_CHANGED"

    move-object v0, v5

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_e

    .line 133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/android/settings/bluetooth/BluetoothEventRedirector;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/bluetooth/BluetoothEventRedirector;->access$000(Lcom/android/settings/bluetooth/BluetoothEventRedirector;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v10

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->onBtClassChanged(Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 135
    :cond_e
    const-string v19, "android.bleutooth.device.action.UUID"

    move-object v0, v5

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_f

    .line 136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/android/settings/bluetooth/BluetoothEventRedirector;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/bluetooth/BluetoothEventRedirector;->access$000(Lcom/android/settings/bluetooth/BluetoothEventRedirector;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v10

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->onUuidChanged(Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 138
    :cond_f
    const-string v19, "android.bluetooth.device.action.PAIRING_CANCEL"

    move-object v0, v5

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_10

    .line 139
    const v11, 0x7f090511

    .line 140
    .local v11, errorMsg:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/android/settings/bluetooth/BluetoothEventRedirector;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/bluetooth/BluetoothEventRedirector;->access$000(Lcom/android/settings/bluetooth/BluetoothEventRedirector;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v19

    const v20, 0x7f090510

    move-object/from16 v0, v19

    move-object v1, v10

    move/from16 v2, v20

    move v3, v11

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->showError(Landroid/bluetooth/BluetoothDevice;II)V

    goto/16 :goto_0

    .line 142
    .end local v11           #errorMsg:I
    :cond_10
    const-string v19, "android.intent.action.DOCK_EVENT"

    move-object v0, v5

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_11

    .line 144
    const/4 v6, 0x1

    .line 145
    .local v6, anythingButUnDocked:I
    const-string v19, "android.intent.extra.DOCK_STATE"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    .line 146
    .restart local v18       #state:I
    if-nez v18, :cond_0

    .line 147
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v19

    const/16 v20, 0xa

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/android/settings/bluetooth/BluetoothEventRedirector;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/bluetooth/BluetoothEventRedirector;->access$000(Lcom/android/settings/bluetooth/BluetoothEventRedirector;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v10

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->onDeviceDisappeared(Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 152
    .end local v6           #anythingButUnDocked:I
    .end local v18           #state:I
    :cond_11
    const-string v19, "broadcom.android.bluetooth.intent.action.BT_SERVICE_CONNECTION"

    move-object v0, v5

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 153
    const-string v19, "broadcom.android.bluetooth.intent.BLUETOOTH_SERVICE_ID"

    const/16 v20, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getByteExtra(Ljava/lang/String;B)B

    move-result v17

    .line 154
    .local v17, service_id:B
    const-string v19, "broadcom.android.bluetooth.intent.BLUETOOTH_SERVICE_CONNECTED"

    const/16 v20, 0xf

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getByteExtra(Ljava/lang/String;B)B

    move-result v18

    .line 155
    .local v18, state:B
    const-string v19, "BluetoothEventRedirector"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "BT_SERVICE_CONNECTION_ACTION - id/state:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const/16 v19, 0xf

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_12

    .line 158
    const-string v19, "BluetoothEventRedirector"

    const-string v20, "BT_SERVICE_CONNECTION_ACTION - invalid state. return. "

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_12
    const/16 v19, 0x4

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_13

    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/android/settings/bluetooth/BluetoothEventRedirector;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/bluetooth/BluetoothEventRedirector;->access$000(Lcom/android/settings/bluetooth/BluetoothEventRedirector;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v19

    sget-object v20, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->SAP:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    move-object/from16 v0, v19

    move-object v1, v10

    move-object/from16 v2, v20

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->onProfileStateChanged(Landroid/bluetooth/BluetoothDevice;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;I)V

    goto/16 :goto_0

    .line 162
    :cond_13
    const/16 v19, 0x3

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_14

    .line 163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/android/settings/bluetooth/BluetoothEventRedirector;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/bluetooth/BluetoothEventRedirector;->access$000(Lcom/android/settings/bluetooth/BluetoothEventRedirector;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v19

    sget-object v20, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->FTP:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    move-object/from16 v0, v19

    move-object v1, v10

    move-object/from16 v2, v20

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->onProfileStateChanged(Landroid/bluetooth/BluetoothDevice;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;I)V

    goto/16 :goto_0

    .line 164
    :cond_14
    const/16 v19, 0x5

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/android/settings/bluetooth/BluetoothEventRedirector;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/bluetooth/BluetoothEventRedirector;->access$000(Lcom/android/settings/bluetooth/BluetoothEventRedirector;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v19

    sget-object v20, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->DUN:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    move-object/from16 v0, v19

    move-object v1, v10

    move-object/from16 v2, v20

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->onProfileStateChanged(Landroid/bluetooth/BluetoothDevice;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;I)V

    goto/16 :goto_0
.end method
