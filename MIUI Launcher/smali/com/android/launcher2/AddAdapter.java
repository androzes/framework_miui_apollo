package com.android.launcher2; class AddAdapter {/*

.class public Lcom/android/launcher2/AddAdapter;
.super Landroid/widget/BaseAdapter;
.source "AddAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/AddAdapter$ListItem;
    }
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/AddAdapter$ListItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/launcher2/Launcher;)V
    .locals 7
    .parameter "launcher"

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 39
    #p0=(Reference);
    new-instance v0, Ljava/util/ArrayList;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/launcher2/AddAdapter;->mItems:Ljava/util/ArrayList;

    .line 68
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Lcom/android/launcher2/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/launcher2/AddAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 71
    invoke-virtual {p1}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 73
    .local v2, res:Landroid/content/res/Resources;
    #v2=(Reference);
    iget-object v6, p0, Lcom/android/launcher2/AddAdapter;->mItems:Ljava/util/ArrayList;

    #v6=(Reference);
    new-instance v0, Lcom/android/launcher2/AddAdapter$ListItem;

    #v0=(UninitRef);
    const v3, 0x7f0c0010

    #v3=(Integer);
    const v4, 0x7f02005f

    #v4=(Integer);
    const/4 v5, 0x0

    #v5=(Null);
    move-object v1, p0

    #v1=(Reference);
    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/AddAdapter$ListItem;-><init>(Lcom/android/launcher2/AddAdapter;Landroid/content/res/Resources;III)V

    #v0=(Reference);
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v6, p0, Lcom/android/launcher2/AddAdapter;->mItems:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/launcher2/AddAdapter$ListItem;

    #v0=(UninitRef);
    const v3, 0x7f0c0013

    const v4, 0x7f02005d

    const/4 v5, 0x1

    #v5=(One);
    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/AddAdapter$ListItem;-><init>(Lcom/android/launcher2/AddAdapter;Landroid/content/res/Resources;III)V

    #v0=(Reference);
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object v6, p0, Lcom/android/launcher2/AddAdapter;->mItems:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/launcher2/AddAdapter$ListItem;

    #v0=(UninitRef);
    const v3, 0x7f0c0012

    const v4, 0x7f02005e

    const/4 v5, 0x2

    #v5=(PosByte);
    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/AddAdapter$ListItem;-><init>(Lcom/android/launcher2/AddAdapter;Landroid/content/res/Resources;III)V

    #v0=(Reference);
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object v6, p0, Lcom/android/launcher2/AddAdapter;->mItems:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/launcher2/AddAdapter$ListItem;

    #v0=(UninitRef);
    const v3, 0x7f0c0014

    const v4, 0x7f020060

    const/4 v5, 0x3

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/AddAdapter$ListItem;-><init>(Lcom/android/launcher2/AddAdapter;Landroid/content/res/Resources;III)V

    #v0=(Reference);
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/launcher2/AddAdapter;->mItems:Ljava/util/ArrayList;

    #v0=(Reference);
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/launcher2/AddAdapter;->mItems:Ljava/util/ArrayList;

    #v0=(Reference);
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 111
    int-to-long v0, p1

    #v0=(LongLo);v1=(LongHi);
    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v6, 0x0

    .line 88
    #v6=(Null);
    invoke-virtual {p0, p1}, Lcom/android/launcher2/AddAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Lcom/android/launcher2/AddAdapter$ListItem;

    .line 90
    .local v1, item:Lcom/android/launcher2/AddAdapter$ListItem;
    if-nez p2, :cond_0

    .line 91
    iget-object v3, p0, Lcom/android/launcher2/AddAdapter;->mInflater:Landroid/view/LayoutInflater;

    #v3=(Reference);
    const/high16 v4, 0x7f03

    #v4=(Integer);
    const/4 v5, 0x0

    #v5=(Null);
    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 94
    :cond_0
    #v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    move-object v0, p2

    #v0=(Reference);
    check-cast v0, Landroid/widget/TextView;

    move-object v2, v0

    .line 95
    .local v2, textView:Landroid/widget/TextView;
    #v2=(Reference);
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 96
    iget-object v3, v1, Lcom/android/launcher2/AddAdapter$ListItem;->text:Ljava/lang/CharSequence;

    #v3=(Reference);
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v3, v1, Lcom/android/launcher2/AddAdapter$ListItem;->image:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 99
    return-object p2
.end method

*/}
