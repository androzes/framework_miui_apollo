.class public abstract Lcom/broadcom/bt/service/framework/BaseProxy;
.super Ljava/lang/Object;
.source "BaseProxy.java"


# instance fields
.field protected mAppServiceConn:Landroid/content/ServiceConnection;

.field protected mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    .locals 0
    .parameter "ctx"
    .parameter "appServiceConn"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mContext:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mAppServiceConn:Landroid/content/ServiceConnection;

    .line 33
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 0

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;->finish()V

    .line 68
    return-void
.end method

.method public declared-synchronized finish()V
    .locals 2

    .prologue
    .line 41
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mAppServiceConn:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mAppServiceConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mAppServiceConn:Landroid/content/ServiceConnection;

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    :cond_0
    monitor-exit p0

    return-void

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public requiresAccessProcessing()Z
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public setAccess(IZLjava/lang/Object;)V
    .locals 0
    .parameter "opCode"
    .parameter "allow"
    .parameter "data"

    .prologue
    .line 64
    return-void
.end method
