.class Landroid/net/wifi/WifiStateTracker$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "WifiStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateTracker;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiStateTracker;Landroid/os/Handler;)V
    .locals 3
    .parameter
    .parameter "handler"

    .prologue
    const/4 v2, 0x0

    .line 2590
    iput-object p1, p0, Landroid/net/wifi/WifiStateTracker$SettingsObserver;->this$0:Landroid/net/wifi/WifiStateTracker;

    .line 2591
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 2592
    invoke-static {p1}, Landroid/net/wifi/WifiStateTracker;->access$300(Landroid/net/wifi/WifiStateTracker;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2593
    .local v0, cr:Landroid/content/ContentResolver;
    const-string/jumbo v1, "wifi_use_static_ip"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2595
    const-string/jumbo v1, "wifi_static_ip"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2597
    const-string/jumbo v1, "wifi_static_gateway"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2599
    const-string/jumbo v1, "wifi_static_netmask"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2601
    const-string/jumbo v1, "wifi_static_dns1"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2603
    const-string/jumbo v1, "wifi_static_dns2"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2605
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 10
    .parameter "selfChange"

    .prologue
    const/4 v9, 0x1

    .line 2608
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 2610
    iget-object v7, p0, Landroid/net/wifi/WifiStateTracker$SettingsObserver;->this$0:Landroid/net/wifi/WifiStateTracker;

    invoke-static {v7}, Landroid/net/wifi/WifiStateTracker;->access$400(Landroid/net/wifi/WifiStateTracker;)Z

    move-result v6

    .line 2612
    .local v6, wasStaticIp:Z
    const/4 v2, 0x0

    .local v2, oDns2:I
    move v1, v2

    .local v1, oDns1:I
    move v5, v2

    .local v5, oMsk:I
    move v3, v2

    .local v3, oGw:I
    move v4, v2

    .line 2613
    .local v4, oIp:I
    if-eqz v6, :cond_0

    .line 2614
    iget-object v7, p0, Landroid/net/wifi/WifiStateTracker$SettingsObserver;->this$0:Landroid/net/wifi/WifiStateTracker;

    invoke-static {v7}, Landroid/net/wifi/WifiStateTracker;->access$200(Landroid/net/wifi/WifiStateTracker;)Landroid/net/DhcpInfo;

    move-result-object v7

    iget v4, v7, Landroid/net/DhcpInfo;->ipAddress:I

    .line 2615
    iget-object v7, p0, Landroid/net/wifi/WifiStateTracker$SettingsObserver;->this$0:Landroid/net/wifi/WifiStateTracker;

    invoke-static {v7}, Landroid/net/wifi/WifiStateTracker;->access$200(Landroid/net/wifi/WifiStateTracker;)Landroid/net/DhcpInfo;

    move-result-object v7

    iget v3, v7, Landroid/net/DhcpInfo;->gateway:I

    .line 2616
    iget-object v7, p0, Landroid/net/wifi/WifiStateTracker$SettingsObserver;->this$0:Landroid/net/wifi/WifiStateTracker;

    invoke-static {v7}, Landroid/net/wifi/WifiStateTracker;->access$200(Landroid/net/wifi/WifiStateTracker;)Landroid/net/DhcpInfo;

    move-result-object v7

    iget v5, v7, Landroid/net/DhcpInfo;->netmask:I

    .line 2617
    iget-object v7, p0, Landroid/net/wifi/WifiStateTracker$SettingsObserver;->this$0:Landroid/net/wifi/WifiStateTracker;

    invoke-static {v7}, Landroid/net/wifi/WifiStateTracker;->access$200(Landroid/net/wifi/WifiStateTracker;)Landroid/net/DhcpInfo;

    move-result-object v7

    iget v1, v7, Landroid/net/DhcpInfo;->dns1:I

    .line 2618
    iget-object v7, p0, Landroid/net/wifi/WifiStateTracker$SettingsObserver;->this$0:Landroid/net/wifi/WifiStateTracker;

    invoke-static {v7}, Landroid/net/wifi/WifiStateTracker;->access$200(Landroid/net/wifi/WifiStateTracker;)Landroid/net/DhcpInfo;

    move-result-object v7

    iget v2, v7, Landroid/net/DhcpInfo;->dns2:I

    .line 2620
    :cond_0
    iget-object v7, p0, Landroid/net/wifi/WifiStateTracker$SettingsObserver;->this$0:Landroid/net/wifi/WifiStateTracker;

    invoke-static {v7}, Landroid/net/wifi/WifiStateTracker;->access$500(Landroid/net/wifi/WifiStateTracker;)V

    .line 2622
    iget-object v7, p0, Landroid/net/wifi/WifiStateTracker$SettingsObserver;->this$0:Landroid/net/wifi/WifiStateTracker;

    invoke-static {v7}, Landroid/net/wifi/WifiStateTracker;->access$600(Landroid/net/wifi/WifiStateTracker;)Landroid/net/wifi/WifiInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v7

    sget-object v8, Landroid/net/wifi/SupplicantState;->UNINITIALIZED:Landroid/net/wifi/SupplicantState;

    if-ne v7, v8, :cond_2

    .line 2642
    :cond_1
    :goto_0
    return-void

    .line 2626
    :cond_2
    iget-object v7, p0, Landroid/net/wifi/WifiStateTracker$SettingsObserver;->this$0:Landroid/net/wifi/WifiStateTracker;

    invoke-static {v7}, Landroid/net/wifi/WifiStateTracker;->access$400(Landroid/net/wifi/WifiStateTracker;)Z

    move-result v7

    if-ne v6, v7, :cond_3

    if-eqz v6, :cond_4

    iget-object v7, p0, Landroid/net/wifi/WifiStateTracker$SettingsObserver;->this$0:Landroid/net/wifi/WifiStateTracker;

    invoke-static {v7}, Landroid/net/wifi/WifiStateTracker;->access$200(Landroid/net/wifi/WifiStateTracker;)Landroid/net/DhcpInfo;

    move-result-object v7

    iget v7, v7, Landroid/net/DhcpInfo;->ipAddress:I

    if-ne v4, v7, :cond_3

    iget-object v7, p0, Landroid/net/wifi/WifiStateTracker$SettingsObserver;->this$0:Landroid/net/wifi/WifiStateTracker;

    invoke-static {v7}, Landroid/net/wifi/WifiStateTracker;->access$200(Landroid/net/wifi/WifiStateTracker;)Landroid/net/DhcpInfo;

    move-result-object v7

    iget v7, v7, Landroid/net/DhcpInfo;->gateway:I

    if-ne v3, v7, :cond_3

    iget-object v7, p0, Landroid/net/wifi/WifiStateTracker$SettingsObserver;->this$0:Landroid/net/wifi/WifiStateTracker;

    invoke-static {v7}, Landroid/net/wifi/WifiStateTracker;->access$200(Landroid/net/wifi/WifiStateTracker;)Landroid/net/DhcpInfo;

    move-result-object v7

    iget v7, v7, Landroid/net/DhcpInfo;->netmask:I

    if-ne v5, v7, :cond_3

    iget-object v7, p0, Landroid/net/wifi/WifiStateTracker$SettingsObserver;->this$0:Landroid/net/wifi/WifiStateTracker;

    invoke-static {v7}, Landroid/net/wifi/WifiStateTracker;->access$200(Landroid/net/wifi/WifiStateTracker;)Landroid/net/DhcpInfo;

    move-result-object v7

    iget v7, v7, Landroid/net/DhcpInfo;->dns1:I

    if-ne v1, v7, :cond_3

    iget-object v7, p0, Landroid/net/wifi/WifiStateTracker$SettingsObserver;->this$0:Landroid/net/wifi/WifiStateTracker;

    invoke-static {v7}, Landroid/net/wifi/WifiStateTracker;->access$200(Landroid/net/wifi/WifiStateTracker;)Landroid/net/DhcpInfo;

    move-result-object v7

    iget v7, v7, Landroid/net/DhcpInfo;->dns2:I

    if-eq v2, v7, :cond_4

    :cond_3
    move v0, v9

    .line 2635
    .local v0, changed:Z
    :goto_1
    if-eqz v0, :cond_1

    .line 2636
    iget-object v7, p0, Landroid/net/wifi/WifiStateTracker$SettingsObserver;->this$0:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v7, v9}, Landroid/net/wifi/WifiStateTracker;->resetConnections(Z)V

    .line 2637
    iget-object v7, p0, Landroid/net/wifi/WifiStateTracker$SettingsObserver;->this$0:Landroid/net/wifi/WifiStateTracker;

    invoke-static {v7}, Landroid/net/wifi/WifiStateTracker;->access$700(Landroid/net/wifi/WifiStateTracker;)V

    .line 2638
    iget-object v7, p0, Landroid/net/wifi/WifiStateTracker$SettingsObserver;->this$0:Landroid/net/wifi/WifiStateTracker;

    invoke-static {v7}, Landroid/net/wifi/WifiStateTracker;->access$400(Landroid/net/wifi/WifiStateTracker;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2639
    iget-object v7, p0, Landroid/net/wifi/WifiStateTracker$SettingsObserver;->this$0:Landroid/net/wifi/WifiStateTracker;

    invoke-static {v7}, Landroid/net/wifi/WifiStateTracker;->access$800(Landroid/net/wifi/WifiStateTracker;)Landroid/os/Handler;

    move-result-object v7

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 2626
    .end local v0           #changed:Z
    :cond_4
    const/4 v7, 0x0

    move v0, v7

    goto :goto_1
.end method
