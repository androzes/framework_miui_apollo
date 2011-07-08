.class Lcom/nemustech/tiffany/world/TFEffectActivity$2$1;
.super Ljava/lang/Object;
.source "TFEffectActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nemustech/tiffany/world/TFEffectActivity$2;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nemustech/tiffany/world/TFEffectActivity$2;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/nemustech/tiffany/world/TFEffectActivity$2;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFEffectActivity$2$1;->this$1:Lcom/nemustech/tiffany/world/TFEffectActivity$2;

    iput-object p2, p0, Lcom/nemustech/tiffany/world/TFEffectActivity$2$1;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 148
    const/4 v1, 0x0

    .line 150
    .local v1, isBlock:Z
    :try_start_0
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFEffectActivity$2$1;->this$1:Lcom/nemustech/tiffany/world/TFEffectActivity$2;

    iget-object v2, v2, Lcom/nemustech/tiffany/world/TFEffectActivity$2;->this$0:Lcom/nemustech/tiffany/world/TFEffectActivity;

    invoke-static {v2}, Lcom/nemustech/tiffany/world/TFEffectActivity;->access$400(Lcom/nemustech/tiffany/world/TFEffectActivity;)Lcom/nemustech/tiffany/world/ITFServiceFrom;

    move-result-object v2

    invoke-interface {v2}, Lcom/nemustech/tiffany/world/ITFServiceFrom;->isBlock()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 155
    :goto_0
    if-nez v1, :cond_0

    .line 156
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFEffectActivity$2$1;->val$handler:Landroid/os/Handler;

    invoke-virtual {v2, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 163
    :goto_1
    return-void

    .line 151
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 152
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 158
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFEffectActivity$2$1;->this$1:Lcom/nemustech/tiffany/world/TFEffectActivity$2;

    iget-object v2, v2, Lcom/nemustech/tiffany/world/TFEffectActivity$2;->this$0:Lcom/nemustech/tiffany/world/TFEffectActivity;

    invoke-static {v2}, Lcom/nemustech/tiffany/world/TFEffectActivity;->access$500(Lcom/nemustech/tiffany/world/TFEffectActivity;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFEffectActivity$2$1;->this$1:Lcom/nemustech/tiffany/world/TFEffectActivity$2;

    iget-object v3, v3, Lcom/nemustech/tiffany/world/TFEffectActivity$2;->this$0:Lcom/nemustech/tiffany/world/TFEffectActivity;

    invoke-static {v3}, Lcom/nemustech/tiffany/world/TFEffectActivity;->access$700(Lcom/nemustech/tiffany/world/TFEffectActivity;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 159
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFEffectActivity$2$1;->this$1:Lcom/nemustech/tiffany/world/TFEffectActivity$2;

    iget-object v2, v2, Lcom/nemustech/tiffany/world/TFEffectActivity$2;->this$0:Lcom/nemustech/tiffany/world/TFEffectActivity;

    invoke-static {v2}, Lcom/nemustech/tiffany/world/TFEffectActivity;->access$500(Lcom/nemustech/tiffany/world/TFEffectActivity;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v4, v4}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 161
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFEffectActivity$2$1;->this$1:Lcom/nemustech/tiffany/world/TFEffectActivity$2;

    iget-object v2, v2, Lcom/nemustech/tiffany/world/TFEffectActivity$2;->this$0:Lcom/nemustech/tiffany/world/TFEffectActivity;

    invoke-static {v2}, Lcom/nemustech/tiffany/world/TFEffectActivity;->access$500(Lcom/nemustech/tiffany/world/TFEffectActivity;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFEffectActivity$2$1;->this$1:Lcom/nemustech/tiffany/world/TFEffectActivity$2;

    iget-object v3, v3, Lcom/nemustech/tiffany/world/TFEffectActivity$2;->this$0:Lcom/nemustech/tiffany/world/TFEffectActivity;

    invoke-static {v3}, Lcom/nemustech/tiffany/world/TFEffectActivity;->access$900(Lcom/nemustech/tiffany/world/TFEffectActivity;)Landroid/content/ServiceConnection;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_1
.end method
