.class Lcom/nemustech/tiffany/world/effect/TFEffectPageOver$5;
.super Ljava/lang/Object;
.source "TFEffectPageOver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->OnStopEffect()V
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
    .line 184
    iput-object p1, p0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver$5;->this$0:Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver$5;->this$0:Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;

    iget-object v0, v0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->mPage:Lcom/nemustech/tiffany/world/TFPagePanel;

    iget-object v1, p0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver$5;->this$0:Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;

    iget-object v1, v1, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->mEffectFinish:Lcom/nemustech/tiffany/world/TFWorld$OnEffectFinishListener;

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/world/TFPagePanel;->setEffectFinishListener(Lcom/nemustech/tiffany/world/TFWorld$OnEffectFinishListener;)V

    .line 186
    iget-object v0, p0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver$5;->this$0:Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;

    iget-object v0, v0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->mPage:Lcom/nemustech/tiffany/world/TFPagePanel;

    iget-object v1, p0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver$5;->this$0:Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;

    iget-object v1, v1, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->mPage:Lcom/nemustech/tiffany/world/TFPagePanel;

    invoke-virtual {v1}, Lcom/nemustech/tiffany/world/TFPagePanel;->getTimeLine()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/world/TFPagePanel;->setTimeLine(F)Z

    .line 187
    return-void
.end method
