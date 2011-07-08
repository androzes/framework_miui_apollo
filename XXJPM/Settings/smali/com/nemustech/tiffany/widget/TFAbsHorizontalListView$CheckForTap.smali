.class final Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$CheckForTap;
.super Ljava/lang/Object;
.source "TFAbsHorizontalListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CheckForTap"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;


# direct methods
.method constructor <init>(Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;)V
    .locals 0
    .parameter

    .prologue
    .line 1903
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$CheckForTap;->this$0:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 1905
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$CheckForTap;->this$0:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;

    iget v4, v4, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mTouchMode:I

    if-nez v4, :cond_2

    .line 1906
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$CheckForTap;->this$0:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;

    iput v7, v4, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mTouchMode:I

    .line 1907
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$CheckForTap;->this$0:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;

    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$CheckForTap;->this$0:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;

    iget v5, v5, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mMotionPosition:I

    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$CheckForTap;->this$0:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;

    iget v6, v6, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mFirstPosition:I

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1908
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1909
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$CheckForTap;->this$0:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;

    const/4 v5, 0x0

    iput v5, v4, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mLayoutMode:I

    .line 1911
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$CheckForTap;->this$0:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;

    iget-boolean v4, v4, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mDataChanged:Z

    if-nez v4, :cond_5

    .line 1912
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$CheckForTap;->this$0:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;

    invoke-virtual {v4}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->layoutChildren()V

    .line 1913
    invoke-virtual {v0, v7}, Landroid/view/View;->setPressed(Z)V

    .line 1914
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$CheckForTap;->this$0:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;

    invoke-virtual {v4, v0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->positionSelector(Landroid/view/View;)V

    .line 1915
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$CheckForTap;->this$0:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;

    invoke-virtual {v4, v7}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->setPressed(Z)V

    .line 1917
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    .line 1918
    .local v3, longPressTimeout:I
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$CheckForTap;->this$0:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;

    invoke-virtual {v4}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->isLongClickable()Z

    move-result v2

    .line 1920
    .local v2, longClickable:Z
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$CheckForTap;->this$0:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;

    iget-object v4, v4, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    .line 1921
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$CheckForTap;->this$0:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;

    iget-object v4, v4, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1922
    .local v1, d:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    instance-of v4, v1, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v4, :cond_0

    .line 1923
    if-eqz v2, :cond_3

    .line 1924
    check-cast v1, Landroid/graphics/drawable/TransitionDrawable;

    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 1931
    :cond_0
    :goto_0
    if-eqz v2, :cond_4

    .line 1932
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$CheckForTap;->this$0:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;

    invoke-static {v4}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->access$600(Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;)Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$CheckForLongPress;

    move-result-object v4

    if-nez v4, :cond_1

    .line 1933
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$CheckForTap;->this$0:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;

    new-instance v5, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$CheckForLongPress;

    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$CheckForTap;->this$0:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$CheckForLongPress;-><init>(Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$1;)V

    invoke-static {v4, v5}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->access$602(Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$CheckForLongPress;)Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$CheckForLongPress;

    .line 1935
    :cond_1
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$CheckForTap;->this$0:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;

    invoke-static {v4}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->access$600(Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;)Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$CheckForLongPress;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$CheckForLongPress;->rememberWindowAttachCount()V

    .line 1936
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$CheckForTap;->this$0:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;

    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$CheckForTap;->this$0:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;

    invoke-static {v5}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->access$600(Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;)Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$CheckForLongPress;

    move-result-object v5

    int-to-long v6, v3

    invoke-virtual {v4, v5, v6, v7}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1945
    .end local v0           #child:Landroid/view/View;
    .end local v2           #longClickable:Z
    .end local v3           #longPressTimeout:I
    :cond_2
    :goto_1
    return-void

    .line 1926
    .restart local v0       #child:Landroid/view/View;
    .restart local v1       #d:Landroid/graphics/drawable/Drawable;
    .restart local v2       #longClickable:Z
    .restart local v3       #longPressTimeout:I
    :cond_3
    check-cast v1, Landroid/graphics/drawable/TransitionDrawable;

    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    goto :goto_0

    .line 1938
    :cond_4
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$CheckForTap;->this$0:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;

    iput v8, v4, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mTouchMode:I

    goto :goto_1

    .line 1941
    .end local v2           #longClickable:Z
    .end local v3           #longPressTimeout:I
    :cond_5
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$CheckForTap;->this$0:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;

    iput v8, v4, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mTouchMode:I

    goto :goto_1
.end method
