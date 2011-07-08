.class Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecycleBin;
.super Ljava/lang/Object;
.source "TFAbsHorizontalListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RecycleBin"
.end annotation


# instance fields
.field private mActiveViews:[Landroid/view/View;

.field private mCurrentScrap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstActivePosition:I

.field private mRecyclerListener:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecyclerListener;

.field private mScrapViews:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mShouldRetainViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mViewTypeCount:I

.field final synthetic this$0:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;


# direct methods
.method constructor <init>(Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;)V
    .locals 1
    .parameter

    .prologue
    .line 3658
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecycleBin;->this$0:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3672
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    return-void
.end method

.method static synthetic access$1700(Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecycleBin;)Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecyclerListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3658
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecycleBin;->mRecyclerListener:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecyclerListener;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecycleBin;Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecyclerListener;)Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecyclerListener;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3658
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecycleBin;->mRecyclerListener:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecyclerListener;

    return-object p1
.end method

.method private pruneScrapViews()V
    .locals 12

    .prologue
    .line 3909
    iget-object v9, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    array-length v3, v9

    .line 3910
    .local v3, maxViews:I
    iget v8, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecycleBin;->mViewTypeCount:I

    .line 3911
    .local v8, viewTypeCount:I
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    .line 3912
    .local v5, scrapViews:[Ljava/util/ArrayList;,"[Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v8, :cond_1

    .line 3913
    aget-object v4, v5, v1

    .line 3914
    .local v4, scrapPile:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 3915
    .local v6, size:I
    sub-int v0, v6, v3

    .line 3916
    .local v0, extras:I
    add-int/lit8 v6, v6, -0x1

    .line 3917
    const/4 v2, 0x0

    .local v2, j:I
    move v7, v6

    .end local v6           #size:I
    .local v7, size:I
    :goto_1
    if-ge v2, v0, :cond_0

    .line 3918
    iget-object v10, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecycleBin;->this$0:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;

    const/4 v9, 0x1

    sub-int v6, v7, v9

    .end local v7           #size:I
    .restart local v6       #size:I
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    const/4 v11, 0x0

    invoke-static {v10, v9, v11}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->access$2000(Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;Landroid/view/View;Z)V

    .line 3917
    add-int/lit8 v2, v2, 0x1

    move v7, v6

    .end local v6           #size:I
    .restart local v7       #size:I
    goto :goto_1

    .line 3912
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3921
    .end local v0           #extras:I
    .end local v2           #j:I
    .end local v4           #scrapPile:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v7           #size:I
    :cond_1
    return-void
.end method


# virtual methods
.method addScrapView(Landroid/view/View;)V
    .locals 6
    .parameter "scrap"

    .prologue
    .line 3822
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$LayoutParams;

    .line 3823
    .local v2, lp:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$LayoutParams;
    if-nez v2, :cond_1

    .line 3859
    :cond_0
    :goto_0
    return-void

    .line 3829
    :cond_1
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecycleBin;->mShouldRetainViews:Ljava/util/ArrayList;

    .line 3831
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz v0, :cond_3

    .line 3832
    const/4 v1, 0x0

    .local v1, loop:I
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 3833
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3835
    const-string v4, "[ABS_LIST]"

    const-string v5, "scrap view should be retained~! return~!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3832
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3845
    .end local v1           #loop:I
    :cond_3
    iget v3, v2, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$LayoutParams;->viewType:I

    .line 3846
    .local v3, viewType:I
    invoke-virtual {p0, v3}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3850
    iget v4, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecycleBin;->mViewTypeCount:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    .line 3851
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3856
    :goto_2
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecycleBin;->mRecyclerListener:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecyclerListener;

    if-eqz v4, :cond_0

    .line 3857
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecycleBin;->mRecyclerListener:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecyclerListener;

    invoke-interface {v4, p1}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    goto :goto_0

    .line 3853
    :cond_4
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v4, v4, v3

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public addShouldRetainView(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 3690
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecycleBin;->mShouldRetainViews:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 3691
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecycleBin;->mShouldRetainViews:Ljava/util/ArrayList;

    .line 3693
    :cond_0
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecycleBin;->mShouldRetainViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3694
    return-void
.end method

.method clear()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 3728
    iget v5, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecycleBin;->mViewTypeCount:I

    if-ne v5, v7, :cond_0

    .line 3729
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 3730
    .local v2, scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 3731
    .local v3, scrapCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_2

    .line 3732
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecycleBin;->this$0:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;

    sub-int v5, v3, v7

    sub-int/2addr v5, v0

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-static {v6, v5, v8}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->access$1800(Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;Landroid/view/View;Z)V

    .line 3731
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3735
    .end local v0           #i:I
    .end local v2           #scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v3           #scrapCount:I
    :cond_0
    iget v4, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecycleBin;->mViewTypeCount:I

    .line 3736
    .local v4, typeCount:I
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    if-ge v0, v4, :cond_2

    .line 3737
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v2, v5, v0

    .line 3738
    .restart local v2       #scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 3739
    .restart local v3       #scrapCount:I
    const/4 v1, 0x0

    .local v1, j:I
    :goto_2
    if-ge v1, v3, :cond_1

    .line 3740
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecycleBin;->this$0:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;

    sub-int v5, v3, v7

    sub-int/2addr v5, v1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-static {v6, v5, v8}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->access$1900(Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;Landroid/view/View;Z)V

    .line 3739
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3736
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3744
    .end local v1           #j:I
    .end local v2           #scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v3           #scrapCount:I
    .end local v4           #typeCount:I
    :cond_2
    return-void
.end method

.method public clearShouldRetainView()V
    .locals 3

    .prologue
    .line 3697
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecycleBin;->mShouldRetainViews:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 3698
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecycleBin;->mShouldRetainViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 3699
    .local v1, v:Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    goto :goto_0

    .line 3701
    .end local v1           #v:Landroid/view/View;
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecycleBin;->mShouldRetainViews:Ljava/util/ArrayList;

    .line 3703
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method fillActiveViews(II)V
    .locals 6
    .parameter "childCount"
    .parameter "firstActivePosition"

    .prologue
    .line 3754
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    array-length v4, v4

    if-ge v4, p1, :cond_0

    .line 3755
    new-array v4, p1, [Landroid/view/View;

    iput-object v4, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 3757
    :cond_0
    iput p2, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecycleBin;->mFirstActivePosition:I

    .line 3759
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 3760
    .local v0, activeViews:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, p1, :cond_2

    .line 3761
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecycleBin;->this$0:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;

    invoke-virtual {v4, v2}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3762
    .local v1, child:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$LayoutParams;

    .line 3764
    .local v3, lp:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$LayoutParams;
    if-eqz v3, :cond_1

    iget v4, v3, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$LayoutParams;->viewType:I

    const/4 v5, -0x2

    if-eq v4, v5, :cond_1

    .line 3767
    aput-object v1, v0, v2

    .line 3760
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3770
    .end local v1           #child:Landroid/view/View;
    .end local v3           #lp:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$LayoutParams;
    :cond_2
    return-void
.end method

.method getActiveView(I)Landroid/view/View;
    .locals 5
    .parameter "position"

    .prologue
    const/4 v4, 0x0

    .line 3780
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecycleBin;->mFirstActivePosition:I

    sub-int v1, p1, v3

    .line 3781
    .local v1, index:I
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 3782
    .local v0, activeViews:[Landroid/view/View;
    if-ltz v1, :cond_0

    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 3783
    aget-object v2, v0, v1

    .line 3784
    .local v2, match:Landroid/view/View;
    aput-object v4, v0, v1

    move-object v3, v2

    .line 3787
    .end local v2           #match:Landroid/view/View;
    :goto_0
    return-object v3

    :cond_0
    move-object v3, v4

    goto :goto_0
.end method

.method getScrapView(I)Landroid/view/View;
    .locals 6
    .parameter "position"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 3795
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecycleBin;->mViewTypeCount:I

    if-ne v3, v4, :cond_1

    .line 3796
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 3797
    .local v0, scrapViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3798
    .local v1, size:I
    if-lez v1, :cond_0

    .line 3799
    sub-int v3, v1, v4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/View;

    move-object v3, p0

    .line 3813
    .end local v0           #scrapViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v1           #size:I
    :goto_0
    return-object v3

    .restart local v0       #scrapViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v1       #size:I
    .restart local p0
    :cond_0
    move-object v3, v5

    .line 3801
    goto :goto_0

    .line 3804
    .end local v0           #scrapViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v1           #size:I
    :cond_1
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecycleBin;->this$0:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;

    iget-object v3, v3, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v2

    .line 3805
    .local v2, whichScrap:I
    if-ltz v2, :cond_2

    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 3806
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v0, v3, v2

    .line 3807
    .restart local v0       #scrapViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3808
    .restart local v1       #size:I
    if-lez v1, :cond_2

    .line 3809
    sub-int v3, v1, v4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/View;

    move-object v3, p0

    goto :goto_0

    .end local v0           #scrapViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v1           #size:I
    .restart local p0
    :cond_2
    move-object v3, v5

    .line 3813
    goto :goto_0
.end method

.method reclaimScrapViews(Ljava/util/List;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3927
    .local p1, views:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    iget v4, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecycleBin;->mViewTypeCount:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 3928
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    invoke-interface {p1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3937
    :cond_0
    return-void

    .line 3930
    :cond_1
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecycleBin;->mViewTypeCount:I

    .line 3931
    .local v3, viewTypeCount:I
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    .line 3932
    .local v2, scrapViews:[Ljava/util/ArrayList;,"[Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 3933
    aget-object v1, v2, v0

    .line 3934
    .local v1, scrapPile:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3932
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method scrapActiveViews()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 3865
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 3866
    .local v0, activeViews:[Landroid/view/View;
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecycleBin;->mRecyclerListener:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecyclerListener;

    if-eqz v8, :cond_1

    move v2, v9

    .line 3867
    .local v2, hasListener:Z
    :goto_0
    iget v8, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecycleBin;->mViewTypeCount:I

    if-le v8, v9, :cond_2

    move v4, v9

    .line 3869
    .local v4, multipleScraps:Z
    :goto_1
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 3870
    .local v5, scrapViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    array-length v1, v0

    .line 3871
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    if-ge v3, v1, :cond_5

    .line 3872
    aget-object v6, v0, v3

    .line 3873
    .local v6, victim:Landroid/view/View;
    if-eqz v6, :cond_0

    .line 3874
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$LayoutParams;

    iget v7, v8, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$LayoutParams;->viewType:I

    .line 3877
    .local v7, whichScrap:I
    const/4 v8, 0x0

    aput-object v8, v0, v3

    .line 3879
    const/4 v8, -0x1

    if-ne v7, v8, :cond_3

    .line 3871
    .end local v7           #whichScrap:I
    :cond_0
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .end local v1           #count:I
    .end local v2           #hasListener:Z
    .end local v3           #i:I
    .end local v4           #multipleScraps:Z
    .end local v5           #scrapViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v6           #victim:Landroid/view/View;
    :cond_1
    move v2, v10

    .line 3866
    goto :goto_0

    .restart local v2       #hasListener:Z
    :cond_2
    move v4, v10

    .line 3867
    goto :goto_1

    .line 3884
    .restart local v1       #count:I
    .restart local v3       #i:I
    .restart local v4       #multipleScraps:Z
    .restart local v5       #scrapViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v6       #victim:Landroid/view/View;
    .restart local v7       #whichScrap:I
    :cond_3
    if-eqz v4, :cond_4

    .line 3885
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v5, v8, v7

    .line 3887
    :cond_4
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3889
    if-eqz v2, :cond_0

    .line 3890
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecycleBin;->mRecyclerListener:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecyclerListener;

    invoke-interface {v8, v6}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    goto :goto_3

    .line 3901
    .end local v6           #victim:Landroid/view/View;
    .end local v7           #whichScrap:I
    :cond_5
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecycleBin;->pruneScrapViews()V

    .line 3902
    return-void
.end method

.method public setViewTypeCount(I)V
    .locals 4
    .parameter "viewTypeCount"

    .prologue
    .line 3707
    const/4 v2, 0x1

    if-ge p1, v2, :cond_0

    .line 3708
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Can\'t have a viewTypeCount < 1"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3711
    :cond_0
    new-array v1, p1, [Ljava/util/ArrayList;

    .line 3712
    .local v1, scrapViews:[Ljava/util/ArrayList;,"[Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 3713
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    aput-object v2, v1, v0

    .line 3712
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3715
    :cond_1
    iput p1, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecycleBin;->mViewTypeCount:I

    .line 3716
    const/4 v2, 0x0

    aget-object v2, v1, v2

    iput-object v2, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 3717
    iput-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    .line 3718
    return-void
.end method

.method public shouldRecycleViewType(I)Z
    .locals 1
    .parameter "viewType"

    .prologue
    .line 3721
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
