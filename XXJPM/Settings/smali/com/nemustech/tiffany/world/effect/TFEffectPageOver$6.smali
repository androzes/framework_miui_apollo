.class Lcom/nemustech/tiffany/world/effect/TFEffectPageOver$6;
.super Ljava/lang/Object;
.source "TFEffectPageOver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->OnFinishEffect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;


# direct methods
.method constructor <init>(Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;)V
    .locals 0
    .parameter

    .prologue
    .line 198
    iput-object p1, p0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver$6;->this$0:Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 201
    iget-object v1, p0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver$6;->this$0:Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;

    invoke-virtual {v1}, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->clearViews()V

    .line 203
    iget-object v1, p0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver$6;->this$0:Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;

    iget-object v0, v1, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->mPage:Lcom/nemustech/tiffany/world/TFPagePanel;

    .line 204
    .local v0, f_mPage:Lcom/nemustech/tiffany/world/TFPagePanel;
    iget-object v1, p0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver$6;->this$0:Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->mPage:Lcom/nemustech/tiffany/world/TFPagePanel;

    .line 205
    iget-object v1, p0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver$6;->this$0:Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;

    invoke-static {v1}, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->access$900(Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver$6$1;

    invoke-direct {v2, p0, v0}, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver$6$1;-><init>(Lcom/nemustech/tiffany/world/effect/TFEffectPageOver$6;Lcom/nemustech/tiffany/world/TFPagePanel;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 215
    return-void
.end method
