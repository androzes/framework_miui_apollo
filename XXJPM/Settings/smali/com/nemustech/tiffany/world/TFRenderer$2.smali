.class Lcom/nemustech/tiffany/world/TFRenderer$2;
.super Ljava/lang/Object;
.source "TFRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nemustech/tiffany/world/TFRenderer;->handleUp(FF)V
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
    .line 702
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFRenderer$2;->this$0:Lcom/nemustech/tiffany/world/TFRenderer;

    iput p2, p0, Lcom/nemustech/tiffany/world/TFRenderer$2;->val$tx:F

    iput p3, p0, Lcom/nemustech/tiffany/world/TFRenderer$2;->val$ty:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/high16 v4, 0x41c8

    .line 704
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFRenderer$2;->this$0:Lcom/nemustech/tiffany/world/TFRenderer;

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFRenderer$2;->this$0:Lcom/nemustech/tiffany/world/TFRenderer;

    invoke-static {v1}, Lcom/nemustech/tiffany/world/TFRenderer;->access$000(Lcom/nemustech/tiffany/world/TFRenderer;)Lcom/nemustech/tiffany/world/TFModel;

    move-result-object v1

    iget v2, p0, Lcom/nemustech/tiffany/world/TFRenderer$2;->val$tx:F

    iget v3, p0, Lcom/nemustech/tiffany/world/TFRenderer$2;->val$ty:F

    invoke-static {v0, v1, v2, v3}, Lcom/nemustech/tiffany/world/TFRenderer;->access$200(Lcom/nemustech/tiffany/world/TFRenderer;Lcom/nemustech/tiffany/world/TFModel;FF)V

    .line 705
    const-string v0, "TFRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mValidDown : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFRenderer$2;->this$0:Lcom/nemustech/tiffany/world/TFRenderer;

    invoke-static {v2}, Lcom/nemustech/tiffany/world/TFRenderer;->access$300(Lcom/nemustech/tiffany/world/TFRenderer;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    iget v0, p0, Lcom/nemustech/tiffany/world/TFRenderer$2;->val$tx:F

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFRenderer$2;->this$0:Lcom/nemustech/tiffany/world/TFRenderer;

    invoke-static {v1}, Lcom/nemustech/tiffany/world/TFRenderer;->access$400(Lcom/nemustech/tiffany/world/TFRenderer;)F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v4

    if-gez v0, :cond_0

    iget v0, p0, Lcom/nemustech/tiffany/world/TFRenderer$2;->val$ty:F

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFRenderer$2;->this$0:Lcom/nemustech/tiffany/world/TFRenderer;

    invoke-static {v1}, Lcom/nemustech/tiffany/world/TFRenderer;->access$500(Lcom/nemustech/tiffany/world/TFRenderer;)F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v4

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFRenderer$2;->this$0:Lcom/nemustech/tiffany/world/TFRenderer;

    invoke-static {v0}, Lcom/nemustech/tiffany/world/TFRenderer;->access$300(Lcom/nemustech/tiffany/world/TFRenderer;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFRenderer$2;->this$0:Lcom/nemustech/tiffany/world/TFRenderer;

    invoke-static {v0}, Lcom/nemustech/tiffany/world/TFRenderer;->access$600(Lcom/nemustech/tiffany/world/TFRenderer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 712
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFRenderer$2;->this$0:Lcom/nemustech/tiffany/world/TFRenderer;

    iget v1, p0, Lcom/nemustech/tiffany/world/TFRenderer$2;->val$tx:F

    iget v2, p0, Lcom/nemustech/tiffany/world/TFRenderer$2;->val$ty:F

    invoke-virtual {v0, v1, v2}, Lcom/nemustech/tiffany/world/TFRenderer;->handleTap(FF)I

    .line 713
    :cond_0
    return-void
.end method
