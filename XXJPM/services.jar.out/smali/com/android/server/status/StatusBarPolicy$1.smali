.class Lcom/android/server/status/StatusBarPolicy$1;
.super Landroid/content/BroadcastReceiver;
.source "StatusBarPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/status/StatusBarPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/status/StatusBarPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/status/StatusBarPolicy;)V
    .locals 0
    .parameter

    .prologue
    .line 417
    iput-object p1, p0, Lcom/android/server/status/StatusBarPolicy$1;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 418
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 419
    .local v0, action:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy$1;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v2, p1}, Lcom/android/server/status/StatusBarPolicy;->access$102(Lcom/android/server/status/StatusBarPolicy;Landroid/content/Context;)Landroid/content/Context;

    .line 420
    const-string v2, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 421
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy$1;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v2}, Lcom/android/server/status/StatusBarPolicy;->access$200(Lcom/android/server/status/StatusBarPolicy;)V

    .line 483
    :cond_0
    :goto_0
    return-void

    .line 423
    :cond_1
    const-string v2, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 424
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy$1;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v2}, Lcom/android/server/status/StatusBarPolicy;->access$200(Lcom/android/server/status/StatusBarPolicy;)V

    goto :goto_0

    .line 426
    :cond_2
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 427
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy$1;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v2, p2}, Lcom/android/server/status/StatusBarPolicy;->access$300(Lcom/android/server/status/StatusBarPolicy;Landroid/content/Intent;)V

    goto :goto_0

    .line 429
    :cond_3
    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 430
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy$1;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v2}, Lcom/android/server/status/StatusBarPolicy;->access$200(Lcom/android/server/status/StatusBarPolicy;)V

    goto :goto_0

    .line 432
    :cond_4
    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 433
    const-string v2, "time-zone"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 434
    .local v1, tz:Ljava/lang/String;
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v2}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V

    .line 435
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy$1;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/status/StatusBarPolicy;->access$402(Lcom/android/server/status/StatusBarPolicy;Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 436
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy$1;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v2}, Lcom/android/server/status/StatusBarPolicy;->access$500(Lcom/android/server/status/StatusBarPolicy;)Ljava/text/SimpleDateFormat;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 437
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy$1;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v2}, Lcom/android/server/status/StatusBarPolicy;->access$500(Lcom/android/server/status/StatusBarPolicy;)Ljava/text/SimpleDateFormat;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy$1;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v3}, Lcom/android/server/status/StatusBarPolicy;->access$400(Lcom/android/server/status/StatusBarPolicy;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 439
    :cond_5
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy$1;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v2}, Lcom/android/server/status/StatusBarPolicy;->access$200(Lcom/android/server/status/StatusBarPolicy;)V

    goto :goto_0

    .line 441
    .end local v1           #tz:Ljava/lang/String;
    :cond_6
    const-string v2, "android.intent.action.ALARM_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 442
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy$1;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v2, p2}, Lcom/android/server/status/StatusBarPolicy;->access$600(Lcom/android/server/status/StatusBarPolicy;Landroid/content/Intent;)V

    goto :goto_0

    .line 444
    :cond_7
    const-string v2, "android.intent.action.SYNC_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 445
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy$1;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v2, p2}, Lcom/android/server/status/StatusBarPolicy;->access$700(Lcom/android/server/status/StatusBarPolicy;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 447
    :cond_8
    const-string v2, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 448
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy$1;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v2, p2}, Lcom/android/server/status/StatusBarPolicy;->access$800(Lcom/android/server/status/StatusBarPolicy;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 450
    :cond_9
    const-string v2, "android.intent.action.BATTERY_OKAY"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 452
    :cond_a
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy$1;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v2, p2}, Lcom/android/server/status/StatusBarPolicy;->access$900(Lcom/android/server/status/StatusBarPolicy;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 454
    :cond_b
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "android.bluetooth.headset.action.STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "android.bluetooth.a2dp.action.SINK_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "com.broadcom.bt.service.hid.action.STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 459
    :cond_c
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy$1;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v2, p2}, Lcom/android/server/status/StatusBarPolicy;->access$1000(Lcom/android/server/status/StatusBarPolicy;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 461
    :cond_d
    const-string v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 464
    :cond_e
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy$1;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v2, p2}, Lcom/android/server/status/StatusBarPolicy;->access$1100(Lcom/android/server/status/StatusBarPolicy;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 466
    :cond_f
    const-string v2, "android.location.GPS_ENABLED_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    const-string v2, "android.location.GPS_FIX_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 468
    :cond_10
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy$1;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v2, p2}, Lcom/android/server/status/StatusBarPolicy;->access$1200(Lcom/android/server/status/StatusBarPolicy;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 470
    :cond_11
    const-string v2, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    const-string v2, "android.media.VIBRATE_SETTING_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 472
    :cond_12
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy$1;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v2}, Lcom/android/server/status/StatusBarPolicy;->access$1300(Lcom/android/server/status/StatusBarPolicy;)V

    goto/16 :goto_0

    .line 474
    :cond_13
    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 475
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy$1;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v2, p2}, Lcom/android/server/status/StatusBarPolicy;->access$1400(Lcom/android/server/status/StatusBarPolicy;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 477
    :cond_14
    const-string v2, "com.android.internal.telephony.cdma.intent.action.TTY_ENABLED_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 478
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy$1;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v2, p2}, Lcom/android/server/status/StatusBarPolicy;->access$1500(Lcom/android/server/status/StatusBarPolicy;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 480
    :cond_15
    const-string v2, "android.servicestate.HOME_ZONE_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 481
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy$1;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v2, p2}, Lcom/android/server/status/StatusBarPolicy;->access$1600(Lcom/android/server/status/StatusBarPolicy;Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
