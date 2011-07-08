.class Landroid/webkit/WebView$7;
.super Ljava/lang/Object;
.source "WebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/WebView;->savePicture(Landroid/os/Bundle;Ljava/io/File;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebView;

.field final synthetic val$dest:Ljava/io/File;

.field final synthetic val$p:Landroid/graphics/Picture;

.field final synthetic val$temp:Ljava/io/File;


# direct methods
.method constructor <init>(Landroid/webkit/WebView;Ljava/io/File;Landroid/graphics/Picture;Ljava/io/File;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1667
    iput-object p1, p0, Landroid/webkit/WebView$7;->this$0:Landroid/webkit/WebView;

    iput-object p2, p0, Landroid/webkit/WebView$7;->val$temp:Ljava/io/File;

    iput-object p3, p0, Landroid/webkit/WebView$7;->val$p:Landroid/graphics/Picture;

    iput-object p4, p0, Landroid/webkit/WebView$7;->val$dest:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1669
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Landroid/webkit/WebView$7;->val$temp:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1670
    .local v0, out:Ljava/io/FileOutputStream;
    iget-object v1, p0, Landroid/webkit/WebView$7;->val$p:Landroid/graphics/Picture;

    invoke-virtual {v1, v0}, Landroid/graphics/Picture;->writeToStream(Ljava/io/OutputStream;)V

    .line 1671
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 1674
    iget-object v1, p0, Landroid/webkit/WebView$7;->val$temp:Ljava/io/File;

    iget-object v2, p0, Landroid/webkit/WebView$7;->val$dest:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1678
    iget-object v1, p0, Landroid/webkit/WebView$7;->val$temp:Ljava/io/File;

    .end local v0           #out:Ljava/io/FileOutputStream;
    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1680
    return-void

    .line 1678
    :catchall_0
    move-exception v1

    iget-object v2, p0, Landroid/webkit/WebView$7;->val$temp:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    throw v1

    .line 1675
    :catch_0
    move-exception v1

    .line 1678
    iget-object v1, p0, Landroid/webkit/WebView$7;->val$temp:Ljava/io/File;

    goto :goto_0
.end method
