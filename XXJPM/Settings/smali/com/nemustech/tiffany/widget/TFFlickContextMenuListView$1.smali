.class Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "TFFlickContextMenuListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;


# direct methods
.method constructor <init>(Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;)V
    .locals 0
    .parameter

    .prologue
    .line 432
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$1;->this$0:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 433
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$1;->this$0:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;

    invoke-static {v2}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->access$800(Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;)I

    move-result v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 434
    const/4 v1, 0x0

    cmpl-float v1, p3, v1

    if-lez v1, :cond_0

    move v0, v4

    .line 435
    .local v0, flickLeftToRight:Z
    :goto_0
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$1;->this$0:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;

    new-instance v2, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$1$1;

    invoke-direct {v2, p0, v0}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$1$1;-><init>(Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$1;Z)V

    invoke-virtual {v1, v2}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->post(Ljava/lang/Runnable;)Z

    move v1, v4

    .line 442
    .end local v0           #flickLeftToRight:Z
    :goto_1
    return v1

    :cond_0
    move v0, v3

    .line 434
    goto :goto_0

    :cond_1
    move v1, v3

    .line 442
    goto :goto_1
.end method
