.class Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "GsmDataConnectionTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 211
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 213
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 214
    .local v0, action:Ljava/lang/String;
    const-string v5, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 215
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-static {v5, v7}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$102(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;Z)Z

    .line 268
    :cond_0
    :goto_0
    return-void

    .line 220
    :cond_1
    const-string v5, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 221
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-static {v5, v8}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$102(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;Z)Z

    goto :goto_0

    .line 227
    :cond_2
    const-string v5, "com.android.internal.telephony.gprs-reconnect"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 228
    const-string v5, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "GPRS reconnect alarm. Previous state was "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-static {v7}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$200(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const-string v5, "reason"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 231
    .local v4, reason:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-static {v5}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$300(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v5, v6, :cond_3

    .line 232
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    const/16 v6, 0x22

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 233
    .local v2, msg:Landroid/os/Message;
    iput v8, v2, Landroid/os/Message;->arg1:I

    .line 234
    iput-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 235
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-virtual {v5, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    .line 237
    .end local v2           #msg:Landroid/os/Message;
    :cond_3
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 238
    .end local v4           #reason:Ljava/lang/String;
    :cond_4
    const-string v5, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 239
    const-string v5, "networkInfo"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    .line 241
    .local v3, networkInfo:Landroid/net/NetworkInfo;
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_5

    move v6, v7

    :goto_1
    invoke-static {v5, v6}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$402(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;Z)Z

    goto/16 :goto_0

    :cond_5
    move v6, v8

    goto :goto_1

    .line 242
    .end local v3           #networkInfo:Landroid/net/NetworkInfo;
    :cond_6
    const-string v5, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 243
    const-string/jumbo v5, "wifi_state"

    const/4 v6, 0x4

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_7

    move v1, v7

    .line 246
    .local v1, enabled:Z
    :goto_2
    if-nez v1, :cond_0

    .line 249
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-static {v5, v8}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$502(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;Z)Z

    goto/16 :goto_0

    .end local v1           #enabled:Z
    :cond_7
    move v1, v8

    .line 243
    goto :goto_2

    .line 253
    :cond_8
    const-string v5, "android.net.action.DUN_ATTEMPTED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 254
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    const-string v6, "[Dial Up Network] DUN Call Attempted "

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 256
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-static {v5}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$600(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/DataConnectionTracker$State;->DISCONNECTING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v5, v6, :cond_9

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-static {v5}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$700(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v5, v6, :cond_9

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-static {v5}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$800(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v5, v6, :cond_a

    .line 258
    :cond_9
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[Dial Up Network] Network Disconnecting  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-static {v7}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$900(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 261
    :cond_a
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-virtual {v5, v8}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->setDataEnabled(Z)Z

    goto/16 :goto_0

    .line 262
    :cond_b
    const-string v5, "android.net.action.DUN_DISCONNECTED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 263
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    const-string v6, "[Dial Up Network] DUN Call Disconnected "

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 265
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-virtual {v5, v7}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->setDataEnabled(Z)Z

    goto/16 :goto_0
.end method
