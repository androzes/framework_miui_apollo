.class public Lcom/nemustech/tiffany/widget/TFListActivity;
.super Landroid/app/Activity;
.source "TFListActivity.java"


# instance fields
.field protected mAdapter:Landroid/widget/ListAdapter;

.field private mFinishedStart:Z

.field private mHandler:Landroid/os/Handler;

.field protected mList:Lcom/nemustech/tiffany/widget/TFListView;

.field private mOnClickListener:Lcom/nemustech/tiffany/widget/TFAdapterView$OnItemClickListener;

.field private mRequestFocus:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 19
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFListActivity;->mHandler:Landroid/os/Handler;

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFListActivity;->mFinishedStart:Z

    .line 22
    new-instance v0, Lcom/nemustech/tiffany/widget/TFListActivity$1;

    invoke-direct {v0, p0}, Lcom/nemustech/tiffany/widget/TFListActivity$1;-><init>(Lcom/nemustech/tiffany/widget/TFListActivity;)V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFListActivity;->mRequestFocus:Ljava/lang/Runnable;

    .line 154
    new-instance v0, Lcom/nemustech/tiffany/widget/TFListActivity$2;

    invoke-direct {v0, p0}, Lcom/nemustech/tiffany/widget/TFListActivity$2;-><init>(Lcom/nemustech/tiffany/widget/TFListActivity;)V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFListActivity;->mOnClickListener:Lcom/nemustech/tiffany/widget/TFAdapterView$OnItemClickListener;

    return-void
.end method

.method private ensureList()V
    .locals 2

    .prologue
    .line 133
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFListActivity;->mList:Lcom/nemustech/tiffany/widget/TFListView;

    if-eqz v1, :cond_0

    .line 152
    :goto_0
    return-void

    .line 148
    :cond_0
    new-instance v0, Lcom/nemustech/tiffany/widget/TFListView;

    invoke-direct {v0, p0}, Lcom/nemustech/tiffany/widget/TFListView;-><init>(Landroid/content/Context;)V

    .line 149
    .local v0, l:Lcom/nemustech/tiffany/widget/TFListView;
    const v1, 0x102000a

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFListView;->setId(I)V

    .line 150
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFListView;->setDrawSelectorOnTop(Z)V

    .line 151
    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/widget/TFListActivity;->setContentView(Landroid/view/View;)V

    goto :goto_0
.end method


# virtual methods
.method public getListAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFListActivity;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getListView()Lcom/nemustech/tiffany/widget/TFListView;
    .locals 1

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFListActivity;->ensureList()V

    .line 122
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFListActivity;->mList:Lcom/nemustech/tiffany/widget/TFListView;

    return-object v0
.end method

.method public getSelectedItemId()J
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFListActivity;->mList:Lcom/nemustech/tiffany/widget/TFListView;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/widget/TFListView;->getSelectedItemId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFListActivity;->mList:Lcom/nemustech/tiffany/widget/TFListView;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/widget/TFListView;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method public onContentChanged()V
    .locals 3

    .prologue
    .line 62
    invoke-super {p0}, Landroid/app/Activity;->onContentChanged()V

    .line 63
    const v1, 0x1020004

    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 64
    .local v0, emptyView:Landroid/view/View;
    const v1, 0x102000a

    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/nemustech/tiffany/widget/TFListView;

    iput-object v1, p0, Lcom/nemustech/tiffany/widget/TFListActivity;->mList:Lcom/nemustech/tiffany/widget/TFListView;

    .line 66
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFListActivity;->mList:Lcom/nemustech/tiffany/widget/TFListView;

    if-nez v1, :cond_0

    .line 67
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Your content must have a TFListView whose id attribute is \'android.R.id.list\'"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 71
    :cond_0
    if-eqz v0, :cond_1

    .line 72
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFListActivity;->mList:Lcom/nemustech/tiffany/widget/TFListView;

    invoke-virtual {v1, v0}, Lcom/nemustech/tiffany/widget/TFListView;->setEmptyView(Landroid/view/View;)V

    .line 74
    :cond_1
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFListActivity;->mList:Lcom/nemustech/tiffany/widget/TFListView;

    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFListActivity;->mOnClickListener:Lcom/nemustech/tiffany/widget/TFAdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Lcom/nemustech/tiffany/widget/TFListView;->setOnItemClickListener(Lcom/nemustech/tiffany/widget/TFAdapterView$OnItemClickListener;)V

    .line 75
    iget-boolean v1, p0, Lcom/nemustech/tiffany/widget/TFListActivity;->mFinishedStart:Z

    if-eqz v1, :cond_2

    .line 76
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFListActivity;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 78
    :cond_2
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFListActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFListActivity;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 79
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/nemustech/tiffany/widget/TFListActivity;->mFinishedStart:Z

    .line 80
    return-void
.end method

.method protected onListItemClick(Lcom/nemustech/tiffany/widget/TFListView;Landroid/view/View;IJ)V
    .locals 0
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 40
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFListActivity;->ensureList()V

    .line 51
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 52
    return-void
.end method

.method public setListAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 86
    monitor-enter p0

    .line 87
    :try_start_0
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFListActivity;->ensureList()V

    .line 88
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFListActivity;->mAdapter:Landroid/widget/ListAdapter;

    .line 89
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFListActivity;->mList:Lcom/nemustech/tiffany/widget/TFListView;

    invoke-virtual {v0, p1}, Lcom/nemustech/tiffany/widget/TFListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 90
    monitor-exit p0

    .line 91
    return-void

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSelection(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFListActivity;->mList:Lcom/nemustech/tiffany/widget/TFListView;

    invoke-virtual {v0, p1}, Lcom/nemustech/tiffany/widget/TFListView;->setSelection(I)V

    .line 101
    return-void
.end method
