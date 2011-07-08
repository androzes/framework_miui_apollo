.class Lcom/nemustech/tiffany/world/TFRenderer$1;
.super Ljava/lang/Object;
.source "TFRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nemustech/tiffany/world/TFRenderer;->handleDown(FFJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nemustech/tiffany/world/TFRenderer;

.field final synthetic val$tx:F

.field final synthetic val$ty:F


# direct methods
.method constructor <init>(Lcom/nemustech/tiffany/world/TFRenderer;FF)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 682
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFRenderer$1;->this$0:Lcom/nemustech/tiffany/world/TFRenderer;

    iput p2, p0, Lcom/nemustech/tiffany/world/TFRenderer$1;->val$tx:F

    iput p3, p0, Lcom/nemustech/tiffany/world/TFRenderer$1;->val$ty:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 683
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFRenderer$1;->this$0:Lcom/nemustech/tiffany/world/TFRenderer;

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFRenderer$1;->this$0:Lcom/nemustech/tiffany/world/TFRenderer;

    iget v2, p0, Lcom/nemustech/tiffany/world/TFRenderer$1;->val$tx:F

    iget v3, p0, Lcom/nemustech/tiffany/world/TFRenderer$1;->val$ty:F

    invoke-virtual {v1, v2, v3}, Lcom/nemustech/tiffany/world/TFRenderer;->getSelectedModel(FF)Lcom/nemustech/tiffany/world/TFModel;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nemustech/tiffany/world/TFRenderer;->access$002(Lcom/nemustech/tiffany/world/TFRenderer;Lcom/nemustech/tiffany/world/TFModel;)Lcom/nemustech/tiffany/world/TFModel;

    .line 684
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFRenderer$1;->this$0:Lcom/nemustech/tiffany/world/TFRenderer;

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFRenderer$1;->this$0:Lcom/nemustech/tiffany/world/TFRenderer;

    invoke-static {v1}, Lcom/nemustech/tiffany/world/TFRenderer;->access$000(Lcom/nemustech/tiffany/world/TFRenderer;)Lcom/nemustech/tiffany/world/TFModel;

    move-result-object v1

    iget v2, p0, Lcom/nemustech/tiffany/world/TFRenderer$1;->val$tx:F

    iget v3, p0, Lcom/nemustech/tiffany/world/TFRenderer$1;->val$ty:F

    invoke-static {v0, v1, v2, v3}, Lcom/nemustech/tiffany/world/TFRenderer;->access$100(Lcom/nemustech/tiffany/world/TFRenderer;Lcom/nemustech/tiffany/world/TFModel;FF)V

    .line 685
    return-void
.end method
