.class Lcom/android/settings/wifi/WifiApSettings$2;
.super Landroid/telephony/PhoneStateListener;
.source "WifiApSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiApSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiApSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiApSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 315
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApSettings$2;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 5
    .parameter "serviceState"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v2, "WifiApSettings"

    .line 317
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$2;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiApSettings;->access$702(Lcom/android/settings/wifi/WifiApSettings;Z)Z

    .line 318
    const-string v0, "WifiApSettings"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bRoaming "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings$2;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiApSettings;->access$700(Lcom/android/settings/wifi/WifiApSettings;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 334
    const-string v0, "onSerivceStateChanged()"

    const-string v1, "Unhandled state"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$2;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiApSettings;->access$500(Lcom/android/settings/wifi/WifiApSettings;)Lcom/android/settings/wifi/WifiApEnabler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings$2;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiApSettings;->access$900(Lcom/android/settings/wifi/WifiApSettings;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings$2;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiApSettings;->access$300(Lcom/android/settings/wifi/WifiApSettings;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings$2;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiApSettings;->access$800(Lcom/android/settings/wifi/WifiApSettings;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings$2;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiApSettings;->access$700(Lcom/android/settings/wifi/WifiApSettings;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move v1, v4

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiApEnabler;->setProhibitionWifiAp(Z)V

    .line 338
    return-void

    .line 322
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$2;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v0, v4}, Lcom/android/settings/wifi/WifiApSettings;->access$802(Lcom/android/settings/wifi/WifiApSettings;Z)Z

    goto :goto_0

    .line 325
    :pswitch_1
    const-string v0, "WifiApSettings"

    const-string v0, "ServiceState.STATE_EMERGENCY_ONLY has been set"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 328
    :pswitch_2
    const-string v0, "WifiApSettings"

    const-string v0, "ServiceState.STATE_POWER_OFF has been set"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 331
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$2;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v0, v3}, Lcom/android/settings/wifi/WifiApSettings;->access$802(Lcom/android/settings/wifi/WifiApSettings;Z)Z

    goto :goto_0

    :cond_1
    move v1, v3

    .line 337
    goto :goto_1

    .line 320
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
