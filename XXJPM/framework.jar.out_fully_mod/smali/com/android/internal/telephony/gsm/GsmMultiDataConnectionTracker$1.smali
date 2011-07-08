.class Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "GsmMultiDataConnectionTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 217
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 219
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 221
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    invoke-static {v3, v6}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$102(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;Z)Z

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 227
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    invoke-static {v3, v5}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$102(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;Z)Z

    goto :goto_0

    .line 233
    :cond_2
    const-string v3, "com.android.internal.telephony.gprs-reconnect"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 234
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GPRS reconnect alarm. Previous state was "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    invoke-static {v5}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$200(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 235
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 236
    :cond_3
    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 237
    const-string v3, "networkInfo"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    .line 239
    .local v2, networkInfo:Landroid/net/NetworkInfo;
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_4

    move v4, v6

    :goto_1
    invoke-static {v3, v4}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$302(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;Z)Z

    goto :goto_0

    :cond_4
    move v4, v5

    goto :goto_1

    .line 240
    .end local v2           #networkInfo:Landroid/net/NetworkInfo;
    :cond_5
    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 241
    const-string/jumbo v3, "wifi_state"

    const/4 v4, 0x4

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_6

    move v1, v6

    .line 244
    .local v1, enabled:Z
    :goto_2
    if-nez v1, :cond_0

    .line 247
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    invoke-static {v3, v5}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$402(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;Z)Z

    goto :goto_0

    .end local v1           #enabled:Z
    :cond_6
    move v1, v5

    .line 241
    goto :goto_2

    .line 251
    :cond_7
    const-string v3, "android.net.action.DUN_ATTEMPTED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 252
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    const-string v4, "[Dial Up Network] DUN Call Attempted "

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 253
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->setDataEnabled(Z)Z

    goto/16 :goto_0

    .line 255
    :cond_8
    const-string v3, "android.net.action.DUN_DISCONNECTED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 256
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    const-string v4, "[Dial Up Network] DUN Call Disconnected "

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 257
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    invoke-virtual {v3, v6}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->setDataEnabled(Z)Z

    goto/16 :goto_0
.end method
