.class Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$ExcessScrollRecoverRunnable;
.super Ljava/lang/Object;
.source "TFAbsHorizontalListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ExcessScrollRecoverRunnable"
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "TFAbsListView.ExcessScrollRecoverRunnable"


# instance fields
.field private mScroller:Lcom/nemustech/tiffany/widget/TFScroller;

.field final synthetic this$0:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;


# direct methods
.method constructor <init>(Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;)V
    .locals 3
    .parameter

    .prologue
    .line 2261
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$ExcessScrollRecoverRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2323
    new-instance v0, Lcom/nemustech/tiffany/widget/TFScroller;

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$ExcessScrollRecoverRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;

    invoke-virtual {v1}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$ExcessScrollRecoverRunnable;->mScroller:Lcom/nemustech/tiffany/widget/TFScroller;

    return-void
.end method

.method private getProperDuration(I)I
    .locals 1
    .parameter "distance"

    .prologue
    .line 2293
    mul-int/lit16 v0, p1, 0x96

    div-int/lit16 v0, v0, 0xc8

    add-int/lit16 v0, v0, 0xc8

    return v0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 2300
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$ExcessScrollRecoverRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;

    invoke-virtual {v0, p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2301
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$ExcessScrollRecoverRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$ExcessScrollRecoverRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;

    invoke-static {v1}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->access$1000(Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;)Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$ExcessScrollDecelerateRunnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2302
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 2309
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$ExcessScrollRecoverRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mExcessScroll:I

    if-eqz v0, :cond_0

    .line 2310
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$ExcessScrollRecoverRunnable;->mScroller:Lcom/nemustech/tiffany/widget/TFScroller;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/widget/TFScroller;->computeScrollOffset()Z

    .line 2311
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$ExcessScrollRecoverRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$ExcessScrollRecoverRunnable;->mScroller:Lcom/nemustech/tiffany/widget/TFScroller;

    invoke-virtual {v1}, Lcom/nemustech/tiffany/widget/TFScroller;->getCurrY()I

    move-result v1

    iput v1, v0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mExcessScroll:I

    .line 2316
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$ExcessScrollRecoverRunnable;->mScroller:Lcom/nemustech/tiffany/widget/TFScroller;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/widget/TFScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2317
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$ExcessScrollRecoverRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;

    invoke-virtual {v0, p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->post(Ljava/lang/Runnable;)Z

    .line 2320
    :cond_0
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$ExcessScrollRecoverRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->invalidate()V

    .line 2321
    return-void
.end method

.method public start()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 2268
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$ExcessScrollRecoverRunnable;->cancel()V

    .line 2272
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$ExcessScrollRecoverRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->access$902(Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;I)I

    .line 2273
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$ExcessScrollRecoverRunnable;->mScroller:Lcom/nemustech/tiffany/widget/TFScroller;

    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$ExcessScrollRecoverRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;

    iget v2, v2, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mExcessScroll:I

    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$ExcessScrollRecoverRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;

    iget v3, v3, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mExcessScroll:I

    neg-int v4, v3

    const/16 v5, 0x96

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Lcom/nemustech/tiffany/widget/TFScroller;->startScroll(IIIII)V

    .line 2275
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$ExcessScrollRecoverRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;

    invoke-virtual {v0, p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->post(Ljava/lang/Runnable;)Z

    .line 2276
    return-void
.end method

.method public startAfterDecelerating()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 2282
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$ExcessScrollRecoverRunnable;->cancel()V

    .line 2286
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$ExcessScrollRecoverRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;

    const/4 v2, 0x3

    invoke-static {v0, v2}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->access$902(Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;I)I

    .line 2287
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$ExcessScrollRecoverRunnable;->mScroller:Lcom/nemustech/tiffany/widget/TFScroller;

    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$ExcessScrollRecoverRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;

    iget v2, v2, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mExcessScroll:I

    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$ExcessScrollRecoverRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;

    iget v3, v3, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mExcessScroll:I

    neg-int v4, v3

    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$ExcessScrollRecoverRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;

    iget v3, v3, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mExcessScroll:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$ExcessScrollRecoverRunnable;->getProperDuration(I)I

    move-result v5

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Lcom/nemustech/tiffany/widget/TFScroller;->startScroll(IIIII)V

    .line 2289
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$ExcessScrollRecoverRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;

    invoke-virtual {v0, p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->post(Ljava/lang/Runnable;)Z

    .line 2290
    return-void
.end method
