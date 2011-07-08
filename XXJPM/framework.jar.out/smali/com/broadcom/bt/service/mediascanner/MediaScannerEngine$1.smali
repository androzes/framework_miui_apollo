.class Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine$1;
.super Ljava/lang/Object;
.source "MediaScannerEngine.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;


# direct methods
.method constructor <init>(Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine$1;->this$0:Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaScannerConnected()V
    .locals 7

    .prologue
    const-string v6, "MediaScannerEngine"

    .line 26
    const-string v3, "MediaScannerEngine"

    const-string v3, "Connected to media scanner"

    invoke-static {v6, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    iget-object v3, p0, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine$1;->this$0:Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;

    invoke-static {v3}, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;->access$000(Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 29
    .local v0, fileName:Ljava/lang/String;
    :try_start_0
    const-string v3, "MediaScannerEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onMediaScannerConnected : fileName"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    iget-object v3, p0, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine$1;->this$0:Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;

    invoke-static {v3}, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;->access$100(Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;)Landroid/media/MediaScannerConnection;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 31
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 32
    .local v2, t:Ljava/lang/Throwable;
    const-string v3, "MediaScannerEngine"

    const-string v3, "Unable to scan file "

    invoke-static {v6, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 35
    .end local v0           #fileName:Ljava/lang/String;
    .end local v2           #t:Ljava/lang/Throwable;
    :cond_0
    return-void
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 5
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const-string v4, "MediaScannerEngine"

    .line 39
    iget-object v1, p0, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine$1;->this$0:Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;

    invoke-static {v1}, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;->access$200(Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    const-string v1, "MediaScannerEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LTH] onScanCompleted : fileName"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine$1;->this$0:Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;

    invoke-static {v2}, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;->access$000(Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    const-string v1, "MediaScannerEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LTH]onScanCompleted : fileName Size"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine$1;->this$0:Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;

    invoke-static {v2}, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;->access$000(Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    const-string v1, "MediaScannerEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LTH]onScanCompleted : mNewuris"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine$1;->this$0:Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;

    invoke-static {v2}, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;->access$200(Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    const-string v1, "MediaScannerEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LTH] onScanCompleted : mNewuris Size"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine$1;->this$0:Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;

    invoke-static {v2}, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;->access$200(Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iget-object v1, p0, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine$1;->this$0:Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;

    invoke-static {v1}, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;->access$000(Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine$1;->this$0:Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;

    invoke-static {v1}, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;->access$000(Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine$1;->this$0:Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;

    invoke-static {v2}, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;->access$200(Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 46
    iget-object v1, p0, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine$1;->this$0:Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;

    invoke-static {v1}, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;->access$300(Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;)Lcom/broadcom/bt/service/mediascanner/IMediaScannerCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 47
    iget-object v1, p0, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine$1;->this$0:Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;

    invoke-static {v1}, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;->access$300(Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;)Lcom/broadcom/bt/service/mediascanner/IMediaScannerCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine$1;->this$0:Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;

    invoke-static {v2}, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;->access$000(Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine$1;->this$0:Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;

    invoke-static {v3}, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;->access$200(Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/broadcom/bt/service/mediascanner/IMediaScannerCallback;->onResultsAvailable(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 50
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine$1;->this$0:Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;

    invoke-static {v1}, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;->access$100(Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;)Landroid/media/MediaScannerConnection;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaScannerConnection;->disconnect()V

    .line 51
    const-string v1, "MediaScannerEngine"

    const-string v2, "Disconnected from media scanner"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :cond_1
    :goto_0
    return-void

    .line 52
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 53
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "MediaScannerEngine"

    const-string v1, "Unable to disconnect media scanner"

    invoke-static {v4, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
