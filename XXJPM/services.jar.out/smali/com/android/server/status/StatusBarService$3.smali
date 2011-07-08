.class Lcom/android/server/status/StatusBarService$3;
.super Ljava/lang/Object;
.source "StatusBarService.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 500
    iput-object p1, p0, Lcom/android/server/status/StatusBarService$3;->this$0:Lcom/android/server/status/StatusBarService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 501
    sget-object v0, Lcom/android/server/status/StatusBarService$40;->$SwitchMap$com$android$server$status$StatusBarService$DataConnState:[I

    iget-object v1, p0, Lcom/android/server/status/StatusBarService$3;->this$0:Lcom/android/server/status/StatusBarService;

    invoke-static {v1}, Lcom/android/server/status/StatusBarService;->access$100(Lcom/android/server/status/StatusBarService;)Lcom/android/server/status/StatusBarService$DataConnState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/status/StatusBarService$DataConnState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 514
    const-string v0, "StatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mHandleDataConnStateChangTimeOut -> mDataConnState is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/status/StatusBarService$3;->this$0:Lcom/android/server/status/StatusBarService;

    invoke-static {v2}, Lcom/android/server/status/StatusBarService;->access$100(Lcom/android/server/status/StatusBarService;)Lcom/android/server/status/StatusBarService$DataConnState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    :goto_0
    return-void

    .line 504
    :pswitch_0
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/server/status/StatusBarService$3;->this$0:Lcom/android/server/status/StatusBarService;

    invoke-static {v1}, Lcom/android/server/status/StatusBarService;->access$200(Lcom/android/server/status/StatusBarService;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 505
    iget-object v0, p0, Lcom/android/server/status/StatusBarService$3;->this$0:Lcom/android/server/status/StatusBarService;

    sget-object v1, Lcom/android/server/status/StatusBarService$DataConnState;->DATA_ON:Lcom/android/server/status/StatusBarService$DataConnState;

    invoke-static {v0, v1}, Lcom/android/server/status/StatusBarService;->access$102(Lcom/android/server/status/StatusBarService;Lcom/android/server/status/StatusBarService$DataConnState;)Lcom/android/server/status/StatusBarService$DataConnState;

    .line 506
    iget-object v0, p0, Lcom/android/server/status/StatusBarService$3;->this$0:Lcom/android/server/status/StatusBarService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/status/StatusBarService;->access$300(Lcom/android/server/status/StatusBarService;Z)V

    goto :goto_0

    .line 509
    :cond_0
    iget-object v0, p0, Lcom/android/server/status/StatusBarService$3;->this$0:Lcom/android/server/status/StatusBarService;

    sget-object v1, Lcom/android/server/status/StatusBarService$DataConnState;->DATA_OFF:Lcom/android/server/status/StatusBarService$DataConnState;

    invoke-static {v0, v1}, Lcom/android/server/status/StatusBarService;->access$102(Lcom/android/server/status/StatusBarService;Lcom/android/server/status/StatusBarService$DataConnState;)Lcom/android/server/status/StatusBarService$DataConnState;

    .line 510
    iget-object v0, p0, Lcom/android/server/status/StatusBarService$3;->this$0:Lcom/android/server/status/StatusBarService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/status/StatusBarService;->access$300(Lcom/android/server/status/StatusBarService;Z)V

    goto :goto_0

    .line 501
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
