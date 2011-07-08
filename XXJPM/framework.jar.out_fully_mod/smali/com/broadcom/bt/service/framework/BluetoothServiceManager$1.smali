.class Lcom/broadcom/bt/service/framework/BluetoothServiceManager$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/framework/BluetoothServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 111
    const-string v2, "bt_svc_state"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 113
    .local v0, state:I
    const-string v2, "bt_svc_name"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 115
    .local v1, svcName:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->onBluetoothServiceStateChanged(Ljava/lang/String;I)V

    .line 116
    return-void
.end method
