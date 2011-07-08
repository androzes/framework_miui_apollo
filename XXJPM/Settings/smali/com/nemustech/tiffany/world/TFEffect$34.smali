.class Lcom/nemustech/tiffany/world/TFEffect$34;
.super Ljava/lang/Object;
.source "TFEffect.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nemustech/tiffany/world/TFEffect;->setDragAmount(FI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nemustech/tiffany/world/TFEffect;

.field final synthetic val$final_degree:I

.field final synthetic val$final_t:F


# direct methods
.method constructor <init>(Lcom/nemustech/tiffany/world/TFEffect;IF)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2691
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFEffect$34;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    iput p2, p0, Lcom/nemustech/tiffany/world/TFEffect$34;->val$final_degree:I

    iput p3, p0, Lcom/nemustech/tiffany/world/TFEffect$34;->val$final_t:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2692
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffect$34;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    invoke-static {v0}, Lcom/nemustech/tiffany/world/TFEffect;->access$2400(Lcom/nemustech/tiffany/world/TFEffect;)Lcom/nemustech/tiffany/world/TFPagePanel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/world/TFPagePanel;->setEffectFinishListener(Lcom/nemustech/tiffany/world/TFWorld$OnEffectFinishListener;)V

    .line 2693
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffect$34;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    invoke-static {v0}, Lcom/nemustech/tiffany/world/TFEffect;->access$2400(Lcom/nemustech/tiffany/world/TFEffect;)Lcom/nemustech/tiffany/world/TFPagePanel;

    move-result-object v0

    iget v1, p0, Lcom/nemustech/tiffany/world/TFEffect$34;->val$final_degree:I

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/world/TFPagePanel;->setDirectionDegree(I)Z

    .line 2694
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffect$34;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    invoke-static {v0}, Lcom/nemustech/tiffany/world/TFEffect;->access$2400(Lcom/nemustech/tiffany/world/TFEffect;)Lcom/nemustech/tiffany/world/TFPagePanel;

    move-result-object v0

    iget v1, p0, Lcom/nemustech/tiffany/world/TFEffect$34;->val$final_t:F

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/world/TFPagePanel;->setTimeLine(F)Z

    .line 2695
    return-void
.end method
