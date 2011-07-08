.class Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarView;
.super Landroid/view/View;
.source "TFSweepActionListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemustech/tiffany/widget/TFSweepActionListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SweepActionBarView"
.end annotation


# instance fields
.field mItemIndex:I

.field mList:Lcom/nemustech/tiffany/widget/TFSweepActionListView;

.field mSweepActionViewInfo:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;

.field mTempRect:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/nemustech/tiffany/widget/TFSweepActionListView;


# direct methods
.method constructor <init>(Lcom/nemustech/tiffany/widget/TFSweepActionListView;Landroid/content/Context;ILcom/nemustech/tiffany/widget/TFSweepActionListView;)V
    .locals 1
    .parameter
    .parameter "ctx"
    .parameter "itemIndex"
    .parameter "list"

    .prologue
    .line 598
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarView;->this$0:Lcom/nemustech/tiffany/widget/TFSweepActionListView;

    .line 599
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 593
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarView;->mTempRect:Landroid/graphics/Rect;

    .line 600
    iput p3, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarView;->mItemIndex:I

    .line 601
    iput-object p4, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarView;->mList:Lcom/nemustech/tiffany/widget/TFSweepActionListView;

    .line 602
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    const/4 v1, 0x0

    .line 605
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarView;->mList:Lcom/nemustech/tiffany/widget/TFSweepActionListView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarView;->mList:Lcom/nemustech/tiffany/widget/TFSweepActionListView;

    invoke-static {v0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->access$900(Lcom/nemustech/tiffany/widget/TFSweepActionListView;)Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 606
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarView;->getHitRect(Landroid/graphics/Rect;)V

    .line 607
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 609
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarView;->mSweepActionViewInfo:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;

    invoke-static {v0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->access$200(Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;)I

    move-result v0

    const/16 v1, 0x64

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x42c8

    div-float v3, v0, v1

    .line 610
    .local v3, progress:F
    const/4 v4, 0x2

    .line 611
    .local v4, sweepState:I
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarView;->mSweepActionViewInfo:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 612
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarView;->this$0:Lcom/nemustech/tiffany/widget/TFSweepActionListView;

    invoke-static {v0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->access$1000(Lcom/nemustech/tiffany/widget/TFSweepActionListView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 613
    const/4 v4, 0x1

    .line 618
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarView;->mList:Lcom/nemustech/tiffany/widget/TFSweepActionListView;

    invoke-static {v0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->access$900(Lcom/nemustech/tiffany/widget/TFSweepActionListView;)Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarCallback;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarView;->mItemIndex:I

    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarView;->mTempRect:Landroid/graphics/Rect;

    move-object v6, p1

    invoke-interface/range {v0 .. v6}, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarCallback;->onDrawSweepActionBar(Landroid/content/Context;IFILandroid/graphics/Rect;Landroid/graphics/Canvas;)V

    .line 626
    .end local v3           #progress:F
    .end local v4           #sweepState:I
    :cond_1
    return-void

    .line 615
    .restart local v3       #progress:F
    .restart local v4       #sweepState:I
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method
