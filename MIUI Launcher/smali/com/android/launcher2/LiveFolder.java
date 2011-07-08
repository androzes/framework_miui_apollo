package com.android.launcher2; class LiveFolder {/*

.class public Lcom/android/launcher2/LiveFolder;
.super Lcom/android/launcher2/Folder;
.source "LiveFolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/LiveFolder$FolderLoadingTask;
    }
.end annotation


# instance fields
.field private mLoadingTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Lcom/android/launcher2/LiveFolderInfo;",
            "Ljava/lang/Void;",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/Folder;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    #p0=(Reference);
    return-void
.end method

.method static fromXml(Landroid/content/Context;Lcom/android/launcher2/FolderInfo;)Lcom/android/launcher2/LiveFolder;
    .locals 3
    .parameter "context"
    .parameter "folderInfo"

    .prologue
    .line 42
    invoke-static {p1}, Lcom/android/launcher2/LiveFolder;->isDisplayModeList(Lcom/android/launcher2/FolderInfo;)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_0

    const v1, 0x7f030017

    #v1=(Integer);
    move v0, v1

    .line 44
    .local v0, layout:I
    :goto_0
    #v0=(Integer);
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    #v1=(Reference);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-virtual {v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/launcher2/LiveFolder;

    return-object p0

    .line 42
    .end local v0           #layout:I
    .restart local p0
    :cond_0
    #v0=(Uninit);v1=(Boolean);v2=(Uninit);
    const v1, 0x7f030014

    #v1=(Integer);
    move v0, v1

    #v0=(Integer);
    goto :goto_0
.end method

.method private static isDisplayModeList(Lcom/android/launcher2/FolderInfo;)Z
    .locals 2
    .parameter "folderInfo"

    .prologue
    .line 48
    check-cast p0, Lcom/android/launcher2/LiveFolderInfo;

    .end local p0
    iget v0, p0, Lcom/android/launcher2/LiveFolderInfo;->displayMode:I

    #v0=(Integer);
    const/4 v1, 0x2

    #v1=(PosByte);
    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    #v0=(Boolean);
    return v0

    :cond_0
    #v0=(Integer);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method


# virtual methods
.method bind(Lcom/android/launcher2/FolderInfo;)V
    .locals 3
    .parameter "info"

    .prologue
    const/4 v2, 0x1

    .line 77
    #v2=(One);
    invoke-super {p0, p1}, Lcom/android/launcher2/Folder;->bind(Lcom/android/launcher2/FolderInfo;)V

    .line 78
    iget-object v0, p0, Lcom/android/launcher2/LiveFolder;->mLoadingTask:Landroid/os/AsyncTask;

    #v0=(Reference);
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/LiveFolder;->mLoadingTask:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    #v1=(Reference);
    if-ne v0, v1, :cond_0

    .line 79
    iget-object v0, p0, Lcom/android/launcher2/LiveFolder;->mLoadingTask:Landroid/os/AsyncTask;

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 81
    :cond_0
    #v1=(Conflicted);
    new-instance v0, Lcom/android/launcher2/LiveFolder$FolderLoadingTask;

    #v0=(UninitRef);
    invoke-direct {v0, p0}, Lcom/android/launcher2/LiveFolder$FolderLoadingTask;-><init>(Lcom/android/launcher2/LiveFolder;)V

    #v0=(Reference);
    new-array v1, v2, [Lcom/android/launcher2/LiveFolderInfo;

    #v1=(Reference);
    const/4 v2, 0x0

    #v2=(Null);
    check-cast p1, Lcom/android/launcher2/LiveFolderInfo;

    .end local p1
    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/launcher2/LiveFolder$FolderLoadingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/LiveFolder;->mLoadingTask:Landroid/os/AsyncTask;

    .line 82
    return-void
.end method

.method onClose(Z)V
    .locals 3
    .parameter "allowAnimation"

    .prologue
    .line 92
    invoke-super {p0, p1}, Lcom/android/launcher2/Folder;->onClose(Z)V

    .line 93
    iget-object v1, p0, Lcom/android/launcher2/LiveFolder;->mLoadingTask:Landroid/os/AsyncTask;

    #v1=(Reference);
    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/LiveFolder;->mLoadingTask:Landroid/os/AsyncTask;

    invoke-virtual {v1}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    #v2=(Reference);
    if-ne v1, v2, :cond_0

    .line 94
    iget-object v1, p0, Lcom/android/launcher2/LiveFolder;->mLoadingTask:Landroid/os/AsyncTask;

    const/4 v2, 0x1

    #v2=(One);
    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 99
    :cond_0
    #v2=(Conflicted);
    iget-object v1, p0, Lcom/android/launcher2/LiveFolder;->mContent:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/launcher2/LiveFolderAdapter;

    .line 100
    .local v0, adapter:Lcom/android/launcher2/LiveFolderAdapter;
    if-eqz v0, :cond_1

    .line 101
    invoke-virtual {v0}, Lcom/android/launcher2/LiveFolderAdapter;->cleanup()V

    .line 103
    :cond_1
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 54
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Lcom/android/launcher2/LiveFolderAdapter$ViewHolder;

    .line 56
    .local v1, holder:Lcom/android/launcher2/LiveFolderAdapter$ViewHolder;
    iget-boolean v4, v1, Lcom/android/launcher2/LiveFolderAdapter$ViewHolder;->useBaseIntent:Z

    #v4=(Boolean);
    if-eqz v4, :cond_1

    .line 57
    iget-object p1, p0, Lcom/android/launcher2/LiveFolder;->mInfo:Lcom/android/launcher2/FolderInfo;

    .end local p1
    check-cast p1, Lcom/android/launcher2/LiveFolderInfo;

    iget-object v0, p1, Lcom/android/launcher2/LiveFolderInfo;->baseIntent:Landroid/content/Intent;

    .line 58
    .local v0, baseIntent:Landroid/content/Intent;
    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 59
    new-instance v2, Landroid/content/Intent;

    #v2=(UninitRef);
    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 60
    .local v2, intent:Landroid/content/Intent;
    #v2=(Reference);
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 61
    .local v3, uri:Landroid/net/Uri;
    #v3=(Reference);
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    #v4=(Reference);
    iget-wide v5, v1, Lcom/android/launcher2/LiveFolderAdapter$ViewHolder;->id:J

    #v5=(LongLo);v6=(LongHi);
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    #v5=(Reference);
    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 62
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 63
    iget-object v4, p0, Lcom/android/launcher2/LiveFolder;->mLauncher:Lcom/android/launcher2/Launcher;

    new-instance v5, Ljava/lang/StringBuilder;

    #v5=(UninitRef);
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #v5=(Reference);
    const-string v6, "(position="

    #v6=(Reference);
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lcom/android/launcher2/Launcher;->startActivity(Landroid/content/Intent;Ljava/lang/Object;)V

    .line 69
    .end local v0           #baseIntent:Landroid/content/Intent;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #uri:Landroid/net/Uri;
    :cond_0
    :goto_0
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);
    return-void

    .line 65
    .restart local p1
    :cond_1
    #v0=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Boolean);v5=(Uninit);v6=(Uninit);v7=(Uninit);
    iget-object v4, v1, Lcom/android/launcher2/LiveFolderAdapter$ViewHolder;->intent:Landroid/content/Intent;

    #v4=(Reference);
    if-eqz v4, :cond_0

    .line 66
    iget-object v4, p0, Lcom/android/launcher2/LiveFolder;->mLauncher:Lcom/android/launcher2/Launcher;

    iget-object v5, v1, Lcom/android/launcher2/LiveFolderAdapter$ViewHolder;->intent:Landroid/content/Intent;

    #v5=(Reference);
    new-instance v6, Ljava/lang/StringBuilder;

    #v6=(UninitRef);
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #v6=(Reference);
    const-string v7, "(position="

    #v7=(Reference);
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/launcher2/Launcher;->startActivity(Landroid/content/Intent;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 1
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 73
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v0, 0x0

    #v0=(Null);
    return v0
.end method

.method onOpen(Z)V
    .locals 0
    .parameter "allowAnimation"

    .prologue
    .line 86
    invoke-super {p0, p1}, Lcom/android/launcher2/Folder;->onOpen(Z)V

    .line 87
    invoke-virtual {p0}, Lcom/android/launcher2/LiveFolder;->requestFocus()Z

    .line 88
    return-void
.end method

*/}
