package com.android.launcher2; class FolderIcon {/*

.class public Lcom/android/launcher2/FolderIcon;
.super Lcom/android/launcher2/ItemIcon;
.source "FolderIcon.java"

# interfaces
.implements Lcom/android/launcher2/DropTarget;


# instance fields
.field private mCloseIcon:Landroid/graphics/drawable/Drawable;

.field private mCover:Landroid/widget/ImageView;

.field private mIconCache:Lcom/android/launcher2/IconCache;

.field private mInfo:Lcom/android/launcher2/UserFolderInfo;

.field private mItemIcons:[Landroid/widget/ImageView;

.field private mLauncher:Lcom/android/launcher2/Launcher;

.field private mPreviewIconContainer:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/ItemIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    #p0=(Reference);
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/launcher2/LauncherApplication;

    .line 48
    .local v0, app:Lcom/android/launcher2/LauncherApplication;
    invoke-virtual {v0}, Lcom/android/launcher2/LauncherApplication;->getIconCache()Lcom/android/launcher2/IconCache;

    move-result-object v1

    #v1=(Reference);
    iput-object v1, p0, Lcom/android/launcher2/FolderIcon;->mIconCache:Lcom/android/launcher2/IconCache;

    .line 49
    return-void
.end method

.method static fromXml(ILcom/android/launcher2/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher2/UserFolderInfo;)Lcom/android/launcher2/FolderIcon;
    .locals 4
    .parameter "resId"
    .parameter "launcher"
    .parameter "group"
    .parameter "folderInfo"

    .prologue
    .line 67
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    #v2=(Reference);
    const/4 v3, 0x0

    #v3=(Null);
    invoke-virtual {v2, p0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/launcher2/FolderIcon;

    .line 69
    .local v0, icon:Lcom/android/launcher2/FolderIcon;
    invoke-virtual {p1}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 70
    .local v1, resources:Landroid/content/res/Resources;
    #v1=(Reference);
    const v2, 0x7f020067

    #v2=(Integer);
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    #v2=(Reference);
    iput-object v2, v0, Lcom/android/launcher2/FolderIcon;->mCloseIcon:Landroid/graphics/drawable/Drawable;

    .line 71
    iget-object v2, v0, Lcom/android/launcher2/FolderIcon;->mCloseIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Lcom/android/launcher2/FolderIcon;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 72
    iget-object v2, p3, Lcom/android/launcher2/UserFolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Lcom/android/launcher2/FolderIcon;->setTitle(Ljava/lang/CharSequence;)V

    .line 73
    invoke-virtual {v0, p3}, Lcom/android/launcher2/FolderIcon;->setTag(Ljava/lang/Object;)V

    .line 74
    iput-object p3, v0, Lcom/android/launcher2/FolderIcon;->mInfo:Lcom/android/launcher2/UserFolderInfo;

    .line 75
    iput-object p1, v0, Lcom/android/launcher2/FolderIcon;->mLauncher:Lcom/android/launcher2/Launcher;

    .line 76
    invoke-virtual {v0}, Lcom/android/launcher2/FolderIcon;->loadItemIcons()V

    .line 77
    return-object v0
.end method

.method private isDropable(Lcom/android/launcher2/ItemInfo;)Z
    .locals 5
    .parameter "dragInfo"

    .prologue
    const/4 v4, 0x1

    .line 126
    #v4=(One);
    iget v0, p1, Lcom/android/launcher2/ItemInfo;->itemType:I

    #v0=(Integer);
    if-eqz v0, :cond_0

    iget v0, p1, Lcom/android/launcher2/ItemInfo;->itemType:I

    if-ne v0, v4, :cond_1

    :cond_0
    iget-wide v0, p1, Lcom/android/launcher2/ItemInfo;->container:J

    #v0=(LongLo);v1=(LongHi);
    iget-object v2, p0, Lcom/android/launcher2/FolderIcon;->mInfo:Lcom/android/launcher2/UserFolderInfo;

    #v2=(Reference);
    iget-wide v2, v2, Lcom/android/launcher2/UserFolderInfo;->id:J

    #v2=(LongLo);v3=(LongHi);
    cmp-long v0, v0, v2

    #v0=(Byte);
    if-eqz v0, :cond_1

    iget-wide v0, p1, Lcom/android/launcher2/ItemInfo;->container:J

    #v0=(LongLo);
    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    #v0=(Byte);
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/FolderIcon;->mInfo:Lcom/android/launcher2/UserFolderInfo;

    #v0=(Reference);
    iget-boolean v0, v0, Lcom/android/launcher2/UserFolderInfo;->opened:Z

    #v0=(Boolean);
    if-nez v0, :cond_1

    move v0, v4

    :goto_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    return v0

    :cond_1
    #v0=(Integer);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method


# virtual methods
.method public acceptDrop(Lcom/android/launcher2/DragSource;IIIILcom/android/launcher2/DragView;Lcom/android/launcher2/ItemInfo;)Z
    .locals 1
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    .line 122
    invoke-direct {p0, p7}, Lcom/android/launcher2/FolderIcon;->isDropable(Lcom/android/launcher2/ItemInfo;)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public getHitRect(Landroid/graphics/Rect;)V
    .locals 4
    .parameter "outRect"

    .prologue
    .line 170
    iget v0, p0, Lcom/android/launcher2/FolderIcon;->mLeft:I

    #v0=(Integer);
    iget-object v1, p0, Lcom/android/launcher2/FolderIcon;->mIcon:Landroid/widget/ImageView;

    #v1=(Reference);
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLeft()I

    move-result v1

    #v1=(Integer);
    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher2/FolderIcon;->mTop:I

    iget v2, p0, Lcom/android/launcher2/FolderIcon;->mLeft:I

    #v2=(Integer);
    iget-object v3, p0, Lcom/android/launcher2/FolderIcon;->mIcon:Landroid/widget/ImageView;

    #v3=(Reference);
    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    #v3=(Integer);
    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/launcher2/FolderIcon;->mIcon:Landroid/widget/ImageView;

    #v3=(Reference);
    invoke-virtual {v3}, Landroid/widget/ImageView;->getLeft()I

    move-result v3

    #v3=(Integer);
    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/launcher2/FolderIcon;->mBottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 171
    return-void
.end method

.method loadItemIcons()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 81
    #v4=(Null);
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    #v0=(Integer);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    iget-object v1, p0, Lcom/android/launcher2/FolderIcon;->mItemIcons:[Landroid/widget/ImageView;

    #v1=(Reference);
    array-length v1, v1

    #v1=(Integer);
    if-ge v0, v1, :cond_2

    .line 82
    iget-object v1, p0, Lcom/android/launcher2/FolderIcon;->mInfo:Lcom/android/launcher2/UserFolderInfo;

    #v1=(Reference);
    iget v1, v1, Lcom/android/launcher2/UserFolderInfo;->itemFlags:I

    #v1=(Integer);
    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x2

    #v2=(PosByte);
    if-ne v1, v2, :cond_0

    .line 84
    iget-object v1, p0, Lcom/android/launcher2/FolderIcon;->mItemIcons:[Landroid/widget/ImageView;

    #v1=(Reference);
    aget-object v1, v1, v0

    #v1=(Null);
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 81
    :goto_1
    #v1=(Reference);
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 85
    :cond_0
    #v1=(Integer);
    iget-object v1, p0, Lcom/android/launcher2/FolderIcon;->mInfo:Lcom/android/launcher2/UserFolderInfo;

    #v1=(Reference);
    invoke-virtual {v1}, Lcom/android/launcher2/UserFolderInfo;->count()I

    move-result v1

    #v1=(Integer);
    if-le v1, v0, :cond_1

    .line 86
    iget-object v1, p0, Lcom/android/launcher2/FolderIcon;->mItemIcons:[Landroid/widget/ImageView;

    #v1=(Reference);
    aget-object v2, v1, v0

    #v2=(Null);
    iget-object v1, p0, Lcom/android/launcher2/FolderIcon;->mInfo:Lcom/android/launcher2/UserFolderInfo;

    iget-object v1, v1, Lcom/android/launcher2/UserFolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/ShortcutInfo;

    iget-object v3, p0, Lcom/android/launcher2/FolderIcon;->mIconCache:Lcom/android/launcher2/IconCache;

    #v3=(Reference);
    invoke-virtual {v1, v3}, Lcom/android/launcher2/ShortcutInfo;->getIcon(Lcom/android/launcher2/IconCache;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 88
    :cond_1
    #v1=(Integer);v2=(PosByte);v3=(Conflicted);
    iget-object v1, p0, Lcom/android/launcher2/FolderIcon;->mItemIcons:[Landroid/widget/ImageView;

    #v1=(Reference);
    aget-object v1, v1, v0

    #v1=(Null);
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 91
    :cond_2
    #v1=(Integer);v2=(Conflicted);
    return-void
.end method

.method public onClose()V
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/launcher2/FolderIcon;->mCover:Landroid/widget/ImageView;

    #v0=(Reference);
    const v1, 0x7f020019

    #v1=(Integer);
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 166
    iget-object v0, p0, Lcom/android/launcher2/FolderIcon;->mCover:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 167
    return-void
.end method

.method public onDragEnter(Lcom/android/launcher2/DragSource;IIIILcom/android/launcher2/DragView;Lcom/android/launcher2/ItemInfo;)V
    .locals 2
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    .line 143
    invoke-direct {p0, p7}, Lcom/android/launcher2/FolderIcon;->isDropable(Lcom/android/launcher2/ItemInfo;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/android/launcher2/FolderIcon;->mCover:Landroid/widget/ImageView;

    #v0=(Reference);
    const v1, 0x7f02001b

    #v1=(Integer);
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 145
    iget-object v0, p0, Lcom/android/launcher2/FolderIcon;->mCover:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 147
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);
    return-void
.end method

.method public onDragExit(Lcom/android/launcher2/DragSource;IIIILcom/android/launcher2/DragView;Lcom/android/launcher2/ItemInfo;)V
    .locals 2
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/launcher2/FolderIcon;->mCover:Landroid/widget/ImageView;

    #v0=(Reference);
    const v1, 0x7f02001a

    #v1=(Integer);
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 156
    iget-object v0, p0, Lcom/android/launcher2/FolderIcon;->mCover:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 157
    return-void
.end method

.method public onDragOver(Lcom/android/launcher2/DragSource;IIIILcom/android/launcher2/DragView;Lcom/android/launcher2/ItemInfo;)V
    .locals 0
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    .line 151
    return-void
.end method

.method public onDrop(Lcom/android/launcher2/DragSource;IIIILcom/android/launcher2/DragView;Lcom/android/launcher2/ItemInfo;)Z
    .locals 9
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    const/4 v7, 0x0

    .line 134
    #v7=(Null);
    move-object/from16 v0, p7

    #v0=(Reference);
    check-cast v0, Lcom/android/launcher2/ShortcutInfo;

    move-object v2, v0

    .line 135
    .local v2, item:Lcom/android/launcher2/ShortcutInfo;
    #v2=(Reference);
    iget-object v1, p0, Lcom/android/launcher2/FolderIcon;->mInfo:Lcom/android/launcher2/UserFolderInfo;

    #v1=(Reference);
    invoke-virtual {v1, v2}, Lcom/android/launcher2/UserFolderInfo;->add(Lcom/android/launcher2/ShortcutInfo;)V

    .line 136
    iget-object v1, p0, Lcom/android/launcher2/FolderIcon;->mLauncher:Lcom/android/launcher2/Launcher;

    iget-object v3, p0, Lcom/android/launcher2/FolderIcon;->mInfo:Lcom/android/launcher2/UserFolderInfo;

    #v3=(Reference);
    iget-wide v3, v3, Lcom/android/launcher2/UserFolderInfo;->id:J

    #v3=(LongLo);v4=(LongHi);
    const-wide/16 v5, 0x0

    #v5=(LongLo);v6=(LongHi);
    move v8, v7

    #v8=(Null);
    invoke-static/range {v1 .. v8}, Lcom/android/launcher2/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;JJII)Z

    .line 137
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIcon;->loadItemIcons()V

    .line 138
    const/4 v1, 0x1

    #v1=(One);
    return v1
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 53
    invoke-super {p0}, Lcom/android/launcher2/ItemIcon;->onFinishInflate()V

    .line 54
    const/4 v0, 0x4

    #v0=(PosByte);
    new-array v1, v0, [Landroid/widget/ImageView;

    #v1=(Reference);
    const/4 v2, 0x0

    #v2=(Null);
    const v0, 0x7f08000c

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/launcher2/FolderIcon;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    const/4 v2, 0x1

    #v2=(One);
    const v0, 0x7f08000d

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/launcher2/FolderIcon;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    const/4 v2, 0x2

    #v2=(PosByte);
    const v0, 0x7f08000e

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/launcher2/FolderIcon;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    const/4 v2, 0x3

    const v0, 0x7f08000f

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/launcher2/FolderIcon;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    iput-object v1, p0, Lcom/android/launcher2/FolderIcon;->mItemIcons:[Landroid/widget/ImageView;

    .line 60
    const v0, 0x7f080010

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/launcher2/FolderIcon;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher2/FolderIcon;->mCover:Landroid/widget/ImageView;

    .line 61
    const v0, 0x7f08000b

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/launcher2/FolderIcon;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/launcher2/FolderIcon;->mPreviewIconContainer:Landroid/widget/LinearLayout;

    .line 62
    return-void
.end method

.method protected onMeasure(II)V
    .locals 11
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v10, 0x4000

    #v10=(Integer);
    const/high16 v9, 0x3f40

    #v9=(Integer);
    const/4 v8, 0x0

    .line 99
    #v8=(Null);
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/ItemIcon;->onMeasure(II)V

    .line 100
    iget-object v5, p0, Lcom/android/launcher2/FolderIcon;->mIcon:Landroid/widget/ImageView;

    #v5=(Reference);
    invoke-virtual {v5}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    .line 102
    .local v1, iconWidth:I
    #v1=(Integer);
    iget-object v5, p0, Lcom/android/launcher2/FolderIcon;->mPreviewIconContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    #v4=(Reference);
    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 103
    .local v4, lpPreview:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v5, p0, Lcom/android/launcher2/FolderIcon;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    #v3=(Reference);
    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 104
    .local v3, lpIcon:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v5, p0, Lcom/android/launcher2/FolderIcon;->mCover:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    #v2=(Reference);
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 105
    .local v2, lpCover:Landroid/widget/FrameLayout$LayoutParams;
    iget v0, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 106
    .local v0, containerTopMargin:I
    #v0=(Integer);
    int-to-float v5, v1

    #v5=(Float);
    const v6, 0x3e051eb8

    #v6=(Integer);
    mul-float/2addr v5, v6

    float-to-int v5, v5

    #v5=(Integer);
    add-int/2addr v0, v5

    .line 107
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIcon;->isCompact()Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_0

    .line 108
    int-to-float v5, v0

    #v5=(Float);
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIcon;->getMeasuredHeight()I

    move-result v6

    sub-int/2addr v6, v1

    iget v7, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    #v7=(Integer);
    sub-int/2addr v6, v7

    int-to-float v6, v6

    #v6=(Float);
    const v7, 0x3ec28f5c

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    float-to-int v0, v5

    .line 111
    :cond_0
    #v6=(Integer);v7=(Conflicted);
    invoke-virtual {v4, v8, v0, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 112
    iget-object v5, p0, Lcom/android/launcher2/FolderIcon;->mPreviewIconContainer:Landroid/widget/LinearLayout;

    #v5=(Reference);
    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    iget-object v5, p0, Lcom/android/launcher2/FolderIcon;->mPreviewIconContainer:Landroid/widget/LinearLayout;

    int-to-float v6, v1

    #v6=(Float);
    mul-float/2addr v6, v9

    float-to-int v6, v6

    #v6=(Integer);
    invoke-static {v6, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    int-to-float v7, v1

    #v7=(Float);
    mul-float/2addr v7, v9

    float-to-int v7, v7

    #v7=(Integer);
    invoke-static {v7, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/widget/LinearLayout;->measure(II)V

    .line 116
    iget v5, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    #v5=(Integer);
    invoke-virtual {v2, v8, v5, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 117
    iget-object v5, p0, Lcom/android/launcher2/FolderIcon;->mCover:Landroid/widget/ImageView;

    #v5=(Reference);
    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    return-void
.end method

.method public onOpen()V
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/launcher2/FolderIcon;->mCover:Landroid/widget/ImageView;

    #v0=(Reference);
    const v1, 0x7f02001c

    #v1=(Integer);
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 161
    iget-object v0, p0, Lcom/android/launcher2/FolderIcon;->mCover:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 162
    return-void
.end method

*/}
