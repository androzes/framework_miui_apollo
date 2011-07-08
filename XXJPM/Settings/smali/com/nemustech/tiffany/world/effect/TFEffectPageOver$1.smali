.class Lcom/nemustech/tiffany/world/effect/TFEffectPageOver$1;
.super Ljava/lang/Object;
.source "TFEffectPageOver.java"

# interfaces
.implements Lcom/nemustech/tiffany/world/TFWorld$OnViewSizeChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->createWorld(Landroid/content/Context;)Lcom/nemustech/tiffany/world/TFWorld;
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
    .line 49
    iput-object p1, p0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver$1;->this$0:Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewSizeChanged(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver$1;->this$0:Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->getWorld()Lcom/nemustech/tiffany/world/TFOverlayWorld;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nemustech/tiffany/world/TFOverlayWorld;->locateCameraAtFullScreen()V

    .line 51
    return-void
.end method
