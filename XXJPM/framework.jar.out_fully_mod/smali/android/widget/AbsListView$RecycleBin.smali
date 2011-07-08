.class Landroid/widget/AbsListView$RecycleBin;
.super Ljava/lang/Object;
.source "AbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
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

.field private mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;

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

.field private mViewTypeCount:I

.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method constructor <init>(Landroid/widget/AbsListView;)V
    .locals 1
    .parameter

    .prologue
    .line 4293
    iput-object p1, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4307
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    return-void
.end method

.method static synthetic access$2300(Landroid/widget/AbsListView$RecycleBin;)Landroid/widget/AbsListView$RecyclerListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4293
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;

    return-object v0
.end method

.method static synthetic access$2302(Landroid/widget/AbsListView$RecycleBin;Landroid/widget/AbsListView$RecyclerListener;)Landroid/widget/AbsListView$RecyclerListener;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4293
    iput-object p1, p0, Landroid/widget/AbsListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;

    return-object p1
.end method

.method static synthetic access$2400(Landroid/widget/AbsListView$RecycleBin;)[Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4293
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2500(Landroid/widget/AbsListView$RecycleBin;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4293
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2600(Landroid/widget/AbsListView$RecycleBin;)[Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4293
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    return-object v0
.end method

.method private pruneScrapViews()V
    .locals 12

    .prologue
    .line 4532
    iget-object v9, p0, Landroid/widget/AbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    array-length v3, v9

    .line 4533
    .local v3, maxViews:I
    iget v8, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    .line 4534
    .local v8, viewTypeCount:I
    iget-object v5, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    .line 4535
    .local v5, scrapViews:[Ljava/util/ArrayList;,"[Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v8, :cond_1

    .line 4536
    aget-object v4, v5, v1

    .line 4537
    .local v4, scrapPile:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 4538
    .local v6, size:I
    sub-int v0, v6, v3

    .line 4539
    .local v0, extras:I
    add-int/lit8 v6, v6, -0x1

    .line 4540
    const/4 v2, 0x0

    .local v2, j:I
    move v7, v6

    .end local v6           #size:I
    .local v7, size:I
    :goto_1
    if-ge v2, v0, :cond_0

    .line 4541
    iget-object v10, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    const/4 v9, 0x1

    sub-int v6, v7, v9

    .end local v7           #size:I
    .restart local v6       #size:I
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    const/4 v11, 0x0

    invoke-static {v10, v9, v11}, Landroid/widget/AbsListView;->access$3100(Landroid/widget/AbsListView;Landroid/view/View;Z)V

    .line 4540
    add-int/lit8 v2, v2, 0x1

    move v7, v6

    .end local v6           #size:I
    .restart local v7       #size:I
    goto :goto_1

    .line 4535
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4544
    .end local v0           #extras:I
    .end local v2           #j:I
    .end local v4           #scrapPile:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v7           #size:I
    :cond_1
    return-void
.end method


# virtual methods
.method addScrapView(Landroid/view/View;)V
    .locals 4
    .parameter "scrap"

    .prologue
    .line 4453
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView$LayoutParams;

    .line 4454
    .local v0, lp:Landroid/widget/AbsListView$LayoutParams;
    if-nez v0, :cond_1

    .line 4479
    :cond_0
    :goto_0
    return-void

    .line 4460
    :cond_1
    iget v1, v0, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 4461
    .local v1, viewType:I
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 4462
    const/4 v2, -0x2

    if-eq v1, v2, :cond_0

    .line 4463
    iget-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/widget/AbsListView;->access$2900(Landroid/widget/AbsListView;Landroid/view/View;Z)V

    goto :goto_0

    .line 4468
    :cond_2
    iget v2, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 4469
    invoke-virtual {p1}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    .line 4470
    iget-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4476
    :goto_1
    iget-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;

    if-eqz v2, :cond_0

    .line 4477
    iget-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;

    invoke-interface {v2, p1}, Landroid/widget/AbsListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    goto :goto_0

    .line 4472
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    .line 4473
    iget-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method clear()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 4359
    iget v5, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    if-ne v5, v7, :cond_0

    .line 4360
    iget-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 4361
    .local v2, scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 4362
    .local v3, scrapCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_2

    .line 4363
    iget-object v6, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    sub-int v5, v3, v7

    sub-int/2addr v5, v0

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-static {v6, v5, v8}, Landroid/widget/AbsListView;->access$2700(Landroid/widget/AbsListView;Landroid/view/View;Z)V

    .line 4362
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4366
    .end local v0           #i:I
    .end local v2           #scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v3           #scrapCount:I
    :cond_0
    iget v4, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    .line 4367
    .local v4, typeCount:I
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    if-ge v0, v4, :cond_2

    .line 4368
    iget-object v5, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v2, v5, v0

    .line 4369
    .restart local v2       #scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 4370
    .restart local v3       #scrapCount:I
    const/4 v1, 0x0

    .local v1, j:I
    :goto_2
    if-ge v1, v3, :cond_1

    .line 4371
    iget-object v6, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    sub-int v5, v3, v7

    sub-int/2addr v5, v1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-static {v6, v5, v8}, Landroid/widget/AbsListView;->access$2800(Landroid/widget/AbsListView;Landroid/view/View;Z)V

    .line 4370
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 4367
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4375
    .end local v1           #j:I
    .end local v2           #scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v3           #scrapCount:I
    .end local v4           #typeCount:I
    :cond_2
    return-void
.end method

.method fillActiveViews(II)V
    .locals 6
    .parameter "childCount"
    .parameter "firstActivePosition"

    .prologue
    .line 4385
    iget-object v4, p0, Landroid/widget/AbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    array-length v4, v4

    if-ge v4, p1, :cond_0

    .line 4386
    new-array v4, p1, [Landroid/view/View;

    iput-object v4, p0, Landroid/widget/AbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 4388
    :cond_0
    iput p2, p0, Landroid/widget/AbsListView$RecycleBin;->mFirstActivePosition:I

    .line 4390
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 4391
    .local v0, activeViews:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, p1, :cond_2

    .line 4392
    iget-object v4, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v4, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4393
    .local v1, child:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsListView$LayoutParams;

    .line 4395
    .local v3, lp:Landroid/widget/AbsListView$LayoutParams;
    if-eqz v3, :cond_1

    iget v4, v3, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    const/4 v5, -0x2

    if-eq v4, v5, :cond_1

    .line 4398
    aput-object v1, v0, v2

    .line 4391
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4401
    .end local v1           #child:Landroid/view/View;
    .end local v3           #lp:Landroid/widget/AbsListView$LayoutParams;
    :cond_2
    return-void
.end method

.method getActiveView(I)Landroid/view/View;
    .locals 5
    .parameter "position"

    .prologue
    const/4 v4, 0x0

    .line 4411
    iget v3, p0, Landroid/widget/AbsListView$RecycleBin;->mFirstActivePosition:I

    sub-int v1, p1, v3

    .line 4412
    .local v1, index:I
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 4413
    .local v0, activeViews:[Landroid/view/View;
    if-ltz v1, :cond_0

    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 4414
    aget-object v2, v0, v1

    .line 4415
    .local v2, match:Landroid/view/View;
    aput-object v4, v0, v1

    move-object v3, v2

    .line 4418
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

    .line 4426
    iget v3, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    if-ne v3, v4, :cond_1

    .line 4427
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 4428
    .local v0, scrapViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 4429
    .local v1, size:I
    if-lez v1, :cond_0

    .line 4430
    sub-int v3, v1, v4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/View;

    move-object v3, p0

    .line 4444
    .end local v0           #scrapViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v1           #size:I
    :goto_0
    return-object v3

    .restart local v0       #scrapViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v1       #size:I
    .restart local p0
    :cond_0
    move-object v3, v5

    .line 4432
    goto :goto_0

    .line 4435
    .end local v0           #scrapViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v1           #size:I
    :cond_1
    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    iget-object v3, v3, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v2

    .line 4436
    .local v2, whichScrap:I
    if-ltz v2, :cond_2

    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 4437
    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v0, v3, v2

    .line 4438
    .restart local v0       #scrapViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 4439
    .restart local v1       #size:I
    if-lez v1, :cond_2

    .line 4440
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

    .line 4444
    goto :goto_0
.end method

.method public markChildrenDirty()V
    .locals 7

    .prologue
    .line 4333
    iget v5, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 4334
    iget-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 4335
    .local v2, scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 4336
    .local v3, scrapCount:I
    const/4 v0, 0x0

    .end local p0
    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_2

    .line 4337
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->forceLayout()V

    .line 4336
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4340
    .end local v0           #i:I
    .end local v2           #scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v3           #scrapCount:I
    .restart local p0
    :cond_0
    iget v4, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    .line 4341
    .local v4, typeCount:I
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    if-ge v0, v4, :cond_2

    .line 4342
    iget-object v5, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v2, v5, v0

    .line 4343
    .restart local v2       #scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 4344
    .restart local v3       #scrapCount:I
    const/4 v1, 0x0

    .local v1, j:I
    :goto_2
    if-ge v1, v3, :cond_1

    .line 4345
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->forceLayout()V

    .line 4344
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 4341
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4349
    .end local v1           #j:I
    .end local v2           #scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v3           #scrapCount:I
    .end local v4           #typeCount:I
    .end local p0
    :cond_2
    return-void
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
    .line 4550
    .local p1, views:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    iget v4, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 4551
    iget-object v4, p0, Landroid/widget/AbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    invoke-interface {p1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4560
    :cond_0
    return-void

    .line 4553
    :cond_1
    iget v3, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    .line 4554
    .local v3, viewTypeCount:I
    iget-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    .line 4555
    .local v2, scrapViews:[Ljava/util/ArrayList;,"[Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 4556
    aget-object v1, v2, v0

    .line 4557
    .local v1, scrapPile:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4555
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method scrapActiveViews()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 4485
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 4486
    .local v0, activeViews:[Landroid/view/View;
    iget-object v8, p0, Landroid/widget/AbsListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;

    if-eqz v8, :cond_1

    move v2, v9

    .line 4487
    .local v2, hasListener:Z
    :goto_0
    iget v8, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    if-le v8, v9, :cond_2

    move v4, v9

    .line 4489
    .local v4, multipleScraps:Z
    :goto_1
    iget-object v5, p0, Landroid/widget/AbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 4490
    .local v5, scrapViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    array-length v1, v0

    .line 4491
    .local v1, count:I
    sub-int v3, v1, v9

    .local v3, i:I
    :goto_2
    if-ltz v3, :cond_5

    .line 4492
    aget-object v6, v0, v3

    .line 4493
    .local v6, victim:Landroid/view/View;
    if-eqz v6, :cond_0

    .line 4494
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/AbsListView$LayoutParams;

    iget v7, v8, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 4496
    .local v7, whichScrap:I
    const/4 v8, 0x0

    aput-object v8, v0, v3

    .line 4498
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v8

    if-nez v8, :cond_3

    .line 4500
    const/4 v8, -0x2

    if-eq v7, v8, :cond_0

    .line 4501
    iget-object v8, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    invoke-static {v8, v6, v10}, Landroid/widget/AbsListView;->access$3000(Landroid/widget/AbsListView;Landroid/view/View;Z)V

    .line 4491
    .end local v7           #whichScrap:I
    :cond_0
    :goto_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .end local v1           #count:I
    .end local v2           #hasListener:Z
    .end local v3           #i:I
    .end local v4           #multipleScraps:Z
    .end local v5           #scrapViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v6           #victim:Landroid/view/View;
    :cond_1
    move v2, v10

    .line 4486
    goto :goto_0

    .restart local v2       #hasListener:Z
    :cond_2
    move v4, v10

    .line 4487
    goto :goto_1

    .line 4506
    .restart local v1       #count:I
    .restart local v3       #i:I
    .restart local v4       #multipleScraps:Z
    .restart local v5       #scrapViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v6       #victim:Landroid/view/View;
    .restart local v7       #whichScrap:I
    :cond_3
    if-eqz v4, :cond_4

    .line 4507
    iget-object v8, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v5, v8, v7

    .line 4509
    :cond_4
    invoke-virtual {v6}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    .line 4510
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4512
    if-eqz v2, :cond_0

    .line 4513
    iget-object v8, p0, Landroid/widget/AbsListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;

    invoke-interface {v8, v6}, Landroid/widget/AbsListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    goto :goto_3

    .line 4524
    .end local v6           #victim:Landroid/view/View;
    .end local v7           #whichScrap:I
    :cond_5
    invoke-direct {p0}, Landroid/widget/AbsListView$RecycleBin;->pruneScrapViews()V

    .line 4525
    return-void
.end method

.method setCacheColorHint(I)V
    .locals 10
    .parameter "color"

    .prologue
    .line 4568
    iget v8, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    .line 4569
    iget-object v4, p0, Landroid/widget/AbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 4570
    .local v4, scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 4571
    .local v5, scrapCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v5, :cond_2

    .line 4572
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-virtual {v8, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 4571
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4575
    .end local v2           #i:I
    .end local v4           #scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v5           #scrapCount:I
    :cond_0
    iget v6, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    .line 4576
    .local v6, typeCount:I
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_1
    if-ge v2, v6, :cond_2

    .line 4577
    iget-object v8, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v4, v8, v2

    .line 4578
    .restart local v4       #scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 4579
    .restart local v5       #scrapCount:I
    const/4 v3, 0x0

    .local v3, j:I
    :goto_2
    if-ge v3, v5, :cond_1

    .line 4580
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-virtual {v8, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 4579
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 4576
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 4585
    .end local v3           #j:I
    .end local v4           #scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v5           #scrapCount:I
    .end local v6           #typeCount:I
    :cond_2
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 4586
    .local v0, activeViews:[Landroid/view/View;
    array-length v1, v0

    .line 4587
    .local v1, count:I
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_4

    .line 4588
    aget-object v7, v0, v2

    .line 4589
    .local v7, victim:Landroid/view/View;
    if-eqz v7, :cond_3

    .line 4590
    invoke-virtual {v7, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 4587
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 4593
    .end local v7           #victim:Landroid/view/View;
    :cond_4
    return-void
.end method

.method public setViewTypeCount(I)V
    .locals 4
    .parameter "viewTypeCount"

    .prologue
    .line 4319
    const/4 v2, 0x1

    if-ge p1, v2, :cond_0

    .line 4320
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Can\'t have a viewTypeCount < 1"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4323
    :cond_0
    new-array v1, p1, [Ljava/util/ArrayList;

    .line 4324
    .local v1, scrapViews:[Ljava/util/ArrayList;,"[Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 4325
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    aput-object v2, v1, v0

    .line 4324
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4327
    :cond_1
    iput p1, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    .line 4328
    const/4 v2, 0x0

    aget-object v2, v1, v2

    iput-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 4329
    iput-object v1, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    .line 4330
    return-void
.end method

.method public shouldRecycleViewType(I)Z
    .locals 1
    .parameter "viewType"

    .prologue
    .line 4352
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
