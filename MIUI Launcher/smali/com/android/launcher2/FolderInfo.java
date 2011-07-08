package com.android.launcher2; class FolderInfo {/*

.class Lcom/android/launcher2/FolderInfo;
.super Lcom/android/launcher2/ItemInfo;
.source "FolderInfo.java"


# instance fields
.field private mFolderCache:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/android/launcher2/Folder;",
            ">;"
        }
    .end annotation
.end field

.field opened:Z

.field public sortMode:I

.field title:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/launcher2/ItemInfo;-><init>()V

    .line 45
    #p0=(Reference);
    const/4 v0, 0x0

    #v0=(Null);
    iput v0, p0, Lcom/android/launcher2/FolderInfo;->sortMode:I

    .line 50
    const/4 v0, 0x2

    #v0=(PosByte);
    iput v0, p0, Lcom/android/launcher2/FolderInfo;->itemType:I

    .line 51
    return-void
.end method


# virtual methods
.method count()I
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    #v0=(Null);
    return v0
.end method

.method public getFolderCache()Lcom/android/launcher2/Folder;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/launcher2/FolderInfo;->mFolderCache:Ljava/lang/ref/SoftReference;

    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/android/launcher2/FolderInfo;->mFolderCache:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/launcher2/Folder;

    move-object v0, p0

    .line 86
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public load(Landroid/database/Cursor;)V
    .locals 2
    .parameter "c"

    .prologue
    const/16 v1, 0x12

    .line 59
    #v1=(PosByte);
    invoke-super {p0, p1}, Lcom/android/launcher2/ItemInfo;->load(Landroid/database/Cursor;)V

    .line 60
    const/4 v0, 0x2

    #v0=(PosByte);
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/launcher2/FolderInfo;->title:Ljava/lang/CharSequence;

    .line 61
    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 62
    const/4 v0, 0x0

    #v0=(Null);
    iput v0, p0, Lcom/android/launcher2/FolderInfo;->sortMode:I

    .line 66
    :goto_0
    #v0=(Integer);
    return-void

    .line 64
    :cond_0
    #v0=(Boolean);
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    #v0=(Integer);
    iput v0, p0, Lcom/android/launcher2/FolderInfo;->sortMode:I

    goto :goto_0
.end method

.method public onAddToDatabase(Landroid/content/ContentValues;)V
    .locals 2
    .parameter "values"

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/android/launcher2/ItemInfo;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 71
    const-string v0, "sortMode"

    #v0=(Reference);
    iget v1, p0, Lcom/android/launcher2/FolderInfo;->sortMode:I

    #v1=(Integer);
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 72
    return-void
.end method

.method public setFolderCache(Lcom/android/launcher2/Folder;)V
    .locals 1
    .parameter "folder"

    .prologue
    .line 79
    new-instance v0, Ljava/lang/ref/SoftReference;

    #v0=(UninitRef);
    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/launcher2/FolderInfo;->mFolderCache:Ljava/lang/ref/SoftReference;

    .line 80
    return-void
.end method

*/}
