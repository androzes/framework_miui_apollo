.class Lcom/nemustech/tiffany/world/effect/TFEffectPageOver$4;
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
    .line 158
    iput-object p1, p0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver$4;->this$0:Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 160
    iget-object v0, p0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver$4;->this$0:Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;

    iget-object v0, v0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->mPage:Lcom/nemustech/tiffany/world/TFPagePanel;

    iget-object v1, p0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver$4;->this$0:Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;

    invoke-virtual {v1}, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->getWorld()Lcom/nemustech/tiffany/world/TFOverlayWorld;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/world/TFPagePanel;->attachTo(Lcom/nemustech/tiffany/world/TFWorld;)Lcom/nemustech/tiffany/world/TFError;

    .line 162
    iget-object v0, p0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver$4;->this$0:Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;

    iget-boolean v0, v0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->mHasShadow:Z

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver$4;->this$0:Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;

    iget-object v0, v0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->mPage:Lcom/nemustech/tiffany/world/TFPagePanel;

    iget-object v1, p0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver$4;->this$0:Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;

    iget v1, v1, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->mShadowRatio:F

    iget-object v2, p0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver$4;->this$0:Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;

    iget v2, v2, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->mShadowAlpha:F

    invoke-virtual {v0, v1, v2}, Lcom/nemustech/tiffany/world/TFPagePanel;->setPageShadow(FF)V

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver$4;->this$0:Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;

    iget-object v1, p0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver$4;->this$0:Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;

    iget-object v1, v1, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->mPage:Lcom/nemustech/tiffany/world/TFPagePanel;

    iget-object v2, p0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver$4;->this$0:Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;

    invoke-static {v2}, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->access$400(Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;)[Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->layoutModelOverView(Lcom/nemustech/tiffany/world/TFModel;Landroid/view/View;)V

    .line 169
    iget-object v0, p0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver$4;->this$0:Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;

    iget-object v0, v0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->mPage:Lcom/nemustech/tiffany/world/TFPagePanel;

    iget-object v1, p0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver$4;->this$0:Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;

    iget v1, v1, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->mDegree:I

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/world/TFPagePanel;->setDirectionDegree(I)Z

    .line 170
    iget-object v0, p0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver$4;->this$0:Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;

    iget-object v0, v0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->mPage:Lcom/nemustech/tiffany/world/TFPagePanel;

    iget-object v1, p0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver$4;->this$0:Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;

    invoke-static {v1}, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->access$500(Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/world/TFPagePanel;->setTimeLine(F)Z

    .line 172
    iget-object v0, p0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver$4;->this$0:Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;

    iget-boolean v0, v0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->mDragMode:Z

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver$4;->this$0:Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;

    iget-object v0, v0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->mPage:Lcom/nemustech/tiffany/world/TFPagePanel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/world/TFPagePanel;->setEffectFinishListener(Lcom/nemustech/tiffany/world/TFWorld$OnEffectFinishListener;)V

    .line 176
    :goto_0
    iget-object v0, p0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver$4;->this$0:Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;

    iget-object v0, v0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->mPage:Lcom/nemustech/tiffany/world/TFPagePanel;

    iget-object v1, p0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver$4;->this$0:Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;

    invoke-static {v1}, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->access$500(Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;)F

    move-result v1

    iget-object v2, p0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver$4;->this$0:Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;

    invoke-static {v2}, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->access$600(Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;)F

    move-result v2

    iget-object v3, p0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver$4;->this$0:Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;

    iget v3, v3, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->mDuration:I

    iget-object v4, p0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver$4;->this$0:Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;

    iget-object v4, v4, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/nemustech/tiffany/world/TFPagePanel;->setTimeLine(FFILandroid/view/animation/Interpolator;)Z

    .line 177
    const-string v0, "TFEffectPageOver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver$4;->this$0:Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;

    invoke-static {v2}, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->access$500(Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver$4;->this$0:Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;

    invoke-static {v2}, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->access$600(Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    return-void

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver$4;->this$0:Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;

    iget-object v0, v0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->mPage:Lcom/nemustech/tiffany/world/TFPagePanel;

    iget-object v1, p0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver$4;->this$0:Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;

    iget-object v1, v1, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->mEffectFinish:Lcom/nemustech/tiffany/world/TFWorld$OnEffectFinishListener;

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/world/TFPagePanel;->setEffectFinishListener(Lcom/nemustech/tiffany/world/TFWorld$OnEffectFinishListener;)V

    goto :goto_0
.end method
