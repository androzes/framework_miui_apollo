.class Lcom/nemustech/tiffany/world/TFEffect$25$1;
.super Ljava/lang/Object;
.source "TFEffect.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nemustech/tiffany/world/TFEffect$25;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nemustech/tiffany/world/TFEffect$25;


# direct methods
.method constructor <init>(Lcom/nemustech/tiffany/world/TFEffect$25;)V
    .locals 0
    .parameter

    .prologue
    .line 1709
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFEffect$25$1;->this$1:Lcom/nemustech/tiffany/world/TFEffect$25;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 1710
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffect$25$1;->this$1:Lcom/nemustech/tiffany/world/TFEffect$25;

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFEffect$25;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    invoke-static {v0}, Lcom/nemustech/tiffany/world/TFEffect;->access$1300(Lcom/nemustech/tiffany/world/TFEffect;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFEffect$25$1;->this$1:Lcom/nemustech/tiffany/world/TFEffect$25;

    iget-object v1, v1, Lcom/nemustech/tiffany/world/TFEffect$25;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    invoke-static {v1}, Lcom/nemustech/tiffany/world/TFEffect;->access$2200(Lcom/nemustech/tiffany/world/TFEffect;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1711
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1706
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1702
    return-void
.end method
