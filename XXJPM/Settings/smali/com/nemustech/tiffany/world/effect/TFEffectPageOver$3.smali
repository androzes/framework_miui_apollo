.class Lcom/nemustech/tiffany/world/effect/TFEffectPageOver$3;
.super Ljava/lang/Object;
.source "TFEffectPageOver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->OnStartEffect()V
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
    .line 141
    iput-object p1, p0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver$3;->this$0:Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver$3;->this$0:Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;

    invoke-static {v0}, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->access$300(Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver$3$1;

    invoke-direct {v1, p0}, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver$3$1;-><init>(Lcom/nemustech/tiffany/world/effect/TFEffectPageOver$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 154
    return-void
.end method
