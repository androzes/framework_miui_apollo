.class Lcom/nemustech/tiffany/world/TFEffect$25;
.super Ljava/lang/Object;
.source "TFEffect.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nemustech/tiffany/world/TFEffect;->showEffectLineZoom(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nemustech/tiffany/world/TFEffect;

.field final synthetic val$set:Lcom/nemustech/tiffany/world/TFAnimationSet;


# direct methods
.method constructor <init>(Lcom/nemustech/tiffany/world/TFEffect;Lcom/nemustech/tiffany/world/TFAnimationSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1721
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFEffect$25;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    iput-object p2, p0, Lcom/nemustech/tiffany/world/TFEffect$25;->val$set:Lcom/nemustech/tiffany/world/TFAnimationSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .parameter "animation"

    .prologue
    const/4 v3, 0x1

    .line 1698
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFEffect$25;->val$set:Lcom/nemustech/tiffany/world/TFAnimationSet;

    const/4 v2, 0x7

    invoke-virtual {v1, v2, v3}, Lcom/nemustech/tiffany/world/TFAnimationSet;->getAnimation(IZ)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1699
    .local v0, secondAni:Landroid/view/animation/Animation;
    new-instance v1, Lcom/nemustech/tiffany/world/TFEffect$25$1;

    invoke-direct {v1, p0}, Lcom/nemustech/tiffany/world/TFEffect$25$1;-><init>(Lcom/nemustech/tiffany/world/TFEffect$25;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1713
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFEffect$25;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    invoke-static {v1}, Lcom/nemustech/tiffany/world/TFEffect;->access$2100(Lcom/nemustech/tiffany/world/TFEffect;)[Landroid/widget/ImageView;

    move-result-object v1

    aget-object v1, v1, v3

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1714
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1718
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1722
    return-void
.end method
