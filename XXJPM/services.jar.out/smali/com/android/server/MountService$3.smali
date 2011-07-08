.class Lcom/android/server/MountService$3;
.super Ljava/lang/Thread;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MountService;->onEvent(ILjava/lang/String;[Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 766
    iput-object p1, p0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    iput-object p2, p0, Lcom/android/server/MountService$3;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const-string v9, "MountService"

    .line 773
    :try_start_0
    iget-object v4, p0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    invoke-static {v4}, Lcom/android/server/MountService;->access$1900(Lcom/android/server/MountService;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 774
    const-string v4, "MountService"

    const-string v5, "Do not mount %s and prepare SharedVolume Mode"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/server/MountService$3;->val$path:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    iget-object v4, p0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    iget-object v5, p0, Lcom/android/server/MountService$3;->val$path:Ljava/lang/String;

    const-string v6, "ums"

    const/4 v7, 0x1

    invoke-static {v4, v5, v6, v7}, Lcom/android/server/MountService;->access$400(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 797
    :cond_0
    :goto_0
    return-void

    .line 782
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    const/4 v4, 0x3

    if-ge v1, v4, :cond_3

    .line 783
    iget-object v4, p0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    iget-object v5, p0, Lcom/android/server/MountService$3;->val$path:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 784
    .local v3, vs:Ljava/lang/String;
    const-string v4, "pending"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 785
    const-string v4, "MountService"

    const-string v5, "path : %s waiting over pending state (%s)"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/server/MountService$3;->val$path:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v3, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    const-wide/16 v4, 0x3e8

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    .line 782
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 791
    .end local v3           #vs:Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    iget-object v5, p0, Lcom/android/server/MountService$3;->val$path:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/android/server/MountService;->access$300(Lcom/android/server/MountService;Ljava/lang/String;)I

    move-result v2

    .local v2, rc:I
    if-eqz v2, :cond_0

    .line 792
    const-string v4, "MountService"

    const-string v5, "Insertion mount failed (%d)"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 794
    .end local v1           #i:I
    .end local v2           #rc:I
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 795
    .local v0, ex:Ljava/lang/Exception;
    const-string v4, "MountService"

    const-string v4, "Failed to mount media on insertion"

    invoke-static {v9, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
