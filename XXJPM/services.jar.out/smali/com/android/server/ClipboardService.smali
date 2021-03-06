.class public Lcom/android/server/ClipboardService;
.super Landroid/text/IClipboard$Stub;
.source "ClipboardService.java"


# instance fields
.field private mClipboard:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/text/IClipboard$Stub;-><init>()V

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ClipboardService;->mClipboard:Ljava/lang/CharSequence;

    .line 31
    return-void
.end method


# virtual methods
.method public getClipboardText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 46
    monitor-enter p0

    .line 47
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ClipboardService;->mClipboard:Ljava/lang/CharSequence;

    monitor-exit p0

    return-object v0

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public hasClipboardText()Z
    .locals 1

    .prologue
    .line 53
    monitor-enter p0

    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ClipboardService;->mClipboard:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setClipboardText(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 35
    monitor-enter p0

    .line 36
    if-nez p1, :cond_0

    .line 37
    :try_start_0
    const-string p1, ""

    .line 40
    :cond_0
    iput-object p1, p0, Lcom/android/server/ClipboardService;->mClipboard:Ljava/lang/CharSequence;

    .line 41
    monitor-exit p0

    .line 42
    return-void

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
