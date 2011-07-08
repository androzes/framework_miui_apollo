.class Landroid/server/BluetoothService$1;
.super Landroid/os/Handler;
.source "BluetoothService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/BluetoothService;


# direct methods
.method constructor <init>(Landroid/server/BluetoothService;)V
    .locals 0
    .parameter

    .prologue
    .line 747
    iput-object p1, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    const-wide/16 v8, 0x1f4

    const/4 v7, -0x1

    const/4 v6, 0x1

    const-string v5, "0"

    const-string v4, "BluetoothService"

    .line 748
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 851
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 750
    :pswitch_1
    iget-object v3, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    invoke-static {v3}, Landroid/server/BluetoothService;->access$000(Landroid/server/BluetoothService;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 760
    iget v3, p1, Landroid/os/Message;->arg1:I

    packed-switch v3, :pswitch_data_1

    goto :goto_0

    .line 762
    :pswitch_2
    const-string v3, "BluetoothService"

    const-string v3, "Registering hfag record"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    const-string v3, "hfag"

    invoke-static {v3}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    .line 764
    iget-object v3, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    invoke-static {v3}, Landroid/server/BluetoothService;->access$100(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    invoke-static {v4}, Landroid/server/BluetoothService;->access$100(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v6, v5, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 768
    :pswitch_3
    const-string v3, "BluetoothService"

    const-string v3, "Registering hsag record"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    const-string v3, "hsag"

    invoke-static {v3}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    .line 770
    iget-object v3, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    invoke-static {v3}, Landroid/server/BluetoothService;->access$100(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    invoke-static {v4}, Landroid/server/BluetoothService;->access$100(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v4, v6, v5, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 774
    :pswitch_4
    const-string v3, "BluetoothService"

    const-string v3, "Registering opush record"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    const-string v3, "opush"

    invoke-static {v3}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    .line 776
    iget-object v3, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    invoke-static {v3}, Landroid/server/BluetoothService;->access$100(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    invoke-static {v4}, Landroid/server/BluetoothService;->access$100(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v6, v5, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 780
    :pswitch_5
    const-string v3, "BluetoothService"

    const-string v3, "Registering pbap record"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    const-string v3, "pbap"

    invoke-static {v3}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    goto :goto_0

    .line 786
    :pswitch_6
    const-string v3, "BluetoothService"

    const-string v3, "Received MESSAGE_FINISH_DISABLE"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    iget-object v3, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    iget-object v4, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    invoke-static {v4}, Landroid/server/BluetoothService;->access$200(Landroid/server/BluetoothService;)Z

    move-result v4

    invoke-static {v3, v4}, Landroid/server/BluetoothService;->access$300(Landroid/server/BluetoothService;Z)V

    goto/16 :goto_0

    .line 790
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 791
    .local v0, address:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 792
    iget-object v3, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v3, v0}, Landroid/server/BluetoothService;->sendUuidIntent(Ljava/lang/String;)V

    .line 793
    iget-object v3, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v3, v0}, Landroid/server/BluetoothService;->makeServiceChannelCallbacks(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 810
    .end local v0           #address:Ljava/lang/String;
    :pswitch_8
    const-string v3, "BluetoothService"

    const-string v3, "Received BT_BOOTUP message"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    const-string v3, "service.brcm.bt.soft_onoff"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 814
    .local v2, soft_onoff_prop:Ljava/lang/String;
    if-eqz v2, :cond_1

    const-string v3, "0"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 815
    :cond_1
    const-string v3, "service.brcm.bt.hcid_active"

    const-string v4, "0"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    const-string v3, "service.brcm.bt.srv_active"

    const-string v4, "0"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    const-string v3, "service.brcm.bt.btld"

    const-string v4, "0"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    const-string v3, "service.brcm.bt.activation"

    const-string v4, "0"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    :cond_2
    iget-object v3, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    invoke-static {v3}, Landroid/server/BluetoothService;->access$400(Landroid/server/BluetoothService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "bluetooth_on"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 822
    .local v1, bluetoothOn:I
    if-lez v1, :cond_0

    .line 823
    iget-object v3, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v3, v6}, Landroid/server/BluetoothService;->enable(Z)Z

    goto/16 :goto_0

    .line 827
    .end local v1           #bluetoothOn:I
    .end local v2           #soft_onoff_prop:Ljava/lang/String;
    :pswitch_9
    const-string v3, "BluetoothService"

    const-string v3, "Received AVRCP_PASS_THROUGH_TIMEOUT message"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    const-string v3, "service.brcm.bt.avrcp_pass_thru"

    const-string v4, "1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 831
    :pswitch_a
    const-string v3, "BluetoothService"

    const-string v3, "Oops: Received MESSAGE_PROFILE_DISCONNECT_TIMEOUT"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    iget-object v3, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    invoke-static {v3}, Landroid/server/BluetoothService;->access$500(Landroid/server/BluetoothService;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 833
    const-string v3, "BluetoothService"

    const-string v3, "Oops: Force to disable BT even though HSP/HFP is yet to be disconnected"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    :cond_3
    iget-object v3, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    invoke-static {v3}, Landroid/server/BluetoothService;->access$600(Landroid/server/BluetoothService;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 836
    const-string v3, "BluetoothService"

    const-string v3, "Oops: Force to disable BT even though A2DP is yet to be disconnected"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    :cond_4
    iget-object v3, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    invoke-static {v3}, Landroid/server/BluetoothService;->access$700(Landroid/server/BluetoothService;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 839
    const-string v3, "BluetoothService"

    const-string v3, "Oops: Force to disable BT even though HID is yet to be disconnected"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    :cond_5
    iget-object v3, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_6

    move v4, v6

    :goto_1
    invoke-static {v3, v4}, Landroid/server/BluetoothService;->access$300(Landroid/server/BluetoothService;Z)V

    goto/16 :goto_0

    :cond_6
    const/4 v4, 0x0

    goto :goto_1

    .line 846
    :pswitch_b
    const-string v3, "BluetoothService"

    const-string v3, "Oops: Received MESSAGE_DEVICE_NAMESET_TIMEOUT"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    iget-object v3, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    iget-object v4, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    invoke-static {v4}, Landroid/server/BluetoothService;->access$800(Landroid/server/BluetoothService;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/server/BluetoothService;->setName(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 748
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch

    .line 760
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
