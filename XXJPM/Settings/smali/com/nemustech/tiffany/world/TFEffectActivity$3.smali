.class Lcom/nemustech/tiffany/world/TFEffectActivity$3;
.super Ljava/lang/Object;
.source "TFEffectActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemustech/tiffany/world/TFEffectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nemustech/tiffany/world/TFEffectActivity;


# direct methods
.method constructor <init>(Lcom/nemustech/tiffany/world/TFEffectActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 184
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFEffectActivity$3;->this$0:Lcom/nemustech/tiffany/world/TFEffectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "className"
    .parameter "service"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffectActivity$3;->this$0:Lcom/nemustech/tiffany/world/TFEffectActivity;

    invoke-static {p2}, Lcom/nemustech/tiffany/world/ITFServiceTo$Stub;->asInterface(Landroid/os/IBinder;)Lcom/nemustech/tiffany/world/ITFServiceTo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nemustech/tiffany/world/TFEffectActivity;->access$1002(Lcom/nemustech/tiffany/world/TFEffectActivity;Lcom/nemustech/tiffany/world/ITFServiceTo;)Lcom/nemustech/tiffany/world/ITFServiceTo;

    .line 179
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffectActivity$3;->this$0:Lcom/nemustech/tiffany/world/TFEffectActivity;

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFEffectActivity$3;->this$0:Lcom/nemustech/tiffany/world/TFEffectActivity;

    invoke-static {v1}, Lcom/nemustech/tiffany/world/TFEffectActivity;->access$100(Lcom/nemustech/tiffany/world/TFEffectActivity;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nemustech/tiffany/world/TFEffectActivity;->access$1100(Lcom/nemustech/tiffany/world/TFEffectActivity;Landroid/app/Activity;)V

    .line 181
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffectActivity$3;->this$0:Lcom/nemustech/tiffany/world/TFEffectActivity;

    invoke-static {v0}, Lcom/nemustech/tiffany/world/TFEffectActivity;->access$100(Lcom/nemustech/tiffany/world/TFEffectActivity;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFEffectActivity$3;->this$0:Lcom/nemustech/tiffany/world/TFEffectActivity;

    invoke-static {v1}, Lcom/nemustech/tiffany/world/TFEffectActivity;->access$1200(Lcom/nemustech/tiffany/world/TFEffectActivity;)Landroid/content/ServiceConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 182
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffectActivity$3;->this$0:Lcom/nemustech/tiffany/world/TFEffectActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nemustech/tiffany/world/TFEffectActivity;->access$1002(Lcom/nemustech/tiffany/world/TFEffectActivity;Lcom/nemustech/tiffany/world/ITFServiceTo;)Lcom/nemustech/tiffany/world/ITFServiceTo;

    .line 187
    return-void
.end method
