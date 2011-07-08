.class Lcom/broadcom/bt/service/bpp/BluetoothPrinterService$PrintWorker;
.super Ljava/lang/Object;
.source "BluetoothPrinterService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PrintWorker"
.end annotation


# instance fields
.field mInterrupt:Z

.field final synthetic this$0:Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;


# direct methods
.method public constructor <init>(Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;)V
    .locals 0
    .parameter

    .prologue
    .line 843
    iput-object p1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService$PrintWorker;->this$0:Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 845
    return-void
.end method


# virtual methods
.method public interrupt()V
    .locals 2

    .prologue
    const-class v1, Lcom/broadcom/bt/service/bpp/PrintManager;

    .line 848
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService$PrintWorker;->mInterrupt:Z

    .line 849
    const-class v0, Lcom/broadcom/bt/service/bpp/PrintManager;

    monitor-enter v1

    .line 850
    :try_start_0
    const-class v1, Lcom/broadcom/bt/service/bpp/PrintManager;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 851
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 852
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService$PrintWorker;->this$0:Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;

    iget-object v0, v0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->PRINT_LOCK:Ljava/lang/String;

    monitor-enter v0

    .line 853
    :try_start_1
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService$PrintWorker;->this$0:Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;

    iget-object v1, v1, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->PRINT_LOCK:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 854
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 855
    return-void

    .line 851
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 854
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 841
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService$PrintWorker;->mInterrupt:Z

    .line 842
    return-void
.end method

.method public run()V
    .locals 13

    .prologue
    .line 859
    const/4 v3, 0x0

    .line 860
    .local v3, job:Lcom/broadcom/bt/service/bpp/PrintJob;
    :goto_0
    iget-boolean v8, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService$PrintWorker;->mInterrupt:Z

    if-nez v8, :cond_1

    .line 861
    const-string v8, "BluetoothPrinterService"

    const-string v9, "PrintWorker thread...Checking for print jobs in queue"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    const-class v8, Lcom/broadcom/bt/service/bpp/PrintManager;

    monitor-enter v8

    .line 865
    :goto_1
    :try_start_0
    iget-boolean v9, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService$PrintWorker;->mInterrupt:Z

    if-nez v9, :cond_0

    invoke-static {}, Lcom/broadcom/bt/service/bpp/PrintManager;->dequeueJob()Lcom/broadcom/bt/service/bpp/PrintJob;

    move-result-object v3

    if-nez v3, :cond_0

    .line 866
    const-string v9, "BluetoothPrinterService"

    const-string v10, "PrintWorker: No print jobs queued. Waiting..."

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 868
    :try_start_1
    const-class v9, Lcom/broadcom/bt/service/bpp/PrintManager;

    invoke-virtual {v9}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 869
    :catch_0
    move-exception v9

    goto :goto_1

    .line 871
    :cond_0
    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 872
    iget-boolean v8, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService$PrintWorker;->mInterrupt:Z

    if-eqz v8, :cond_2

    .line 873
    const-string v8, "BluetoothPrinterService"

    const-string v9, "PrintWorker: Leaving thread loop!!!"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    :cond_1
    :goto_2
    return-void

    .line 871
    :catchall_0
    move-exception v9

    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v9

    .line 879
    :cond_2
    const-string v8, "BluetoothPrinterService"

    const-string v9, "PrintWorker:Job found. Checking for running print job"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    const/4 v0, -0x1

    .line 881
    .local v0, currentJobStatus:I
    iget-object v8, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService$PrintWorker;->this$0:Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;

    iget-object v8, v8, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->PRINT_LOCK:Ljava/lang/String;

    monitor-enter v8

    .line 882
    :try_start_4
    iget-object v9, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService$PrintWorker;->this$0:Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;

    invoke-static {v9}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->access$000(Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;)I

    move-result v0

    .line 883
    :goto_3
    iget-boolean v9, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService$PrintWorker;->mInterrupt:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-nez v9, :cond_5

    const/4 v9, 0x3

    if-eq v0, v9, :cond_5

    const/4 v9, 0x4

    if-eq v0, v9, :cond_5

    const/16 v9, -0x64

    if-eq v0, v9, :cond_5

    .line 889
    :try_start_5
    const-string v9, "BluetoothPrinterService"

    const/4 v10, 0x4

    invoke-static {v9, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 890
    iget-object v9, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService$PrintWorker;->this$0:Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;

    iget-object v2, v9, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mCurrentJob:Lcom/broadcom/bt/service/bpp/PrintJob;

    .line 891
    .local v2, j:Lcom/broadcom/bt/service/bpp/PrintJob;
    if-eqz v2, :cond_4

    .line 892
    iget-wide v4, v2, Lcom/broadcom/bt/service/bpp/PrintJob;->mJobId:J

    .line 893
    .local v4, jobId:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iget-wide v11, v2, Lcom/broadcom/bt/service/bpp/PrintJob;->mStartTime:J

    sub-long/2addr v9, v11

    const-wide/16 v11, 0x3e8

    div-long v6, v9, v11

    .line 894
    .local v6, runningTimeSec:J
    const-string v9, "BluetoothPrinterService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "PrintWorker:Current job  \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\' running for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " secs. Waiting for finish..."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    .end local v2           #j:Lcom/broadcom/bt/service/bpp/PrintJob;
    .end local v4           #jobId:J
    .end local v6           #runningTimeSec:J
    :cond_3
    :goto_4
    iget-object v9, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService$PrintWorker;->this$0:Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;

    iget-object v9, v9, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->PRINT_LOCK:Ljava/lang/String;

    const-wide/16 v10, 0x1388

    invoke-virtual {v9, v10, v11}, Ljava/lang/Object;->wait(J)V

    .line 900
    iget-object v9, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService$PrintWorker;->this$0:Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;

    invoke-static {v9}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->access$000(Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;)I

    move-result v0

    goto :goto_3

    .line 896
    .restart local v2       #j:Lcom/broadcom/bt/service/bpp/PrintJob;
    :cond_4
    const-string v9, "BluetoothPrinterService"

    const-string v10, "PrintWorker:Current job running. Waiting for finish..."

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_4

    .line 901
    .end local v2           #j:Lcom/broadcom/bt/service/bpp/PrintJob;
    :catch_1
    move-exception v9

    goto :goto_3

    .line 903
    :cond_5
    :try_start_6
    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 904
    iget-boolean v8, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService$PrintWorker;->mInterrupt:Z

    if-eqz v8, :cond_6

    .line 905
    const-string v8, "BluetoothPrinterService"

    const-string v9, "PrintWorker:INTERRUPTED. EXITTING!!!"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 903
    :catchall_1
    move-exception v9

    :try_start_7
    monitor-exit v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v9

    .line 911
    :cond_6
    const/16 v8, -0x64

    if-ne v0, v8, :cond_7

    .line 912
    const-string v8, "BluetoothPrinterService"

    const-string v9, "PrintWorker: current job not responding...Cancelling request..."

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    :try_start_8
    iget-object v8, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService$PrintWorker;->this$0:Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;

    invoke-virtual {v8}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->abort()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 920
    :cond_7
    :goto_5
    const-string v8, "BluetoothPrinterService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "PrintWorker: Executing print job "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, v3, Lcom/broadcom/bt/service/bpp/PrintJob;->mJobId:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    iget-object v8, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService$PrintWorker;->this$0:Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;

    invoke-static {v8, v3}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->access$100(Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;Lcom/broadcom/bt/service/bpp/PrintJob;)J

    goto/16 :goto_0

    .line 915
    :catch_2
    move-exception v8

    move-object v1, v8

    .line 916
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5
.end method
