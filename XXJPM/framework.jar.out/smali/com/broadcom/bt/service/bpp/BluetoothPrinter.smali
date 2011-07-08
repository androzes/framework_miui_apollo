.class public Lcom/broadcom/bt/service/bpp/BluetoothPrinter;
.super Lcom/broadcom/bt/service/framework/BaseProxy;
.source "BluetoothPrinter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/bpp/BluetoothPrinter$PRINT_FORMAT;,
        Lcom/broadcom/bt/service/bpp/BluetoothPrinter$SERVICE_MASK;,
        Lcom/broadcom/bt/service/bpp/BluetoothPrinter$STATUS;,
        Lcom/broadcom/bt/service/bpp/BluetoothPrinter$JOB_STATE;,
        Lcom/broadcom/bt/service/bpp/BluetoothPrinter$STATE_REASON;,
        Lcom/broadcom/bt/service/bpp/BluetoothPrinter$STATE;
    }
.end annotation


# static fields
.field public static final ACTION_PRINT:Ljava/lang/String; = "com.android.bluetooth.bpp.action.PRINT"

.field public static final ACTION_PRINT_MULTIPLE:Ljava/lang/String; = "com.android.bluetooth.bpp.action.PRINT_MULTIPLE"

.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "BluetoothPrinter"


# instance fields
.field private mBluetoothPrinterService:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;Landroid/content/ServiceConnection;)V
    .locals 0
    .parameter "ctx"
    .parameter "service"
    .parameter "appServiceConn"

    .prologue
    .line 103
    invoke-direct {p0, p1, p3}, Lcom/broadcom/bt/service/framework/BaseProxy;-><init>(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    .line 104
    iput-object p2, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mBluetoothPrinterService:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;

    .line 105
    return-void
.end method

.method public constructor <init>(Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;)V
    .locals 0
    .parameter "service"

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;-><init>()V

    .line 118
    iput-object p1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mBluetoothPrinterService:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;

    .line 119
    return-void
.end method

.method public static doesClassMatch(I)Z
    .locals 2
    .parameter "btClass"

    .prologue
    .line 130
    const/high16 v0, 0x4

    invoke-static {p0, v0}, Landroid/bluetooth/BluetoothClass$Service;->hasService(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x10

    invoke-static {p0, v0}, Landroid/bluetooth/BluetoothClass$Service;->hasService(II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/bluetooth/BluetoothClass$Device$Major;->getDeviceMajor(I)I

    move-result v0

    const/16 v1, 0x600

    if-ne v0, v1, :cond_0

    .line 135
    const/4 v0, 0x1

    .line 137
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized abortPrinting()V
    .locals 3

    .prologue
    const-string v1, "BluetoothPrinter"

    .line 338
    monitor-enter p0

    :try_start_0
    const-string v1, "BluetoothPrinter"

    const-string v2, "Call BluetoothPrinterService.abort()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mBluetoothPrinterService:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;

    invoke-interface {v1}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;->abort()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    :goto_0
    monitor-exit p0

    return-void

    .line 341
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 342
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    const-string v1, "BluetoothPrinter"

    const-string v2, "BluetoothPrinterService.abort() failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 338
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized cancelAllPrintTasks()V
    .locals 3

    .prologue
    const-string v1, "BluetoothPrinter"

    .line 366
    monitor-enter p0

    :try_start_0
    const-string v1, "BluetoothPrinter"

    const-string v2, "Call BluetoothPrinterService.cancelAll()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mBluetoothPrinterService:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;

    invoke-interface {v1}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;->cancelAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 372
    :goto_0
    monitor-exit p0

    return-void

    .line 369
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 370
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    const-string v1, "BluetoothPrinter"

    const-string v2, "BluetoothPrinterService.cancelAll() failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 366
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized cancelBppStatusReporting()V
    .locals 3

    .prologue
    const-string v1, "BluetoothPrinter"

    .line 352
    monitor-enter p0

    :try_start_0
    const-string v1, "BluetoothPrinter"

    const-string v2, "Call BluetoothPrinterService.cancelBppStatus()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mBluetoothPrinterService:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;

    invoke-interface {v1}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;->cancelBppStatus()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 358
    :goto_0
    monitor-exit p0

    return-void

    .line 355
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 356
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    const-string v1, "BluetoothPrinter"

    const-string v2, "BluetoothPrinterService.cancelBppStatus() failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 352
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized cancelPrintTask(I)V
    .locals 3
    .parameter "task"

    .prologue
    const-string v1, "BluetoothPrinter"

    .line 384
    monitor-enter p0

    :try_start_0
    const-string v1, "BluetoothPrinter"

    const-string v2, "Call BluetoothPrinterService.cancelTask()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mBluetoothPrinterService:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;

    invoke-interface {v1, p1}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;->cancelTask(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 390
    :goto_0
    monitor-exit p0

    return-void

    .line 387
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 388
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    const-string v1, "BluetoothPrinter"

    const-string v2, "BluetoothPrinterService.cancelTask() failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 384
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 723
    invoke-super {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;->finalize()V

    .line 724
    return-void
.end method

.method getAllPrintJobHistory()[Lcom/broadcom/bt/service/bpp/PrintJob;
    .locals 4

    .prologue
    const-string v3, "BluetoothPrinter"

    .line 417
    :try_start_0
    const-string v1, "BluetoothPrinter"

    const-string v2, "Call BluetoothPrinterService.getAllPrintJobHistory()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mBluetoothPrinterService:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;

    invoke-interface {v1}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;->getAllPrintJobHistory()[Lcom/broadcom/bt/service/bpp/PrintJob;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 426
    :goto_0
    return-object v1

    .line 419
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 420
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "BluetoothPrinter"

    const-string v1, "BluetoothPrinterService.getPrintJobHistory() failed"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 426
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getPrintJobHistory(J)Lcom/broadcom/bt/service/bpp/PrintJob;
    .locals 4
    .parameter "jobId"

    .prologue
    const-string v3, "BluetoothPrinter"

    .line 399
    :try_start_0
    const-string v1, "BluetoothPrinter"

    const-string v2, "Call BluetoothPrinterService.getPrintJobHistory()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mBluetoothPrinterService:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;

    invoke-interface {v1, p1, p2}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;->getPrintJobHistory(J)Lcom/broadcom/bt/service/bpp/PrintJob;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 408
    :goto_0
    return-object v1

    .line 401
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 402
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "BluetoothPrinter"

    const-string v1, "BluetoothPrinterService.getPrintJobHistory() failed"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 408
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public declared-synchronized getPrinterCapabilities(Ljava/lang/String;I)V
    .locals 3
    .parameter "bluetoothAddress"
    .parameter "serviceMask"

    .prologue
    const-string v1, "BluetoothPrinter"

    .line 194
    monitor-enter p0

    :try_start_0
    const-string v1, "BluetoothPrinter"

    const-string v2, "Call BluetoothPrinterService.getCapabilities()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mBluetoothPrinterService:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;

    invoke-interface {v1, p1, p2}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;->getCapabilities(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :goto_0
    monitor-exit p0

    return-void

    .line 198
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 199
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    const-string v1, "BluetoothPrinter"

    const-string v2, "BluetoothPrinterService.getCapabilities() failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 194
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized obexAuthenticationResponse(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "password"
    .parameter "userId"

    .prologue
    const-string v1, "BluetoothPrinter"

    .line 217
    monitor-enter p0

    :try_start_0
    const-string v1, "BluetoothPrinter"

    const-string v2, "Call BluetoothPrinterService.obexAuthenticationResponse()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mBluetoothPrinterService:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;

    invoke-interface {v1, p1, p2}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;->obexAuthenticationResponse(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    :goto_0
    monitor-exit p0

    return-void

    .line 223
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 224
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    const-string v1, "BluetoothPrinter"

    const-string v2, "BluetoothPrinterService.obexAuthenticationResponse() failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 217
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized printObject(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ILcom/broadcom/bt/service/bpp/BipParameters;Lcom/broadcom/bt/service/bpp/BppParameters;Lcom/broadcom/bt/service/bpp/BppObjectResolver;Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;)J
    .locals 12
    .parameter "bluetoothAddress"
    .parameter "serviceMask"
    .parameter "fileFormat"
    .parameter "header"
    .parameter "name"
    .parameter "handle"
    .parameter "bipParams"
    .parameter "bppParams"
    .parameter "bppObjectResolver"
    .parameter "cb"

    .prologue
    .line 280
    monitor-enter p0

    :try_start_0
    const-string v0, "BluetoothPrinter"

    const-string v1, "Call BluetoothPrinterService.print()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mBluetoothPrinterService:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-interface/range {v0 .. v10}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;->print(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ILcom/broadcom/bt/service/bpp/BipParameters;Lcom/broadcom/bt/service/bpp/BppParameters;Lcom/broadcom/bt/service/bpp/BppObjectResolver;Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 289
    :goto_0
    monitor-exit p0

    return-wide v0

    .line 285
    :catch_0
    move-exception v0

    move-object v11, v0

    .line 286
    .local v11, e:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "BluetoothPrinter"

    const-string v1, "BluetoothPrinterService.print() failed"

    invoke-static {v0, v1, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 289
    const-wide/16 v0, -0x1

    goto :goto_0

    .line 280
    .end local v11           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized registerPrinterEventHandler(Lcom/broadcom/bt/service/bpp/IBluetoothPrinterCallback;)Z
    .locals 3
    .parameter "cb"

    .prologue
    .line 152
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mBluetoothPrinterService:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;

    invoke-interface {v1, p1}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;->registerClientCallback(Lcom/broadcom/bt/service/bpp/IBluetoothPrinterCallback;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 158
    :goto_0
    monitor-exit p0

    return v1

    .line 153
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 154
    .local v0, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v1, "BluetoothPrinter"

    const-string v2, "Failed to initialize/register callbacks with server."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 158
    const/4 v1, 0x0

    goto :goto_0

    .line 152
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method removeAllPrintJobHistory()V
    .locals 0

    .prologue
    .line 450
    invoke-static {}, Lcom/broadcom/bt/service/bpp/PrintManager;->removeAllJobHistory()V

    .line 451
    return-void
.end method

.method removePrintJobHistory(J)V
    .locals 4
    .parameter "jobId"

    .prologue
    const-string v3, "BluetoothPrinter"

    .line 435
    :try_start_0
    const-string v1, "BluetoothPrinter"

    const-string v2, "Call BluetoothPrinterService.removeJobHistory()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mBluetoothPrinterService:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;

    invoke-interface {v1, p1, p2}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;->removePrintJobHistory(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 444
    :goto_0
    return-void

    .line 437
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 438
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "BluetoothPrinter"

    const-string v1, "BluetoothPrinterService.getPrintJobHistory() failed"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public declared-synchronized sendPartialImageResponse(Ljava/lang/String;)V
    .locals 3
    .parameter "name"

    .prologue
    const-string v1, "BluetoothPrinter"

    .line 303
    monitor-enter p0

    :try_start_0
    const-string v1, "BluetoothPrinter"

    const-string v2, "Call BluetoothPrinterService.partialImageResponse()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mBluetoothPrinterService:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;

    invoke-interface {v1, p1}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;->partialImageResponse(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    :goto_0
    monitor-exit p0

    return-void

    .line 306
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 307
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    const-string v1, "BluetoothPrinter"

    const-string v2, "BluetoothPrinterService.partialImageResponse() failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 303
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized sendReferenceObjectResponse(Ljava/lang/String;)V
    .locals 3
    .parameter "name"

    .prologue
    const-string v1, "BluetoothPrinter"

    .line 322
    monitor-enter p0

    :try_start_0
    const-string v1, "BluetoothPrinter"

    const-string v2, "Call BluetoothPrinterService.refObjectResponse()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mBluetoothPrinterService:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;

    invoke-interface {v1, p1}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;->refObjectResponse(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    :goto_0
    monitor-exit p0

    return-void

    .line 325
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 326
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    const-string v1, "BluetoothPrinter"

    const-string v2, "BluetoothPrinterService.refObjectResponse() failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 322
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized unregisterPrinterEventHandler(Lcom/broadcom/bt/service/bpp/IBluetoothPrinterCallback;)Z
    .locals 3
    .parameter "cb"

    .prologue
    .line 173
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mBluetoothPrinterService:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;

    invoke-interface {v1, p1}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;->unregisterClientCallback(Lcom/broadcom/bt/service/bpp/IBluetoothPrinterCallback;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 179
    :goto_0
    monitor-exit p0

    return v1

    .line 174
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 175
    .local v0, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v1, "BluetoothPrinter"

    const-string v2, "Failed to initialize/register callbacks with server."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 179
    const/4 v1, 0x0

    goto :goto_0

    .line 173
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
