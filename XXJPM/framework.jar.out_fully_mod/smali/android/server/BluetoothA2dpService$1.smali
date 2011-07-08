.class Landroid/server/BluetoothA2dpService$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothA2dpService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothA2dpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/BluetoothA2dpService;


# direct methods
.method constructor <init>(Landroid/server/BluetoothA2dpService;)V
    .locals 0
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 19
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 96
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 97
    .local v4, action:Ljava/lang/String;
    const-string v16, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/bluetooth/BluetoothDevice;

    .line 100
    .local v7, device:Landroid/bluetooth/BluetoothDevice;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Received intent "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/server/BluetoothA2dpService;->access$000(Ljava/lang/String;)V

    .line 102
    const-string v16, "android.bluetooth.adapter.action.STATE_CHANGED"

    move-object v0, v4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 103
    const-string v16, "android.bluetooth.adapter.extra.STATE"

    const/high16 v17, -0x8000

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 105
    .local v14, state:I
    packed-switch v14, :pswitch_data_0

    .line 182
    .end local v14           #state:I
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 107
    .restart local v14       #state:I
    .restart local p1
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/server/BluetoothA2dpService;->access$100(Landroid/server/BluetoothA2dpService;)V

    goto :goto_0

    .line 110
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/server/BluetoothA2dpService;->access$200(Landroid/server/BluetoothA2dpService;)V

    goto :goto_0

    .line 113
    .end local v14           #state:I
    :cond_1
    const-string v16, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    move-object v0, v4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 114
    const-string v16, "android.bluetooth.device.extra.BOND_STATE"

    const/high16 v17, -0x8000

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 116
    .local v6, bondState:I
    packed-switch v6, :pswitch_data_1

    goto :goto_0

    .line 124
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v16, v0

    const/16 v17, -0x1

    move-object/from16 v0, v16

    move-object v1, v7

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/server/BluetoothA2dpService;->setSinkPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    goto :goto_0

    .line 118
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/server/BluetoothA2dpService;->getSinkPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v16

    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_0

    .line 119
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v16, v0

    const/16 v17, 0x64

    move-object/from16 v0, v16

    move-object v1, v7

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/server/BluetoothA2dpService;->setSinkPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    goto :goto_0

    .line 128
    .end local v6           #bondState:I
    :cond_2
    const-string v16, "android.bluetooth.headset.action.STATE_CHANGED"

    move-object v0, v4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 130
    const-string v16, "android.bluetooth.headset.extra.STATE"

    const/16 v17, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 131
    .local v9, newState:I
    const/16 v16, 0x2

    move v0, v9

    move/from16 v1, v16

    if-ne v0, v1, :cond_0

    .line 132
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/server/BluetoothA2dpService;->getSinkPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v16

    if-lez v16, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/server/BluetoothA2dpService;->access$300(Landroid/server/BluetoothA2dpService;)Landroid/server/BluetoothService;

    move-result-object v16

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/server/BluetoothService;->getRemoteUuids(Ljava/lang/String;)[Landroid/os/ParcelUuid;

    move-result-object v16

    if-eqz v16, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v7

    invoke-static {v0, v1}, Landroid/server/BluetoothA2dpService;->access$400(Landroid/server/BluetoothA2dpService;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 136
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/server/BluetoothA2dpService;->access$500(Landroid/server/BluetoothA2dpService;)Landroid/os/Handler;

    move-result-object v16

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Landroid/os/Handler;->removeMessages(I)V

    .line 138
    const-string v16, "BluetoothA2dpService"

    const-string v17, "HFP/HSP is connected, send 6s delayed message for a2dp auto-connect"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/server/BluetoothA2dpService;->access$500(Landroid/server/BluetoothA2dpService;)Landroid/os/Handler;

    move-result-object v16

    const/16 v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    move-object v2, v7

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 140
    .local v8, msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/server/BluetoothA2dpService;->access$500(Landroid/server/BluetoothA2dpService;)Landroid/os/Handler;

    move-result-object v16

    const-wide/16 v17, 0x1770

    move-object/from16 v0, v16

    move-object v1, v8

    move-wide/from16 v2, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 156
    .end local v8           #msg:Landroid/os/Message;
    .end local v9           #newState:I
    :cond_4
    const-string v16, "android.bluetooth.device.action.ACL_DISCONNECTED"

    move-object v0, v4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 157
    monitor-enter p0

    .line 158
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/server/BluetoothA2dpService;->access$600(Landroid/server/BluetoothA2dpService;)Ljava/util/HashMap;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/server/BluetoothA2dpService;->access$600(Landroid/server/BluetoothA2dpService;)Ljava/util/HashMap;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 160
    .restart local v14       #state:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object v1, v7

    move v2, v14

    move/from16 v3, v17

    invoke-static {v0, v1, v2, v3}, Landroid/server/BluetoothA2dpService;->access$700(Landroid/server/BluetoothA2dpService;Landroid/bluetooth/BluetoothDevice;II)V

    .line 162
    .end local v14           #state:I
    :cond_5
    monitor-exit p0

    goto/16 :goto_0

    :catchall_0
    move-exception v16

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v16

    .line 163
    .restart local p1
    :cond_6
    const-string v16, "android.media.VOLUME_CHANGED_ACTION"

    move-object v0, v4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 164
    const-string v16, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    const/16 v17, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    .line 165
    .local v15, streamType:I
    const/16 v16, 0x3

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_0

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/server/BluetoothA2dpService;->getConnectedSinks()[Landroid/bluetooth/BluetoothDevice;

    move-result-object v13

    .line 167
    .local v13, sinks:[Landroid/bluetooth/BluetoothDevice;
    move-object v0, v13

    array-length v0, v0

    move/from16 v16, v0

    if-eqz v16, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget-object v17, v13, v17

    invoke-static/range {v16 .. v17}, Landroid/server/BluetoothA2dpService;->access$800(Landroid/server/BluetoothA2dpService;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 168
    const/16 v16, 0x0

    aget-object v16, v13, v16

    invoke-virtual/range {v16 .. v16}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    .line 169
    .local v5, address:Ljava/lang/String;
    const-string v16, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    const/16 v17, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 171
    .local v10, newVolLevel:I
    const-string v16, "android.media.EXTRA_PREV_VOLUME_STREAM_VALUE"

    const/16 v17, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 173
    .local v11, oldVolLevel:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/server/BluetoothA2dpService;->access$300(Landroid/server/BluetoothA2dpService;)Landroid/server/BluetoothService;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 174
    .local v12, path:Ljava/lang/String;
    if-le v10, v11, :cond_7

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v12

    invoke-static {v0, v1}, Landroid/server/BluetoothA2dpService;->access$900(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 176
    :cond_7
    if-ge v10, v11, :cond_0

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v12

    invoke-static {v0, v1}, Landroid/server/BluetoothA2dpService;->access$1000(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 105
    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 116
    :pswitch_data_1
    .packed-switch 0xa
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
