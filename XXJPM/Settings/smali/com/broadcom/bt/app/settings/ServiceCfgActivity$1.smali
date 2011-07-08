.class Lcom/broadcom/bt/app/settings/ServiceCfgActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "ServiceCfgActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/app/settings/ServiceCfgActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/app/settings/ServiceCfgActivity;


# direct methods
.method constructor <init>(Lcom/broadcom/bt/app/settings/ServiceCfgActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/broadcom/bt/app/settings/ServiceCfgActivity$1;->this$0:Lcom/broadcom/bt/app/settings/ServiceCfgActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 62
    const-string v3, "bt_svc_state"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 64
    .local v1, state:I
    const-string v3, "bt_svc_name"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 67
    .local v2, svcName:Ljava/lang/String;
    iget-object v3, p0, Lcom/broadcom/bt/app/settings/ServiceCfgActivity$1;->this$0:Lcom/broadcom/bt/app/settings/ServiceCfgActivity;

    invoke-static {v3}, Lcom/broadcom/bt/app/settings/ServiceCfgActivity;->access$000(Lcom/broadcom/bt/app/settings/ServiceCfgActivity;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 68
    .local v0, pref:Landroid/preference/CheckBoxPreference;
    if-eqz v0, :cond_0

    .line 69
    packed-switch v1, :pswitch_data_0

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 71
    :pswitch_0
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 74
    :pswitch_1
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 69
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
