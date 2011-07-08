package com.android.launcher2.gadget; class GlobalSearch {/*

.class public Lcom/android/launcher2/gadget/GlobalSearch;
.super Landroid/widget/FrameLayout;
.source "GlobalSearch.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/launcher2/gadget/Gadget;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 14
    #p0=(Reference);
    const v0, 0x7f03000b

    #v0=(Integer);
    invoke-static {p1, v0, p0}, Lcom/android/launcher2/gadget/GlobalSearch;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 15
    const v0, 0x7f080015

    invoke-virtual {p0, v0}, Lcom/android/launcher2/gadget/GlobalSearch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    .line 20
    #v1=(Null);
    iget-object v2, p0, Lcom/android/launcher2/gadget/GlobalSearch;->mContext:Landroid/content/Context;

    #v2=(Reference);
    const-string v3, "search"

    #v3=(Reference);
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/app/SearchManager;

    .line 21
    .local v0, sm:Landroid/app/SearchManager;
    if-eqz v0, :cond_0

    .line 22
    const/4 v2, 0x0

    #v2=(Null);
    const/4 v5, 0x1

    #v5=(One);
    move-object v3, v1

    #v3=(Null);
    move-object v4, v1

    #v4=(Null);
    invoke-virtual/range {v0 .. v5}, Landroid/app/SearchManager;->startSearch(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;Z)V

    .line 24
    :cond_0
    #v2=(Reference);v3=(Reference);v4=(Conflicted);v5=(Conflicted);
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 42
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 36
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 30
    return-void
.end method

*/}
