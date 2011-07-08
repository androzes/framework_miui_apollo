.class Lcom/nemustech/tiffany/world/TFPageFlipper$1;
.super Ljava/lang/Object;
.source "TFPageFlipper.java"

# interfaces
.implements Lcom/nemustech/tiffany/world/TFWorld$OnViewSizeChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nemustech/tiffany/world/TFPageFlipper;->show()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nemustech/tiffany/world/TFPageFlipper;


# direct methods
.method constructor <init>(Lcom/nemustech/tiffany/world/TFPageFlipper;)V
    .locals 0
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFPageFlipper$1;->this$0:Lcom/nemustech/tiffany/world/TFPageFlipper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewSizeChanged(II)V
    .locals 5
    .parameter "width"
    .parameter "height"

    .prologue
    .line 158
    const-string v2, "TFPageFlipper"

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

    .line 159
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFPageFlipper$1;->this$0:Lcom/nemustech/tiffany/world/TFPageFlipper;

    invoke-static {v2}, Lcom/nemustech/tiffany/world/TFPageFlipper;->access$000(Lcom/nemustech/tiffany/world/TFPageFlipper;)Lcom/nemustech/tiffany/world/TFWorld;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nemustech/tiffany/world/TFWorld;->getCamera()Lcom/nemustech/tiffany/world/TFCamera;

    move-result-object v0

    .line 160
    .local v0, camera:Lcom/nemustech/tiffany/world/TFCamera;
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFPageFlipper$1;->this$0:Lcom/nemustech/tiffany/world/TFPageFlipper;

    invoke-static {v2}, Lcom/nemustech/tiffany/world/TFPageFlipper;->access$000(Lcom/nemustech/tiffany/world/TFPageFlipper;)Lcom/nemustech/tiffany/world/TFWorld;

    move-result-object v2

    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFPageFlipper$1;->this$0:Lcom/nemustech/tiffany/world/TFPageFlipper;

    invoke-static {v3}, Lcom/nemustech/tiffany/world/TFPageFlipper;->access$100(Lcom/nemustech/tiffany/world/TFPageFlipper;)F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFPageFlipper$1;->this$0:Lcom/nemustech/tiffany/world/TFPageFlipper;

    invoke-static {v4}, Lcom/nemustech/tiffany/world/TFPageFlipper;->access$200(Lcom/nemustech/tiffany/world/TFPageFlipper;)F

    move-result v4

    invoke-static {v2, p1, p2, v3, v4}, Lcom/nemustech/tiffany/world/TFUtils;->calcZ(Lcom/nemustech/tiffany/world/TFWorld;IIIF)F

    move-result v1

    .line 161
    .local v1, z:F
    const/4 v2, 0x2

    neg-float v3, v1

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Lcom/nemustech/tiffany/world/TFCamera;->locate(IFZ)V

    .line 162
    return-void
.end method
