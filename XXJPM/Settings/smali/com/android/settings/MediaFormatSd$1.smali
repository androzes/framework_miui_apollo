.class Lcom/android/settings/MediaFormatSd$1;
.super Ljava/lang/Object;
.source "MediaFormatSd.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MediaFormatSd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field exterStoragePath:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/settings/MediaFormatSd;


# direct methods
.method constructor <init>(Lcom/android/settings/MediaFormatSd;)V
    .locals 1
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/settings/MediaFormatSd$1;->this$0:Lcom/android/settings/MediaFormatSd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MediaFormatSd$1;->exterStoragePath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 67
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    :goto_0
    return-void

    .line 70
    :cond_0
    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v0

    .line 72
    .local v0, service:Landroid/os/storage/IMountService;
    if-eqz v0, :cond_1

    .line 73
    new-instance v1, Lcom/android/settings/MediaFormatSd$1$1;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/MediaFormatSd$1$1;-><init>(Lcom/android/settings/MediaFormatSd$1;Landroid/os/storage/IMountService;)V

    invoke-virtual {v1}, Lcom/android/settings/MediaFormatSd$1$1;->start()V

    .line 91
    :goto_1
    iget-object v1, p0, Lcom/android/settings/MediaFormatSd$1;->this$0:Lcom/android/settings/MediaFormatSd;

    invoke-virtual {v1}, Lcom/android/settings/MediaFormatSd;->finish()V

    goto :goto_0

    .line 89
    :cond_1
    const-string v1, "MediaFormat"

    const-string v2, "Unable to locate IMountService"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
