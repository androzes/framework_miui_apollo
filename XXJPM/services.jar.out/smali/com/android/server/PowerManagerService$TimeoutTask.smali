.class Lcom/android/server/PowerManagerService$TimeoutTask;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeoutTask"
.end annotation


# instance fields
.field nextState:I

.field final synthetic this$0:Lcom/android/server/PowerManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/PowerManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 1075
    iput-object p1, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1075
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService$TimeoutTask;-><init>(Lcom/android/server/PowerManagerService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1080
    iget-object v2, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$500(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$LockList;

    move-result-object v2

    monitor-enter v2

    .line 1085
    :try_start_0
    iget v3, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->nextState:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 1086
    monitor-exit v2

    .line 1108
    :goto_0
    return-void

    .line 1089
    :cond_0
    iget-object v3, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->this$0:Lcom/android/server/PowerManagerService;

    iget v4, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->nextState:I

    invoke-static {v3, v4}, Lcom/android/server/PowerManagerService;->access$2102(Lcom/android/server/PowerManagerService;I)I

    .line 1090
    const-string v3, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Timer 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v5}, Lcom/android/server/PowerManagerService;->access$2200(Lcom/android/server/PowerManagerService;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "->0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v5}, Lcom/android/server/PowerManagerService;->access$2100(Lcom/android/server/PowerManagerService;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v5}, Lcom/android/server/PowerManagerService;->access$2300(Lcom/android/server/PowerManagerService;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    iget-object v3, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/android/server/PowerManagerService;->access$2400(Lcom/android/server/PowerManagerService;I)V

    .line 1092
    iget-object v3, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->this$0:Lcom/android/server/PowerManagerService;

    iget v4, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->nextState:I

    iget-object v5, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v5}, Lcom/android/server/PowerManagerService;->access$2300(Lcom/android/server/PowerManagerService;)I

    move-result v5

    or-int/2addr v4, v5

    invoke-static {v3, v4}, Lcom/android/server/PowerManagerService;->access$2500(Lcom/android/server/PowerManagerService;I)V

    .line 1094
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1096
    .local v0, now:J
    iget v3, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->nextState:I

    packed-switch v3, :pswitch_data_0

    .line 1107
    :goto_1
    :pswitch_0
    monitor-exit v2

    goto :goto_0

    .end local v0           #now:J
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1099
    .restart local v0       #now:J
    :pswitch_1
    :try_start_1
    iget-object v3, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$2600(Lcom/android/server/PowerManagerService;)I

    move-result v3

    if-ltz v3, :cond_1

    .line 1100
    iget-object v3, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v4, 0x1

    invoke-static {v3, v0, v1, v4}, Lcom/android/server/PowerManagerService;->access$2700(Lcom/android/server/PowerManagerService;JI)V

    goto :goto_1

    .line 1104
    :cond_1
    :pswitch_2
    iget-object v3, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v4, 0x0

    invoke-static {v3, v0, v1, v4}, Lcom/android/server/PowerManagerService;->access$2700(Lcom/android/server/PowerManagerService;JI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1096
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
