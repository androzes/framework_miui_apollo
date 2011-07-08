.class Lcom/android/server/WifiService$Multicaster;
.super Lcom/android/server/WifiService$DeathRecipient;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WifiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Multicaster"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WifiService;


# direct methods
.method constructor <init>(Lcom/android/server/WifiService;Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 1
    .parameter
    .parameter "tag"
    .parameter "binder"

    .prologue
    .line 2358
    iput-object p1, p0, Lcom/android/server/WifiService$Multicaster;->this$0:Lcom/android/server/WifiService;

    .line 2359
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/server/WifiService$DeathRecipient;-><init>(Lcom/android/server/WifiService;ILjava/lang/String;Landroid/os/IBinder;)V

    .line 2360
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    .prologue
    .line 2363
    const-string v1, "WifiService"

    const-string v2, "Multicaster binderDied"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2364
    iget-object v1, p0, Lcom/android/server/WifiService$Multicaster;->this$0:Lcom/android/server/WifiService;

    invoke-static {v1}, Lcom/android/server/WifiService;->access$2800(Lcom/android/server/WifiService;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 2365
    :try_start_0
    iget-object v2, p0, Lcom/android/server/WifiService$Multicaster;->this$0:Lcom/android/server/WifiService;

    invoke-static {v2}, Lcom/android/server/WifiService;->access$2800(Lcom/android/server/WifiService;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 2366
    .local v0, i:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 2367
    iget-object v2, p0, Lcom/android/server/WifiService$Multicaster;->this$0:Lcom/android/server/WifiService;

    iget v3, p0, Lcom/android/server/WifiService$Multicaster;->mMode:I

    invoke-static {v2, v0, v3}, Lcom/android/server/WifiService;->access$2900(Lcom/android/server/WifiService;II)V

    .line 2369
    :cond_0
    monitor-exit v1

    .line 2370
    return-void

    .line 2369
    .end local v0           #i:I
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getUid()I
    .locals 1

    .prologue
    .line 2377
    iget v0, p0, Lcom/android/server/WifiService$Multicaster;->mMode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Multicaster{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/WifiService$Multicaster;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " binder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/WifiService$Multicaster;->mBinder:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
