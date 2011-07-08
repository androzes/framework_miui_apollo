.class Landroid/server/BluetoothService$2;
.super Landroid/content/BroadcastReceiver;
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
    .line 2175
    iput-object p1, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2176
    if-nez p2, :cond_1

    .line 2282
    :cond_0
    :goto_0
    return-void

    .line 2178
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2180
    .local v0, action:Ljava/lang/String;
    const-string v8, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2183
    const-string v8, "BluetoothService"

    const-string v9, " Received BOOT_COMPLETED message"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2184
    iget-object v8, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-static {v8}, Landroid/server/BluetoothService;->access$100(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-static {v9}, Landroid/server/BluetoothService;->access$100(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v9

    const/4 v10, 0x5

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    const-wide/16 v10, 0xbb8

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 2186
    :cond_2
    const-string v8, "android.bluetooth.intent.action.CALL_STATE_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 2187
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 2188
    .local v3, extras:Landroid/os/Bundle;
    const-string v8, "android.bluetooth.intent.CALL_STATE"

    const/4 v9, 0x0

    invoke-virtual {v3, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 2189
    .local v6, state:I
    const-string v8, "BluetoothService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Got Call State change - new call state = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2190
    const-string v8, "service.brcm.bt.call_active"

    const/4 v9, 0x1

    if-ne v6, v9, :cond_3

    const-string v9, "1"

    :goto_1
    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2192
    iget-object v8, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-static {v8}, Landroid/server/BluetoothService;->access$100(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v8

    const/4 v9, 0x6

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 2193
    const-string v8, "service.brcm.bt.avrcp_pass_thru"

    const-string v9, "0"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2194
    iget-object v8, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-static {v8}, Landroid/server/BluetoothService;->access$100(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-static {v9}, Landroid/server/BluetoothService;->access$100(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v9

    const/4 v10, 0x6

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    const/4 v10, 0x1

    if-ne v6, v10, :cond_4

    const-wide/16 v10, 0x1388

    :goto_2
    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 2190
    :cond_3
    const-string v9, "0"

    goto :goto_1

    .line 2194
    :cond_4
    const-wide/16 v10, 0x1388

    goto :goto_2

    .line 2199
    .end local v3           #extras:Landroid/os/Bundle;
    .end local v6           #state:I
    :cond_5
    const-string v8, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 2200
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 2203
    .local v5, resolver:Landroid/content/ContentResolver;
    iget-object v8, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-static {v8}, Landroid/server/BluetoothService;->access$2100(Landroid/server/BluetoothService;)Z

    move-result v8

    if-nez v8, :cond_6

    const/4 v8, 0x1

    move v2, v8

    .line 2205
    .local v2, enabled:Z
    :goto_3
    const-string v8, "bluetooth_on"

    const/4 v9, 0x0

    invoke-static {v5, v8, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-lez v8, :cond_0

    .line 2206
    if-eqz v2, :cond_7

    .line 2207
    iget-object v8, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/server/BluetoothService;->enable(Z)Z

    goto/16 :goto_0

    .line 2203
    .end local v2           #enabled:Z
    :cond_6
    const/4 v8, 0x0

    move v2, v8

    goto :goto_3

    .line 2209
    .restart local v2       #enabled:Z
    :cond_7
    iget-object v8, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/server/BluetoothService;->disable(Z)Z

    goto/16 :goto_0

    .line 2212
    .end local v2           #enabled:Z
    .end local v5           #resolver:Landroid/content/ContentResolver;
    :cond_8
    const-string v8, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 2213
    const-string v8, "android.intent.extra.DOCK_STATE"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 2215
    .restart local v6       #state:I
    const-string v8, "BluetoothService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Received ACTION_DOCK_EVENT with State:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2216
    if-nez v6, :cond_9

    .line 2217
    const/4 v8, 0x0

    invoke-static {v8}, Landroid/server/BluetoothService;->access$2802(Ljava/lang/String;)Ljava/lang/String;

    .line 2218
    iget-object v8, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/server/BluetoothService;->access$2902(Landroid/server/BluetoothService;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 2220
    :cond_9
    iget-object v8, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-static {v8}, Landroid/server/BluetoothService;->access$400(Landroid/server/BluetoothService;)Landroid/content/Context;

    move-result-object v8

    const-string v9, "bluetooth_service_settings"

    iget-object v10, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-static {v10}, Landroid/server/BluetoothService;->access$400(Landroid/server/BluetoothService;)Landroid/content/Context;

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 2223
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "dock_bluetooth_address"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Landroid/server/BluetoothService;->access$2800()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v1, v8, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2224
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 2228
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v6           #state:I
    :cond_a
    const-string v8, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 2229
    iget-object v8, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-static {v8}, Landroid/server/BluetoothService;->access$3008(Landroid/server/BluetoothService;)I

    .line 2230
    const-string v8, "BluetoothService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ACL connected, mAclLinkCount = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-static {v10}, Landroid/server/BluetoothService;->access$3000(Landroid/server/BluetoothService;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2232
    :cond_b
    const-string v8, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 2233
    iget-object v8, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-static {v8}, Landroid/server/BluetoothService;->access$3010(Landroid/server/BluetoothService;)I

    .line 2234
    const-string v8, "BluetoothService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ACL disconnected, mAclLinkCount = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-static {v10}, Landroid/server/BluetoothService;->access$3000(Landroid/server/BluetoothService;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2235
    iget-object v8, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-static {v8}, Landroid/server/BluetoothService;->access$3100(Landroid/server/BluetoothService;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-static {v8}, Landroid/server/BluetoothService;->access$3000(Landroid/server/BluetoothService;)I

    move-result v8

    if-nez v8, :cond_0

    .line 2236
    iget-object v8, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-static {v8}, Landroid/server/BluetoothService;->access$100(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v8

    const/4 v9, 0x7

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 2237
    iget-object v8, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-static {v8}, Landroid/server/BluetoothService;->access$100(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-static {v9}, Landroid/server/BluetoothService;->access$100(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v9

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    const-wide/16 v10, 0xc8

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 2241
    :cond_c
    const-string v8, "android.bluetooth.device.action.PROFILE_DISCONNECTED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 2242
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 2243
    .restart local v3       #extras:Landroid/os/Bundle;
    const-string v8, "android.bluetooth.device.extra.PROFILE"

    const/4 v9, 0x0

    invoke-virtual {v3, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 2244
    .local v4, profile:I
    const/4 v7, 0x0

    .line 2246
    .local v7, waitingForThisProfile:Z
    const-string v8, "BluetoothService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Received profile "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " disconnected intent."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2248
    packed-switch v4, :pswitch_data_0

    .line 2263
    :goto_4
    if-eqz v7, :cond_0

    iget-object v8, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-static {v8}, Landroid/server/BluetoothService;->access$500(Landroid/server/BluetoothService;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-static {v8}, Landroid/server/BluetoothService;->access$600(Landroid/server/BluetoothService;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-static {v8}, Landroid/server/BluetoothService;->access$700(Landroid/server/BluetoothService;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-static {v8}, Landroid/server/BluetoothService;->access$3000(Landroid/server/BluetoothService;)I

    move-result v8

    if-nez v8, :cond_0

    .line 2268
    iget-object v8, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-static {v8}, Landroid/server/BluetoothService;->access$100(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v8

    const/4 v9, 0x7

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 2269
    iget-object v8, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    iget-object v9, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-static {v9}, Landroid/server/BluetoothService;->access$200(Landroid/server/BluetoothService;)Z

    move-result v9

    invoke-static {v8, v9}, Landroid/server/BluetoothService;->access$300(Landroid/server/BluetoothService;Z)V

    goto/16 :goto_0

    .line 2250
    :pswitch_0
    iget-object v8, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-static {v8}, Landroid/server/BluetoothService;->access$500(Landroid/server/BluetoothService;)Z

    move-result v7

    .line 2251
    iget-object v8, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/server/BluetoothService;->access$502(Landroid/server/BluetoothService;Z)Z

    goto :goto_4

    .line 2254
    :pswitch_1
    iget-object v8, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-static {v8}, Landroid/server/BluetoothService;->access$600(Landroid/server/BluetoothService;)Z

    move-result v7

    .line 2255
    iget-object v8, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/server/BluetoothService;->access$602(Landroid/server/BluetoothService;Z)Z

    goto :goto_4

    .line 2258
    :pswitch_2
    iget-object v8, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-static {v8}, Landroid/server/BluetoothService;->access$700(Landroid/server/BluetoothService;)Z

    move-result v7

    .line 2259
    iget-object v8, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/server/BluetoothService;->access$702(Landroid/server/BluetoothService;Z)Z

    goto :goto_4

    .line 2274
    .end local v3           #extras:Landroid/os/Bundle;
    .end local v4           #profile:I
    .end local v7           #waitingForThisProfile:Z
    :cond_d
    const-string v8, "android.bluetooth.adapter.action.SCAN_MODE_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2275
    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    move-result v8

    const/4 v9, 0x4

    if-ne v8, v9, :cond_0

    .line 2276
    iget-object v8, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-static {v8}, Landroid/server/BluetoothService;->access$000(Landroid/server/BluetoothService;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2277
    iget-object v8, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    const/16 v9, 0x15

    const/4 v10, -0x1

    invoke-virtual {v8, v9, v10}, Landroid/server/BluetoothService;->setScanMode(II)Z

    goto/16 :goto_0

    .line 2248
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
