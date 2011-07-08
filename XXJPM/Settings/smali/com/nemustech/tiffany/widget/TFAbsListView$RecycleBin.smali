.class Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;
.super Ljava/lang/Object;
.source "TFAbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemustech/tiffany/widget/TFAbsListView;
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

.field private mRecyclerListener:Lcom/nemustech/tiffany/widget/TFAbsListView$RecyclerListener;

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

.field private mShouldRetainViews:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mViewTypeCount:I

.field final synthetic this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;


# direct methods
.method constructor <init>(Lcom/nemustech/tiffany/widget/TFAbsListView;)V
    .locals 1
    .parameter

    .prologue
    .line 3957
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3971
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    return-void
.end method

.method static synthetic access$2000(Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;)Lcom/nemustech/tiffany/widget/TFAbsListView$RecyclerListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3957
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->mRecyclerListener:Lcom/nemustech/tiffany/widget/TFAbsListView$RecyclerListener;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;Lcom/nemustech/tiffany/widget/TFAbsListView$RecyclerListener;)Lcom/nemustech/tiffany/widget/TFAbsListView$RecyclerListener;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3957
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->mRecyclerListener:Lcom/nemustech/tiffany/widget/TFAbsListView$RecyclerListener;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;)[Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3957
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3957
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;)[Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3957
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    return-object v0
.end method

.method private pruneScrapViews()V
    .locals 12

    .prologue
    .line 4236
    iget-object v9, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    array-length v3, v9

    .line 4237
    .local v3, maxViews:I
    iget v8, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->mViewTypeCount:I

    .line 4238
    .local v8, viewTypeCount:I
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    .line 4239
    .local v5, scrapViews:[Ljava/util/ArrayList;,"[Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v8, :cond_1

    .line 4240
    aget-object v4, v5, v1

    .line 4241
    .local v4, scrapPile:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 4242
    .local v6, size:I
    sub-int v0, v6, v3

    .line 4243
    .local v0, extras:I
    add-int/lit8 v6, v6, -0x1

    .line 4244
    const/4 v2, 0x0

    .local v2, j:I
    move v7, v6

    .end local v6           #size:I
    .local v7, size:I
    :goto_1
    if-ge v2, v0, :cond_0

    .line 4245
    iget-object v10, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    const/4 v9, 0x1

    sub-int v6, v7, v9

    .end local v7           #size:I
    .restart local v6       #size:I
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    const/4 v11, 0x0

    invoke-static {v10, v9, v11}, Lcom/nemustech/tiffany/widget/TFAbsListView;->access$2600(Lcom/nemustech/tiffany/widget/TFAbsListView;Landroid/view/View;Z)V

    .line 4244
    add-int/lit8 v2, v2, 0x1

    move v7, v6

    .end local v6           #size:I
    .restart local v7       #size:I
    goto :goto_1

    .line 4239
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4248
    .end local v0           #extras:I
    .end local v2           #j:I
    .end local v4           #scrapPile:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v7           #size:I
    :cond_1
    return-void
.end method


# virtual methods
.method addScrapView(Landroid/view/View;)V
    .locals 1
    .parameter "scrap"

    .prologue
    .line 4139
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->addScrapView(Landroid/view/View;Z)V

    .line 4140
    return-void
.end method

.method addScrapView(Landroid/view/View;Z)V
    .locals 5
    .parameter "scrap"
    .parameter "ignoreRetainView"

    .prologue
    .line 4148
    if-nez p1, :cond_1

    .line 4186
    :cond_0
    :goto_0
    return-void

    .line 4152
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/nemustech/tiffany/widget/TFAbsListView$LayoutParams;

    .line 4153
    .local v0, lp:Lcom/nemustech/tiffany/widget/TFAbsListView$LayoutParams;
    if-eqz v0, :cond_0

    .line 4159
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->mShouldRetainViews:Ljava/util/HashMap;

    .line 4161
    .local v1, retainViews:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Landroid/view/View;>;"
    if-eqz v1, :cond_2

    if-nez p2, :cond_2

    .line 4162
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4163
    const-string v3, "[ABS_LIST]"

    const-string v4, "scrap view should be retained~! return~!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4172
    :cond_2
    iget v2, v0, Lcom/nemustech/tiffany/widget/TFAbsListView$LayoutParams;->viewType:I

    .line 4173
    .local v2, viewType:I
    invoke-virtual {p0, v2}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4177
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 4178
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4183
    :goto_1
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->mRecyclerListener:Lcom/nemustech/tiffany/widget/TFAbsListView$RecyclerListener;

    if-eqz v3, :cond_0

    .line 4184
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->mRecyclerListener:Lcom/nemustech/tiffany/widget/TFAbsListView$RecyclerListener;

    invoke-interface {v3, p1}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    goto :goto_0

    .line 4180
    :cond_3
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public addShouldRetainView(ILandroid/view/View;)V
    .locals 2
    .parameter "position"
    .parameter "v"

    .prologue
    .line 3986
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3993
    :goto_0
    return-void

    .line 3989
    :cond_0
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->mShouldRetainViews:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 3990
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->mShouldRetainViews:Ljava/util/HashMap;

    .line 3992
    :cond_1
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->mShouldRetainViews:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method clear()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 4050
    iget v5, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->mViewTypeCount:I

    if-ne v5, v7, :cond_0

    .line 4051
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 4052
    .local v2, scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 4053
    .local v3, scrapCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_2

    .line 4054
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    sub-int v5, v3, v7

    sub-int/2addr v5, v0

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-static {v6, v5, v8}, Lcom/nemustech/tiffany/widget/TFAbsListView;->access$2400(Lcom/nemustech/tiffany/widget/TFAbsListView;Landroid/view/View;Z)V

    .line 4053
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4057
    .end local v0           #i:I
    .end local v2           #scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v3           #scrapCount:I
    :cond_0
    iget v4, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->mViewTypeCount:I

    .line 4058
    .local v4, typeCount:I
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    if-ge v0, v4, :cond_2

    .line 4059
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v2, v5, v0

    .line 4060
    .restart local v2       #scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 4061
    .restart local v3       #scrapCount:I
    const/4 v1, 0x0

    .local v1, j:I
    :goto_2
    if-ge v1, v3, :cond_1

    .line 4062
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    sub-int v5, v3, v7

    sub-int/2addr v5, v1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-static {v6, v5, v8}, Lcom/nemustech/tiffany/widget/TFAbsListView;->access$2500(Lcom/nemustech/tiffany/widget/TFAbsListView;Landroid/view/View;Z)V

    .line 4061
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 4058
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4066
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
    .line 3996
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->mShouldRetainViews:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    .line 3997
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->mShouldRetainViews:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3998
    .local v0, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/view/View;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3999
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->mShouldRetainViews:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->addScrapView(Landroid/view/View;Z)V

    goto :goto_0

    .line 4001
    :cond_0
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->mShouldRetainViews:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 4003
    .end local v0           #itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/view/View;>;>;"
    :cond_1
    return-void
.end method

.method fillActiveViews(II)V
    .locals 6
    .parameter "childCount"
    .parameter "firstActivePosition"

    .prologue
    .line 4076
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    array-length v4, v4

    if-ge v4, p1, :cond_0

    .line 4077
    new-array v4, p1, [Landroid/view/View;

    iput-object v4, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 4079
    :cond_0
    iput p2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->mFirstActivePosition:I

    .line 4081
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 4082
    .local v0, activeViews:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, p1, :cond_2

    .line 4083
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    invoke-virtual {v4, v2}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4084
    .local v1, child:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/nemustech/tiffany/widget/TFAbsListView$LayoutParams;

    .line 4086
    .local v3, lp:Lcom/nemustech/tiffany/widget/TFAbsListView$LayoutParams;
    if-eqz v3, :cond_1

    iget v4, v3, Lcom/nemustech/tiffany/widget/TFAbsListView$LayoutParams;->viewType:I

    const/4 v5, -0x2

    if-eq v4, v5, :cond_1

    .line 4089
    aput-object v1, v0, v2

    .line 4082
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4092
    .end local v1           #child:Landroid/view/View;
    .end local v3           #lp:Lcom/nemustech/tiffany/widget/TFAbsListView$LayoutParams;
    :cond_2
    return-void
.end method

.method getActiveView(I)Landroid/view/View;
    .locals 5
    .parameter "position"

    .prologue
    const/4 v4, 0x0

    .line 4102
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->mFirstActivePosition:I

    sub-int v1, p1, v3

    .line 4103
    .local v1, index:I
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 4104
    .local v0, activeViews:[Landroid/view/View;
    if-ltz v1, :cond_0

    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 4105
    aget-object v2, v0, v1

    .line 4106
    .local v2, match:Landroid/view/View;
    aput-object v4, v0, v1

    move-object v3, v2

    .line 4109
    .end local v2           #match:Landroid/view/View;
    :goto_0
    return-object v3

    :cond_0
    move-object v3, v4

    goto :goto_0
.end method

.method public getRetainViewPositions()[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 4011
    const/4 v0, 0x0

    .line 4013
    .local v0, ret:[Ljava/lang/Object;
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->mShouldRetainViews:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->mShouldRetainViews:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 4014
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->mShouldRetainViews:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 4016
    :cond_0
    return-object v0
.end method

.method getScrapView(I)Landroid/view/View;
    .locals 6
    .parameter "position"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 4117
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->mViewTypeCount:I

    if-ne v3, v4, :cond_1

    .line 4118
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 4119
    .local v0, scrapViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 4120
    .local v1, size:I
    if-lez v1, :cond_0

    .line 4121
    sub-int v3, v1, v4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/View;

    move-object v3, p0

    .line 4135
    .end local v0           #scrapViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v1           #size:I
    :goto_0
    return-object v3

    .restart local v0       #scrapViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v1       #size:I
    .restart local p0
    :cond_0
    move-object v3, v5

    .line 4123
    goto :goto_0

    .line 4126
    .end local v0           #scrapViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v1           #size:I
    :cond_1
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    iget-object v3, v3, Lcom/nemustech/tiffany/widget/TFAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v2

    .line 4127
    .local v2, whichScrap:I
    if-ltz v2, :cond_2

    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 4128
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v0, v3, v2

    .line 4129
    .restart local v0       #scrapViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 4130
    .restart local v1       #size:I
    if-lez v1, :cond_2

    .line 4131
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

    .line 4135
    goto :goto_0
.end method

.method public getShouldRetainView(I)Landroid/view/View;
    .locals 2
    .parameter "position"

    .prologue
    .line 4024
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->mShouldRetainViews:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .end local p0
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->mShouldRetainViews:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/View;

    move-object v0, p0

    goto :goto_0
.end method

.method public getShouldRetainViewCount()I
    .locals 1

    .prologue
    .line 4020
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->mShouldRetainViews:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->mShouldRetainViews:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

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
    .line 4254
    .local p1, views:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    iget v4, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 4255
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    invoke-interface {p1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4264
    :cond_0
    return-void

    .line 4257
    :cond_1
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->mViewTypeCount:I

    .line 4258
    .local v3, viewTypeCount:I
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    .line 4259
    .local v2, scrapViews:[Ljava/util/ArrayList;,"[Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 4260
    aget-object v1, v2, v0

    .line 4261
    .local v1, scrapPile:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4259
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public removeShouldRetainView(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 4006
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->mShouldRetainViews:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 4007
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->mShouldRetainViews:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4008
    :cond_0
    return-void
.end method

.method scrapActiveViews()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 4192
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 4193
    .local v0, activeViews:[Landroid/view/View;
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->mRecyclerListener:Lcom/nemustech/tiffany/widget/TFAbsListView$RecyclerListener;

    if-eqz v8, :cond_1

    move v2, v9

    .line 4194
    .local v2, hasListener:Z
    :goto_0
    iget v8, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->mViewTypeCount:I

    if-le v8, v9, :cond_2

    move v4, v9

    .line 4196
    .local v4, multipleScraps:Z
    :goto_1
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 4197
    .local v5, scrapViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    array-length v1, v0

    .line 4198
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    if-ge v3, v1, :cond_5

    .line 4199
    aget-object v6, v0, v3

    .line 4200
    .local v6, victim:Landroid/view/View;
    if-eqz v6, :cond_0

    .line 4201
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lcom/nemustech/tiffany/widget/TFAbsListView$LayoutParams;

    iget v7, v8, Lcom/nemustech/tiffany/widget/TFAbsListView$LayoutParams;->viewType:I

    .line 4204
    .local v7, whichScrap:I
    const/4 v8, 0x0

    aput-object v8, v0, v3

    .line 4206
    const/4 v8, -0x1

    if-ne v7, v8, :cond_3

    .line 4198
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

    .line 4193
    goto :goto_0

    .restart local v2       #hasListener:Z
    :cond_2
    move v4, v10

    .line 4194
    goto :goto_1

    .line 4211
    .restart local v1       #count:I
    .restart local v3       #i:I
    .restart local v4       #multipleScraps:Z
    .restart local v5       #scrapViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v6       #victim:Landroid/view/View;
    .restart local v7       #whichScrap:I
    :cond_3
    if-eqz v4, :cond_4

    .line 4212
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v5, v8, v7

    .line 4214
    :cond_4
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4216
    if-eqz v2, :cond_0

    .line 4217
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->mRecyclerListener:Lcom/nemustech/tiffany/widget/TFAbsListView$RecyclerListener;

    invoke-interface {v8, v6}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    goto :goto_3

    .line 4228
    .end local v6           #victim:Landroid/view/View;
    .end local v7           #whichScrap:I
    :cond_5
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->pruneScrapViews()V

    .line 4229
    return-void
.end method

.method public setViewTypeCount(I)V
    .locals 4
    .parameter "viewTypeCount"

    .prologue
    .line 4029
    const/4 v2, 0x1

    if-ge p1, v2, :cond_0

    .line 4030
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Can\'t have a viewTypeCount < 1"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4033
    :cond_0
    new-array v1, p1, [Ljava/util/ArrayList;

    .line 4034
    .local v1, scrapViews:[Ljava/util/ArrayList;,"[Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 4035
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    aput-object v2, v1, v0

    .line 4034
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4037
    :cond_1
    iput p1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->mViewTypeCount:I

    .line 4038
    const/4 v2, 0x0

    aget-object v2, v1, v2

    iput-object v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 4039
    iput-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    .line 4040
    return-void
.end method

.method public shouldRecycleViewType(I)Z
    .locals 1
    .parameter "viewType"

    .prologue
    .line 4043
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
