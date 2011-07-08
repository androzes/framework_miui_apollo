package com.android.launcher2; class WidgetThumbnailViewAdapter {/*

.class public Lcom/android/launcher2/WidgetThumbnailViewAdapter;
.super Lcom/android/launcher2/ThumbnailViewAdapter;
.source "WidgetThumbnailViewAdapter.java"


# static fields
.field private static final WIDGET_OFFSET:I


# instance fields
.field private cellSize:I

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLauncher:Lcom/android/launcher2/Launcher;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mResources:Landroid/content/res/Resources;

.field private mWidgetList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mWidgetSizeDrawableIds:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    invoke-static {}, Lcom/android/launcher2/gadget/GadgetFactory;->getGadgetIdList()[I

    move-result-object v0

    #v0=(Reference);
    array-length v0, v0

    #v0=(Integer);
    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/launcher2/WidgetThumbnailViewAdapter;->WIDGET_OFFSET:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/launcher2/ThumbnailViewAdapter;-><init>(Landroid/content/Context;)V

    .line 45
    #p0=(Reference);
    const-string v5, "layout_inflater"

    #v5=(Reference);
    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    iput-object v5, p0, Lcom/android/launcher2/WidgetThumbnailViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher2/WidgetThumbnailViewAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 47
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher2/WidgetThumbnailViewAdapter;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher2/WidgetThumbnailViewAdapter;->mResources:Landroid/content/res/Resources;

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 52
    .local v4, packageName:Ljava/lang/String;
    #v4=(Reference);
    iget-object v5, p0, Lcom/android/launcher2/WidgetThumbnailViewAdapter;->mResources:Landroid/content/res/Resources;

    const/high16 v6, 0x7f07

    #v6=(Integer);
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 53
    .local v2, drawableNames:[Ljava/lang/String;
    #v2=(Reference);
    array-length v5, v2

    #v5=(Integer);
    new-array v5, v5, [I

    #v5=(Reference);
    iput-object v5, p0, Lcom/android/launcher2/WidgetThumbnailViewAdapter;->mWidgetSizeDrawableIds:[I

    .line 54
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    #v3=(Integer);v7=(Conflicted);v8=(Conflicted);
    array-length v5, v2

    #v5=(Integer);
    if-ge v3, v5, :cond_0

    .line 55
    iget-object v5, p0, Lcom/android/launcher2/WidgetThumbnailViewAdapter;->mWidgetSizeDrawableIds:[I

    #v5=(Reference);
    iget-object v6, p0, Lcom/android/launcher2/WidgetThumbnailViewAdapter;->mResources:Landroid/content/res/Resources;

    #v6=(Reference);
    aget-object v7, v2, v3

    #v7=(Null);
    const-string v8, "drawable"

    #v8=(Reference);
    invoke-virtual {v6, v7, v8, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    #v6=(Integer);
    aput v6, v5, v3

    .line 54
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 60
    :cond_0
    #v5=(Integer);v7=(Conflicted);v8=(Conflicted);
    iget-object v5, p0, Lcom/android/launcher2/WidgetThumbnailViewAdapter;->mResources:Landroid/content/res/Resources;

    #v5=(Reference);
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher2/WidgetThumbnailViewAdapter;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 61
    iget-object v5, p0, Lcom/android/launcher2/WidgetThumbnailViewAdapter;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f0b000c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 62
    .local v1, cellWidth:I
    #v1=(Integer);
    iget-object v5, p0, Lcom/android/launcher2/WidgetThumbnailViewAdapter;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f0b000d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 63
    .local v0, cellHeight:I
    #v0=(Integer);
    const/4 v5, 0x1

    #v5=(One);
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    #v5=(Integer);
    iput v5, p0, Lcom/android/launcher2/WidgetThumbnailViewAdapter;->cellSize:I

    .line 65
    invoke-virtual {p0}, Lcom/android/launcher2/WidgetThumbnailViewAdapter;->reloadWidgets()V

    .line 66
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 88
    sget v0, Lcom/android/launcher2/WidgetThumbnailViewAdapter;->WIDGET_OFFSET:I

    #v0=(Integer);
    iget-object v1, p0, Lcom/android/launcher2/WidgetThumbnailViewAdapter;->mWidgetList:Ljava/util/List;

    #v1=(Reference);
    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/WidgetThumbnailViewAdapter;->mWidgetList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    #v1=(Integer);
    add-int/2addr v0, v1

    return v0

    :cond_0
    #v1=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    goto :goto_0
.end method

.method public getItem(I)Landroid/view/View;
    .locals 1
    .parameter "position"

    .prologue
    .line 93
    const/4 v0, 0x0

    #v0=(Null);
    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/android/launcher2/WidgetThumbnailViewAdapter;->getItem(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 13
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 98
    iget-object v8, p0, Lcom/android/launcher2/WidgetThumbnailViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    #v8=(Reference);
    const v9, 0x7f03001e

    #v9=(Integer);
    const/4 v10, 0x0

    #v10=(Null);
    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    #v4=(Reference);
    check-cast v4, Lcom/android/launcher2/OnLongClickWrapper;

    .line 99
    .local v4, resultView:Lcom/android/launcher2/OnLongClickWrapper;
    iget-object v8, p0, Lcom/android/launcher2/WidgetThumbnailViewAdapter;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v4, v8}, Lcom/android/launcher2/OnLongClickWrapper;->setLauncher(Lcom/android/launcher2/Launcher;)V

    .line 101
    if-nez p1, :cond_0

    .line 103
    const v8, 0x7f080051

    #v8=(Integer);
    invoke-virtual {v4, v8}, Lcom/android/launcher2/OnLongClickWrapper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/widget/ImageView;

    .line 104
    .local v0, icon:Landroid/widget/ImageView;
    const v8, 0x7f02008c

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 107
    const v8, 0x7f080052

    invoke-virtual {v4, v8}, Lcom/android/launcher2/OnLongClickWrapper;->findViewById(I)Landroid/view/View;

    move-result-object v7

    #v7=(Reference);
    check-cast v7, Landroid/widget/TextView;

    .line 108
    .local v7, title:Landroid/widget/TextView;
    const v8, 0x7f0c0004

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 109
    const/4 v8, 0x0

    #v8=(Null);
    const/4 v9, 0x0

    #v9=(Null);
    iget-object v10, p0, Lcom/android/launcher2/WidgetThumbnailViewAdapter;->mWidgetSizeDrawableIds:[I

    #v10=(Reference);
    const/4 v11, 0x0

    #v11=(Null);
    aget v10, v10, v11

    #v10=(Integer);
    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 150
    :goto_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v5=(Conflicted);v6=(Conflicted);v12=(Conflicted);
    return-object v4

    .line 111
    .end local v0           #icon:Landroid/widget/ImageView;
    .end local v7           #title:Landroid/widget/TextView;
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Reference);v9=(Integer);v10=(Null);v11=(Uninit);v12=(Uninit);
    sget v8, Lcom/android/launcher2/WidgetThumbnailViewAdapter;->WIDGET_OFFSET:I

    #v8=(Integer);
    if-le v8, p1, :cond_1

    .line 112
    invoke-static {}, Lcom/android/launcher2/gadget/GadgetFactory;->getGadgetIdList()[I

    move-result-object v8

    #v8=(Reference);
    const/4 v9, 0x1

    #v9=(One);
    sub-int v9, p1, v9

    #v9=(Integer);
    aget v2, v8, v9

    .line 113
    .local v2, id:I
    #v2=(Integer);
    invoke-static {v2}, Lcom/android/launcher2/gadget/GadgetFactory;->getInfo(I)Lcom/android/launcher2/gadget/GadgetInfo;

    move-result-object v3

    .line 114
    .local v3, info:Lcom/android/launcher2/gadget/GadgetInfo;
    #v3=(Reference);
    invoke-virtual {v4, v3}, Lcom/android/launcher2/OnLongClickWrapper;->setTag(Ljava/lang/Object;)V

    .line 117
    const v8, 0x7f080051

    #v8=(Integer);
    invoke-virtual {v4, v8}, Lcom/android/launcher2/OnLongClickWrapper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/widget/ImageView;

    .line 118
    .restart local v0       #icon:Landroid/widget/ImageView;
    iget v8, v3, Lcom/android/launcher2/gadget/GadgetInfo;->mIconId:I

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 120
    const v8, 0x7f080052

    invoke-virtual {v4, v8}, Lcom/android/launcher2/OnLongClickWrapper;->findViewById(I)Landroid/view/View;

    move-result-object v7

    #v7=(Reference);
    check-cast v7, Landroid/widget/TextView;

    .line 121
    .restart local v7       #title:Landroid/widget/TextView;
    iget v8, v3, Lcom/android/launcher2/gadget/GadgetInfo;->mTitleId:I

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 122
    const/4 v8, 0x0

    #v8=(Null);
    const/4 v9, 0x0

    #v9=(Null);
    iget-object v10, p0, Lcom/android/launcher2/WidgetThumbnailViewAdapter;->mWidgetSizeDrawableIds:[I

    #v10=(Reference);
    iget v11, v3, Lcom/android/launcher2/gadget/GadgetInfo;->spanX:I

    #v11=(Integer);
    const/4 v12, 0x1

    #v12=(One);
    sub-int/2addr v11, v12

    mul-int/lit8 v11, v11, 0x4

    iget v12, v3, Lcom/android/launcher2/gadget/GadgetInfo;->spanY:I

    #v12=(Integer);
    add-int/2addr v11, v12

    const/4 v12, 0x1

    #v12=(One);
    sub-int/2addr v11, v12

    aget v10, v10, v11

    #v10=(Integer);
    const/4 v11, 0x0

    #v11=(Null);
    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0

    .line 126
    .end local v0           #icon:Landroid/widget/ImageView;
    .end local v2           #id:I
    .end local v3           #info:Lcom/android/launcher2/gadget/GadgetInfo;
    .end local v7           #title:Landroid/widget/TextView;
    :cond_1
    #v0=(Uninit);v2=(Uninit);v3=(Uninit);v7=(Uninit);v8=(Integer);v9=(Integer);v10=(Null);v11=(Uninit);v12=(Uninit);
    iget-object v8, p0, Lcom/android/launcher2/WidgetThumbnailViewAdapter;->mWidgetList:Ljava/util/List;

    #v8=(Reference);
    sget v9, Lcom/android/launcher2/WidgetThumbnailViewAdapter;->WIDGET_OFFSET:I

    sub-int v9, p1, v9

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    #v3=(Reference);
    check-cast v3, Landroid/appwidget/AppWidgetProviderInfo;

    .line 127
    .local v3, info:Landroid/appwidget/AppWidgetProviderInfo;
    new-instance v8, Lcom/android/launcher2/LauncherAppWidgetProviderInfo;

    #v8=(UninitRef);
    invoke-direct {v8, v3}, Lcom/android/launcher2/LauncherAppWidgetProviderInfo;-><init>(Landroid/appwidget/AppWidgetProviderInfo;)V

    #v8=(Reference);
    invoke-virtual {v4, v8}, Lcom/android/launcher2/OnLongClickWrapper;->setTag(Ljava/lang/Object;)V

    .line 130
    const v8, 0x7f080051

    #v8=(Integer);
    invoke-virtual {v4, v8}, Lcom/android/launcher2/OnLongClickWrapper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/widget/ImageView;

    .line 131
    .restart local v0       #icon:Landroid/widget/ImageView;
    iget-object v8, p0, Lcom/android/launcher2/WidgetThumbnailViewAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    #v8=(Reference);
    iget-object v9, v3, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    #v9=(Reference);
    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    iget v10, v3, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    #v10=(Integer);
    const/4 v11, 0x0

    #v11=(Null);
    invoke-virtual {v8, v9, v10, v11}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 132
    .local v1, iconDrawable:Landroid/graphics/drawable/Drawable;
    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 135
    const v8, 0x7f080052

    #v8=(Integer);
    invoke-virtual {v4, v8}, Lcom/android/launcher2/OnLongClickWrapper;->findViewById(I)Landroid/view/View;

    move-result-object v7

    #v7=(Reference);
    check-cast v7, Landroid/widget/TextView;

    .line 136
    .restart local v7       #title:Landroid/widget/TextView;
    iget-object v8, v3, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    #v8=(Reference);
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget v8, v3, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    #v8=(Integer);
    iget-object v9, p0, Lcom/android/launcher2/WidgetThumbnailViewAdapter;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v8, v9}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v8

    iput v8, v3, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    .line 140
    iget v8, v3, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    iget-object v9, p0, Lcom/android/launcher2/WidgetThumbnailViewAdapter;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v8, v9}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v8

    iput v8, v3, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    .line 143
    iget v8, v3, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    iget v9, p0, Lcom/android/launcher2/WidgetThumbnailViewAdapter;->cellSize:I

    #v9=(Integer);
    div-int/2addr v8, v9

    const/4 v9, 0x3

    #v9=(PosByte);
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 144
    .local v5, spanX:I
    #v5=(Integer);
    iget v8, v3, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    iget v9, p0, Lcom/android/launcher2/WidgetThumbnailViewAdapter;->cellSize:I

    #v9=(Integer);
    div-int/2addr v8, v9

    const/4 v9, 0x3

    #v9=(PosByte);
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 147
    .local v6, spanY:I
    #v6=(Integer);
    const/4 v8, 0x0

    #v8=(Null);
    const/4 v9, 0x0

    #v9=(Null);
    iget-object v10, p0, Lcom/android/launcher2/WidgetThumbnailViewAdapter;->mWidgetSizeDrawableIds:[I

    #v10=(Reference);
    mul-int/lit8 v11, v5, 0x4

    #v11=(Integer);
    add-int/2addr v11, v6

    aget v10, v10, v11

    #v10=(Integer);
    const/4 v11, 0x0

    #v11=(Null);
    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/16 :goto_0
.end method

.method public reloadWidgets()V
    .locals 4

    .prologue
    .line 73
    iget-object v2, p0, Lcom/android/launcher2/WidgetThumbnailViewAdapter;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    #v2=(Reference);
    invoke-virtual {v2}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/WidgetThumbnailViewAdapter;->mWidgetList:Ljava/util/List;

    .line 75
    iget-object v2, p0, Lcom/android/launcher2/WidgetThumbnailViewAdapter;->mWidgetList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    #v2=(Integer);
    const/4 v3, 0x1

    #v3=(One);
    sub-int v0, v2, v3

    .local v0, i:I
    :goto_0
    #v0=(Integer);v1=(Conflicted);v3=(Conflicted);
    if-lez v0, :cond_0

    .line 76
    iget-object v2, p0, Lcom/android/launcher2/WidgetThumbnailViewAdapter;->mWidgetList:Ljava/util/List;

    #v2=(Reference);
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Landroid/appwidget/AppWidgetProviderInfo;

    .line 77
    .local v1, info:Landroid/appwidget/AppWidgetProviderInfo;
    const-string v2, "com.miui.player"

    iget-object v3, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    #v3=(Reference);
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_1

    .line 78
    iget-object v2, p0, Lcom/android/launcher2/WidgetThumbnailViewAdapter;->mWidgetList:Ljava/util/List;

    #v2=(Reference);
    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 79
    iget-object v2, p0, Lcom/android/launcher2/WidgetThumbnailViewAdapter;->mWidgetList:Ljava/util/List;

    const/4 v3, 0x0

    #v3=(Null);
    invoke-interface {v2, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 83
    .end local v1           #info:Landroid/appwidget/AppWidgetProviderInfo;
    :cond_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    invoke-virtual {p0}, Lcom/android/launcher2/WidgetThumbnailViewAdapter;->notifyDataSetChanged()V

    .line 84
    return-void

    .line 75
    .restart local v1       #info:Landroid/appwidget/AppWidgetProviderInfo;
    :cond_1
    #v1=(Reference);v2=(Boolean);v3=(Reference);
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method setLauncher(Lcom/android/launcher2/Launcher;)V
    .locals 0
    .parameter "launcher"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/launcher2/WidgetThumbnailViewAdapter;->mLauncher:Lcom/android/launcher2/Launcher;

    .line 70
    return-void
.end method

*/}
