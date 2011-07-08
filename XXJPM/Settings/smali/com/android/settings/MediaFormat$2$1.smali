.class Lcom/android/settings/MediaFormat$2$1;
.super Ljava/lang/Thread;
.source "MediaFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MediaFormat$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/MediaFormat$2;


# direct methods
.method constructor <init>(Lcom/android/settings/MediaFormat$2;)V
    .locals 0
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/settings/MediaFormat$2$1;->this$1:Lcom/android/settings/MediaFormat$2;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const-string v4, "MediaFormat"

    .line 141
    iget-object v1, p0, Lcom/android/settings/MediaFormat$2$1;->this$1:Lcom/android/settings/MediaFormat$2;

    iget-object v1, v1, Lcom/android/settings/MediaFormat$2;->this$0:Lcom/android/settings/MediaFormat;

    invoke-static {v1}, Lcom/android/settings/MediaFormat;->access$100(Lcom/android/settings/MediaFormat;)Landroid/os/storage/StorageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/MediaFormat$2$1;->this$1:Lcom/android/settings/MediaFormat$2;

    iget-object v2, v2, Lcom/android/settings/MediaFormat$2;->this$0:Lcom/android/settings/MediaFormat;

    invoke-static {v2}, Lcom/android/settings/MediaFormat;->access$000(Lcom/android/settings/MediaFormat;)Landroid/os/storage/StorageEventListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 145
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/MediaFormat$2$1;->this$1:Lcom/android/settings/MediaFormat$2;

    iget-object v1, v1, Lcom/android/settings/MediaFormat$2;->mountService:Landroid/os/storage/IMountService;

    iget-object v2, p0, Lcom/android/settings/MediaFormat$2$1;->this$1:Lcom/android/settings/MediaFormat$2;

    iget-object v2, v2, Lcom/android/settings/MediaFormat$2;->extStoragePath:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/os/storage/IMountService;->unmountVolume(Ljava/lang/String;Z)V

    .line 146
    const-string v1, "MediaFormat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PATH = unmount "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/MediaFormat$2$1;->this$1:Lcom/android/settings/MediaFormat$2;

    iget-object v3, v3, Lcom/android/settings/MediaFormat$2;->extStoragePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :goto_0
    return-void

    .line 147
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 149
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "MediaFormat"

    const-string v1, "Unable to invoke IMountService.formatMedia()"

    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
