package com.android.launcher2; class ShortcutsAdapter {/*

.class public Lcom/android/launcher2/ShortcutsAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ShortcutsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/ShortcutsAdapter$TitleComparator;,
        Lcom/android/launcher2/ShortcutsAdapter$FrequencyComparator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/launcher2/ShortcutInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mAbcMap:[Ljava/lang/Object;

.field private mEnforceShow:Z

.field private mFrequencyMap:[Ljava/lang/Object;

.field private mIconCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/android/launcher2/ShortcutInfo;",
            "Lcom/android/launcher2/ShortcutIcon;",
            ">;"
        }
    .end annotation
.end field

.field private mInfo:Lcom/android/launcher2/UserFolderInfo;

.field private final mLauncher:Lcom/android/launcher2/Launcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher2/UserFolderInfo;)V
    .locals 2
    .parameter "context"
    .parameter "info"

    .prologue
    const/4 v1, 0x0

    .line 67
    #v1=(Null);
    iget-object v0, p2, Lcom/android/launcher2/UserFolderInfo;->contents:Ljava/util/ArrayList;

    #v0=(Reference);
    invoke-direct {p0, p1, v1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 43
    #p0=(Reference);
    iput-boolean v1, p0, Lcom/android/launcher2/ShortcutsAdapter;->mEnforceShow:Z

    .line 47
    new-instance v0, Ljava/util/WeakHashMap;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/launcher2/ShortcutsAdapter;->mIconCache:Ljava/util/WeakHashMap;

    .line 68
    iput-object p2, p0, Lcom/android/launcher2/ShortcutsAdapter;->mInfo:Lcom/android/launcher2/UserFolderInfo;

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherApplication;->getLauncher()Lcom/android/launcher2/Launcher;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/ShortcutsAdapter;->mLauncher:Lcom/android/launcher2/Launcher;

    .line 70
    invoke-direct {p0}, Lcom/android/launcher2/ShortcutsAdapter;->buildSortingMap()V

    .line 71
    return-void
.end method

.method private buildSortingMap()V
    .locals 9

    .prologue
    .line 86
    new-instance v6, Lcom/android/launcher2/ShortcutsAdapter$TitleComparator;

    #v6=(UninitRef);
    invoke-direct {v6}, Lcom/android/launcher2/ShortcutsAdapter$TitleComparator;-><init>()V

    .line 87
    .local v6, tc:Lcom/android/launcher2/ShortcutsAdapter$TitleComparator;
    #v6=(Reference);
    new-instance v0, Ljava/util/TreeMap;

    #v0=(UninitRef);
    invoke-direct {v0, v6}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 88
    .local v0, abcMap:Ljava/util/SortedMap;,"Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    #v0=(Reference);
    new-instance v1, Lcom/android/launcher2/ShortcutsAdapter$FrequencyComparator;

    #v1=(UninitRef);
    invoke-direct {v1}, Lcom/android/launcher2/ShortcutsAdapter$FrequencyComparator;-><init>()V

    .line 89
    .local v1, fc:Lcom/android/launcher2/ShortcutsAdapter$FrequencyComparator;
    #v1=(Reference);
    new-instance v2, Ljava/util/TreeMap;

    #v2=(UninitRef);
    invoke-direct {v2, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 90
    .local v2, frequencyMap:Ljava/util/SortedMap;,"Ljava/util/SortedMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    #v2=(Reference);
    const/4 v3, 0x0

    .line 91
    .local v3, i:I
    #v3=(Null);
    iget-object v7, p0, Lcom/android/launcher2/ShortcutsAdapter;->mInfo:Lcom/android/launcher2/UserFolderInfo;

    #v7=(Reference);
    iget-object v7, v7, Lcom/android/launcher2/UserFolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    #v3=(Integer);v4=(Reference);v5=(Conflicted);v8=(Conflicted);
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    #v7=(Boolean);
    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    #v5=(Reference);
    check-cast v5, Lcom/android/launcher2/ShortcutInfo;

    .line 92
    .local v5, si:Lcom/android/launcher2/ShortcutInfo;
    iget-object v7, v5, Lcom/android/launcher2/ShortcutInfo;->title:Ljava/lang/CharSequence;

    #v7=(Reference);
    if-nez v7, :cond_0

    const-string v7, ""

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    #v8=(Reference);
    invoke-interface {v0, v7, v8}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget v7, v5, Lcom/android/launcher2/ShortcutInfo;->launchCount:I

    #v7=(Integer);
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    #v7=(Reference);
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v2, v7, v8}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 92
    :cond_0
    #v8=(Conflicted);
    iget-object v7, v5, Lcom/android/launcher2/ShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 96
    .end local v5           #si:Lcom/android/launcher2/ShortcutInfo;
    :cond_1
    #v5=(Conflicted);v7=(Boolean);
    invoke-interface {v0}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v7

    #v7=(Reference);
    invoke-interface {v7}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v7

    iput-object v7, p0, Lcom/android/launcher2/ShortcutsAdapter;->mAbcMap:[Ljava/lang/Object;

    .line 97
    invoke-interface {v2}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v7

    iput-object v7, p0, Lcom/android/launcher2/ShortcutsAdapter;->mFrequencyMap:[Ljava/lang/Object;

    .line 98
    return-void
.end method

.method private getSortedPosition(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/launcher2/ShortcutsAdapter;->mInfo:Lcom/android/launcher2/UserFolderInfo;

    #v0=(Reference);
    iget v0, v0, Lcom/android/launcher2/UserFolderInfo;->sortMode:I

    #v0=(Integer);
    packed-switch v0, :pswitch_data_0

    .line 82
    const/4 v0, 0x0

    .end local p0
    :goto_0
    return v0

    .restart local p0
    :pswitch_0
    move v0, p1

    .line 76
    goto :goto_0

    .line 78
    :pswitch_1
    iget-object v0, p0, Lcom/android/launcher2/ShortcutsAdapter;->mAbcMap:[Ljava/lang/Object;

    #v0=(Reference);
    aget-object p0, v0, p1

    .end local p0
    #p0=(Null);
    check-cast p0, Ljava/lang/Integer;

    #p0=(Reference);
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    #v0=(Integer);
    goto :goto_0

    .line 80
    .restart local p0
    :pswitch_2
    iget-object v0, p0, Lcom/android/launcher2/ShortcutsAdapter;->mFrequencyMap:[Ljava/lang/Object;

    #v0=(Reference);
    aget-object p0, v0, p1

    .end local p0
    #p0=(Null);
    check-cast p0, Ljava/lang/Integer;

    #p0=(Reference);
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    #v0=(Integer);
    goto :goto_0

    .line 74
    #v0=(Unknown);p0=(Unknown);p1=(Unknown);
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public enforceShow(Z)V
    .locals 0
    .parameter "isEnforced"

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/android/launcher2/ShortcutsAdapter;->mEnforceShow:Z

    .line 102
    return-void
.end method

.method public getItem(I)Lcom/android/launcher2/ShortcutInfo;
    .locals 1
    .parameter "position"

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/android/launcher2/ShortcutsAdapter;->getSortedPosition(I)I

    move-result v0

    #v0=(Integer);
    invoke-super {p0, v0}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/launcher2/ShortcutInfo;

    return-object p0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lcom/android/launcher2/ShortcutsAdapter;->getItem(I)Lcom/android/launcher2/ShortcutInfo;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v6, 0x0

    .line 117
    #v6=(Null);
    invoke-virtual {p0, p1}, Lcom/android/launcher2/ShortcutsAdapter;->getItem(I)Lcom/android/launcher2/ShortcutInfo;

    move-result-object v2

    .line 118
    .local v2, info:Lcom/android/launcher2/ShortcutInfo;
    #v2=(Reference);
    iget-object v4, p0, Lcom/android/launcher2/ShortcutsAdapter;->mIconCache:Ljava/util/WeakHashMap;

    #v4=(Reference);
    invoke-virtual {v4, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Lcom/android/launcher2/ShortcutIcon;

    .line 119
    .local v1, icon:Lcom/android/launcher2/ShortcutIcon;
    if-nez v1, :cond_0

    .line 120
    const v4, 0x7f030001

    #v4=(Integer);
    iget-object v5, p0, Lcom/android/launcher2/ShortcutsAdapter;->mLauncher:Lcom/android/launcher2/Launcher;

    #v5=(Reference);
    invoke-static {v4, v5, p3, v2}, Lcom/android/launcher2/ShortcutIcon;->fromXml(ILcom/android/launcher2/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher2/ShortcutInfo;)Lcom/android/launcher2/ShortcutIcon;

    move-result-object v1

    .line 121
    invoke-virtual {v1}, Lcom/android/launcher2/ShortcutIcon;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 122
    .local v3, lp:Landroid/view/ViewGroup$LayoutParams;
    #v3=(Reference);
    const/16 v4, 0x82

    #v4=(PosShort);
    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 123
    const/16 v4, 0x73

    #v4=(PosByte);
    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 124
    invoke-virtual {v1, v3}, Lcom/android/launcher2/ShortcutIcon;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    invoke-virtual {v1, v6}, Lcom/android/launcher2/ShortcutIcon;->setFocusable(Z)V

    .line 126
    iget-object v4, p0, Lcom/android/launcher2/ShortcutsAdapter;->mIconCache:Ljava/util/WeakHashMap;

    #v4=(Reference);
    invoke-virtual {v4, v2, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .end local v3           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    #v3=(Conflicted);v5=(Conflicted);
    iget-boolean v4, p0, Lcom/android/launcher2/ShortcutsAdapter;->mEnforceShow:Z

    #v4=(Boolean);
    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/launcher2/ShortcutsAdapter;->mInfo:Lcom/android/launcher2/UserFolderInfo;

    #v4=(Reference);
    iget v4, v4, Lcom/android/launcher2/UserFolderInfo;->itemFlags:I

    #v4=(Integer);
    and-int/lit8 v4, v4, 0x2

    const/4 v5, 0x2

    #v5=(PosByte);
    if-ne v4, v5, :cond_1

    const/4 v4, 0x1

    #v4=(One);
    move v0, v4

    .line 130
    .local v0, hidden:Z
    :goto_0
    #v0=(Boolean);v4=(Integer);v5=(Conflicted);
    if-eqz v0, :cond_2

    const/4 v4, 0x4

    :goto_1
    #v4=(PosByte);
    invoke-virtual {v1, v4}, Lcom/android/launcher2/ShortcutIcon;->setVisibility(I)V

    .line 131
    return-object v1

    .end local v0           #hidden:Z
    :cond_1
    #v0=(Uninit);v4=(Integer);
    move v0, v6

    .line 128
    #v0=(Null);
    goto :goto_0

    .restart local v0       #hidden:Z
    :cond_2
    #v0=(Boolean);
    move v4, v6

    .line 130
    #v4=(Null);
    goto :goto_1
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 111
    invoke-super {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 112
    invoke-direct {p0}, Lcom/android/launcher2/ShortcutsAdapter;->buildSortingMap()V

    .line 113
    return-void
.end method

*/}
