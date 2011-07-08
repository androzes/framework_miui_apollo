.class Lcom/broadcom/bt/server/BrcmBtServiceLoader$1;
.super Landroid/content/BroadcastReceiver;
.source "BrcmBtServiceLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/broadcom/bt/server/BrcmBtServiceLoader;->loadRequiredSystemResources(Landroid/content/Context;I)V
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
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const-string v4, "BrcmBtServiceLoader"

    .line 111
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 114
    const-string v2, "android.bluetooth.adapter.extra.STATE"

    const/high16 v3, -0x8000

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 117
    .local v1, state:I
    packed-switch v1, :pswitch_data_0

    .line 127
    const-string v2, "BrcmBtServiceLoader"

    const-string v2, "***Received Bluetooth UNKNOWN_STATE_CHANGE Event****"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    .end local v1           #state:I
    :cond_0
    :goto_0
    return-void

    .line 119
    .restart local v1       #state:I
    :pswitch_0
    const-string v2, "BrcmBtServiceLoader"

    const-string v2, "***Received Bluetooth OFF Event****"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-static {}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->onBluetoothDisabled()V

    goto :goto_0

    .line 123
    :pswitch_1
    const-string v2, "BrcmBtServiceLoader"

    const-string v2, "***Received Bluetooth ON Event****"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-static {}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->onBluetoothEnabled()V

    goto :goto_0

    .line 117
    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
