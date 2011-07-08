.class Lcom/nemustech/tiffany/world/TFPageFlipper$7;
.super Ljava/lang/Object;
.source "TFPageFlipper.java"

# interfaces
.implements Lcom/nemustech/tiffany/world/TFPagePanel$OnUpdateVertexListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nemustech/tiffany/world/TFPageFlipper;->showEffectPageCurl(ZIILandroid/view/animation/Interpolator;)V
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
    .line 477
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFPageFlipper$7;->this$0:Lcom/nemustech/tiffany/world/TFPageFlipper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterUpdate(Lcom/nemustech/tiffany/world/TFPagePanel;)V
    .locals 0
    .parameter "pagePanel"

    .prologue
    .line 479
    return-void
.end method

.method public beforeUpdate(Lcom/nemustech/tiffany/world/TFPagePanel;)V
    .locals 6
    .parameter "pagePanel"

    .prologue
    const/16 v5, 0x168

    const/16 v4, 0xb4

    .line 455
    invoke-virtual {p1}, Lcom/nemustech/tiffany/world/TFPagePanel;->getDirectionDegree()I

    move-result v0

    .line 456
    .local v0, degree:I
    invoke-virtual {p1}, Lcom/nemustech/tiffany/world/TFPagePanel;->getTimeLine()F

    move-result v2

    .line 457
    .local v2, t:F
    invoke-static {p1, v2}, Lcom/nemustech/tiffany/world/TFPageFlipper;->access$1500(Lcom/nemustech/tiffany/world/TFPagePanel;F)I

    move-result v1

    .line 458
    .local v1, maxDegree:I
    const/16 v3, 0x5a

    if-ge v0, v3, :cond_1

    .line 459
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 460
    const/4 v3, 0x0

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 474
    :cond_0
    :goto_0
    invoke-virtual {p1, v0}, Lcom/nemustech/tiffany/world/TFPagePanel;->setDirectionDegree(I)Z

    .line 475
    return-void

    .line 462
    :cond_1
    if-ge v0, v4, :cond_2

    .line 463
    sub-int v3, v4, v1

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 464
    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    .line 466
    :cond_2
    const/16 v3, 0x10e

    if-ge v0, v3, :cond_3

    .line 467
    add-int/lit16 v3, v1, 0xb4

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 468
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    .line 470
    :cond_3
    if-ge v0, v5, :cond_0

    .line 471
    sub-int v3, v5, v1

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 472
    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method
