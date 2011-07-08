.class Lcom/nemustech/tiffany/widget/TFPageLayout$FlingRunnable;
.super Ljava/lang/Object;
.source "TFPageLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemustech/tiffany/widget/TFPageLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlingRunnable"
.end annotation


# instance fields
.field private mFirstRunByFling:Z

.field private mScroller:Lcom/nemustech/tiffany/widget/TFScroller;

.field final synthetic this$0:Lcom/nemustech/tiffany/widget/TFPageLayout;


# direct methods
.method public constructor <init>(Lcom/nemustech/tiffany/widget/TFPageLayout;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter "context"

    .prologue
    .line 845
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFPageLayout$FlingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFPageLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 842
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFPageLayout$FlingRunnable;->mFirstRunByFling:Z

    .line 846
    new-instance v0, Lcom/nemustech/tiffany/widget/TFScroller;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {v0, p2, v1}, Lcom/nemustech/tiffany/widget/TFScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFPageLayout$FlingRunnable;->mScroller:Lcom/nemustech/tiffany/widget/TFScroller;

    .line 847
    return-void
.end method

.method private endFling()V
    .locals 2

    .prologue
    .line 908
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFPageLayout$FlingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFPageLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nemustech/tiffany/widget/TFPageLayout;->access$202(Lcom/nemustech/tiffany/widget/TFPageLayout;I)I

    .line 909
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFPageLayout$FlingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFPageLayout;

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/nemustech/tiffany/widget/TFPageLayout$FlingRunnable$1;

    invoke-direct {v1, p0}, Lcom/nemustech/tiffany/widget/TFPageLayout$FlingRunnable$1;-><init>(Lcom/nemustech/tiffany/widget/TFPageLayout$FlingRunnable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 914
    return-void
.end method

.method private startCommon()V
    .locals 1

    .prologue
    .line 850
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFPageLayout$FlingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFPageLayout;

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 851
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 917
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFPageLayout$FlingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFPageLayout;

    invoke-static {v3}, Lcom/nemustech/tiffany/widget/TFPageLayout;->access$200(Lcom/nemustech/tiffany/widget/TFPageLayout;)I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    .line 949
    :goto_0
    return-void

    .line 921
    :cond_0
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFPageLayout$FlingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFPageLayout;

    iget v1, v3, Lcom/nemustech/tiffany/widget/TFPageLayout;->mCurScrollPosition:I

    .line 923
    .local v1, prevScrollPos:I
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFPageLayout$FlingRunnable;->mScroller:Lcom/nemustech/tiffany/widget/TFScroller;

    invoke-virtual {v3}, Lcom/nemustech/tiffany/widget/TFScroller;->computeScrollOffset()Z

    move-result v0

    .line 924
    .local v0, more:Z
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFPageLayout$FlingRunnable;->mScroller:Lcom/nemustech/tiffany/widget/TFScroller;

    invoke-virtual {v3}, Lcom/nemustech/tiffany/widget/TFScroller;->getCurrX()I

    move-result v2

    .line 928
    .local v2, x:I
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFPageLayout$FlingRunnable;->mScroller:Lcom/nemustech/tiffany/widget/TFScroller;

    invoke-virtual {v3}, Lcom/nemustech/tiffany/widget/TFScroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    move v0, v3

    .line 930
    :goto_1
    if-eqz v0, :cond_2

    .line 931
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFPageLayout$FlingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFPageLayout;

    invoke-static {v3, v2}, Lcom/nemustech/tiffany/widget/TFPageLayout;->access$400(Lcom/nemustech/tiffany/widget/TFPageLayout;I)V

    .line 933
    iput-boolean v5, p0, Lcom/nemustech/tiffany/widget/TFPageLayout$FlingRunnable;->mFirstRunByFling:Z

    .line 935
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFPageLayout$FlingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFPageLayout;

    iget-object v3, v3, Lcom/nemustech/tiffany/widget/TFPageLayout;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    move v0, v5

    .line 928
    goto :goto_1

    .line 937
    :cond_2
    iget-boolean v3, p0, Lcom/nemustech/tiffany/widget/TFPageLayout$FlingRunnable;->mFirstRunByFling:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFPageLayout$FlingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFPageLayout;

    invoke-static {v3, v2}, Lcom/nemustech/tiffany/widget/TFPageLayout;->access$500(Lcom/nemustech/tiffany/widget/TFPageLayout;I)I

    move-result v3

    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFPageLayout$FlingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFPageLayout;

    invoke-static {v4}, Lcom/nemustech/tiffany/widget/TFPageLayout;->access$600(Lcom/nemustech/tiffany/widget/TFPageLayout;)I

    move-result v4

    if-eq v3, v4, :cond_3

    .line 943
    sub-int v3, v2, v1

    const/16 v4, 0x384

    invoke-virtual {p0, v3, v4}, Lcom/nemustech/tiffany/widget/TFPageLayout$FlingRunnable;->startUsingDistance(II)V

    goto :goto_0

    .line 945
    :cond_3
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFPageLayout$FlingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFPageLayout;

    invoke-static {v3, v2}, Lcom/nemustech/tiffany/widget/TFPageLayout;->access$400(Lcom/nemustech/tiffany/widget/TFPageLayout;I)V

    .line 946
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFPageLayout$FlingRunnable;->endFling()V

    goto :goto_0
.end method

.method public startUsingDistance(II)V
    .locals 6
    .parameter "distance"
    .parameter "animationDuration"

    .prologue
    const/4 v2, 0x0

    .line 888
    if-nez p1, :cond_0

    .line 889
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFPageLayout$FlingRunnable;->endFling()V

    .line 905
    :goto_0
    return-void

    .line 893
    :cond_0
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFPageLayout$FlingRunnable;->startCommon()V

    .line 897
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFPageLayout$FlingRunnable;->mScroller:Lcom/nemustech/tiffany/widget/TFScroller;

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFPageLayout$FlingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFPageLayout;

    iget v1, v1, Lcom/nemustech/tiffany/widget/TFPageLayout;->mCurScrollPosition:I

    move v3, p1

    move v4, v2

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/nemustech/tiffany/widget/TFScroller;->startScroll(IIIII)V

    .line 899
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFPageLayout$FlingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFPageLayout;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/nemustech/tiffany/widget/TFPageLayout;->access$202(Lcom/nemustech/tiffany/widget/TFPageLayout;I)I

    .line 901
    iput-boolean v2, p0, Lcom/nemustech/tiffany/widget/TFPageLayout$FlingRunnable;->mFirstRunByFling:Z

    .line 904
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFPageLayout$FlingRunnable;->run()V

    goto :goto_0
.end method

.method public startUsingVelocity(I)V
    .locals 13
    .parameter "initialVelocity"

    .prologue
    const/16 v9, 0x64

    const/4 v2, 0x0

    .line 854
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFPageLayout$FlingRunnable;->startCommon()V

    .line 860
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFPageLayout$FlingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFPageLayout;

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mCurScrollPosition:I

    div-int/lit8 v0, v0, 0x64

    mul-int/lit8 v5, v0, 0x64

    .line 861
    .local v5, flingMinX:I
    add-int/lit8 v6, v5, 0x64

    .line 862
    .local v6, flingMaxX:I
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFPageLayout$FlingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFPageLayout;

    invoke-static {v0}, Lcom/nemustech/tiffany/widget/TFPageLayout;->access$100(Lcom/nemustech/tiffany/widget/TFPageLayout;)I

    move-result v0

    if-le v6, v0, :cond_0

    .line 863
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFPageLayout$FlingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFPageLayout;

    invoke-static {v0}, Lcom/nemustech/tiffany/widget/TFPageLayout;->access$100(Lcom/nemustech/tiffany/widget/TFPageLayout;)I

    move-result v6

    .line 865
    :cond_0
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFPageLayout$FlingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFPageLayout;

    invoke-static {v0}, Lcom/nemustech/tiffany/widget/TFPageLayout;->access$100(Lcom/nemustech/tiffany/widget/TFPageLayout;)I

    move-result v0

    if-ne v5, v0, :cond_1

    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFPageLayout$FlingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFPageLayout;

    invoke-static {v0}, Lcom/nemustech/tiffany/widget/TFPageLayout;->access$100(Lcom/nemustech/tiffany/widget/TFPageLayout;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 866
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFPageLayout$FlingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFPageLayout;

    invoke-static {v0}, Lcom/nemustech/tiffany/widget/TFPageLayout;->access$100(Lcom/nemustech/tiffany/widget/TFPageLayout;)I

    move-result v0

    sub-int v5, v0, v9

    .line 870
    :cond_1
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFPageLayout$FlingRunnable;->mScroller:Lcom/nemustech/tiffany/widget/TFScroller;

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFPageLayout$FlingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFPageLayout;

    iget v1, v1, Lcom/nemustech/tiffany/widget/TFPageLayout;->mCurScrollPosition:I

    move v3, p1

    move v4, v2

    move v7, v2

    move v8, v2

    move v10, v2

    move v11, v2

    move v12, v2

    invoke-virtual/range {v0 .. v12}, Lcom/nemustech/tiffany/widget/TFScroller;->fling(IIIIIIIIIIII)V

    .line 879
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFPageLayout$FlingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFPageLayout;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/nemustech/tiffany/widget/TFPageLayout;->access$202(Lcom/nemustech/tiffany/widget/TFPageLayout;I)I

    .line 881
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFPageLayout$FlingRunnable;->mFirstRunByFling:Z

    .line 884
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFPageLayout$FlingRunnable;->run()V

    .line 885
    return-void
.end method
