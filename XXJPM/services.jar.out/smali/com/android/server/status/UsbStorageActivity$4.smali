.class Lcom/android/server/status/UsbStorageActivity$4;
.super Ljava/lang/Thread;
.source "UsbStorageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/status/UsbStorageActivity;->switchUsbMassStorageAsync(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/status/UsbStorageActivity;

.field final synthetic val$_on:Z


# direct methods
.method constructor <init>(Lcom/android/server/status/UsbStorageActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 312
    iput-object p1, p0, Lcom/android/server/status/UsbStorageActivity$4;->this$0:Lcom/android/server/status/UsbStorageActivity;

    iput-boolean p2, p0, Lcom/android/server/status/UsbStorageActivity$4;->val$_on:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 313
    iget-boolean v0, p0, Lcom/android/server/status/UsbStorageActivity$4;->val$_on:Z

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/android/server/status/UsbStorageActivity$4;->this$0:Lcom/android/server/status/UsbStorageActivity;

    invoke-static {v0}, Lcom/android/server/status/UsbStorageActivity;->access$300(Lcom/android/server/status/UsbStorageActivity;)Landroid/os/storage/StorageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->enableUsbMassStorage()V

    .line 318
    :goto_0
    return-void

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/android/server/status/UsbStorageActivity$4;->this$0:Lcom/android/server/status/UsbStorageActivity;

    invoke-static {v0}, Lcom/android/server/status/UsbStorageActivity;->access$300(Lcom/android/server/status/UsbStorageActivity;)Landroid/os/storage/StorageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->disableUsbMassStorage()V

    goto :goto_0
.end method
