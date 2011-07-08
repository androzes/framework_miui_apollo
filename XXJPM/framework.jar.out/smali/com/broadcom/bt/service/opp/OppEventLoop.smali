.class public Lcom/broadcom/bt/service/opp/OppEventLoop;
.super Lcom/broadcom/bt/service/framework/BaseService;
.source "OppEventLoop.java"

# interfaces
.implements Lcom/broadcom/bt/service/opp/OppConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/opp/OppEventLoop$1;,
        Lcom/broadcom/bt/service/opp/OppEventLoop$AccessInvoker;
    }
.end annotation


# static fields
.field private static final BLUETOOTH_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH"

.field private static final TAG:Ljava/lang/String; = "OppEventLoop"


# instance fields
.field private isAccessGranted:Z

.field private mAccessInvoker:Lcom/broadcom/bt/service/opp/OppEventLoop$AccessInvoker;

.field final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/broadcom/bt/service/opp/IOppCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcom/broadcom/bt/service/opp/OppService;

.field private mStarted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 68
    invoke-static {}, Lcom/broadcom/bt/service/opp/OppEventLoop;->classInitNative()V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/broadcom/bt/service/opp/OppService;)V
    .locals 2
    .parameter "context"
    .parameter "service"

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/framework/BaseService;-><init>(Landroid/content/Context;)V

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->isAccessGranted:Z

    .line 74
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 409
    new-instance v0, Lcom/broadcom/bt/service/opp/OppEventLoop$AccessInvoker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/broadcom/bt/service/opp/OppEventLoop$AccessInvoker;-><init>(Lcom/broadcom/bt/service/opp/OppEventLoop;Lcom/broadcom/bt/service/opp/OppEventLoop$1;)V

    iput-object v0, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mAccessInvoker:Lcom/broadcom/bt/service/opp/OppEventLoop$AccessInvoker;

    .line 86
    iput-object p2, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mService:Lcom/broadcom/bt/service/opp/OppService;

    .line 87
    return-void
.end method

.method private static native classInitNative()V
.end method

.method private native initObexEventLoopNative()V
.end method


# virtual methods
.method getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    const-string v0, "bluetooth_opp_service"

    return-object v0
.end method

.method public init()V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/broadcom/bt/service/opp/OppEventLoop;->initObexEventLoopNative()V

    .line 95
    return-void
.end method

.method public declared-synchronized onOpOwnerVcardNotSet(Ljava/lang/String;)V
    .locals 5
    .parameter "filePathName"

    .prologue
    .line 370
    monitor-enter p0

    :try_start_0
    const-string v2, "OppEventLoop"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onOpOwnerVcardNotSet ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    iget-object v2, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 373
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 375
    :try_start_1
    iget-object v2, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/broadcom/bt/service/opp/IOppCallback;

    invoke-interface {v2, p1}, Lcom/broadcom/bt/service/opp/IOppCallback;->onOpOwnerVcardNotSet(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 373
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 382
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 383
    monitor-exit p0

    return-void

    .line 370
    .end local v0           #N:I
    .end local v1           #i:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 377
    .restart local v0       #N:I
    .restart local v1       #i:I
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public declared-synchronized onOpcClose(I)V
    .locals 5
    .parameter "status"

    .prologue
    .line 160
    monitor-enter p0

    :try_start_0
    const-string v2, "OppEventLoop"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onOpcClose ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v2, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 163
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 165
    :try_start_1
    iget-object v2, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/broadcom/bt/service/opp/IOppCallback;

    invoke-interface {v2, p1}, Lcom/broadcom/bt/service/opp/IOppCallback;->onOpcClose(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 163
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 171
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 172
    monitor-exit p0

    return-void

    .line 160
    .end local v0           #N:I
    .end local v1           #i:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 166
    .restart local v0       #N:I
    .restart local v1       #i:I
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public declared-synchronized onOpcEnable()V
    .locals 4

    .prologue
    .line 130
    monitor-enter p0

    :try_start_0
    const-string v2, "OppEventLoop"

    const-string v3, "onOpcEnable"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v2, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 133
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 135
    :try_start_1
    iget-object v2, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/broadcom/bt/service/opp/IOppCallback;

    invoke-interface {v2}, Lcom/broadcom/bt/service/opp/IOppCallback;->onOpcEnable()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 133
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 141
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 142
    monitor-exit p0

    return-void

    .line 130
    .end local v0           #N:I
    .end local v1           #i:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 136
    .restart local v0       #N:I
    .restart local v1       #i:I
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public declared-synchronized onOpcObjectPushed(ILjava/lang/String;)V
    .locals 5
    .parameter "status"
    .parameter "filePathName"

    .prologue
    .line 175
    monitor-enter p0

    :try_start_0
    const-string v2, "OppEventLoop"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onOpcObjectPushed("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v2, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 178
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 180
    :try_start_1
    iget-object v2, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/broadcom/bt/service/opp/IOppCallback;

    invoke-interface {v2, p1, p2}, Lcom/broadcom/bt/service/opp/IOppCallback;->onOpcObjectPushed(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 178
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 187
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 188
    monitor-exit p0

    return-void

    .line 175
    .end local v0           #N:I
    .end local v1           #i:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 182
    .restart local v0       #N:I
    .restart local v1       #i:I
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public declared-synchronized onOpcObjectReceived(ILjava/lang/String;)V
    .locals 5
    .parameter "status"
    .parameter "filePathName"

    .prologue
    .line 191
    monitor-enter p0

    :try_start_0
    const-string v2, "OppEventLoop"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onOpcObjectReceived("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v2, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 194
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 196
    :try_start_1
    iget-object v2, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/broadcom/bt/service/opp/IOppCallback;

    invoke-interface {v2, p1, p2}, Lcom/broadcom/bt/service/opp/IOppCallback;->onOpcObjectReceived(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 194
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 203
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 204
    monitor-exit p0

    return-void

    .line 191
    .end local v0           #N:I
    .end local v1           #i:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 198
    .restart local v0       #N:I
    .restart local v1       #i:I
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public declared-synchronized onOpcOpen()V
    .locals 4

    .prologue
    .line 145
    monitor-enter p0

    :try_start_0
    const-string v2, "OppEventLoop"

    const-string v3, "onOpcOpen"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v2, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 148
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 150
    :try_start_1
    iget-object v2, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/broadcom/bt/service/opp/IOppCallback;

    invoke-interface {v2}, Lcom/broadcom/bt/service/opp/IOppCallback;->onOpcOpen()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 148
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 156
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 157
    monitor-exit p0

    return-void

    .line 145
    .end local v0           #N:I
    .end local v1           #i:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 151
    .restart local v0       #N:I
    .restart local v1       #i:I
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public declared-synchronized onOpcProgress(II)V
    .locals 5
    .parameter "bytesTransferred"
    .parameter "totalBytes"

    .prologue
    .line 207
    monitor-enter p0

    :try_start_0
    const-string v2, "OppEventLoop"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onOpcProgress("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v2, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 212
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 214
    :try_start_1
    iget-object v2, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/broadcom/bt/service/opp/IOppCallback;

    invoke-interface {v2, p1, p2}, Lcom/broadcom/bt/service/opp/IOppCallback;->onOpcProgress(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 212
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 221
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 223
    monitor-exit p0

    return-void

    .line 207
    .end local v0           #N:I
    .end local v1           #i:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 216
    .restart local v0       #N:I
    .restart local v1       #i:I
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public declared-synchronized onOpsAccessRequest(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;I)V
    .locals 14
    .parameter "peerDeviceName"
    .parameter "peerBDAddress"
    .parameter "operation"
    .parameter "format"
    .parameter "filePathName"
    .parameter "totalBytes"

    .prologue
    .line 245
    monitor-enter p0

    :try_start_0
    const-string v3, "OppEventLoop"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onOpsAccessRequest("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-boolean v3, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->isAccessGranted:Z

    if-nez v3, :cond_0

    .line 251
    const-string v3, "OppEventLoop"

    const-string v4, "Sending OPP access request broadcast intent..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->isAccessGranted:Z

    .line 253
    new-instance v11, Landroid/content/Intent;

    const-string v3, "broadcom.android.bluetooth.intent.action.BT_SERVICE_ACCESS"

    invoke-direct {v11, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 256
    .local v11, accessReqIntent:Landroid/content/Intent;
    const-string v3, "broadcom.android.bluetooth.intent.FILE_NAME"

    move-object v0, v11

    move-object v1, v3

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    const-string v3, "broadcom.android.bluetooth.intent.RMT_DEV_ADDR"

    move-object v0, v11

    move-object v1, v3

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 262
    move/from16 v0, p3

    int-to-byte v0, v0

    move v13, v0

    .line 263
    .local v13, opCode:B
    const-string v3, "broadcom.android.bluetooth.intent.SERVICE_OPER_CODE"

    invoke-virtual {v11, v3, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 264
    const-string v3, "broadcom.android.bluetooth.intent.BLUETOOTH_SERVICE_ID"

    const/4 v4, 0x1

    invoke-virtual {v11, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 265
    const-string v3, "broadcom.android.bluetooth.intent.FILE_SIZE"

    move-object v0, v11

    move-object v1, v3

    move/from16 v2, p6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 266
    const-string v3, "broadcom.android.bluetooth.intent.FILE_FORMAT"

    move-object v0, v11

    move-object v1, v3

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 267
    const-string v3, "broadcom.android.bluetooth.intent.RMT_DEV_NAME"

    invoke-virtual {v11, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 269
    iget-object v3, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BLUETOOTH"

    invoke-virtual {v3, v11, v4}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    .end local v11           #accessReqIntent:Landroid/content/Intent;
    .end local v13           #opCode:B
    :goto_0
    monitor-exit p0

    return-void

    .line 275
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v10

    .line 276
    .local v10, N:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_1
    if-ge v12, v10, :cond_1

    .line 278
    :try_start_2
    iget-object v3, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v12}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/opp/IOppCallback;

    move-object v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    invoke-interface/range {v3 .. v9}, Lcom/broadcom/bt/service/opp/IOppCallback;->onOpsAccessRequest(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 276
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 284
    :cond_1
    :try_start_3
    iget-object v3, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 245
    .end local v10           #N:I
    .end local v12           #i:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 279
    .restart local v10       #N:I
    .restart local v12       #i:I
    :catch_0
    move-exception v3

    goto :goto_2
.end method

.method public declared-synchronized onOpsClose()V
    .locals 4

    .prologue
    .line 289
    monitor-enter p0

    :try_start_0
    const-string v2, "OppEventLoop"

    const-string v3, "onOpsClose()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->isAccessGranted:Z

    .line 291
    iget-object v2, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 292
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 294
    :try_start_1
    iget-object v2, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/broadcom/bt/service/opp/IOppCallback;

    invoke-interface {v2}, Lcom/broadcom/bt/service/opp/IOppCallback;->onOpsClose()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 292
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 300
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 301
    monitor-exit p0

    return-void

    .line 289
    .end local v0           #N:I
    .end local v1           #i:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 295
    .restart local v0       #N:I
    .restart local v1       #i:I
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public declared-synchronized onOpsObjectReceived(ILjava/lang/String;)V
    .locals 5
    .parameter "format"
    .parameter "filePathName"

    .prologue
    .line 304
    monitor-enter p0

    :try_start_0
    const-string v2, "OppEventLoop"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onOpsObjectReceived("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-object v2, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 307
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 309
    :try_start_1
    iget-object v2, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/broadcom/bt/service/opp/IOppCallback;

    invoke-interface {v2, p1, p2}, Lcom/broadcom/bt/service/opp/IOppCallback;->onOpsObjectReceived(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 307
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 316
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 317
    monitor-exit p0

    return-void

    .line 304
    .end local v0           #N:I
    .end local v1           #i:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 311
    .restart local v0       #N:I
    .restart local v1       #i:I
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public declared-synchronized onOpsOpen()V
    .locals 2

    .prologue
    .line 227
    monitor-enter p0

    :try_start_0
    const-string v0, "OppEventLoop"

    const-string v1, "onOpsOpen()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    monitor-exit p0

    return-void

    .line 227
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onOpsProgress(II)V
    .locals 5
    .parameter "bytesTransferred"
    .parameter "totalBytes"

    .prologue
    .line 320
    monitor-enter p0

    :try_start_0
    const-string v2, "OppEventLoop"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onOpsProgress("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget-object v2, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 325
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 327
    :try_start_1
    iget-object v2, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/broadcom/bt/service/opp/IOppCallback;

    invoke-interface {v2, p1, p2}, Lcom/broadcom/bt/service/opp/IOppCallback;->onOpsProgress(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 325
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 334
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 335
    monitor-exit p0

    return-void

    .line 320
    .end local v0           #N:I
    .end local v1           #i:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 329
    .restart local v0       #N:I
    .restart local v1       #i:I
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public registerCallback(Lcom/broadcom/bt/service/opp/IOppCallback;)V
    .locals 1
    .parameter "cb"

    .prologue
    .line 100
    if-eqz p1, :cond_0

    .line 101
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 103
    :cond_0
    return-void
.end method

.method public declared-synchronized start()V
    .locals 1

    .prologue
    .line 112
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mStarted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 117
    :goto_0
    monitor-exit p0

    return-void

    .line 115
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mStarted:Z

    .line 116
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/opp/OppEventLoop;->onStateChangeEvent(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 1

    .prologue
    .line 121
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->isAccessGranted:Z

    .line 123
    iget-boolean v0, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mStarted:Z

    if-eqz v0, :cond_0

    .line 124
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mStarted:Z

    .line 125
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/opp/OppEventLoop;->onStateChangeEvent(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    :cond_0
    monitor-exit p0

    return-void

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public unregisterCallback(Lcom/broadcom/bt/service/opp/IOppCallback;)V
    .locals 1
    .parameter "cb"

    .prologue
    .line 106
    if-eqz p1, :cond_0

    .line 107
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 109
    :cond_0
    return-void
.end method
