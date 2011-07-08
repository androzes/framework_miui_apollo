.class final Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForTap;
.super Ljava/lang/Object;
.source "TFAbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemustech/tiffany/widget/TFAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CheckForTap"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;


# direct methods
.method constructor <init>(Lcom/nemustech/tiffany/widget/TFAbsListView;)V
    .locals 0
    .parameter

    .prologue
    .line 2034
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForTap;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 2036
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForTap;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    iget v4, v4, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTouchMode:I

    if-nez v4, :cond_2

    .line 2037
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForTap;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    iput v7, v4, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTouchMode:I

    .line 2038
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForTap;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForTap;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    iget v5, v5, Lcom/nemustech/tiffany/widget/TFAbsListView;->mMotionPosition:I

    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForTap;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    iget v6, v6, Lcom/nemustech/tiffany/widget/TFAbsListView;->mFirstPosition:I

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2039
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result v4

    if-nez v4, :cond_2

    .line 2040
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForTap;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    const/4 v5, 0x0

    iput v5, v4, Lcom/nemustech/tiffany/widget/TFAbsListView;->mLayoutMode:I

    .line 2042
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForTap;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    iget-boolean v4, v4, Lcom/nemustech/tiffany/widget/TFAbsListView;->mDataChanged:Z

    if-nez v4, :cond_5

    .line 2043
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForTap;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    invoke-virtual {v4}, Lcom/nemustech/tiffany/widget/TFAbsListView;->layoutChildren()V

    .line 2044
    invoke-virtual {v0, v7}, Landroid/view/View;->setPressed(Z)V

    .line 2045
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForTap;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    invoke-virtual {v4, v0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->positionSelector(Landroid/view/View;)V

    .line 2046
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForTap;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    invoke-virtual {v4, v7}, Lcom/nemustech/tiffany/widget/TFAbsListView;->setPressed(Z)V

    .line 2048
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    .line 2049
    .local v3, longPressTimeout:I
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForTap;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    invoke-virtual {v4}, Lcom/nemustech/tiffany/widget/TFAbsListView;->isLongClickable()Z

    move-result v2

    .line 2051
    .local v2, longClickable:Z
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForTap;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    iget-object v4, v4, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    .line 2052
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForTap;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    iget-object v4, v4, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2053
    .local v1, d:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    instance-of v4, v1, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v4, :cond_0

    .line 2054
    if-eqz v2, :cond_3

    .line 2055
    check-cast v1, Landroid/graphics/drawable/TransitionDrawable;

    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 2062
    :cond_0
    :goto_0
    if-eqz v2, :cond_4

    .line 2063
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForTap;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    invoke-static {v4}, Lcom/nemustech/tiffany/widget/TFAbsListView;->access$500(Lcom/nemustech/tiffany/widget/TFAbsListView;)Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForLongPress;

    move-result-object v4

    if-nez v4, :cond_1

    .line 2064
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForTap;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    new-instance v5, Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForLongPress;

    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForTap;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForLongPress;-><init>(Lcom/nemustech/tiffany/widget/TFAbsListView;Lcom/nemustech/tiffany/widget/TFAbsListView$1;)V

    invoke-static {v4, v5}, Lcom/nemustech/tiffany/widget/TFAbsListView;->access$502(Lcom/nemustech/tiffany/widget/TFAbsListView;Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForLongPress;)Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForLongPress;

    .line 2066
    :cond_1
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForTap;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    invoke-static {v4}, Lcom/nemustech/tiffany/widget/TFAbsListView;->access$500(Lcom/nemustech/tiffany/widget/TFAbsListView;)Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForLongPress;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForLongPress;->rememberWindowAttachCount()V

    .line 2067
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForTap;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForTap;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    invoke-static {v5}, Lcom/nemustech/tiffany/widget/TFAbsListView;->access$500(Lcom/nemustech/tiffany/widget/TFAbsListView;)Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForLongPress;

    move-result-object v5

    int-to-long v6, v3

    invoke-virtual {v4, v5, v6, v7}, Lcom/nemustech/tiffany/widget/TFAbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2076
    .end local v0           #child:Landroid/view/View;
    .end local v2           #longClickable:Z
    .end local v3           #longPressTimeout:I
    :cond_2
    :goto_1
    return-void

    .line 2057
    .restart local v0       #child:Landroid/view/View;
    .restart local v1       #d:Landroid/graphics/drawable/Drawable;
    .restart local v2       #longClickable:Z
    .restart local v3       #longPressTimeout:I
    :cond_3
    check-cast v1, Landroid/graphics/drawable/TransitionDrawable;

    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    goto :goto_0

    .line 2069
    :cond_4
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForTap;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    iput v8, v4, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTouchMode:I

    goto :goto_1

    .line 2072
    .end local v2           #longClickable:Z
    .end local v3           #longPressTimeout:I
    :cond_5
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForTap;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    iput v8, v4, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTouchMode:I

    goto :goto_1
.end method
