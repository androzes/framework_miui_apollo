.class Lcom/android/settings/MediaFormatSd$1$1;
.super Ljava/lang/Thread;
.source "MediaFormatSd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MediaFormatSd$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/MediaFormatSd$1;

.field final synthetic val$service:Landroid/os/storage/IMountService;


# direct methods
.method constructor <init>(Lcom/android/settings/MediaFormatSd$1;Landroid/os/storage/IMountService;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/settings/MediaFormatSd$1$1;->this$1:Lcom/android/settings/MediaFormatSd$1;

    iput-object p2, p0, Lcom/android/settings/MediaFormatSd$1$1;->val$service:Landroid/os/storage/IMountService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const-string v4, "MediaFormat"

    .line 76
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/MediaFormatSd$1$1;->val$service:Landroid/os/storage/IMountService;

    iget-object v2, p0, Lcom/android/settings/MediaFormatSd$1$1;->this$1:Lcom/android/settings/MediaFormatSd$1;

    iget-object v2, v2, Lcom/android/settings/MediaFormatSd$1;->exterStoragePath:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/os/storage/IMountService;->formatVolume(Ljava/lang/String;)I

    .line 77
    const-string v1, "MediaFormat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PATH = format "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/MediaFormatSd$1$1;->this$1:Lcom/android/settings/MediaFormatSd$1;

    iget-object v3, v3, Lcom/android/settings/MediaFormatSd$1;->exterStoragePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-static {}, Landroid/os/Environment;->getExternalStorageStateSd()Ljava/lang/String;

    move-result-object v1

    const-string v2, "unmounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    iget-object v1, p0, Lcom/android/settings/MediaFormatSd$1$1;->val$service:Landroid/os/storage/IMountService;

    iget-object v2, p0, Lcom/android/settings/MediaFormatSd$1$1;->this$1:Lcom/android/settings/MediaFormatSd$1;

    iget-object v2, v2, Lcom/android/settings/MediaFormatSd$1;->exterStoragePath:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/os/storage/IMountService;->mountVolume(Ljava/lang/String;)I

    .line 80
    const-string v1, "MediaFormat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PATH = mount "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/MediaFormatSd$1$1;->this$1:Lcom/android/settings/MediaFormatSd$1;

    iget-object v3, v3, Lcom/android/settings/MediaFormatSd$1;->exterStoragePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 82
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 84
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "MediaFormat"

    const-string v1, "Unable to invoke IMountService.formatMedia()"

    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
