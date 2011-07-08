.class Lcom/android/internal/location/GpsLocationProvider$2;
.super Landroid/content/BroadcastReceiver;
.source "GpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/location/GpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/location/GpsLocationProvider;


# direct methods
.method constructor <init>(Lcom/android/internal/location/GpsLocationProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 407
    iput-object p1, p0, Lcom/android/internal/location/GpsLocationProvider$2;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    const-string v2, "GpsLocationProvider"

    .line 408
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 410
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.android.internal.location.ALARM_WAKEUP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 411
    const-string v1, "GpsLocationProvider"

    const-string v1, "ALARM_WAKEUP"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider$2;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v1}, Lcom/android/internal/location/GpsLocationProvider;->access$100(Lcom/android/internal/location/GpsLocationProvider;)V

    .line 433
    :cond_0
    :goto_0
    return-void

    .line 413
    :cond_1
    const-string v1, "com.android.internal.location.ALARM_TIMEOUT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 414
    const-string v1, "GpsLocationProvider"

    const-string v1, "ALARM_TIMEOUT"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider$2;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v1}, Lcom/android/internal/location/GpsLocationProvider;->access$200(Lcom/android/internal/location/GpsLocationProvider;)V

    goto :goto_0

    .line 416
    :cond_2
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 417
    invoke-static {}, Lcom/android/internal/location/GpsLocationProvider;->access$300()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 418
    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider$2;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v1}, Lcom/android/internal/location/GpsLocationProvider;->access$400(Lcom/android/internal/location/GpsLocationProvider;)Lcom/android/internal/location/GpsLocationProvider$HybridGps;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->access$500(Lcom/android/internal/location/GpsLocationProvider$HybridGps;)V

    goto :goto_0

    .line 426
    :cond_3
    const-string v1, "android.intent.action.DATA_SMS_RECEIVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 427
    const-string v1, "GpsLocationProvider"

    const-string v1, "DATA_SMS_RECEIVED_ACTION"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider$2;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v1, p2}, Lcom/android/internal/location/GpsLocationProvider;->access$600(Lcom/android/internal/location/GpsLocationProvider;Landroid/content/Intent;)V

    goto :goto_0

    .line 429
    :cond_4
    const-string v1, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 430
    const-string v1, "GpsLocationProvider"

    const-string v1, "WAP_PUSH_RECEIVED_ACTION"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider$2;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v1, p2}, Lcom/android/internal/location/GpsLocationProvider;->access$700(Lcom/android/internal/location/GpsLocationProvider;Landroid/content/Intent;)V

    goto :goto_0
.end method
