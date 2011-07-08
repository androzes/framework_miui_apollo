.class Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo$ContextMenuItemAnimation;
.super Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;
.source "TFFlickContextMenuExListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ContextMenuItemAnimation"
.end annotation


# instance fields
.field private mScroller:Lcom/nemustech/tiffany/widget/TFScroller;

.field final synthetic this$1:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;


# direct methods
.method public constructor <init>(Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;)V
    .locals 3
    .parameter

    .prologue
    .line 323
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo$ContextMenuItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;

    .line 327
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;-><init>(IZ)V

    .line 321
    new-instance v0, Lcom/nemustech/tiffany/widget/TFScroller;

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo$ContextMenuItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;

    iget-object v1, v1, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->this$0:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;

    invoke-virtual {v1}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo$ContextMenuItemAnimation;->mScroller:Lcom/nemustech/tiffany/widget/TFScroller;

    .line 328
    return-void
.end method


# virtual methods
.method public computeAnimation(J)V
    .locals 3
    .parameter "curUpTime"

    .prologue
    .line 340
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo$ContextMenuItemAnimation;->mScroller:Lcom/nemustech/tiffany/widget/TFScroller;

    invoke-virtual {v1}, Lcom/nemustech/tiffany/widget/TFScroller;->computeScrollOffset()Z

    .line 342
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo$ContextMenuItemAnimation;->mScroller:Lcom/nemustech/tiffany/widget/TFScroller;

    invoke-virtual {v1}, Lcom/nemustech/tiffany/widget/TFScroller;->getCurrX()I

    move-result v0

    .line 343
    .local v0, newProgress:I
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo$ContextMenuItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;

    invoke-static {v1}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->access$200(Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 344
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo$ContextMenuItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;

    invoke-static {v1, v0}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->access$202(Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;I)I

    .line 347
    :cond_0
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo$ContextMenuItemAnimation;->mScroller:Lcom/nemustech/tiffany/widget/TFScroller;

    invoke-virtual {v1}, Lcom/nemustech/tiffany/widget/TFScroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 348
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo$ContextMenuItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;

    iget-object v1, v1, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->this$0:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;

    new-instance v2, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo$ContextMenuItemAnimation$1;

    invoke-direct {v2, p0}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo$ContextMenuItemAnimation$1;-><init>(Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo$ContextMenuItemAnimation;)V

    invoke-virtual {v1, v2}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->post(Ljava/lang/Runnable;)Z

    .line 354
    :cond_1
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/view/View;)V
    .locals 8
    .parameter "canvas"
    .parameter "child"

    .prologue
    const/4 v7, 0x0

    .line 362
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo$ContextMenuItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;

    iget v4, v4, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->mContextMenuStatus:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo$ContextMenuItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;

    iget v4, v4, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->mContextMenuStatus:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_4

    .line 365
    :cond_0
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo$ContextMenuItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;

    iget-object v4, v4, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->this$0:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;

    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo$ContextMenuItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;

    invoke-static {v4, v5}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->access$400(Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;)Landroid/view/View;

    move-result-object v2

    .line 366
    .local v2, contextMenuView:Landroid/view/View;
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo$ContextMenuItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;

    iget-object v4, v4, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->this$0:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;

    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo$ContextMenuItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;

    invoke-static {v4, v5}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->access$500(Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;)Landroid/view/View;

    move-result-object v3

    .line 369
    .local v3, listItemView:Landroid/view/View;
    if-eqz v2, :cond_2

    .line 374
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo$ContextMenuItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;

    iget-object v4, v4, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->this$0:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;

    invoke-static {v4}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->access$600(Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 376
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo$ContextMenuItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;

    iget v4, v4, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->mChildIdForLocationHint:I

    if-eqz v4, :cond_1

    .line 377
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo$ContextMenuItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;

    iget v4, v4, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->mChildIdForLocationHint:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 379
    .local v1, childForLocationHint:Landroid/view/View;
    if-eqz v1, :cond_1

    .line 380
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo$ContextMenuItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;

    iget-object v4, v4, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->this$0:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;

    invoke-static {v4}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->access$600(Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 381
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo$ContextMenuItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;

    iget-object v4, v4, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->this$0:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;

    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo$ContextMenuItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;

    iget-object v5, v5, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->this$0:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;

    invoke-static {v5}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->access$600(Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 386
    .end local v1           #childForLocationHint:Landroid/view/View;
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 388
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo$ContextMenuItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;

    iget-object v4, v4, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->this$0:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;

    invoke-static {v4}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->access$600(Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo$ContextMenuItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;

    iget-object v5, v5, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->this$0:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;

    invoke-static {v5}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->access$600(Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;)Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 389
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo$ContextMenuItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;

    iget-object v4, v4, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->this$0:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;

    invoke-static {v4}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->access$600(Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4, v7, v7}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 391
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo$ContextMenuItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;

    iget-object v0, v4, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->mEmergingAnimation:Landroid/view/animation/Animation;

    .line 392
    .local v0, a:Landroid/view/animation/Animation;
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo$ContextMenuItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;

    invoke-static {v4}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->access$200(Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;)I

    move-result v4

    int-to-long v4, v4

    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo$ContextMenuItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;

    iget-object v6, v6, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->this$0:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;

    invoke-static {v6}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->access$700(Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;)Landroid/view/animation/Transformation;

    move-result-object v6

    invoke-virtual {v0, v4, v5, v6}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    .line 394
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo$ContextMenuItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;

    iget-object v4, v4, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->this$0:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;

    invoke-static {v4}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->access$700(Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;)Landroid/view/animation/Transformation;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 395
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo$ContextMenuItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;

    iget-object v4, v4, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->this$0:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;

    invoke-static {v4}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->access$600(Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 396
    invoke-virtual {v2, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 398
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 402
    .end local v0           #a:Landroid/view/animation/Animation;
    :cond_2
    if-eqz v3, :cond_4

    .line 404
    const/4 v1, 0x0

    .line 406
    .restart local v1       #childForLocationHint:Landroid/view/View;
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo$ContextMenuItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;

    iget v4, v4, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->mChildIdForLocationHint:I

    if-eqz v4, :cond_3

    .line 407
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo$ContextMenuItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;

    iget v4, v4, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->mChildIdForLocationHint:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 409
    :cond_3
    if-nez v1, :cond_5

    .line 410
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo$ContextMenuItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;

    iget-object v4, v4, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->this$0:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;

    invoke-static {v4}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->access$600(Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 412
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 414
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo$ContextMenuItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;

    iget-object v4, v4, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->this$0:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;

    invoke-static {v4}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->access$600(Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo$ContextMenuItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;

    iget-object v5, v5, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->this$0:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;

    invoke-static {v5}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->access$600(Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;)Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 415
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo$ContextMenuItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;

    iget-object v4, v4, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->this$0:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;

    invoke-static {v4}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->access$600(Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4, v7, v7}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 417
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo$ContextMenuItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;

    iget-object v0, v4, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->mWithdrawingAnimation:Landroid/view/animation/Animation;

    .line 418
    .restart local v0       #a:Landroid/view/animation/Animation;
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo$ContextMenuItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;

    invoke-static {v4}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->access$200(Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;)I

    move-result v4

    int-to-long v4, v4

    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo$ContextMenuItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;

    iget-object v6, v6, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->this$0:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;

    invoke-static {v6}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->access$700(Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;)Landroid/view/animation/Transformation;

    move-result-object v6

    invoke-virtual {v0, v4, v5, v6}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    .line 420
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo$ContextMenuItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;

    iget-object v4, v4, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->this$0:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;

    invoke-static {v4}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->access$700(Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;)Landroid/view/animation/Transformation;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 421
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo$ContextMenuItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;

    iget-object v4, v4, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->this$0:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;

    invoke-static {v4}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->access$600(Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 422
    invoke-virtual {v3, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 424
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 466
    .end local v0           #a:Landroid/view/animation/Animation;
    .end local v1           #childForLocationHint:Landroid/view/View;
    .end local v2           #contextMenuView:Landroid/view/View;
    .end local v3           #listItemView:Landroid/view/View;
    :cond_4
    :goto_0
    return-void

    .line 428
    .restart local v1       #childForLocationHint:Landroid/view/View;
    .restart local v2       #contextMenuView:Landroid/view/View;
    .restart local v3       #listItemView:Landroid/view/View;
    :cond_5
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo$ContextMenuItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;

    iget-object v4, v4, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->this$0:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;

    invoke-static {v4}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->access$600(Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 430
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 432
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo$ContextMenuItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;

    iget-object v4, v4, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->this$0:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;

    invoke-static {v4}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->access$600(Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo$ContextMenuItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;

    iget-object v5, v5, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->this$0:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;

    invoke-static {v5}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->access$600(Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;)Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 433
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo$ContextMenuItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;

    iget-object v4, v4, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->this$0:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;

    invoke-static {v4}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->access$600(Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4, v7, v7}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 435
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo$ContextMenuItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;

    iget-object v4, v4, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->this$0:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;

    invoke-static {v4}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->access$600(Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 437
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo$ContextMenuItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;

    iget-object v4, v4, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->this$0:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;

    invoke-static {v4}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->access$800(Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 438
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo$ContextMenuItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;

    iget-object v4, v4, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->this$0:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;

    invoke-static {v4}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->access$800(Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;)Landroid/graphics/Rect;

    move-result-object v4

    sget-object v5, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 440
    invoke-virtual {v3, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 442
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 447
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo$ContextMenuItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;

    iget-object v4, v4, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->this$0:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;

    invoke-static {v4}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->access$600(Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 448
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo$ContextMenuItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;

    iget-object v4, v4, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->this$0:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;

    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo$ContextMenuItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;

    iget-object v5, v5, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->this$0:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;

    invoke-static {v5}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->access$600(Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 450
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 451
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo$ContextMenuItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;

    iget-object v4, v4, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->this$0:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;

    invoke-static {v4}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->access$600(Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo$ContextMenuItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;

    iget-object v5, v5, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->this$0:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;

    invoke-static {v5}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->access$600(Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;)Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 452
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo$ContextMenuItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;

    iget-object v4, v4, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->this$0:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;

    invoke-static {v4}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->access$600(Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4, v7, v7}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 454
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo$ContextMenuItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;

    iget-object v0, v4, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->mWithdrawingAnimation:Landroid/view/animation/Animation;

    .line 455
    .restart local v0       #a:Landroid/view/animation/Animation;
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo$ContextMenuItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;

    invoke-static {v4}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->access$200(Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;)I

    move-result v4

    int-to-long v4, v4

    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo$ContextMenuItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;

    iget-object v6, v6, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->this$0:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;

    invoke-static {v6}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->access$700(Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;)Landroid/view/animation/Transformation;

    move-result-object v6

    invoke-virtual {v0, v4, v5, v6}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    .line 457
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo$ContextMenuItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;

    iget-object v4, v4, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->this$0:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;

    invoke-static {v4}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->access$700(Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;)Landroid/view/animation/Transformation;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 458
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo$ContextMenuItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;

    iget-object v4, v4, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->this$0:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;

    invoke-static {v4}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->access$600(Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 460
    invoke-virtual {v1, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 462
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0
.end method

.method public isFinished()Z
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo$ContextMenuItemAnimation;->mScroller:Lcom/nemustech/tiffany/widget/TFScroller;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/widget/TFScroller;->isFinished()Z

    move-result v0

    return v0
.end method

.method public start(I)V
    .locals 6
    .parameter "duration"

    .prologue
    const/4 v2, 0x0

    .line 331
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo$ContextMenuItemAnimation;->mScroller:Lcom/nemustech/tiffany/widget/TFScroller;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/widget/TFScroller;->abortAnimation()V

    .line 332
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo$ContextMenuItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;

    invoke-static {v0, v2}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->access$202(Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;I)I

    .line 333
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo$ContextMenuItemAnimation;->mScroller:Lcom/nemustech/tiffany/widget/TFScroller;

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo$ContextMenuItemAnimation;->this$1:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;

    invoke-static {v1}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->access$200(Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;)I

    move-result v1

    const/16 v3, 0x64

    move v4, v2

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/nemustech/tiffany/widget/TFScroller;->startScroll(IIIII)V

    .line 337
    return-void
.end method
