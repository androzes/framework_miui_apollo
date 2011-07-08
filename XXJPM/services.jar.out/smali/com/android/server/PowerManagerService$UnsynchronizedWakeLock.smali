.class Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;
.super Ljava/lang/Object;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnsynchronizedWakeLock"
.end annotation


# instance fields
.field mCount:I

.field mFlags:I

.field mHeld:Z

.field mRefCounted:Z

.field mTag:Ljava/lang/String;

.field mToken:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/server/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/PowerManagerService;ILjava/lang/String;Z)V
    .locals 1
    .parameter
    .parameter "flags"
    .parameter "tag"
    .parameter "refCounted"

    .prologue
    .line 297
    iput-object p1, p0, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->mCount:I

    .line 298
    iput p2, p0, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->mFlags:I

    .line 299
    iput-object p3, p0, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->mTag:Ljava/lang/String;

    .line 300
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->mToken:Landroid/os/IBinder;

    .line 301
    iput-boolean p4, p0, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->mRefCounted:Z

    .line 302
    return-void
.end method


# virtual methods
.method public acquire()V
    .locals 7

    .prologue
    .line 305
    iget-boolean v2, p0, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->mRefCounted:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->mCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->mCount:I

    if-nez v2, :cond_1

    .line 306
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 308
    .local v0, ident:J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->this$0:Lcom/android/server/PowerManagerService;

    iget v3, p0, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->mFlags:I

    iget-object v4, p0, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->mToken:Landroid/os/IBinder;

    iget-object v5, p0, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v5}, Lcom/android/server/PowerManagerService;->access$300(Lcom/android/server/PowerManagerService;)I

    move-result v5

    iget-object v6, p0, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->mTag:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/server/PowerManagerService;->acquireWakeLockLocked(ILandroid/os/IBinder;ILjava/lang/String;)V

    .line 310
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->mHeld:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 315
    .end local v0           #ident:J
    :cond_1
    return-void

    .line 312
    .restart local v0       #ident:J
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public isHeld()Z
    .locals 1

    .prologue
    .line 329
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->mHeld:Z

    return v0
.end method

.method public release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 318
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->mRefCounted:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->mCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->mCount:I

    if-nez v0, :cond_1

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->this$0:Lcom/android/server/PowerManagerService;

    iget-object v1, p0, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->mToken:Landroid/os/IBinder;

    invoke-static {v0, v1, v2, v2}, Lcom/android/server/PowerManagerService;->access$400(Lcom/android/server/PowerManagerService;Landroid/os/IBinder;IZ)V

    .line 320
    iput-boolean v2, p0, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->mHeld:Z

    .line 322
    :cond_1
    iget v0, p0, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->mCount:I

    if-gez v0, :cond_2

    .line 323
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WakeLock under-locked "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->mTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 325
    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UnsynchronizedWakeLock(mFlags=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->mFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->mCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mHeld="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->mHeld:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
