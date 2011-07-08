.class public Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;
.super Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService$Stub;
.source "BluetoothPrinterService.java"

# interfaces
.implements Lcom/broadcom/bt/service/framework/IBtService;
.implements Lcom/broadcom/bt/service/bpp/IBluetoothPrinterServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/bpp/BluetoothPrinterService$PrintWorker;
    }
.end annotation


# static fields
.field private static final MAX_PRINT_TIMEOUT_MS:I = 0x7530

.field public static final PR_BIP_SERVICE_MASK:I = 0x2000

.field public static final PR_BPP_SERVICE_MASK:I = 0x1000

.field public static final PR_OPP_SERVICE_MASK:I = 0x80

.field private static final TAG:Ljava/lang/String; = "BluetoothPrinterService"

.field private static final USE_PRINT_QUEUE:Z = false

.field private static final WAIT_TIME_PENDING_MS:I = 0x1388


# instance fields
.field public PRINT_LOCK:Ljava/lang/String;

.field mCb:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;

.field mContext:Landroid/content/Context;

.field mCurrentJob:Lcom/broadcom/bt/service/bpp/PrintJob;

.field mCurrentJobId:J

.field protected mIsStarted:Z

.field protected mListener:Lcom/broadcom/bt/service/framework/IServiceStateListener;

.field mPrintThread:Ljava/lang/Thread;

.field mPrintWorker:Lcom/broadcom/bt/service/bpp/BluetoothPrinterService$PrintWorker;

.field final mPrinterCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/broadcom/bt/service/bpp/IBluetoothPrinterCallback;",
            ">;"
        }
    .end annotation
.end field

.field mThread:Lcom/broadcom/bt/service/bpp/BluetoothPrinterEventLoop;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "isAppService"

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService$Stub;-><init>()V

    .line 78
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mPrinterCallbacks:Landroid/os/RemoteCallbackList;

    .line 833
    const-string v0, ""

    iput-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->PRINT_LOCK:Ljava/lang/String;

    .line 835
    new-instance v0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService$PrintWorker;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService$PrintWorker;-><init>(Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;)V

    iput-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mPrintWorker:Lcom/broadcom/bt/service/bpp/BluetoothPrinterService$PrintWorker;

    .line 948
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mIsStarted:Z

    .line 155
    const-string v0, "BluetoothPrinterService"

    const-string v1, "Initialize Bluetooth Printer Service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iput-object p1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mContext:Landroid/content/Context;

    .line 157
    invoke-direct {p0}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->Native_InitBluetoothPrinter()V

    .line 158
    return-void
.end method

.method private native Native_BluetoothPrinterAbort()V
.end method

.method private native Native_BluetoothPrinterCancelBppStatus()V
.end method

.method private native Native_BluetoothPrinterDisable()V
.end method

.method private native Native_BluetoothPrinterEnable()V
.end method

.method private native Native_BluetoothPrinterGetCapabilities(Ljava/lang/String;I)V
.end method

.method private native Native_BluetoothPrinterObexAuthenticationResponse(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private native Native_BluetoothPrinterPartialImageResponse(Ljava/lang/String;)V
.end method

.method private native Native_BluetoothPrinterPrint(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V
.end method

.method private native Native_BluetoothPrinterRefObjectResponse(Ljava/lang/String;)V
.end method

.method private native Native_InitBluetoothPrinter()V
.end method

.method static synthetic access$000(Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->getCurrentJobStatus()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;Lcom/broadcom/bt/service/bpp/PrintJob;)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->executePrint(Lcom/broadcom/bt/service/bpp/PrintJob;)J

    move-result-wide v0

    return-wide v0
.end method

.method private executePrint(Lcom/broadcom/bt/service/bpp/PrintJob;)J
    .locals 10
    .parameter "job"

    .prologue
    const-string v0, ","

    .line 352
    :try_start_0
    invoke-virtual {p1}, Lcom/broadcom/bt/service/bpp/PrintJob;->setStartState()V

    .line 353
    iput-object p1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mCurrentJob:Lcom/broadcom/bt/service/bpp/PrintJob;

    .line 354
    iget-object v0, p1, Lcom/broadcom/bt/service/bpp/PrintJob;->mCb:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;

    iput-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mCb:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;

    .line 355
    iget-wide v0, p1, Lcom/broadcom/bt/service/bpp/PrintJob;->mJobId:J

    iput-wide v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mCurrentJobId:J

    .line 357
    const-string v0, "BluetoothPrinterService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "executePrint("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/broadcom/bt/service/bpp/PrintJob;->mJobId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/broadcom/bt/service/bpp/PrintJob;->mBluetoothAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/broadcom/bt/service/bpp/PrintJob;->mServiceMask:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/broadcom/bt/service/bpp/PrintJob;->mFileFormat:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/broadcom/bt/service/bpp/PrintJob;->mHeader:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/broadcom/bt/service/bpp/PrintJob;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/broadcom/bt/service/bpp/PrintJob;->mHandle:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/broadcom/bt/service/bpp/PrintJob;->mBipParams:Lcom/broadcom/bt/service/bpp/BipParameters;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/broadcom/bt/service/bpp/PrintJob;->mBppParams:Lcom/broadcom/bt/service/bpp/BppParameters;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    invoke-virtual {p0}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->enable()V

    .line 364
    iget-object v1, p1, Lcom/broadcom/bt/service/bpp/PrintJob;->mBluetoothAddress:Ljava/lang/String;

    iget v2, p1, Lcom/broadcom/bt/service/bpp/PrintJob;->mServiceMask:I

    iget v3, p1, Lcom/broadcom/bt/service/bpp/PrintJob;->mFileFormat:I

    iget-object v4, p1, Lcom/broadcom/bt/service/bpp/PrintJob;->mHeader:Ljava/lang/String;

    iget-object v5, p1, Lcom/broadcom/bt/service/bpp/PrintJob;->mName:Ljava/lang/String;

    iget v6, p1, Lcom/broadcom/bt/service/bpp/PrintJob;->mHandle:I

    iget-object v7, p1, Lcom/broadcom/bt/service/bpp/PrintJob;->mBipParams:Lcom/broadcom/bt/service/bpp/BipParameters;

    iget-object v8, p1, Lcom/broadcom/bt/service/bpp/PrintJob;->mBppParams:Lcom/broadcom/bt/service/bpp/BppParameters;

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->Native_BluetoothPrinterPrint(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    :goto_0
    iget-wide v0, p1, Lcom/broadcom/bt/service/bpp/PrintJob;->mJobId:J

    return-wide v0

    .line 367
    :catch_0
    move-exception v0

    move-object v9, v0

    .line 368
    .local v9, e:Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getCurrentJobStatus()I
    .locals 6

    .prologue
    const/4 v4, 0x3

    .line 818
    iget-object v2, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mCurrentJob:Lcom/broadcom/bt/service/bpp/PrintJob;

    if-nez v2, :cond_0

    move v2, v4

    .line 829
    :goto_0
    return v2

    .line 820
    :cond_0
    iget-object v2, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mCurrentJob:Lcom/broadcom/bt/service/bpp/PrintJob;

    iget v2, v2, Lcom/broadcom/bt/service/bpp/PrintJob;->mPrintState:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mCurrentJob:Lcom/broadcom/bt/service/bpp/PrintJob;

    iget v2, v2, Lcom/broadcom/bt/service/bpp/PrintJob;->mPrintState:I

    if-eq v2, v4, :cond_2

    .line 823
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mCurrentJob:Lcom/broadcom/bt/service/bpp/PrintJob;

    iget-wide v4, v4, Lcom/broadcom/bt/service/bpp/PrintJob;->mLastStatusUpdateTime:J

    sub-long v0, v2, v4

    .line 824
    .local v0, timeoutMs:J
    const-wide/16 v2, 0x7530

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    .line 825
    const-string v2, "BluetoothPrinterService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Print Job not responding for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "msecs!!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    const/16 v2, -0x64

    goto :goto_0

    .line 829
    .end local v0           #timeoutMs:J
    :cond_2
    iget-object v2, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mCurrentJob:Lcom/broadcom/bt/service/bpp/PrintJob;

    iget v2, v2, Lcom/broadcom/bt/service/bpp/PrintJob;->mPrinterStatus:I

    goto :goto_0
.end method

.method private startPrintQueue()V
    .locals 3

    .prologue
    .line 803
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mPrintThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 804
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mPrintWorker:Lcom/broadcom/bt/service/bpp/BluetoothPrinterService$PrintWorker;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService$PrintWorker;->reset()V

    .line 805
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mPrintWorker:Lcom/broadcom/bt/service/bpp/BluetoothPrinterService$PrintWorker;

    const-string v2, "BppPrintThread"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mPrintThread:Ljava/lang/Thread;

    .line 806
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mPrintThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 808
    :cond_0
    return-void
.end method

.method private stopPrintQueue()V
    .locals 1

    .prologue
    .line 811
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mPrintThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 812
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mPrintWorker:Lcom/broadcom/bt/service/bpp/BluetoothPrinterService$PrintWorker;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService$PrintWorker;->interrupt()V

    .line 813
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mPrintThread:Ljava/lang/Thread;

    .line 815
    :cond_0
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 385
    const-string v1, "BluetoothPrinterService"

    const-string v2, "abort"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    :try_start_0
    invoke-direct {p0}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->Native_BluetoothPrinterAbort()V

    .line 389
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mCurrentJob:Lcom/broadcom/bt/service/bpp/PrintJob;

    const/4 v2, 0x4

    iput v2, v1, Lcom/broadcom/bt/service/bpp/PrintJob;->mPrintState:I

    .line 390
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->PRINT_LOCK:Ljava/lang/String;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 391
    :try_start_1
    iget-object v2, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->PRINT_LOCK:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 392
    monitor-exit v1

    .line 396
    :goto_0
    return-void

    .line 392
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 393
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 394
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public cancelAll()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 431
    const-string v0, "BluetoothPrinterService"

    const-string v1, "cancelAll"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    return-void
.end method

.method public cancelBppStatus()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 440
    const-string v1, "BluetoothPrinterService"

    const-string v2, "cancelBppStatus"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    :try_start_0
    invoke-direct {p0}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->Native_BluetoothPrinterCancelBppStatus()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 447
    :goto_0
    return-void

    .line 444
    :catch_0
    move-exception v0

    .line 445
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public cancelTask(I)V
    .locals 2
    .parameter "task"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 453
    const-string v0, "BluetoothPrinterService"

    const-string v1, "cancelTask"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    return-void
.end method

.method public declared-synchronized disable()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 230
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->Native_BluetoothPrinterDisable()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    :goto_0
    monitor-exit p0

    return-void

    .line 231
    :catch_0
    move-exception v0

    .line 232
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 230
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized enable()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 211
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->Native_BluetoothPrinterEnable()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    :goto_0
    monitor-exit p0

    return-void

    .line 212
    :catch_0
    move-exception v0

    .line 213
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 211
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public finish()V
    .locals 0

    .prologue
    .line 974
    return-void
.end method

.method public getAllPrintJobHistory()[Lcom/broadcom/bt/service/bpp/PrintJob;
    .locals 2

    .prologue
    .line 932
    sget-object v1, Lcom/broadcom/bt/service/bpp/PrintManager;->mJobHistory:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    new-array v0, v1, [Lcom/broadcom/bt/service/bpp/PrintJob;

    .line 933
    .local v0, jobs:[Lcom/broadcom/bt/service/bpp/PrintJob;
    sget-object v1, Lcom/broadcom/bt/service/bpp/PrintManager;->mJobHistory:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 934
    return-object v0
.end method

.method public getCapabilities(Ljava/lang/String;I)V
    .locals 4
    .parameter "bluetoothAddress"
    .parameter "serviceMask"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 254
    :try_start_0
    const-string v1, "BluetoothPrinterService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GetCapabilities("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    invoke-virtual {p0}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->enable()V

    .line 257
    invoke-direct {p0, p1, p2}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->Native_BluetoothPrinterGetCapabilities(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    :goto_0
    return-void

    .line 259
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 260
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    const-string v0, "bluetooth_bpp_service"

    return-object v0
.end method

.method public getPrintJobHistory(J)Lcom/broadcom/bt/service/bpp/PrintJob;
    .locals 1
    .parameter "jobId"

    .prologue
    .line 928
    invoke-static {p1, p2}, Lcom/broadcom/bt/service/bpp/PrintManager;->getJobHistory(J)Lcom/broadcom/bt/service/bpp/PrintJob;

    move-result-object v0

    return-object v0
.end method

.method public init()V
    .locals 0

    .prologue
    .line 971
    return-void
.end method

.method public obexAuthenticationResponse(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "password"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 413
    const-string v1, "BluetoothPrinterService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "obexAuthenticationResponse("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->Native_BluetoothPrinterObexAuthenticationResponse(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 421
    :goto_0
    return-void

    .line 418
    :catch_0
    move-exception v0

    .line 419
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onAuthorizeEvent(IIIZ)V
    .locals 7
    .parameter "realmIndex"
    .parameter "realmLength"
    .parameter "realmCharSet"
    .parameter "required"

    .prologue
    const-string v6, ", "

    .line 514
    const-string v3, "BluetoothPrinterService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onAuthorizeEvent("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p4, :cond_0

    const-string v5, "TRUE"

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    iget-object v3, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mPrinterCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 519
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 521
    :try_start_0
    iget-object v3, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mPrinterCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterCallback;

    invoke-interface {v3, p1, p2, p3, p4}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterCallback;->onAuthorizePrinter(IIIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 519
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 514
    .end local v0           #N:I
    .end local v2           #i:I
    :cond_0
    const-string v5, "FALSE"

    goto :goto_0

    .line 523
    .restart local v0       #N:I
    .restart local v2       #i:I
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 524
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .line 527
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_1
    iget-object v3, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mPrinterCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 529
    iget-object v3, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mCurrentJob:Lcom/broadcom/bt/service/bpp/PrintJob;

    if-eqz v3, :cond_2

    .line 530
    iget-object v3, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mCurrentJob:Lcom/broadcom/bt/service/bpp/PrintJob;

    invoke-virtual {v3}, Lcom/broadcom/bt/service/bpp/PrintJob;->refreshLastUpdateTime()V

    .line 532
    :cond_2
    return-void
.end method

.method public onBppDocCompleteEvent(I)V
    .locals 6
    .parameter "status"

    .prologue
    const-string v5, "BluetoothPrinterService"

    .line 542
    const-string v2, "BluetoothPrinterService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBppDocCompleteEvent("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    iget-object v2, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mCb:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;

    if-eqz v2, :cond_0

    .line 546
    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mCb:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;

    iget-wide v3, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mCurrentJobId:J

    invoke-interface {v2, v3, v4, p1}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;->onPrinterBppDocComplete(JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 554
    :cond_0
    :goto_0
    :try_start_1
    invoke-direct {p0}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->Native_BluetoothPrinterCancelBppStatus()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 559
    :goto_1
    iget-object v2, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->PRINT_LOCK:Ljava/lang/String;

    monitor-enter v2

    .line 560
    :try_start_2
    iget-object v3, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mCurrentJob:Lcom/broadcom/bt/service/bpp/PrintJob;

    if-eqz v3, :cond_1

    .line 561
    iget-object v3, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mCurrentJob:Lcom/broadcom/bt/service/bpp/PrintJob;

    iput p1, v3, Lcom/broadcom/bt/service/bpp/PrintJob;->mPrinterStatus:I

    .line 562
    iget-object v3, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mCurrentJob:Lcom/broadcom/bt/service/bpp/PrintJob;

    iget v3, v3, Lcom/broadcom/bt/service/bpp/PrintJob;->mPrintState:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    .line 564
    iget-object v3, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mCurrentJob:Lcom/broadcom/bt/service/bpp/PrintJob;

    invoke-virtual {v3}, Lcom/broadcom/bt/service/bpp/PrintJob;->setEndState()V

    .line 565
    iget-object v3, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->PRINT_LOCK:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 570
    :cond_1
    :goto_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 571
    return-void

    .line 547
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 548
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 555
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 556
    .local v1, t:Ljava/lang/Throwable;
    const-string v2, "BluetoothPrinterService"

    const-string v2, "Unable to cancel job status reporting"

    invoke-static {v5, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 567
    .end local v1           #t:Ljava/lang/Throwable;
    :cond_2
    :try_start_3
    iget-object v3, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mCurrentJob:Lcom/broadcom/bt/service/bpp/PrintJob;

    invoke-virtual {v3}, Lcom/broadcom/bt/service/bpp/PrintJob;->refreshLastUpdateTime()V

    goto :goto_2

    .line 570
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method

.method public onCloseEvent(I)V
    .locals 4
    .parameter "status"

    .prologue
    .line 582
    const-string v1, "BluetoothPrinterService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCloseEvent("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mCb:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;

    if-eqz v1, :cond_0

    .line 586
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mCb:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;

    iget-wide v2, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mCurrentJobId:J

    invoke-interface {v1, v2, v3, p1}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;->onPrinterTaskClosed(JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 592
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->PRINT_LOCK:Ljava/lang/String;

    monitor-enter v1

    .line 593
    :try_start_1
    iget-object v2, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mCurrentJob:Lcom/broadcom/bt/service/bpp/PrintJob;

    if-eqz v2, :cond_1

    .line 594
    iget-object v2, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mCurrentJob:Lcom/broadcom/bt/service/bpp/PrintJob;

    iput p1, v2, Lcom/broadcom/bt/service/bpp/PrintJob;->mPrinterStatus:I

    .line 596
    iget-object v2, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mCurrentJob:Lcom/broadcom/bt/service/bpp/PrintJob;

    iget v2, v2, Lcom/broadcom/bt/service/bpp/PrintJob;->mPrintState:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    .line 598
    iget-object v2, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mCurrentJob:Lcom/broadcom/bt/service/bpp/PrintJob;

    invoke-virtual {v2}, Lcom/broadcom/bt/service/bpp/PrintJob;->setEndState()V

    .line 599
    iget-object v2, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->PRINT_LOCK:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 604
    :cond_1
    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 605
    return-void

    .line 587
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 588
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 601
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    :try_start_2
    iget-object v2, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mCurrentJob:Lcom/broadcom/bt/service/bpp/PrintJob;

    invoke-virtual {v2}, Lcom/broadcom/bt/service/bpp/PrintJob;->refreshLastUpdateTime()V

    goto :goto_1

    .line 604
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public onEnableEvent()V
    .locals 2

    .prologue
    .line 612
    const-string v0, "BluetoothPrinterService"

    const-string v1, "onEnableEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    return-void
.end method

.method public onGetCapabilitiesEvent(IIIILcom/broadcom/bt/service/bpp/BipCapabilities;Lcom/broadcom/bt/service/bpp/BppAttributes;)V
    .locals 10
    .parameter "services"
    .parameter "bppFeatures"
    .parameter "oppFeatures"
    .parameter "bipFeatures"
    .parameter "bc"
    .parameter "ba"

    .prologue
    .line 636
    const-string v0, "BluetoothPrinterService"

    const-string v1, "*** Printer Capabilities ***"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    const-string v0, "BluetoothPrinterService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Printer Services: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    const-string v0, "BluetoothPrinterService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OPP Features: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    const-string v0, "BluetoothPrinterService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BIP Features: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    const-string v0, "BluetoothPrinterService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BPP Features: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mPrinterCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v7

    .line 643
    .local v7, N:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    if-ge v9, v7, :cond_0

    .line 645
    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mPrinterCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v9}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterCallback;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterCallback;->onGetPrinterCapabilities(IIIILcom/broadcom/bt/service/bpp/BipCapabilities;Lcom/broadcom/bt/service/bpp/BppAttributes;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 643
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 648
    :catch_0
    move-exception v0

    move-object v8, v0

    .line 649
    .local v8, e:Landroid/os/RemoteException;
    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 652
    .end local v8           #e:Landroid/os/RemoteException;
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mPrinterCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 653
    return-void
.end method

.method public onGetObjectEvent(Ljava/lang/String;)V
    .locals 6
    .parameter "name"

    .prologue
    const-string v5, "BluetoothPrinterService"

    .line 660
    const-string v3, "BluetoothPrinterService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onGetObjectEvent("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    const/4 v1, 0x0

    .line 664
    .local v1, filePath:Ljava/lang/String;
    const/4 v2, 0x0

    .line 666
    .local v2, objectResolver:Lcom/broadcom/bt/service/bpp/BppObjectResolver;
    iget-object v3, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mCurrentJob:Lcom/broadcom/bt/service/bpp/PrintJob;

    if-nez v3, :cond_1

    .line 667
    const-string v3, "BluetoothPrinterService"

    const-string v3, "onGetObjectEvent: mCurrentJob is NULL"

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    :cond_0
    :goto_0
    return-void

    .line 671
    :cond_1
    iget-object v3, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mCurrentJob:Lcom/broadcom/bt/service/bpp/PrintJob;

    iget-object v2, v3, Lcom/broadcom/bt/service/bpp/PrintJob;->mObjectResolver:Lcom/broadcom/bt/service/bpp/BppObjectResolver;

    .line 672
    if-eqz v2, :cond_2

    .line 673
    invoke-virtual {v2, p1}, Lcom/broadcom/bt/service/bpp/BppObjectResolver;->getMappedPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 675
    :cond_2
    if-eqz v1, :cond_3

    .line 676
    const-string v3, "BluetoothPrinterService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onGetObjectEvent: BppObjectResolver provided file path "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Calling Native_BluetoothPrinterRefObjectResponse"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    invoke-direct {p0, v1}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->Native_BluetoothPrinterRefObjectResponse(Ljava/lang/String;)V

    .line 684
    :cond_3
    iget-object v3, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mCb:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;

    if-eqz v3, :cond_4

    .line 686
    :try_start_0
    iget-object v3, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mCb:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;

    iget-wide v4, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mCurrentJobId:J

    invoke-interface {v3, v4, v5, p1}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;->onPrinterGetObject(JLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 692
    :cond_4
    :goto_1
    iget-object v3, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mCurrentJob:Lcom/broadcom/bt/service/bpp/PrintJob;

    if-eqz v3, :cond_0

    .line 693
    iget-object v3, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mCurrentJob:Lcom/broadcom/bt/service/bpp/PrintJob;

    invoke-virtual {v3}, Lcom/broadcom/bt/service/bpp/PrintJob;->refreshLastUpdateTime()V

    goto :goto_0

    .line 687
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 688
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public onJobStatusEvent(Lcom/broadcom/bt/service/bpp/JobStatus;)V
    .locals 4
    .parameter "status"

    .prologue
    .line 705
    const-string v1, "BluetoothPrinterService"

    const-string v2, "onJobStatusEvent"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mCb:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;

    if-eqz v1, :cond_0

    .line 709
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mCb:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;

    iget-wide v2, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mCurrentJobId:J

    invoke-interface {v1, v2, v3, p1}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;->onPrinterJobStatus(JLcom/broadcom/bt/service/bpp/JobStatus;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 715
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mCurrentJob:Lcom/broadcom/bt/service/bpp/PrintJob;

    if-eqz v1, :cond_1

    .line 716
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mCurrentJob:Lcom/broadcom/bt/service/bpp/PrintJob;

    iput-object p1, v1, Lcom/broadcom/bt/service/bpp/PrintJob;->mJobStatus:Lcom/broadcom/bt/service/bpp/JobStatus;

    .line 717
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mCurrentJob:Lcom/broadcom/bt/service/bpp/PrintJob;

    invoke-virtual {v1}, Lcom/broadcom/bt/service/bpp/PrintJob;->refreshLastUpdateTime()V

    .line 719
    :cond_1
    return-void

    .line 710
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 711
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onOpenEvent(I)V
    .locals 4
    .parameter "serviceId"

    .prologue
    .line 729
    const-string v1, "BluetoothPrinterService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onOpenEvent("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mCb:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;

    if-eqz v1, :cond_0

    .line 733
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mCb:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;

    iget-wide v2, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mCurrentJobId:J

    invoke-interface {v1, v2, v3, p1}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;->onPrinterTaskOpen(JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 738
    :cond_0
    :goto_0
    return-void

    .line 734
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 735
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onPartialImageEvent(Ljava/lang/String;)V
    .locals 4
    .parameter "name"

    .prologue
    .line 745
    const-string v1, "BluetoothPrinterService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPartialImageEvent("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mCb:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;

    if-eqz v1, :cond_0

    .line 749
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mCb:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;

    iget-wide v2, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mCurrentJobId:J

    invoke-interface {v1, v2, v3, p1}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;->onPrinterPartialImage(JLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 754
    :cond_0
    :goto_0
    return-void

    .line 750
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 751
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onProgressEvent(II)V
    .locals 4
    .parameter "totalBytes"
    .parameter "processedBytes"

    .prologue
    .line 766
    const-string v1, "BluetoothPrinterService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onProgressEvent("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mCb:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;

    if-eqz v1, :cond_0

    .line 770
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mCb:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;

    iget-wide v2, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mCurrentJobId:J

    invoke-interface {v1, v2, v3, p1, p2}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;->onPrinterProgress(JII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 778
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mCurrentJob:Lcom/broadcom/bt/service/bpp/PrintJob;

    if-eqz v1, :cond_1

    .line 779
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mCurrentJob:Lcom/broadcom/bt/service/bpp/PrintJob;

    iput p1, v1, Lcom/broadcom/bt/service/bpp/PrintJob;->mTotalBytes:I

    .line 780
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mCurrentJob:Lcom/broadcom/bt/service/bpp/PrintJob;

    iput p2, v1, Lcom/broadcom/bt/service/bpp/PrintJob;->mProcessedBytes:I

    .line 781
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mCurrentJob:Lcom/broadcom/bt/service/bpp/PrintJob;

    invoke-virtual {v1}, Lcom/broadcom/bt/service/bpp/PrintJob;->refreshLastUpdateTime()V

    .line 783
    :cond_1
    return-void

    .line 773
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 774
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public declared-synchronized onStateChangeEvent(Z)V
    .locals 1
    .parameter "started"

    .prologue
    .line 962
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mIsStarted:Z

    if-eqz v0, :cond_0

    .line 963
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mListener:Lcom/broadcom/bt/service/framework/IServiceStateListener;

    invoke-interface {v0}, Lcom/broadcom/bt/service/framework/IServiceStateListener;->onStart()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 967
    :goto_0
    monitor-exit p0

    return-void

    .line 965
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mListener:Lcom/broadcom/bt/service/framework/IServiceStateListener;

    invoke-interface {v0}, Lcom/broadcom/bt/service/framework/IServiceStateListener;->onStop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 962
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onThumbnailEvent()V
    .locals 4

    .prologue
    .line 791
    const-string v1, "BluetoothPrinterService"

    const-string v2, "onThumbnailEvent"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mCb:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;

    if-eqz v1, :cond_0

    .line 795
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mCb:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;

    iget-wide v2, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mCurrentJobId:J

    invoke-interface {v1, v2, v3}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;->onPrinterThumbnail(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 800
    :cond_0
    :goto_0
    return-void

    .line 796
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 797
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public partialImageResponse(Ljava/lang/String;)V
    .locals 4
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 466
    const-string v1, "BluetoothPrinterService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "partialImageResponse("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    :try_start_0
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->Native_BluetoothPrinterPartialImageResponse(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 473
    :goto_0
    return-void

    .line 470
    :catch_0
    move-exception v0

    .line 471
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public print(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ILcom/broadcom/bt/service/bpp/BipParameters;Lcom/broadcom/bt/service/bpp/BppParameters;Lcom/broadcom/bt/service/bpp/BppObjectResolver;Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;)J
    .locals 5
    .parameter "bluetoothAddress"
    .parameter "serviceMask"
    .parameter "fileFormat"
    .parameter "header"
    .parameter "name"
    .parameter "handle"
    .parameter "bipParams"
    .parameter "bppParams"
    .parameter "objectResolver"
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 308
    const-string v1, "BluetoothPrinterService"

    const-string v2, "print"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    invoke-static/range {p1 .. p10}, Lcom/broadcom/bt/service/bpp/PrintManager;->createJob(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ILcom/broadcom/bt/service/bpp/BipParameters;Lcom/broadcom/bt/service/bpp/BppParameters;Lcom/broadcom/bt/service/bpp/BppObjectResolver;Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;)Lcom/broadcom/bt/service/bpp/PrintJob;

    move-result-object v0

    .line 315
    .local v0, job:Lcom/broadcom/bt/service/bpp/PrintJob;
    const-string v1, "BluetoothPrinterService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Printing Immediately ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, v0, Lcom/broadcom/bt/service/bpp/PrintJob;->mJobId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/broadcom/bt/service/bpp/PrintJob;->mBluetoothAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/broadcom/bt/service/bpp/PrintJob;->mServiceMask:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/broadcom/bt/service/bpp/PrintJob;->mFileFormat:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/broadcom/bt/service/bpp/PrintJob;->mHeader:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/broadcom/bt/service/bpp/PrintJob;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/broadcom/bt/service/bpp/PrintJob;->mHandle:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/broadcom/bt/service/bpp/PrintJob;->mBipParams:Lcom/broadcom/bt/service/bpp/BipParameters;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/broadcom/bt/service/bpp/PrintJob;->mBppParams:Lcom/broadcom/bt/service/bpp/BppParameters;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    invoke-static {v0}, Lcom/broadcom/bt/service/bpp/PrintManager;->addJobHistory(Lcom/broadcom/bt/service/bpp/PrintJob;)V

    .line 322
    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->executePrint(Lcom/broadcom/bt/service/bpp/PrintJob;)J

    move-result-wide v1

    return-wide v1
.end method

.method public refObjectResponse(Ljava/lang/String;)V
    .locals 4
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 487
    const-string v1, "BluetoothPrinterService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refObjectResponse("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    :try_start_0
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->Native_BluetoothPrinterRefObjectResponse(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 494
    :goto_0
    return-void

    .line 491
    :catch_0
    move-exception v0

    .line 492
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public registerClientCallback(Lcom/broadcom/bt/service/bpp/IBluetoothPrinterCallback;)Z
    .locals 2
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 180
    const-string v0, "BluetoothPrinterService"

    const-string v1, "Register Printer Callbacks"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mPrinterCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    move-result v0

    return v0
.end method

.method public removeAllPrintJobHistory()V
    .locals 0

    .prologue
    .line 942
    invoke-static {}, Lcom/broadcom/bt/service/bpp/PrintManager;->removeAllJobHistory()V

    .line 943
    return-void
.end method

.method public removePrintJobHistory(J)V
    .locals 0
    .parameter "jobId"

    .prologue
    .line 938
    invoke-static {p1, p2}, Lcom/broadcom/bt/service/bpp/PrintManager;->removeJobHistory(J)Lcom/broadcom/bt/service/bpp/PrintJob;

    .line 939
    return-void
.end method

.method public declared-synchronized removeStateListener(Lcom/broadcom/bt/service/framework/IServiceStateListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 957
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mListener:Lcom/broadcom/bt/service/framework/IServiceStateListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 958
    monitor-exit p0

    return-void

    .line 957
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setStateListener(Lcom/broadcom/bt/service/framework/IServiceStateListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 952
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mListener:Lcom/broadcom/bt/service/framework/IServiceStateListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 953
    monitor-exit p0

    return-void

    .line 952
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized start()V
    .locals 2

    .prologue
    const-string v0, "BluetoothPrinterService"

    .line 87
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mIsStarted:Z

    if-eqz v0, :cond_0

    .line 88
    const-string v0, "BluetoothPrinterService"

    const-string/jumbo v1, "start() called. Bpp Service already enabled. Returning..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    :goto_0
    monitor-exit p0

    return-void

    .line 91
    :cond_0
    :try_start_1
    const-string v0, "BluetoothPrinterService"

    const-string v1, "Enabling Bpp Service..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mThread:Lcom/broadcom/bt/service/bpp/BluetoothPrinterEventLoop;

    if-nez v0, :cond_1

    .line 94
    const-string v0, "BluetoothPrinterService"

    const-string v1, "Starting BluetoothPrinterEventLoop..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    new-instance v0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterEventLoop;

    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterEventLoop;-><init>(Landroid/content/Context;Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;)V

    iput-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mThread:Lcom/broadcom/bt/service/bpp/BluetoothPrinterEventLoop;

    .line 96
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mThread:Lcom/broadcom/bt/service/bpp/BluetoothPrinterEventLoop;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterEventLoop;->start()V

    .line 111
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mIsStarted:Z

    .line 112
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->onStateChangeEvent(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 2

    .prologue
    const-string v0, "BluetoothPrinterService"

    .line 116
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mIsStarted:Z

    if-nez v0, :cond_0

    .line 117
    const-string v0, "BluetoothPrinterService"

    const-string v1, "disable() called. Bpp Service already disabled. Returning..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    :goto_0
    monitor-exit p0

    return-void

    .line 120
    :cond_0
    :try_start_1
    const-string v0, "BluetoothPrinterService"

    const-string v1, "Disabling Bpp Service..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mThread:Lcom/broadcom/bt/service/bpp/BluetoothPrinterEventLoop;

    if-eqz v0, :cond_1

    .line 135
    const-string v0, "BluetoothPrinterService"

    const-string v1, "Stopping BluetoothPrinterEventLoop..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mThread:Lcom/broadcom/bt/service/bpp/BluetoothPrinterEventLoop;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterEventLoop;->interrupt()V

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mThread:Lcom/broadcom/bt/service/bpp/BluetoothPrinterEventLoop;

    .line 139
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mIsStarted:Z

    .line 140
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->onStateChangeEvent(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 116
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public unregisterClientCallback(Lcom/broadcom/bt/service/bpp/IBluetoothPrinterCallback;)Z
    .locals 2
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 195
    const-string v0, "BluetoothPrinterService"

    const-string v1, "Unregister Printer Callbacks"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mPrinterCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    move-result v0

    return v0
.end method
