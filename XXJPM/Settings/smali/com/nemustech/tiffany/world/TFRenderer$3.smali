.class Lcom/nemustech/tiffany/world/TFRenderer$3;
.super Ljava/lang/Object;
.source "TFRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nemustech/tiffany/world/TFRenderer;->handleDrag(FFFFJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nemustech/tiffany/world/TFRenderer;

.field final synthetic val$tEndX:F

.field final synthetic val$tEndY:F

.field final synthetic val$tStartX:F

.field final synthetic val$tStartY:F

.field final synthetic val$tTickPassed:I


# direct methods
.method constructor <init>(Lcom/nemustech/tiffany/world/TFRenderer;FFFFI)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 760
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFRenderer$3;->this$0:Lcom/nemustech/tiffany/world/TFRenderer;

    iput p2, p0, Lcom/nemustech/tiffany/world/TFRenderer$3;->val$tEndX:F

    iput p3, p0, Lcom/nemustech/tiffany/world/TFRenderer$3;->val$tEndY:F

    iput p4, p0, Lcom/nemustech/tiffany/world/TFRenderer$3;->val$tStartX:F

    iput p5, p0, Lcom/nemustech/tiffany/world/TFRenderer$3;->val$tStartY:F

    iput p6, p0, Lcom/nemustech/tiffany/world/TFRenderer$3;->val$tTickPassed:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 762
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFRenderer$3;->this$0:Lcom/nemustech/tiffany/world/TFRenderer;

    invoke-static {v0}, Lcom/nemustech/tiffany/world/TFRenderer;->access$000(Lcom/nemustech/tiffany/world/TFRenderer;)Lcom/nemustech/tiffany/world/TFModel;

    move-result-object v0

    if-nez v0, :cond_0

    .line 763
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFRenderer$3;->this$0:Lcom/nemustech/tiffany/world/TFRenderer;

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFRenderer$3;->this$0:Lcom/nemustech/tiffany/world/TFRenderer;

    iget v2, p0, Lcom/nemustech/tiffany/world/TFRenderer$3;->val$tEndX:F

    iget v3, p0, Lcom/nemustech/tiffany/world/TFRenderer$3;->val$tEndY:F

    invoke-virtual {v1, v2, v3}, Lcom/nemustech/tiffany/world/TFRenderer;->getSelectedModel(FF)Lcom/nemustech/tiffany/world/TFModel;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nemustech/tiffany/world/TFRenderer;->access$002(Lcom/nemustech/tiffany/world/TFRenderer;Lcom/nemustech/tiffany/world/TFModel;)Lcom/nemustech/tiffany/world/TFModel;

    .line 765
    :cond_0
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFRenderer$3;->this$0:Lcom/nemustech/tiffany/world/TFRenderer;

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFRenderer$3;->this$0:Lcom/nemustech/tiffany/world/TFRenderer;

    invoke-static {v1}, Lcom/nemustech/tiffany/world/TFRenderer;->access$000(Lcom/nemustech/tiffany/world/TFRenderer;)Lcom/nemustech/tiffany/world/TFModel;

    move-result-object v1

    iget v2, p0, Lcom/nemustech/tiffany/world/TFRenderer$3;->val$tStartX:F

    iget v3, p0, Lcom/nemustech/tiffany/world/TFRenderer$3;->val$tStartY:F

    iget v4, p0, Lcom/nemustech/tiffany/world/TFRenderer$3;->val$tEndX:F

    iget v5, p0, Lcom/nemustech/tiffany/world/TFRenderer$3;->val$tEndY:F

    iget v6, p0, Lcom/nemustech/tiffany/world/TFRenderer$3;->val$tTickPassed:I

    invoke-static/range {v0 .. v6}, Lcom/nemustech/tiffany/world/TFRenderer;->access$700(Lcom/nemustech/tiffany/world/TFRenderer;Lcom/nemustech/tiffany/world/TFModel;FFFFI)V

    .line 766
    return-void
.end method
