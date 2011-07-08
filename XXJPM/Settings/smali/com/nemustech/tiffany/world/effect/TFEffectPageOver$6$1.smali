.class Lcom/nemustech/tiffany/world/effect/TFEffectPageOver$6$1;
.super Ljava/lang/Object;
.source "TFEffectPageOver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nemustech/tiffany/world/effect/TFEffectPageOver$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nemustech/tiffany/world/effect/TFEffectPageOver$6;

.field final synthetic val$f_mPage:Lcom/nemustech/tiffany/world/TFPagePanel;


# direct methods
.method constructor <init>(Lcom/nemustech/tiffany/world/effect/TFEffectPageOver$6;Lcom/nemustech/tiffany/world/TFPagePanel;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 206
    iput-object p1, p0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver$6$1;->this$1:Lcom/nemustech/tiffany/world/effect/TFEffectPageOver$6;

    iput-object p2, p0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver$6$1;->val$f_mPage:Lcom/nemustech/tiffany/world/TFPagePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver$6$1;->this$1:Lcom/nemustech/tiffany/world/effect/TFEffectPageOver$6;

    iget-object v0, v0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver$6;->this$0:Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;

    invoke-static {v0}, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->access$800(Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;)Lcom/nemustech/tiffany/world/TFWorld;

    move-result-object v0

    new-instance v1, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver$6$1$1;

    invoke-direct {v1, p0}, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver$6$1$1;-><init>(Lcom/nemustech/tiffany/world/effect/TFEffectPageOver$6$1;)V

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/world/TFWorld;->queueEvent(Ljava/lang/Runnable;)V

    .line 212
    return-void
.end method
