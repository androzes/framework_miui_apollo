.class Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo$ContextMenuItemAnimation;
.super Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;
.source "TFFlickContextMenuListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ContextMenuItemAnimation"
.end annotation


# instance fields
.field private mScroller:Lcom/nemustech/tiffany/widget/TFScroller;

.field final synthetic this$1:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;


# direct methods
.method public constructor <init>(Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;)V
    .locals 3
    .parameter

    .prologue
    .line 300
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo$ContextMenuItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;

    .line 304
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;-><init>(IZ)V

    .line 298
    new-instance v0, Lcom/nemustech/tiffany/widget/TFScroller;

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo$ContextMenuItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;

    iget-object v1, v1, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->this$0:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;

    invoke-virtual {v1}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo$ContextMenuItemAnimation;->mScroller:Lcom/nemustech/tiffany/widget/TFScroller;

    .line 305
    return-void
.end method


# virtual methods
.method public computeAnimation(J)V
    .locals 3
    .parameter "curUpTime"

    .prologue
    .line 317
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo$ContextMenuItemAnimation;->mScroller:Lcom/nemustech/tiffany/widget/TFScroller;

    invoke-virtual {v1}, Lcom/nemustech/tiffany/widget/TFScroller;->computeScrollOffset()Z

    .line 319
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo$ContextMenuItemAnimation;->mScroller:Lcom/nemustech/tiffany/widget/TFScroller;

    invoke-virtual {v1}, Lcom/nemustech/tiffany/widget/TFScroller;->getCurrX()I

    move-result v0

    .line 320
    .local v0, newProgress:I
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo$ContextMenuItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;

    invoke-static {v1}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->access$200(Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 321
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo$ContextMenuItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;

    invoke-static {v1, v0}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->access$202(Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;I)I

    .line 324
    :cond_0
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo$ContextMenuItemAnimation;->mScroller:Lcom/nemustech/tiffany/widget/TFScroller;

    invoke-virtual {v1}, Lcom/nemustech/tiffany/widget/TFScroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 325
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo$ContextMenuItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;

    iget-object v1, v1, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->this$0:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;

    new-instance v2, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo$ContextMenuItemAnimation$1;

    invoke-direct {v2, p0}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo$ContextMenuItemAnimation$1;-><init>(Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo$ContextMenuItemAnimation;)V

    invoke-virtual {v1, v2}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->post(Ljava/lang/Runnable;)Z

    .line 331
    :cond_1
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/view/View;)V
    .locals 7
    .parameter "canvas"
    .parameter "child"

    .prologue
    const/4 v6, 0x0

    .line 339
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo$ContextMenuItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;

    iget v3, v3, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->mContextMenuStatus:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo$ContextMenuItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;

    iget v3, v3, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->mContextMenuStatus:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 342
    :cond_0
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo$ContextMenuItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;

    iget-object v3, v3, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->this$0:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;

    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo$ContextMenuItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;

    invoke-static {v3, v4}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->access$400(Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;)Landroid/view/View;

    move-result-object v1

    .line 343
    .local v1, contextMenuView:Landroid/view/View;
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo$ContextMenuItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;

    iget-object v3, v3, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->this$0:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;

    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo$ContextMenuItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;

    invoke-static {v3, v4}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->access$500(Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;)Landroid/view/View;

    move-result-object v2

    .line 346
    .local v2, listItemView:Landroid/view/View;
    if-eqz v1, :cond_1

    .line 351
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo$ContextMenuItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;

    iget-object v3, v3, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->this$0:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;

    invoke-static {v3}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->access$600(Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 353
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 355
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo$ContextMenuItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;

    iget-object v3, v3, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->this$0:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;

    invoke-static {v3}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->access$600(Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo$ContextMenuItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;

    iget-object v4, v4, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->this$0:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;

    invoke-static {v4}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->access$600(Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 356
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo$ContextMenuItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;

    iget-object v3, v3, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->this$0:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;

    invoke-static {v3}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->access$600(Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3, v6, v6}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 358
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo$ContextMenuItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;

    iget-object v0, v3, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->mEmergingAnimation:Landroid/view/animation/Animation;

    .line 359
    .local v0, a:Landroid/view/animation/Animation;
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo$ContextMenuItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;

    invoke-static {v3}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->access$200(Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;)I

    move-result v3

    int-to-long v3, v3

    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo$ContextMenuItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;

    iget-object v5, v5, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->this$0:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;

    invoke-static {v5}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->access$700(Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;)Landroid/view/animation/Transformation;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    .line 361
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo$ContextMenuItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;

    iget-object v3, v3, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->this$0:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;

    invoke-static {v3}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->access$700(Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;)Landroid/view/animation/Transformation;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 362
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo$ContextMenuItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;

    iget-object v3, v3, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->this$0:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;

    invoke-static {v3}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->access$600(Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 363
    invoke-virtual {v1, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 365
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 369
    .end local v0           #a:Landroid/view/animation/Animation;
    :cond_1
    if-eqz v2, :cond_2

    .line 371
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo$ContextMenuItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;

    iget-object v3, v3, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->this$0:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;

    invoke-static {v3}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->access$600(Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 373
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 375
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo$ContextMenuItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;

    iget-object v3, v3, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->this$0:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;

    invoke-static {v3}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->access$600(Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo$ContextMenuItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;

    iget-object v4, v4, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->this$0:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;

    invoke-static {v4}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->access$600(Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 376
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo$ContextMenuItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;

    iget-object v3, v3, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->this$0:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;

    invoke-static {v3}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->access$600(Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3, v6, v6}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 378
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo$ContextMenuItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;

    iget-object v0, v3, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->mWithdrawingAnimation:Landroid/view/animation/Animation;

    .line 379
    .restart local v0       #a:Landroid/view/animation/Animation;
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo$ContextMenuItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;

    invoke-static {v3}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->access$200(Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;)I

    move-result v3

    int-to-long v3, v3

    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo$ContextMenuItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;

    iget-object v5, v5, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->this$0:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;

    invoke-static {v5}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->access$700(Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;)Landroid/view/animation/Transformation;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    .line 381
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo$ContextMenuItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;

    iget-object v3, v3, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->this$0:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;

    invoke-static {v3}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->access$700(Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;)Landroid/view/animation/Transformation;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 382
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo$ContextMenuItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;

    iget-object v3, v3, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->this$0:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;

    invoke-static {v3}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->access$600(Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 383
    invoke-virtual {v2, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 385
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 388
    .end local v0           #a:Landroid/view/animation/Animation;
    .end local v1           #contextMenuView:Landroid/view/View;
    .end local v2           #listItemView:Landroid/view/View;
    :cond_2
    return-void
.end method

.method public isFinished()Z
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo$ContextMenuItemAnimation;->mScroller:Lcom/nemustech/tiffany/widget/TFScroller;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/widget/TFScroller;->isFinished()Z

    move-result v0

    return v0
.end method

.method public start(I)V
    .locals 6
    .parameter "duration"

    .prologue
    const/4 v2, 0x0

    .line 308
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo$ContextMenuItemAnimation;->mScroller:Lcom/nemustech/tiffany/widget/TFScroller;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/widget/TFScroller;->abortAnimation()V

    .line 309
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo$ContextMenuItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;

    invoke-static {v0, v2}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->access$202(Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;I)I

    .line 310
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo$ContextMenuItemAnimation;->mScroller:Lcom/nemustech/tiffany/widget/TFScroller;

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo$ContextMenuItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;

    invoke-static {v1}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->access$200(Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;)I

    move-result v1

    const/16 v3, 0x64

    move v4, v2

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/nemustech/tiffany/widget/TFScroller;->startScroll(IIIII)V

    .line 314
    return-void
.end method
