.class Lcom/android/server/status/UsbStorageActivity$1;
.super Landroid/content/BroadcastReceiver;
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
    .line 86
    iput-object p1, p0, Lcom/android/server/status/UsbStorageActivity$1;->this$0:Lcom/android/server/status/UsbStorageActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 87
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    if-ne v0, v1, :cond_0

    .line 89
    iget-object v0, p0, Lcom/android/server/status/UsbStorageActivity$1;->this$0:Lcom/android/server/status/UsbStorageActivity;

    invoke-static {v0, p2}, Lcom/android/server/status/UsbStorageActivity;->access$000(Lcom/android/server/status/UsbStorageActivity;Landroid/content/Intent;)V

    .line 91
    :cond_0
    return-void
.end method
