.class Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator$PointState;
.super Ljava/lang/Object;
.source "TFMapView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PointState"
.end annotation


# instance fields
.field public axis:Landroid/graphics/PointF;

.field public scaleX:F

.field public scaleY:F

.field final synthetic this$1:Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;


# direct methods
.method public constructor <init>(Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 587
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator$PointState;->this$1:Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 588
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator$PointState;->axis:Landroid/graphics/PointF;

    .line 589
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator$PointState;->axis:Landroid/graphics/PointF;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 590
    return-void
.end method
