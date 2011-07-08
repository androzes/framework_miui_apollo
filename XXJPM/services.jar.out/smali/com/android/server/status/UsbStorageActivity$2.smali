.class Lcom/android/server/status/UsbStorageActivity$2;
.super Landroid/os/storage/StorageEventListener;
.source "UsbStorageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/status/UsbStorageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/status/UsbStorageActivity;


# direct methods
.method constructor <init>(Lcom/android/server/status/UsbStorageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/server/status/UsbStorageActivity$2;->this$0:Lcom/android/server/status/UsbStorageActivity;

    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "path"
    .parameter "oldState"
    .parameter "newState"

    .prologue
    .line 131
    const-string v1, "shared"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 132
    .local v0, on:Z
    iget-object v1, p0, Lcom/android/server/status/UsbStorageActivity$2;->this$0:Lcom/android/server/status/UsbStorageActivity;

    invoke-static {v1, v0}, Lcom/android/server/status/UsbStorageActivity;->access$100(Lcom/android/server/status/UsbStorageActivity;Z)V

    .line 135
    return-void
.end method
