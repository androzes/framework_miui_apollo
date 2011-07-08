.class Lcom/android/server/WifiService$WifiHandler;
.super Landroid/os/Handler;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WifiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WifiService;


# direct methods
.method public constructor <init>(Lcom/android/server/WifiService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 2061
    iput-object p1, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    .line 2062
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2063
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2067
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 2123
    .end local p0
    :goto_0
    return-void

    .line 2070
    .restart local p0
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v3, :cond_1

    move v1, v3

    :goto_1
    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v3, v1, v2}, Lcom/android/server/WifiService;->access$1600(Lcom/android/server/WifiService;ZZI)Z

    .line 2071
    iget-object v0, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    invoke-static {v0}, Lcom/android/server/WifiService;->access$1700(Lcom/android/server/WifiService;)Lcom/android/server/WifiWatchdogService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2072
    iget-object v0, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    new-instance v1, Lcom/android/server/WifiWatchdogService;

    iget-object v2, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    invoke-static {v2}, Lcom/android/server/WifiService;->access$700(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    invoke-static {v3}, Lcom/android/server/WifiService;->access$1200(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/server/WifiWatchdogService;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiStateTracker;)V

    invoke-static {v0, v1}, Lcom/android/server/WifiService;->access$1702(Lcom/android/server/WifiService;Lcom/android/server/WifiWatchdogService;)Lcom/android/server/WifiWatchdogService;

    .line 2074
    :cond_0
    invoke-static {}, Lcom/android/server/WifiService;->access$1800()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    :cond_1
    move v1, v4

    .line 2070
    goto :goto_1

    .line 2078
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    invoke-static {v0}, Lcom/android/server/WifiService;->access$1200(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_2

    move v1, v3

    :goto_2
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateTracker;->setScanOnlyMode(Z)V

    .line 2079
    iget-object v0, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    invoke-static {v0}, Lcom/android/server/WifiService;->access$1200(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateTracker;->restart()Z

    .line 2080
    invoke-static {}, Lcom/android/server/WifiService;->access$1800()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    :cond_2
    move v1, v4

    .line 2078
    goto :goto_2

    .line 2084
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    invoke-static {v0}, Lcom/android/server/WifiService;->access$1900(Lcom/android/server/WifiService;)V

    goto :goto_0

    .line 2090
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v3, :cond_3

    move v1, v3

    :goto_3
    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v4, v1, v2}, Lcom/android/server/WifiService;->access$1600(Lcom/android/server/WifiService;ZZI)Z

    .line 2091
    iget-object v0, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/WifiService;->access$1702(Lcom/android/server/WifiService;Lcom/android/server/WifiWatchdogService;)Lcom/android/server/WifiWatchdogService;

    .line 2092
    invoke-static {}, Lcom/android/server/WifiService;->access$1800()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    :cond_3
    move v1, v4

    .line 2090
    goto :goto_3

    .line 2096
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    invoke-static {v0}, Lcom/android/server/WifiService;->access$1200(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateTracker;->disconnectAndStop()Z

    goto/16 :goto_0

    .line 2101
    :pswitch_5
    invoke-static {}, Lcom/android/server/WifiService;->access$2000()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    .line 2105
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/net/wifi/WifiConfiguration;

    invoke-static {v0, v3, v1, p0}, Lcom/android/server/WifiService;->access$2100(Lcom/android/server/WifiService;ZILandroid/net/wifi/WifiConfiguration;)Z

    .line 2108
    invoke-static {}, Lcom/android/server/WifiService;->access$1800()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    .line 2112
    .restart local p0
    :pswitch_7
    iget-object v0, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/net/wifi/WifiConfiguration;

    invoke-static {v0, v4, v1, p0}, Lcom/android/server/WifiService;->access$2100(Lcom/android/server/WifiService;ZILandroid/net/wifi/WifiConfiguration;)Z

    .line 2115
    invoke-static {}, Lcom/android/server/WifiService;->access$1800()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    .line 2119
    .restart local p0
    :pswitch_8
    iget-object v0, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    if-ne v2, v3, :cond_4

    move v2, v3

    :goto_4
    invoke-static {v0, v1, v2}, Lcom/android/server/WifiService;->access$2200(Lcom/android/server/WifiService;IZ)Z

    goto/16 :goto_0

    :cond_4
    move v2, v4

    goto :goto_4

    .line 2067
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
