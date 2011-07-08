.class public Lcom/android/server/DataRouterService;
.super Landroid/os/Binder;
.source "DataRouterService.java"


# static fields
.field private static ExternalCurrentState:Ljava/lang/String; = null

.field private static InternalCurrentState:Ljava/lang/String; = null

.field private static final LOCAL_LOGD:Z = false

.field private static final TAG:Ljava/lang/String; = "DataRouterService"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 95
    new-instance v0, Lcom/android/server/DataRouterService$1;

    invoke-direct {v0, p0}, Lcom/android/server/DataRouterService$1;-><init>(Lcom/android/server/DataRouterService;)V

    iput-object v0, p0, Lcom/android/server/DataRouterService;->mStorageListener:Landroid/os/storage/StorageEventListener;

    .line 35
    iput-object p1, p0, Lcom/android/server/DataRouterService;->mContext:Landroid/content/Context;

    .line 36
    invoke-direct {p0}, Lcom/android/server/DataRouterService;->init()V

    .line 38
    const-string v0, "storage"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/server/DataRouterService;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 39
    iget-object v0, p0, Lcom/android/server/DataRouterService;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/server/DataRouterService;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/DataRouterService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/android/server/DataRouterService;->updateData(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 44
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, inter_st:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/server/DataRouterService;->rearrangedData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/DataRouterService;->InternalCurrentState:Ljava/lang/String;

    .line 46
    const-string v1, "EXTERNAL_STORAGE_STATE"

    sget-object v2, Lcom/android/server/DataRouterService;->InternalCurrentState:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method private rearrangedData(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "state"

    .prologue
    const-string v1, "mounted"

    .line 59
    const-string v0, "mounted"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    const-string v0, "mounted"

    move-object v0, v1

    .line 63
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "unmounted"

    goto :goto_0
.end method

.method private updateData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "path"
    .parameter "state"

    .prologue
    .line 68
    invoke-direct {p0, p2}, Lcom/android/server/DataRouterService;->rearrangedData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, NowState:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    sget-object v1, Lcom/android/server/DataRouterService;->InternalCurrentState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 73
    const-string v1, "EXTERNAL_STORAGE_STATE"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    sput-object v0, Lcom/android/server/DataRouterService;->InternalCurrentState:Ljava/lang/String;

    .line 93
    :cond_0
    return-void
.end method
