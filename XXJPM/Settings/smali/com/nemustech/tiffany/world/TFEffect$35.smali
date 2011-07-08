.class Lcom/nemustech/tiffany/world/TFEffect$35;
.super Ljava/lang/Object;
.source "TFEffect.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nemustech/tiffany/world/TFEffect;->finishDrag(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nemustech/tiffany/world/TFEffect;

.field final synthetic val$f_canceled:Z

.field final synthetic val$f_duration:I


# direct methods
.method constructor <init>(Lcom/nemustech/tiffany/world/TFEffect;ZI)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2712
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFEffect$35;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    iput-boolean p2, p0, Lcom/nemustech/tiffany/world/TFEffect$35;->val$f_canceled:Z

    iput p3, p0, Lcom/nemustech/tiffany/world/TFEffect$35;->val$f_duration:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2713
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFEffect$35;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    invoke-static {v1}, Lcom/nemustech/tiffany/world/TFEffect;->access$2400(Lcom/nemustech/tiffany/world/TFEffect;)Lcom/nemustech/tiffany/world/TFPagePanel;

    move-result-object v1

    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFEffect$35;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    invoke-static {v2}, Lcom/nemustech/tiffany/world/TFEffect;->access$2500(Lcom/nemustech/tiffany/world/TFEffect;)Lcom/nemustech/tiffany/world/TFWorld$OnEffectFinishListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nemustech/tiffany/world/TFPagePanel;->setEffectFinishListener(Lcom/nemustech/tiffany/world/TFWorld$OnEffectFinishListener;)V

    .line 2714
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFEffect$35;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    invoke-static {v1}, Lcom/nemustech/tiffany/world/TFEffect;->access$2400(Lcom/nemustech/tiffany/world/TFEffect;)Lcom/nemustech/tiffany/world/TFPagePanel;

    move-result-object v1

    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFEffect$35;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    invoke-static {v2}, Lcom/nemustech/tiffany/world/TFEffect;->access$2400(Lcom/nemustech/tiffany/world/TFEffect;)Lcom/nemustech/tiffany/world/TFPagePanel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nemustech/tiffany/world/TFPagePanel;->getTimeLine()F

    move-result v2

    iget-boolean v3, p0, Lcom/nemustech/tiffany/world/TFEffect$35;->val$f_canceled:Z

    if-eqz v3, :cond_1

    move v3, v6

    :goto_0
    int-to-float v3, v3

    iget v4, p0, Lcom/nemustech/tiffany/world/TFEffect$35;->val$f_duration:I

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/nemustech/tiffany/world/TFPagePanel;->setTimeLine(FFILandroid/view/animation/Interpolator;)Z

    .line 2719
    iget-boolean v1, p0, Lcom/nemustech/tiffany/world/TFEffect$35;->val$f_canceled:Z

    if-eqz v1, :cond_0

    .line 2721
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFEffect$35;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    invoke-static {v1}, Lcom/nemustech/tiffany/world/TFEffect;->access$300(Lcom/nemustech/tiffany/world/TFEffect;)[Landroid/view/View;

    move-result-object v1

    aget-object v0, v1, v6

    .line 2722
    .local v0, swap:Landroid/view/View;
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFEffect$35;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    invoke-static {v1}, Lcom/nemustech/tiffany/world/TFEffect;->access$300(Lcom/nemustech/tiffany/world/TFEffect;)[Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFEffect$35;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    invoke-static {v2}, Lcom/nemustech/tiffany/world/TFEffect;->access$300(Lcom/nemustech/tiffany/world/TFEffect;)[Landroid/view/View;

    move-result-object v2

    aget-object v2, v2, v7

    aput-object v2, v1, v6

    .line 2723
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFEffect$35;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    invoke-static {v1}, Lcom/nemustech/tiffany/world/TFEffect;->access$300(Lcom/nemustech/tiffany/world/TFEffect;)[Landroid/view/View;

    move-result-object v1

    aput-object v0, v1, v7

    .line 2725
    .end local v0           #swap:Landroid/view/View;
    :cond_0
    return-void

    :cond_1
    move v3, v7

    .line 2714
    goto :goto_0
.end method
