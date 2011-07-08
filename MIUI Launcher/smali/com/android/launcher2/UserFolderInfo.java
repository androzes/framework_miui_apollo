package com.android.launcher2; class UserFolderInfo {/*

.class Lcom/android/launcher2/UserFolderInfo;
.super Lcom/android/launcher2/FolderInfo;
.source "UserFolderInfo.java"


# instance fields
.field contents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/launcher2/FolderInfo;-><init>()V

    .line 36
    #p0=(Reference);
    new-instance v0, Ljava/util/ArrayList;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/launcher2/UserFolderInfo;->contents:Ljava/util/ArrayList;

    .line 39
    const/4 v0, 0x2

    #v0=(PosByte);
    iput v0, p0, Lcom/android/launcher2/UserFolderInfo;->itemType:I

    .line 40
    return-void
.end method


# virtual methods
.method public add(Lcom/android/launcher2/ShortcutInfo;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/launcher2/UserFolderInfo;->contents:Ljava/util/ArrayList;

    #v0=(Reference);
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    return-void
.end method

.method count()I
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/launcher2/UserFolderInfo;->contents:Ljava/util/ArrayList;

    #v0=(Reference);
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method public onAddToDatabase(Landroid/content/ContentValues;)V
    .locals 2
    .parameter "values"

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcom/android/launcher2/FolderInfo;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 76
    const-string v0, "title"

    #v0=(Reference);
    iget-object v1, p0, Lcom/android/launcher2/UserFolderInfo;->title:Ljava/lang/CharSequence;

    #v1=(Reference);
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public remove(Lcom/android/launcher2/ShortcutInfo;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/launcher2/UserFolderInfo;->contents:Ljava/util/ArrayList;

    #v0=(Reference);
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 62
    return-void
.end method

.method public removeItems(Ljava/util/ArrayList;Lcom/android/launcher2/Launcher;)V
    .locals 12
    .parameter
    .parameter "launcher"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/AllAppsList$RemoveInfo;",
            ">;",
            "Lcom/android/launcher2/Launcher;",
            ")V"
        }
    .end annotation

    .prologue
    .line 80
    .local p1, packages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/AllAppsList$RemoveInfo;>;"
    new-instance v9, Ljava/util/ArrayList;

    #v9=(UninitRef);
    const/4 v10, 0x1

    #v10=(One);
    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 81
    .local v9, toRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ShortcutInfo;>;"
    #v9=(Reference);
    iget-object v10, p0, Lcom/android/launcher2/UserFolderInfo;->contents:Ljava/util/ArrayList;

    #v10=(Reference);
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 82
    .local v1, contentsCount:I
    #v1=(Integer);
    const/4 v5, 0x0

    .line 84
    .local v5, itemsRemoved:Z
    #v5=(Null);
    const/4 v6, 0x0

    .local v6, k:I
    :goto_0
    #v0=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Boolean);v6=(Integer);v7=(Conflicted);v8=(Conflicted);v10=(Conflicted);v11=(Conflicted);
    if-ge v6, v1, :cond_3

    .line 85
    iget-object v10, p0, Lcom/android/launcher2/UserFolderInfo;->contents:Ljava/util/ArrayList;

    #v10=(Reference);
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/launcher2/ShortcutInfo;

    .line 86
    .local v0, appInfo:Lcom/android/launcher2/ShortcutInfo;
    iget-object v4, v0, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 87
    .local v4, intent:Landroid/content/Intent;
    #v4=(Reference);
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    .line 89
    .local v7, name:Landroid/content/ComponentName;
    #v7=(Reference);
    const-string v10, "android.intent.action.MAIN"

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    #v11=(Reference);
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    #v10=(Boolean);
    if-eqz v10, :cond_2

    if-eqz v7, :cond_2

    .line 90
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    #v3=(Reference);v10=(Integer);
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    #v10=(Boolean);
    if-eqz v10, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    #v8=(Reference);
    check-cast v8, Lcom/android/launcher2/AllAppsList$RemoveInfo;

    .line 91
    .local v8, ri:Lcom/android/launcher2/AllAppsList$RemoveInfo;
    iget-object v10, v8, Lcom/android/launcher2/AllAppsList$RemoveInfo;->packageName:Ljava/lang/String;

    #v10=(Reference);
    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    #v10=(Boolean);
    if-eqz v10, :cond_0

    .line 92
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    iget v10, v0, Lcom/android/launcher2/ShortcutInfo;->itemType:I

    #v10=(Integer);
    if-eqz v10, :cond_1

    .line 96
    invoke-static {p2, v0}, Lcom/android/launcher2/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;)Z

    .line 98
    :cond_1
    const/4 v5, 0x1

    #v5=(One);
    goto :goto_1

    .line 84
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v8           #ri:Lcom/android/launcher2/AllAppsList$RemoveInfo;
    :cond_2
    #v3=(Conflicted);v5=(Boolean);v8=(Conflicted);v10=(Boolean);
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 104
    .end local v0           #appInfo:Lcom/android/launcher2/ShortcutInfo;
    .end local v4           #intent:Landroid/content/Intent;
    .end local v7           #name:Landroid/content/ComponentName;
    :cond_3
    #v0=(Conflicted);v4=(Conflicted);v7=(Conflicted);v10=(Conflicted);v11=(Conflicted);
    iget-object v10, p0, Lcom/android/launcher2/UserFolderInfo;->contents:Ljava/util/ArrayList;

    #v10=(Reference);
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 105
    if-eqz v5, :cond_4

    .line 106
    invoke-virtual {p0}, Lcom/android/launcher2/UserFolderInfo;->getFolderCache()Lcom/android/launcher2/Folder;

    move-result-object v2

    .line 107
    .local v2, folder:Lcom/android/launcher2/Folder;
    #v2=(Reference);
    if-eqz v2, :cond_4

    .line 108
    invoke-virtual {v2}, Lcom/android/launcher2/Folder;->notifyDataSetChanged()V

    .line 111
    .end local v2           #folder:Lcom/android/launcher2/Folder;
    :cond_4
    #v2=(Conflicted);
    return-void
.end method

*/}
