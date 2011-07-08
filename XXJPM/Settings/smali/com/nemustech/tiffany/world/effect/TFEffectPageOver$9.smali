.class Lcom/nemustech/tiffany/world/effect/TFEffectPageOver$9;
.super Ljava/lang/Object;
.source "TFEffectPageOver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->cancelDrag(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;

.field final synthetic val$f_duration:I

.field final synthetic val$f_interpolator:Landroid/view/animation/Interpolator;


# direct methods
.method constructor <init>(Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;ILandroid/view/animation/Interpolator;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 267
    iput-object p1, p0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver$9;->this$0:Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;

    iput p2, p0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver$9;->val$f_duration:I

    iput-object p3, p0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver$9;->val$f_interpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 268
    iget-object v0, p0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver$9;->this$0:Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->mCancelled:Z

    .line 269
    iget-object v0, p0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver$9;->this$0:Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;

    iget-object v0, v0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->mPage:Lcom/nemustech/tiffany/world/TFPagePanel;

    iget-object v1, p0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver$9;->this$0:Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;

    iget-object v1, v1, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->mEffectFinish:Lcom/nemustech/tiffany/world/TFWorld$OnEffectFinishListener;

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/world/TFPagePanel;->setEffectFinishListener(Lcom/nemustech/tiffany/world/TFWorld$OnEffectFinishListener;)V

    .line 270
    iget-object v0, p0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver$9;->this$0:Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;

    iget-object v0, v0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->mPage:Lcom/nemustech/tiffany/world/TFPagePanel;

    iget-object v1, p0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver$9;->this$0:Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;

    iget-object v1, v1, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->mPage:Lcom/nemustech/tiffany/world/TFPagePanel;

    invoke-virtual {v1}, Lcom/nemustech/tiffany/world/TFPagePanel;->getTimeLine()F

    move-result v1

    iget-object v2, p0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver$9;->this$0:Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;

    invoke-static {v2}, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->access$500(Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;)F

    move-result v2

    iget v3, p0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver$9;->val$f_duration:I

    iget-object v4, p0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver$9;->val$f_interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/nemustech/tiffany/world/TFPagePanel;->setTimeLine(FFILandroid/view/animation/Interpolator;)Z

    .line 271
    return-void
.end method
