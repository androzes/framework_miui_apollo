package com.android.launcher2; class Folder$1 {/*

.class Lcom/android/launcher2/Folder$1;
.super Ljava/lang/Object;
.source "Folder.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Folder;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Folder;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Folder;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/launcher2/Folder$1;->this$0:Lcom/android/launcher2/Folder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 95
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 87
    iget-object v1, p0, Lcom/android/launcher2/Folder$1;->this$0:Lcom/android/launcher2/Folder;

    #v1=(Reference);
    invoke-virtual {v1}, Lcom/android/launcher2/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 88
    .local v0, p:Landroid/view/ViewParent;
    #v0=(Reference);
    instance-of v1, v0, Lcom/android/launcher2/CellLayout;

    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 89
    check-cast v0, Lcom/android/launcher2/CellLayout;

    .end local v0           #p:Landroid/view/ViewParent;
    if-eqz p2, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->setDisableDrawingCacheTemporary(Z)V

    .line 91
    :cond_0
    return-void

    .line 89
    :cond_1
    const/4 v1, 0x0

    #v1=(Null);
    goto :goto_0
.end method

*/}
