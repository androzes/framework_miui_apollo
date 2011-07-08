.class Lcom/android/server/status/StatusBarService$4;
.super Landroid/telephony/PhoneStateListener;
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
    .line 521
    iput-object p1, p0, Lcom/android/server/status/StatusBarService$4;->this$0:Lcom/android/server/status/StatusBarService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(I)V
    .locals 3
    .parameter "state"

    .prologue
    const-string v2, "StatusBar"

    .line 522
    const-string v0, "StatusBar"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDataConnectionStateChanged -> current data state : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    packed-switch p1, :pswitch_data_0

    .line 545
    :goto_0
    :pswitch_0
    return-void

    .line 525
    :pswitch_1
    const-string v0, "StatusBar"

    const-string v0, "onDataConnectionStateChanged -> DATA DISCONNECTED !!!"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    sget-object v0, Lcom/android/server/status/StatusBarService$DataConnState;->DATA_TURNING_OFF:Lcom/android/server/status/StatusBarService$DataConnState;

    iget-object v1, p0, Lcom/android/server/status/StatusBarService$4;->this$0:Lcom/android/server/status/StatusBarService;

    invoke-static {v1}, Lcom/android/server/status/StatusBarService;->access$100(Lcom/android/server/status/StatusBarService;)Lcom/android/server/status/StatusBarService$DataConnState;

    move-result-object v1

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/android/server/status/StatusBarService$DataConnState;->DATA_ON:Lcom/android/server/status/StatusBarService$DataConnState;

    iget-object v1, p0, Lcom/android/server/status/StatusBarService$4;->this$0:Lcom/android/server/status/StatusBarService;

    invoke-static {v1}, Lcom/android/server/status/StatusBarService;->access$100(Lcom/android/server/status/StatusBarService;)Lcom/android/server/status/StatusBarService$DataConnState;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 527
    :cond_0
    iget-object v0, p0, Lcom/android/server/status/StatusBarService$4;->this$0:Lcom/android/server/status/StatusBarService;

    sget-object v1, Lcom/android/server/status/StatusBarService$DataConnState;->DATA_OFF:Lcom/android/server/status/StatusBarService$DataConnState;

    invoke-static {v0, v1}, Lcom/android/server/status/StatusBarService;->access$102(Lcom/android/server/status/StatusBarService;Lcom/android/server/status/StatusBarService$DataConnState;)Lcom/android/server/status/StatusBarService$DataConnState;

    .line 528
    iget-object v0, p0, Lcom/android/server/status/StatusBarService$4;->this$0:Lcom/android/server/status/StatusBarService;

    invoke-static {v0}, Lcom/android/server/status/StatusBarService;->access$500(Lcom/android/server/status/StatusBarService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/status/StatusBarService$4;->this$0:Lcom/android/server/status/StatusBarService;

    invoke-static {v1}, Lcom/android/server/status/StatusBarService;->access$400(Lcom/android/server/status/StatusBarService;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 529
    iget-object v0, p0, Lcom/android/server/status/StatusBarService$4;->this$0:Lcom/android/server/status/StatusBarService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/status/StatusBarService;->access$300(Lcom/android/server/status/StatusBarService;Z)V

    goto :goto_0

    .line 531
    :cond_1
    const-string v0, "StatusBar"

    const-string v0, "onDataConnectionStateChanged -> DATA DISCONNECTED While user is waiting for DATA CONNECTED"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 535
    :pswitch_2
    const-string v0, "StatusBar"

    const-string v0, "onDataConnectionStateChanged -> DATA CONNECTED !!!"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    sget-object v0, Lcom/android/server/status/StatusBarService$DataConnState;->DATA_TURNING_ON:Lcom/android/server/status/StatusBarService$DataConnState;

    iget-object v1, p0, Lcom/android/server/status/StatusBarService$4;->this$0:Lcom/android/server/status/StatusBarService;

    invoke-static {v1}, Lcom/android/server/status/StatusBarService;->access$100(Lcom/android/server/status/StatusBarService;)Lcom/android/server/status/StatusBarService$DataConnState;

    move-result-object v1

    if-eq v0, v1, :cond_2

    sget-object v0, Lcom/android/server/status/StatusBarService$DataConnState;->DATA_OFF:Lcom/android/server/status/StatusBarService$DataConnState;

    iget-object v1, p0, Lcom/android/server/status/StatusBarService$4;->this$0:Lcom/android/server/status/StatusBarService;

    invoke-static {v1}, Lcom/android/server/status/StatusBarService;->access$100(Lcom/android/server/status/StatusBarService;)Lcom/android/server/status/StatusBarService$DataConnState;

    move-result-object v1

    if-ne v0, v1, :cond_3

    .line 537
    :cond_2
    iget-object v0, p0, Lcom/android/server/status/StatusBarService$4;->this$0:Lcom/android/server/status/StatusBarService;

    sget-object v1, Lcom/android/server/status/StatusBarService$DataConnState;->DATA_ON:Lcom/android/server/status/StatusBarService$DataConnState;

    invoke-static {v0, v1}, Lcom/android/server/status/StatusBarService;->access$102(Lcom/android/server/status/StatusBarService;Lcom/android/server/status/StatusBarService$DataConnState;)Lcom/android/server/status/StatusBarService$DataConnState;

    .line 538
    iget-object v0, p0, Lcom/android/server/status/StatusBarService$4;->this$0:Lcom/android/server/status/StatusBarService;

    invoke-static {v0}, Lcom/android/server/status/StatusBarService;->access$500(Lcom/android/server/status/StatusBarService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/status/StatusBarService$4;->this$0:Lcom/android/server/status/StatusBarService;

    invoke-static {v1}, Lcom/android/server/status/StatusBarService;->access$400(Lcom/android/server/status/StatusBarService;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 539
    iget-object v0, p0, Lcom/android/server/status/StatusBarService$4;->this$0:Lcom/android/server/status/StatusBarService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/status/StatusBarService;->access$300(Lcom/android/server/status/StatusBarService;Z)V

    goto :goto_0

    .line 541
    :cond_3
    const-string v0, "StatusBar"

    const-string v0, "onDataConnectionStateChanged -> DATA CONNECTED While user is waiting for DATA DISCONNECTED"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 523
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
