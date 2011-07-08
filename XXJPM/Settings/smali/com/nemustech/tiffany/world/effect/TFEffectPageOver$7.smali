.class Lcom/nemustech/tiffany/world/effect/TFEffectPageOver$7;
.super Ljava/lang/Object;
.source "TFEffectPageOver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->setDragAmount(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;

.field final synthetic val$final_t:F


# direct methods
.method constructor <init>(Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 229
    iput-object p1, p0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver$7;->this$0:Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;

    iput p2, p0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver$7;->val$final_t:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver$7;->this$0:Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;

    iget-object v0, v0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->mPage:Lcom/nemustech/tiffany/world/TFPagePanel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/world/TFPagePanel;->setEffectFinishListener(Lcom/nemustech/tiffany/world/TFWorld$OnEffectFinishListener;)V

    .line 231
    iget-object v0, p0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver$7;->this$0:Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;

    iget-object v0, v0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->mPage:Lcom/nemustech/tiffany/world/TFPagePanel;

    iget v1, p0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver$7;->val$final_t:F

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/world/TFPagePanel;->setTimeLine(F)Z

    .line 232
    return-void
.end method
