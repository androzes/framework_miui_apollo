.class Lcom/android/settings/RunningServices$ServiceListAdapter;
.super Landroid/widget/BaseAdapter;
.source "RunningServices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/RunningServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ServiceListAdapter"
.end annotation


# instance fields
.field final mInflater:Landroid/view/LayoutInflater;

.field mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/RunningServices$BaseItem;",
            ">;"
        }
    .end annotation
.end field

.field final mState:Lcom/android/settings/RunningServices$State;

.field final synthetic this$0:Lcom/android/settings/RunningServices;


# direct methods
.method constructor <init>(Lcom/android/settings/RunningServices;Lcom/android/settings/RunningServices$State;)V
    .locals 1
    .parameter
    .parameter "state"

    .prologue
    .line 744
    iput-object p1, p0, Lcom/android/settings/RunningServices$ServiceListAdapter;->this$0:Lcom/android/settings/RunningServices;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 745
    iput-object p2, p0, Lcom/android/settings/RunningServices$ServiceListAdapter;->mState:Lcom/android/settings/RunningServices$State;

    .line 746
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Lcom/android/settings/RunningServices;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/RunningServices$ServiceListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 747
    invoke-virtual {p0}, Lcom/android/settings/RunningServices$ServiceListAdapter;->refreshItems()V

    .line 748
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 777
    const/4 v0, 0x0

    return v0
.end method

.method public bindView(Landroid/view/View;I)V
    .locals 7
    .parameter "view"
    .parameter "position"

    .prologue
    const/4 v6, 0x0

    .line 808
    iget-object v3, p0, Lcom/android/settings/RunningServices$ServiceListAdapter;->mState:Lcom/android/settings/RunningServices$State;

    iget-object v3, v3, Lcom/android/settings/RunningServices$State;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 809
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/RunningServices$ViewHolder;

    .line 810
    .local v2, vh:Lcom/android/settings/RunningServices$ViewHolder;
    iget-object v4, p0, Lcom/android/settings/RunningServices$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt p2, v4, :cond_0

    .line 814
    monitor-exit v3

    .line 842
    :goto_0
    return-void

    .line 816
    :cond_0
    iget-object v4, p0, Lcom/android/settings/RunningServices$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/RunningServices$BaseItem;

    .line 817
    .local v1, item:Lcom/android/settings/RunningServices$BaseItem;
    iget-object v4, v2, Lcom/android/settings/RunningServices$ViewHolder;->name:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/android/settings/RunningServices$BaseItem;->mDisplayLabel:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 818
    iget-object v4, v2, Lcom/android/settings/RunningServices$ViewHolder;->separator:Landroid/widget/ImageView;

    iget-boolean v5, v1, Lcom/android/settings/RunningServices$BaseItem;->mNeedDivider:Z

    if-eqz v5, :cond_1

    move v5, v6

    :goto_1
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 820
    new-instance v0, Lcom/android/settings/RunningServices$ActiveItem;

    iget-object v4, p0, Lcom/android/settings/RunningServices$ServiceListAdapter;->this$0:Lcom/android/settings/RunningServices;

    invoke-direct {v0, v4}, Lcom/android/settings/RunningServices$ActiveItem;-><init>(Lcom/android/settings/RunningServices;)V

    .line 821
    .local v0, ai:Lcom/android/settings/RunningServices$ActiveItem;
    iput-object p1, v0, Lcom/android/settings/RunningServices$ActiveItem;->mRootView:Landroid/view/View;

    .line 822
    iput-object v1, v0, Lcom/android/settings/RunningServices$ActiveItem;->mItem:Lcom/android/settings/RunningServices$BaseItem;

    .line 823
    iput-object v2, v0, Lcom/android/settings/RunningServices$ActiveItem;->mHolder:Lcom/android/settings/RunningServices$ViewHolder;

    .line 824
    iget-wide v4, v1, Lcom/android/settings/RunningServices$BaseItem;->mActiveSince:J

    iput-wide v4, v0, Lcom/android/settings/RunningServices$ActiveItem;->mFirstRunTime:J

    .line 825
    iget-object v4, v2, Lcom/android/settings/RunningServices$ViewHolder;->description:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/android/settings/RunningServices$BaseItem;->mDescription:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 826
    iget-boolean v4, v1, Lcom/android/settings/RunningServices$BaseItem;->mIsProcess:Z

    if-eqz v4, :cond_2

    .line 827
    iget-object v4, p0, Lcom/android/settings/RunningServices$ServiceListAdapter;->this$0:Lcom/android/settings/RunningServices;

    iget v4, v4, Lcom/android/settings/RunningServices;->mProcessBgColor:I

    invoke-virtual {p1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 828
    iget-object v4, v2, Lcom/android/settings/RunningServices$ViewHolder;->icon:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 829
    iget-object v4, v2, Lcom/android/settings/RunningServices$ViewHolder;->icon:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 830
    iget-object v4, v2, Lcom/android/settings/RunningServices$ViewHolder;->description:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/android/settings/RunningServices$BaseItem;->mDescription:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 831
    const/4 v4, 0x0

    iput-object v4, v1, Lcom/android/settings/RunningServices$BaseItem;->mCurSizeStr:Ljava/lang/String;

    .line 839
    :goto_2
    iget-object v4, p0, Lcom/android/settings/RunningServices$ServiceListAdapter;->this$0:Lcom/android/settings/RunningServices;

    invoke-virtual {v0, v4}, Lcom/android/settings/RunningServices$ActiveItem;->updateTime(Landroid/content/Context;)V

    .line 840
    iget-object v4, p0, Lcom/android/settings/RunningServices$ServiceListAdapter;->this$0:Lcom/android/settings/RunningServices;

    iget-object v4, v4, Lcom/android/settings/RunningServices;->mActiveItems:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 841
    monitor-exit v3

    goto :goto_0

    .end local v0           #ai:Lcom/android/settings/RunningServices$ActiveItem;
    .end local v1           #item:Lcom/android/settings/RunningServices$BaseItem;
    .end local v2           #vh:Lcom/android/settings/RunningServices$ViewHolder;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 818
    .restart local v1       #item:Lcom/android/settings/RunningServices$BaseItem;
    .restart local v2       #vh:Lcom/android/settings/RunningServices$ViewHolder;
    :cond_1
    const/4 v5, 0x4

    goto :goto_1

    .line 833
    .restart local v0       #ai:Lcom/android/settings/RunningServices$ActiveItem;
    :cond_2
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {p1, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 834
    iget-object v4, v2, Lcom/android/settings/RunningServices$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v5, v1, Lcom/android/settings/RunningServices$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    iget-object v6, p0, Lcom/android/settings/RunningServices$ServiceListAdapter;->this$0:Lcom/android/settings/RunningServices;

    invoke-virtual {v6}, Lcom/android/settings/RunningServices;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageItemInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 835
    iget-object v4, v2, Lcom/android/settings/RunningServices$ViewHolder;->icon:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 836
    iget-object v4, v2, Lcom/android/settings/RunningServices$ViewHolder;->description:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/android/settings/RunningServices$BaseItem;->mDescription:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 837
    iget-wide v4, v1, Lcom/android/settings/RunningServices$BaseItem;->mActiveSince:J

    iput-wide v4, v0, Lcom/android/settings/RunningServices$ActiveItem;->mFirstRunTime:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 765
    iget-object v0, p0, Lcom/android/settings/RunningServices$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 769
    iget-object v0, p0, Lcom/android/settings/RunningServices$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 773
    iget-object v0, p0, Lcom/android/settings/RunningServices$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/settings/RunningServices$BaseItem;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 786
    if-nez p2, :cond_0

    .line 787
    invoke-virtual {p0, p3}, Lcom/android/settings/RunningServices$ServiceListAdapter;->newView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 791
    .local v0, v:Landroid/view/View;
    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/android/settings/RunningServices$ServiceListAdapter;->bindView(Landroid/view/View;I)V

    .line 792
    return-object v0

    .line 789
    .end local v0           #v:Landroid/view/View;
    :cond_0
    move-object v0, p2

    .restart local v0       #v:Landroid/view/View;
    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 761
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 781
    iget-object v0, p0, Lcom/android/settings/RunningServices$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/settings/RunningServices$BaseItem;

    iget-boolean v0, p0, Lcom/android/settings/RunningServices$BaseItem;->mIsProcess:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "parent"

    .prologue
    .line 796
    iget-object v2, p0, Lcom/android/settings/RunningServices$ServiceListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030041

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 797
    .local v1, v:Landroid/view/View;
    new-instance v0, Lcom/android/settings/RunningServices$ViewHolder;

    invoke-direct {v0}, Lcom/android/settings/RunningServices$ViewHolder;-><init>()V

    .line 798
    .local v0, h:Lcom/android/settings/RunningServices$ViewHolder;
    const v2, 0x7f0b00ce

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/ImageView;

    iput-object p0, v0, Lcom/android/settings/RunningServices$ViewHolder;->separator:Landroid/widget/ImageView;

    .line 799
    const v2, 0x7f0b002f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    iput-object p0, v0, Lcom/android/settings/RunningServices$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 800
    const v2, 0x7f0b004c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v0, Lcom/android/settings/RunningServices$ViewHolder;->name:Landroid/widget/TextView;

    .line 801
    const v2, 0x7f0b004e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v0, Lcom/android/settings/RunningServices$ViewHolder;->description:Landroid/widget/TextView;

    .line 802
    const v2, 0x7f0b00cf

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v0, Lcom/android/settings/RunningServices$ViewHolder;->size:Landroid/widget/TextView;

    .line 803
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 804
    return-object v1
.end method

.method refreshItems()V
    .locals 2

    .prologue
    .line 751
    iget-object v1, p0, Lcom/android/settings/RunningServices$ServiceListAdapter;->mState:Lcom/android/settings/RunningServices$State;

    invoke-virtual {v1}, Lcom/android/settings/RunningServices$State;->getCurrentItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 752
    .local v0, newItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/RunningServices$BaseItem;>;"
    iget-object v1, p0, Lcom/android/settings/RunningServices$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    if-eq v1, v0, :cond_0

    .line 753
    iput-object v0, p0, Lcom/android/settings/RunningServices$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    .line 755
    :cond_0
    iget-object v1, p0, Lcom/android/settings/RunningServices$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 756
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/RunningServices$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    .line 758
    :cond_1
    return-void
.end method
