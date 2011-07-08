.class Lcom/android/server/status/StatusBarService$30;
.super Landroid/content/BroadcastReceiver;
.source "StatusBarService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/status/StatusBarService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/status/StatusBarService;


# direct methods
.method constructor <init>(Lcom/android/server/status/StatusBarService;)V
    .locals 0
    .parameter

    .prologue
    .line 3093
    iput-object p1, p0, Lcom/android/server/status/StatusBarService$30;->this$0:Lcom/android/server/status/StatusBarService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 3094
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3095
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3097
    :cond_0
    iget-object v2, p0, Lcom/android/server/status/StatusBarService$30;->this$0:Lcom/android/server/status/StatusBarService;

    invoke-virtual {v2}, Lcom/android/server/status/StatusBarService;->deactivate()V

    .line 3162
    :cond_1
    :goto_0
    return-void

    .line 3099
    :cond_2
    const-string v2, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3100
    iget-object v2, p0, Lcom/android/server/status/StatusBarService$30;->this$0:Lcom/android/server/status/StatusBarService;

    const-string v3, "showSpn"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    const-string v4, "spn"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "showPlmn"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    const-string v6, "plmn"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/server/status/StatusBarService;->updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V

    goto :goto_0

    .line 3105
    :cond_3
    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3106
    iget-object v2, p0, Lcom/android/server/status/StatusBarService$30;->this$0:Lcom/android/server/status/StatusBarService;

    invoke-virtual {v2}, Lcom/android/server/status/StatusBarService;->updateResources()V

    goto :goto_0

    .line 3109
    :cond_4
    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3115
    iget-object v2, p0, Lcom/android/server/status/StatusBarService$30;->this$0:Lcom/android/server/status/StatusBarService;

    invoke-static {v2, p2}, Lcom/android/server/status/StatusBarService;->access$1500(Lcom/android/server/status/StatusBarService;Landroid/content/Intent;)V

    goto :goto_0

    .line 3117
    :cond_5
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "android.bluetooth.headset.action.STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "android.bluetooth.a2dp.action.SINK_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 3122
    :cond_6
    iget-object v2, p0, Lcom/android/server/status/StatusBarService$30;->this$0:Lcom/android/server/status/StatusBarService;

    invoke-static {v2, p2}, Lcom/android/server/status/StatusBarService;->access$1600(Lcom/android/server/status/StatusBarService;Landroid/content/Intent;)V

    goto :goto_0

    .line 3126
    :cond_7
    const-string v2, "com.android.music.musicservicecommand.mediainfo"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 3127
    iget-object v2, p0, Lcom/android/server/status/StatusBarService$30;->this$0:Lcom/android/server/status/StatusBarService;

    invoke-static {v2, p2}, Lcom/android/server/status/StatusBarService;->access$1700(Lcom/android/server/status/StatusBarService;Landroid/content/Intent;)V

    goto :goto_0

    .line 3131
    :cond_8
    const-string v2, "com.android.fm.player.status.on"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 3132
    iget-object v2, p0, Lcom/android/server/status/StatusBarService$30;->this$0:Lcom/android/server/status/StatusBarService;

    invoke-static {v2, v3}, Lcom/android/server/status/StatusBarService;->access$1800(Lcom/android/server/status/StatusBarService;Z)V

    goto :goto_0

    .line 3134
    :cond_9
    const-string v2, "com.android.fm.player.status.off"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 3135
    iget-object v2, p0, Lcom/android/server/status/StatusBarService$30;->this$0:Lcom/android/server/status/StatusBarService;

    invoke-static {v2, v6}, Lcom/android/server/status/StatusBarService;->access$1800(Lcom/android/server/status/StatusBarService;Z)V

    goto/16 :goto_0

    .line 3139
    :cond_a
    const-string v2, "com.android.notification.voicerecordcommand"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 3140
    iget-object v2, p0, Lcom/android/server/status/StatusBarService$30;->this$0:Lcom/android/server/status/StatusBarService;

    invoke-static {v2, p2}, Lcom/android/server/status/StatusBarService;->access$1900(Lcom/android/server/status/StatusBarService;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 3143
    :cond_b
    const-string v2, "android.intent.action.NETWORK_MODE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "source"

    invoke-virtual {p2, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-ne v3, v2, :cond_1

    .line 3144
    const-string v2, "state"

    invoke-virtual {p2, v2, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 3145
    .local v1, on:Z
    iget-object v2, p0, Lcom/android/server/status/StatusBarService$30;->this$0:Lcom/android/server/status/StatusBarService;

    iget-boolean v2, v2, Lcom/android/server/status/StatusBarService;->mDataStatus:Z

    if-eq v1, v2, :cond_1

    .line 3146
    iget-object v2, p0, Lcom/android/server/status/StatusBarService$30;->this$0:Lcom/android/server/status/StatusBarService;

    iget-boolean v2, v2, Lcom/android/server/status/StatusBarService;->mDataStatus:Z

    if-nez v2, :cond_c

    .line 3147
    iget-object v2, p0, Lcom/android/server/status/StatusBarService$30;->this$0:Lcom/android/server/status/StatusBarService;

    sget-object v3, Lcom/android/server/status/StatusBarService$DataConnState;->DATA_TURNING_ON:Lcom/android/server/status/StatusBarService$DataConnState;

    invoke-static {v2, v3}, Lcom/android/server/status/StatusBarService;->access$102(Lcom/android/server/status/StatusBarService;Lcom/android/server/status/StatusBarService$DataConnState;)Lcom/android/server/status/StatusBarService$DataConnState;

    .line 3148
    iget-object v2, p0, Lcom/android/server/status/StatusBarService$30;->this$0:Lcom/android/server/status/StatusBarService;

    iget-object v2, v2, Lcom/android/server/status/StatusBarService;->mDataBtn:Landroid/widget/TextView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3149
    iget-object v2, p0, Lcom/android/server/status/StatusBarService$30;->this$0:Lcom/android/server/status/StatusBarService;

    iget-object v2, v2, Lcom/android/server/status/StatusBarService;->mDataBtn:Landroid/widget/TextView;

    const v3, 0x1040314

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 3150
    iget-object v2, p0, Lcom/android/server/status/StatusBarService$30;->this$0:Lcom/android/server/status/StatusBarService;

    iget-object v2, v2, Lcom/android/server/status/StatusBarService;->mDataBtn:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 3157
    :goto_1
    iget-object v2, p0, Lcom/android/server/status/StatusBarService$30;->this$0:Lcom/android/server/status/StatusBarService;

    invoke-static {v2}, Lcom/android/server/status/StatusBarService;->access$500(Lcom/android/server/status/StatusBarService;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/status/StatusBarService$30;->this$0:Lcom/android/server/status/StatusBarService;

    invoke-static {v3}, Lcom/android/server/status/StatusBarService;->access$400(Lcom/android/server/status/StatusBarService;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3158
    iget-object v2, p0, Lcom/android/server/status/StatusBarService$30;->this$0:Lcom/android/server/status/StatusBarService;

    invoke-static {v2}, Lcom/android/server/status/StatusBarService;->access$500(Lcom/android/server/status/StatusBarService;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/status/StatusBarService$30;->this$0:Lcom/android/server/status/StatusBarService;

    invoke-static {v3}, Lcom/android/server/status/StatusBarService;->access$400(Lcom/android/server/status/StatusBarService;)Ljava/lang/Runnable;

    move-result-object v3

    const-wide/16 v4, 0x2710

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 3152
    :cond_c
    iget-object v2, p0, Lcom/android/server/status/StatusBarService$30;->this$0:Lcom/android/server/status/StatusBarService;

    sget-object v3, Lcom/android/server/status/StatusBarService$DataConnState;->DATA_TURNING_OFF:Lcom/android/server/status/StatusBarService$DataConnState;

    invoke-static {v2, v3}, Lcom/android/server/status/StatusBarService;->access$102(Lcom/android/server/status/StatusBarService;Lcom/android/server/status/StatusBarService$DataConnState;)Lcom/android/server/status/StatusBarService$DataConnState;

    .line 3153
    iget-object v2, p0, Lcom/android/server/status/StatusBarService$30;->this$0:Lcom/android/server/status/StatusBarService;

    iget-object v2, v2, Lcom/android/server/status/StatusBarService;->mDataBtn:Landroid/widget/TextView;

    const v3, -0x383839

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3154
    iget-object v2, p0, Lcom/android/server/status/StatusBarService$30;->this$0:Lcom/android/server/status/StatusBarService;

    iget-object v2, v2, Lcom/android/server/status/StatusBarService;->mDataBtn:Landroid/widget/TextView;

    const v3, 0x1040315

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 3155
    iget-object v2, p0, Lcom/android/server/status/StatusBarService$30;->this$0:Lcom/android/server/status/StatusBarService;

    iget-object v2, v2, Lcom/android/server/status/StatusBarService;->mDataBtn:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_1
.end method
