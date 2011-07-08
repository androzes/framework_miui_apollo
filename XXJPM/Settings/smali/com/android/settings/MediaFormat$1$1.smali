.class Lcom/android/settings/MediaFormat$1$1;
.super Ljava/lang/Thread;
.source "MediaFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MediaFormat$1;->onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/MediaFormat$1;

.field final synthetic val$exterStoragePath:Ljava/lang/String;

.field final synthetic val$interStoragePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/MediaFormat$1;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/settings/MediaFormat$1$1;->this$1:Lcom/android/settings/MediaFormat$1;

    iput-object p2, p0, Lcom/android/settings/MediaFormat$1$1;->val$interStoragePath:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/MediaFormat$1$1;->val$exterStoragePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const-string v3, "PATH = mount "

    const-string v6, "MediaFormat"

    .line 88
    iget-object v3, p0, Lcom/android/settings/MediaFormat$1$1;->this$1:Lcom/android/settings/MediaFormat$1;

    iget-object v3, v3, Lcom/android/settings/MediaFormat$1;->this$0:Lcom/android/settings/MediaFormat;

    invoke-static {v3}, Lcom/android/settings/MediaFormat;->access$200(Lcom/android/settings/MediaFormat;)Landroid/os/storage/IMountService;

    move-result-object v1

    .line 89
    .local v1, mountService:Landroid/os/storage/IMountService;
    const-string v3, "mount"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v2

    .line 92
    .local v2, service:Landroid/os/storage/IMountService;
    if-eqz v2, :cond_0

    .line 93
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/MediaFormat$1$1;->val$interStoragePath:Ljava/lang/String;

    invoke-interface {v2, v3}, Landroid/os/storage/IMountService;->formatVolume(Ljava/lang/String;)I

    .line 94
    const-string v3, "MediaFormat"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PATH = format "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/MediaFormat$1$1;->val$interStoragePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_0
    iget-object v3, p0, Lcom/android/settings/MediaFormat$1$1;->val$interStoragePath:Ljava/lang/String;

    invoke-interface {v1, v3}, Landroid/os/storage/IMountService;->mountVolume(Ljava/lang/String;)I

    .line 97
    const-string v3, "MediaFormat"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PATH = mount "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/MediaFormat$1$1;->val$interStoragePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-static {}, Landroid/os/Environment;->getExternalStorageStateSd()Ljava/lang/String;

    move-result-object v3

    const-string v4, "unmounted"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 99
    iget-object v3, p0, Lcom/android/settings/MediaFormat$1$1;->val$exterStoragePath:Ljava/lang/String;

    invoke-interface {v1, v3}, Landroid/os/storage/IMountService;->mountVolume(Ljava/lang/String;)I

    .line 100
    const-string v3, "MediaFormat"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PATH = mount "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/MediaFormat$1$1;->val$exterStoragePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :cond_1
    :goto_0
    return-void

    .line 102
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 104
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "MediaFormat"

    const-string v3, "Unable to invoke IMountService.formatMedia()"

    invoke-static {v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
