.class Lcom/nemustech/tiffany/world/TFEffect$4;
.super Ljava/lang/Object;
.source "TFEffect.java"

# interfaces
.implements Lcom/nemustech/tiffany/world/TFWorld$OnViewSizeChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nemustech/tiffany/world/TFEffect;->showEffect3D(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nemustech/tiffany/world/TFEffect;


# direct methods
.method constructor <init>(Lcom/nemustech/tiffany/world/TFEffect;)V
    .locals 0
    .parameter

    .prologue
    .line 605
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFEffect$4;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewSizeChanged(II)V
    .locals 5
    .parameter "width"
    .parameter "height"

    .prologue
    .line 607
    const-string v2, "TFEffect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "View size changed to width:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " height:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFEffect$4;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    invoke-static {v2}, Lcom/nemustech/tiffany/world/TFEffect;->access$1100(Lcom/nemustech/tiffany/world/TFEffect;)Lcom/nemustech/tiffany/world/TFWorld;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nemustech/tiffany/world/TFWorld;->getCamera()Lcom/nemustech/tiffany/world/TFCamera;

    move-result-object v0

    .line 609
    .local v0, camera:Lcom/nemustech/tiffany/world/TFCamera;
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFEffect$4;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    invoke-static {v2}, Lcom/nemustech/tiffany/world/TFEffect;->access$1100(Lcom/nemustech/tiffany/world/TFEffect;)Lcom/nemustech/tiffany/world/TFWorld;

    move-result-object v2

    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFEffect$4;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    invoke-static {v3}, Lcom/nemustech/tiffany/world/TFEffect;->access$1400(Lcom/nemustech/tiffany/world/TFEffect;)I

    move-result v3

    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFEffect$4;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    invoke-static {v4}, Lcom/nemustech/tiffany/world/TFEffect;->access$1500(Lcom/nemustech/tiffany/world/TFEffect;)F

    move-result v4

    invoke-static {v2, p1, p2, v3, v4}, Lcom/nemustech/tiffany/world/TFUtils;->calcZ(Lcom/nemustech/tiffany/world/TFWorld;IIIF)F

    move-result v1

    .line 610
    .local v1, z:F
    const/4 v2, 0x2

    neg-float v3, v1

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Lcom/nemustech/tiffany/world/TFCamera;->locate(IFZ)V

    .line 611
    return-void
.end method
