.class public Lcom/broadcom/bt/service/bpp/BluetoothPrinterEventLoop;
.super Ljava/lang/Thread;
.source "BluetoothPrinterEventLoop.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothPrinterEventLoop"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mService:Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 62
    invoke-static {}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterEventLoop;->Native_classBluetoothPrinterInit()V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;)V
    .locals 1
    .parameter "context"
    .parameter "service"

    .prologue
    .line 72
    const-string v0, "BluetoothPrinterEventLoop"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 73
    iput-object p2, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterEventLoop;->mService:Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;

    .line 74
    iput-object p1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterEventLoop;->mContext:Landroid/content/Context;

    .line 75
    return-void
.end method

.method private native Native_BluetoothPrinterEventLoop()V
.end method

.method private static native Native_classBluetoothPrinterInit()V
.end method


# virtual methods
.method public declared-synchronized onAuthorizeEvent(IIIZ)V
    .locals 2
    .parameter "realmIndex"
    .parameter "realmLength"
    .parameter "realmCharSet"
    .parameter "required"

    .prologue
    .line 148
    monitor-enter p0

    :try_start_0
    const-string v0, "BluetoothPrinterEventLoop"

    const-string v1, "onAuthorizeEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterEventLoop;->mService:Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->onAuthorizeEvent(IIIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    monitor-exit p0

    return-void

    .line 148
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onBppDocCompleteEvent(I)V
    .locals 2
    .parameter "status"

    .prologue
    .line 212
    monitor-enter p0

    :try_start_0
    const-string v0, "BluetoothPrinterEventLoop"

    const-string v1, "onBppDocCompleteEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterEventLoop;->mService:Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->onBppDocCompleteEvent(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    monitor-exit p0

    return-void

    .line 212
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onCloseEvent(I)V
    .locals 2
    .parameter "status"

    .prologue
    .line 134
    monitor-enter p0

    :try_start_0
    const-string v0, "BluetoothPrinterEventLoop"

    const-string v1, "onCloseEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterEventLoop;->mService:Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->onCloseEvent(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    monitor-exit p0

    return-void

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onEnableEvent()V
    .locals 2

    .prologue
    .line 100
    monitor-enter p0

    :try_start_0
    const-string v0, "BluetoothPrinterEventLoop"

    const-string v1, "onEnableEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterEventLoop;->mService:Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->onEnableEvent()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    monitor-exit p0

    return-void

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onGetCapabilitiesEvent(IIIILcom/broadcom/bt/service/bpp/BipCapabilities;Lcom/broadcom/bt/service/bpp/BppAttributes;)V
    .locals 7
    .parameter "services"
    .parameter "bppFeatures"
    .parameter "oppFeatures"
    .parameter "bipFeatures"
    .parameter "bc"
    .parameter "ba"

    .prologue
    .line 169
    monitor-enter p0

    :try_start_0
    const-string v0, "BluetoothPrinterEventLoop"

    const-string v1, "onGetCapabilitiesEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterEventLoop;->mService:Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->onGetCapabilitiesEvent(IIIILcom/broadcom/bt/service/bpp/BipCapabilities;Lcom/broadcom/bt/service/bpp/BppAttributes;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    monitor-exit p0

    return-void

    .line 169
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onGetObjectEvent(Ljava/lang/String;)V
    .locals 3
    .parameter "name"

    .prologue
    .line 201
    monitor-enter p0

    :try_start_0
    const-string v0, "BluetoothPrinterEventLoop"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetObjectEvent("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterEventLoop;->mService:Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->onGetObjectEvent(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    monitor-exit p0

    return-void

    .line 201
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onJobStatusEvent(Lcom/broadcom/bt/service/bpp/JobStatus;)V
    .locals 2
    .parameter "status"

    .prologue
    .line 223
    monitor-enter p0

    :try_start_0
    const-string v0, "BluetoothPrinterEventLoop"

    const-string v1, "onJobStatusEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterEventLoop;->mService:Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->onJobStatusEvent(Lcom/broadcom/bt/service/bpp/JobStatus;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    monitor-exit p0

    return-void

    .line 223
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onOpenEvent(I)V
    .locals 2
    .parameter "serviceId"

    .prologue
    .line 111
    monitor-enter p0

    :try_start_0
    const-string v0, "BluetoothPrinterEventLoop"

    const-string v1, "onOpenEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterEventLoop;->mService:Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->onOpenEvent(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    monitor-exit p0

    return-void

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onPartialImageEvent(Ljava/lang/String;)V
    .locals 3
    .parameter "name"

    .prologue
    .line 191
    monitor-enter p0

    :try_start_0
    const-string v0, "BluetoothPrinterEventLoop"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPartialImageEvent("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterEventLoop;->mService:Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->onPartialImageEvent(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    monitor-exit p0

    return-void

    .line 191
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onProgressEvent(II)V
    .locals 2
    .parameter "totalBytes"
    .parameter "processedBytes"

    .prologue
    .line 123
    monitor-enter p0

    :try_start_0
    const-string v0, "BluetoothPrinterEventLoop"

    const-string v1, "onProgressEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterEventLoop;->mService:Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;

    invoke-virtual {v0, p1, p2}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->onProgressEvent(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    monitor-exit p0

    return-void

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onThumbnailEvent()V
    .locals 2

    .prologue
    .line 181
    monitor-enter p0

    :try_start_0
    const-string v0, "BluetoothPrinterEventLoop"

    const-string v1, "onThumbnailEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterEventLoop;->mService:Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->onThumbnailEvent()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    monitor-exit p0

    return-void

    .line 181
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 4

    .prologue
    const-string v3, "BluetoothPrinterEventLoop"

    .line 81
    const-string v0, "BluetoothPrinterEventLoop"

    const-string v0, "ENTER BluetoothPrinterEventLoop in Native code"

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :goto_0
    invoke-virtual {p0}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterEventLoop;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    const-string v0, "BluetoothPrinterEventLoop"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BluetoothPrinterEventLoop: Entering JNI. thread:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-direct {p0}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterEventLoop;->Native_BluetoothPrinterEventLoop()V

    .line 87
    const-string v0, "BluetoothPrinterEventLoop"

    const-string v0, "BluetoothPrinterEventLoop: Exiting JNI"

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 89
    :cond_0
    return-void
.end method
