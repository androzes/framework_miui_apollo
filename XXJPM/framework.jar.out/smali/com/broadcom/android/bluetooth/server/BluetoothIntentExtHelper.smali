.class public final Lcom/broadcom/android/bluetooth/server/BluetoothIntentExtHelper;
.super Ljava/lang/Object;
.source "BluetoothIntentExtHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createBtSvcStateChangeEvent(Ljava/lang/String;I)Landroid/content/Intent;
    .locals 2
    .parameter "svcName"
    .parameter "state"

    .prologue
    .line 19
    new-instance v0, Landroid/content/Intent;

    const-string v1, "broadcom.bt.intent.action.BT_SVC_STATE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 20
    .local v0, i:Landroid/content/Intent;
    const-string v1, "bt_svc_name"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    const-string v1, "bt_svc_state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 22
    return-object v0
.end method
