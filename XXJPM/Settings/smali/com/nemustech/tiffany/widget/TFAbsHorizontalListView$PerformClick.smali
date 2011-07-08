.class Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$PerformClick;
.super Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$WindowRunnnable;
.source "TFAbsHorizontalListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PerformClick"
.end annotation


# instance fields
.field mChild:Landroid/view/View;

.field mClickMotionPosition:I

.field final synthetic this$0:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;


# direct methods
.method private constructor <init>(Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;)V
    .locals 1
    .parameter

    .prologue
    .line 1725
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$PerformClick;->this$0:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$WindowRunnnable;-><init>(Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1725
    invoke-direct {p0, p1}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$PerformClick;-><init>(Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1732
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$PerformClick;->this$0:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mDataChanged:Z

    if-eqz v0, :cond_1

    .line 1739
    :cond_0
    :goto_0
    return-void

    .line 1734
    :cond_1
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$PerformClick;->this$0:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$PerformClick;->this$0:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$PerformClick;->mClickMotionPosition:I

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$PerformClick;->this$0:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;

    iget-object v1, v1, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$PerformClick;->sameWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1736
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$PerformClick;->this$0:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;

    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$PerformClick;->mChild:Landroid/view/View;

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$PerformClick;->mClickMotionPosition:I

    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$PerformClick;->this$0:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    iget v4, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$PerformClick;->mClickMotionPosition:I

    invoke-interface {v0, v4}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->performItemClick(Landroid/view/View;IJ)Z

    goto :goto_0
.end method
