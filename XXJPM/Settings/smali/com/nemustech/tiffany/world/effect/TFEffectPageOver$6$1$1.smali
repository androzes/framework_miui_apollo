.class Lcom/nemustech/tiffany/world/effect/TFEffectPageOver$6$1$1;
.super Ljava/lang/Object;
.source "TFEffectPageOver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nemustech/tiffany/world/effect/TFEffectPageOver$6$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/nemustech/tiffany/world/effect/TFEffectPageOver$6$1;


# direct methods
.method constructor <init>(Lcom/nemustech/tiffany/world/effect/TFEffectPageOver$6$1;)V
    .locals 0
    .parameter

    .prologue
    .line 208
    iput-object p1, p0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver$6$1$1;->this$2:Lcom/nemustech/tiffany/world/effect/TFEffectPageOver$6$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver$6$1$1;->this$2:Lcom/nemustech/tiffany/world/effect/TFEffectPageOver$6$1;

    iget-object v0, v0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver$6$1;->val$f_mPage:Lcom/nemustech/tiffany/world/TFPagePanel;

    iget-object v1, p0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver$6$1$1;->this$2:Lcom/nemustech/tiffany/world/effect/TFEffectPageOver$6$1;

    iget-object v1, v1, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver$6$1;->this$1:Lcom/nemustech/tiffany/world/effect/TFEffectPageOver$6;

    iget-object v1, v1, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver$6;->this$0:Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;

    invoke-static {v1}, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->access$700(Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;)Lcom/nemustech/tiffany/world/TFWorld;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/world/TFPagePanel;->detachFrom(Lcom/nemustech/tiffany/world/TFWorld;)Lcom/nemustech/tiffany/world/TFError;

    .line 210
    return-void
.end method
