package com.android.launcher2; class Workspace {/*

.class public Lcom/android/launcher2/Workspace;
.super Lcom/android/launcher2/DragableScreenView;
.source "Workspace.java"

# interfaces
.implements Lcom/android/launcher2/DragSource;
.implements Lcom/android/launcher2/DropTarget;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;
    }
.end annotation


# instance fields
.field private mDefaultScreenId:J

.field private mDelayedBuildChildCacheRunnable:Ljava/lang/Runnable;

.field private mDragController:Lcom/android/launcher2/DragController;

.field private mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

.field private mEditingPreview:Lcom/android/launcher2/WorkspaceEditingPreview;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mLauncher:Lcom/android/launcher2/Launcher;

.field private mPositionMapping:[I

.field private mPreviousScreen:I

.field private mResolver:Landroid/content/ContentResolver;

.field private mScreenIdMap:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mTempCell:[I

.field private mThumbnailView:Lcom/android/launcher2/WorkspaceThumbnailView;

.field private mThumbnailViewAdapter:Lcom/android/launcher2/ThumbnailViewAdapter;

.field private final mWallpaperManager:Landroid/app/WallpaperManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 113
    const/4 v0, 0x0

    #v0=(Null);
    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/Workspace;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 114
    #p0=(Reference);
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, -0x1

    .line 124
    #v3=(Byte);
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/DragableScreenView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 86
    #p0=(Reference);
    iput v3, p0, Lcom/android/launcher2/Workspace;->mPreviousScreen:I

    .line 102
    const/4 v1, 0x2

    #v1=(PosByte);
    new-array v1, v1, [I

    #v1=(Reference);
    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mTempCell:[I

    .line 862
    new-instance v1, Ljava/util/ArrayList;

    #v1=(UninitRef);
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #v1=(Reference);
    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mScreenIds:Ljava/util/ArrayList;

    .line 863
    new-instance v1, Landroid/util/LongSparseArray;

    #v1=(UninitRef);
    invoke-direct {v1}, Landroid/util/LongSparseArray;-><init>()V

    #v1=(Reference);
    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mScreenIdMap:Landroid/util/LongSparseArray;

    .line 1073
    new-instance v1, Lcom/android/launcher2/Workspace$4;

    #v1=(UninitRef);
    invoke-direct {v1, p0}, Lcom/android/launcher2/Workspace$4;-><init>(Lcom/android/launcher2/Workspace;)V

    #v1=(Reference);
    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mDelayedBuildChildCacheRunnable:Ljava/lang/Runnable;

    .line 126
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mResolver:Landroid/content/ContentResolver;

    .line 128
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 129
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mInflater:Landroid/view/LayoutInflater;

    .line 131
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    #v0=(UninitRef);
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0003

    #v2=(Integer);
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    #v1=(Integer);
    const/16 v2, 0x50

    #v2=(PosByte);
    invoke-direct {v0, v3, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 135
    .local v0, params:Landroid/widget/FrameLayout$LayoutParams;
    #v0=(Reference);
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    #v1=(Reference);
    const v2, 0x7f0b0005

    #v2=(Integer);
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    #v1=(Integer);
    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/Workspace;->setSlideBarPosition(Landroid/widget/FrameLayout$LayoutParams;I)V

    .line 139
    const/4 v1, 0x0

    #v1=(Null);
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->setAnimationCacheEnabled(Z)V

    .line 141
    const/4 v1, 0x1

    #v1=(One);
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->loadScreens(Z)V

    .line 142
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/ThumbnailViewAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mThumbnailViewAdapter:Lcom/android/launcher2/ThumbnailViewAdapter;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Launcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/launcher2/Workspace;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mScreenIds:Ljava/util/ArrayList;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/launcher2/Workspace;)Landroid/util/LongSparseArray;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mScreenIdMap:Landroid/util/LongSparseArray;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/WorkspaceThumbnailView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mThumbnailView:Lcom/android/launcher2/WorkspaceThumbnailView;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/launcher2/Workspace;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mPositionMapping:[I

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/launcher2/Workspace;[I)[I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/launcher2/Workspace;->mPositionMapping:[I

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/launcher2/Workspace;Landroid/view/MotionEvent;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 72
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/Workspace;->setTouchState(Landroid/view/MotionEvent;I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/launcher2/Workspace;Landroid/view/MotionEvent;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 72
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/Workspace;->setTouchState(Landroid/view/MotionEvent;I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/launcher2/Workspace;Landroid/view/MotionEvent;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 72
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/Workspace;->setTouchState(Landroid/view/MotionEvent;I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/launcher2/Workspace;Landroid/view/MotionEvent;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 72
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/Workspace;->setTouchState(Landroid/view/MotionEvent;I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/launcher2/Workspace;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mInflater:Landroid/view/LayoutInflater;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/launcher2/Workspace;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->getDefaultScreenIndex()I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/DragController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragController:Lcom/android/launcher2/DragController;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher2/Workspace;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/launcher2/Workspace;->delayedShowPreview(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/launcher2/Workspace;Landroid/view/MotionEvent;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 72
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/Workspace;->setTouchState(Landroid/view/MotionEvent;I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/launcher2/Workspace;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/android/launcher2/Workspace;->mDefaultScreenId:J

    #v0=(LongLo);v1=(LongHi);
    return-wide v0
.end method

.method static synthetic access$802(Lcom/android/launcher2/Workspace;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-wide p1, p0, Lcom/android/launcher2/Workspace;->mDefaultScreenId:J

    return-wide p1
.end method

.method static synthetic access$900(Lcom/android/launcher2/Workspace;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mResolver:Landroid/content/ContentResolver;

    #v0=(Reference);
    return-object v0
.end method

.method private buildChildCache(Z)V
    .locals 3
    .parameter "isEnable"

    .prologue
    .line 1088
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    #v0=(Integer);v1=(Conflicted);v2=(Conflicted);
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getScreenCount()I

    move-result v2

    #v2=(Integer);
    if-ge v0, v2, :cond_2

    .line 1089
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object v1

    .line 1090
    .local v1, v:Landroid/view/View;
    #v1=(Reference);
    instance-of v2, v1, Lcom/android/launcher2/CellLayout;

    #v2=(Boolean);
    if-eqz v2, :cond_0

    .line 1091
    invoke-virtual {v1, p1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 1092
    check-cast v1, Lcom/android/launcher2/CellLayout;

    .end local v1           #v:Landroid/view/View;
    if-eqz p1, :cond_1

    const/16 v2, 0xa

    #v2=(PosByte);
    if-ge v0, v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    #v2=(Boolean);
    invoke-virtual {v1, v2}, Lcom/android/launcher2/CellLayout;->setEnableDrawingCacheHolding(Z)V

    .line 1088
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1092
    :cond_1
    #v2=(PosByte);
    const/4 v2, 0x0

    #v2=(Null);
    goto :goto_1

    .line 1095
    :cond_2
    #v1=(Conflicted);v2=(Integer);
    if-eqz p1, :cond_3

    .line 1096
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->delayedBuildChildCache()V

    .line 1098
    :cond_3
    return-void
.end method

.method private delayedBuildChildCache()V
    .locals 3

    .prologue
    .line 1083
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDelayedBuildChildCacheRunnable:Ljava/lang/Runnable;

    #v0=(Reference);
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1084
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDelayedBuildChildCacheRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    #v1=(LongLo);v2=(LongHi);
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher2/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1085
    return-void
.end method

.method private delayedShowPreview(Z)V
    .locals 2
    .parameter "show"

    .prologue
    .line 1027
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->isWorkspaceLocked()Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mThumbnailView:Lcom/android/launcher2/WorkspaceThumbnailView;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/launcher2/WorkspaceThumbnailView;->isShowing()Z

    move-result v0

    #v0=(Boolean);
    if-ne p1, v0, :cond_1

    .line 1042
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);
    return-void

    .line 1030
    :cond_1
    #v0=(Boolean);v1=(Uninit);
    if-eqz p1, :cond_3

    .line 1031
    const/4 v0, 0x0

    #v0=(Null);
    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mPositionMapping:[I

    .line 1032
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mThumbnailViewAdapter:Lcom/android/launcher2/ThumbnailViewAdapter;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/launcher2/ThumbnailViewAdapter;->notifyDataSetChanged()V

    .line 1033
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mThumbnailView:Lcom/android/launcher2/WorkspaceThumbnailView;

    const/4 v1, 0x0

    #v1=(Null);
    invoke-virtual {v0, v1}, Lcom/android/launcher2/WorkspaceThumbnailView;->setVisibility(I)V

    .line 1034
    iget v0, p0, Lcom/android/launcher2/Workspace;->mCurrentScreen:I

    #v0=(Integer);
    iput v0, p0, Lcom/android/launcher2/Workspace;->mPreviousScreen:I

    .line 1041
    :cond_2
    :goto_1
    #v0=(Conflicted);v1=(Conflicted);
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mThumbnailView:Lcom/android/launcher2/WorkspaceThumbnailView;

    #v0=(Reference);
    invoke-virtual {v0, p1}, Lcom/android/launcher2/WorkspaceThumbnailView;->show(Z)V

    goto :goto_0

    .line 1037
    :cond_3
    #v0=(Boolean);v1=(Uninit);
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mPositionMapping:[I

    #v0=(Reference);
    if-eqz v0, :cond_2

    .line 1038
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->reorderScreens()V

    goto :goto_1
.end method

.method private getDefaultScreenIndex()I
    .locals 4

    .prologue
    .line 848
    iget-wide v1, p0, Lcom/android/launcher2/Workspace;->mDefaultScreenId:J

    #v1=(LongLo);v2=(LongHi);
    invoke-virtual {p0, v1, v2}, Lcom/android/launcher2/Workspace;->getScreenIndexById(J)I

    move-result v0

    .line 849
    .local v0, defaultScreen:I
    #v0=(Integer);
    const/4 v1, 0x0

    #v1=(Null);
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getScreenCount()I

    move-result v2

    #v2=(Integer);
    const/4 v3, 0x1

    #v3=(One);
    sub-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    #v1=(Integer);
    return v1
.end method

.method private onDropExternal(IIIILcom/android/launcher2/ItemInfo;Lcom/android/launcher2/CellLayout;Landroid/view/View;)Z
    .locals 12
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"
    .parameter "cellLayout"
    .parameter "source"

    .prologue
    .line 637
    move-object/from16 v0, p5

    #v0=(Reference);
    iget v0, v0, Lcom/android/launcher2/ItemInfo;->itemType:I

    #v0=(Integer);
    move v3, v0

    #v3=(Integer);
    packed-switch v3, :pswitch_data_0

    .line 650
    new-instance v3, Ljava/lang/IllegalStateException;

    #v3=(UninitRef);
    new-instance v4, Ljava/lang/StringBuilder;

    #v4=(UninitRef);
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #v4=(Reference);
    const-string v5, "Unknown item type: "

    #v5=(Reference);
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p5

    #v0=(Reference);
    iget v0, v0, Lcom/android/launcher2/ItemInfo;->itemType:I

    #v0=(Integer);
    move v5, v0

    #v5=(Integer);
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #v3=(Reference);
    throw v3

    .line 641
    :pswitch_0
    #v3=(Integer);v4=(Uninit);v5=(Uninit);
    move-object/from16 v0, p5

    #v0=(Reference);
    iget-wide v0, v0, Lcom/android/launcher2/ItemInfo;->container:J

    #v0=(LongLo);v1=(LongHi);
    move-wide v3, v0

    #v3=(LongLo);v4=(LongHi);
    const-wide/16 v5, -0x1

    #v5=(LongLo);v6=(LongHi);
    cmp-long v3, v3, v5

    #v3=(Byte);
    if-nez v3, :cond_0

    .line 642
    const/4 v3, 0x1

    .line 664
    .end local p7
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Boolean);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);
    return v3

    .line 644
    .restart local p7
    :cond_0
    #v0=(LongLo);v1=(LongHi);v2=(Uninit);v3=(Byte);v4=(LongHi);v5=(LongLo);v6=(LongHi);v7=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Uninit);v11=(Uninit);
    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    #v3=(Reference);
    move-object v0, v3

    #v0=(Reference);
    move-object/from16 v1, p6

    #v1=(Reference);
    move-object/from16 v2, p5

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/Launcher;->createItemIcon(Landroid/view/ViewGroup;Lcom/android/launcher2/ItemInfo;)Lcom/android/launcher2/ItemIcon;

    move-result-object v10

    .line 653
    .end local p7
    .local v10, view:Landroid/view/View;
    :goto_1
    #v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v10=(Reference);
    const/4 v8, 0x1

    #v8=(One);
    const/4 v9, 0x1

    #v9=(One);
    move-object/from16 v3, p6

    move v4, p1

    #v4=(Integer);
    move v5, p2

    #v5=(Integer);
    move v6, p3

    #v6=(Integer);
    move/from16 v7, p4

    #v7=(Integer);
    move-object/from16 v11, p5

    #v11=(Reference);
    invoke-virtual/range {v3 .. v11}, Lcom/android/launcher2/CellLayout;->insertToNearestVacantArea(IIIIIILandroid/view/View;Lcom/android/launcher2/ItemInfo;)Z

    move-result v3

    #v3=(Boolean);
    if-nez v3, :cond_1

    .line 654
    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    #v3=(Reference);
    const v4, 0x7f0c0039

    invoke-virtual {v3, v4}, Lcom/android/launcher2/Launcher;->showError(I)V

    .line 655
    const/4 v3, 0x0

    #v3=(Null);
    goto :goto_0

    .line 647
    .end local v10           #view:Landroid/view/View;
    .restart local p7
    :pswitch_1
    #v0=(Integer);v1=(Uninit);v2=(Uninit);v3=(Integer);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Uninit);v11=(Uninit);
    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    #v3=(Reference);
    iget v4, p0, Lcom/android/launcher2/Workspace;->mCurrentScreen:I

    #v4=(Integer);
    invoke-virtual {p0, v4}, Lcom/android/launcher2/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object p7

    .end local p7
    check-cast p7, Landroid/view/ViewGroup;

    move-object v0, v3

    #v0=(Reference);
    move-object/from16 v1, p7

    #v1=(Reference);
    move-object/from16 v2, p5

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/Launcher;->createItemIcon(Landroid/view/ViewGroup;Lcom/android/launcher2/ItemInfo;)Lcom/android/launcher2/ItemIcon;

    move-result-object v10

    .line 648
    .restart local v10       #view:Landroid/view/View;
    #v10=(Reference);
    goto :goto_1

    .line 658
    :cond_1
    #v3=(Boolean);v5=(Integer);v6=(Integer);v7=(Integer);v8=(One);v9=(One);v11=(Reference);
    const/4 v3, 0x0

    #v3=(Null);
    move-object/from16 v0, p6

    move-object v1, v10

    move v2, v3

    #v2=(Null);
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/CellLayout;->addView(Landroid/view/View;I)V

    .line 659
    const/4 v3, 0x0

    invoke-virtual {v10, v3}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    .line 660
    instance-of v3, v10, Lcom/android/launcher2/DropTarget;

    #v3=(Boolean);
    if-eqz v3, :cond_2

    .line 661
    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mDragController:Lcom/android/launcher2/DragController;

    #v3=(Reference);
    check-cast v10, Lcom/android/launcher2/DropTarget;

    .end local v10           #view:Landroid/view/View;
    invoke-virtual {v3, v10}, Lcom/android/launcher2/DragController;->addDropTarget(Lcom/android/launcher2/DropTarget;)V

    .line 664
    :cond_2
    #v3=(Conflicted);
    const/4 v3, 0x1

    #v3=(One);
    goto :goto_0

    .line 637
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateWallpaperOffset()V
    .locals 3

    .prologue
    .line 341
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getScreenCount()I

    move-result v0

    #v0=(Integer);
    if-gtz v0, :cond_0

    .line 350
    :goto_0
    #v1=(Conflicted);v2=(Conflicted);
    return-void

    .line 344
    :cond_0
    #v1=(Uninit);v2=(Uninit);
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getTouchState()I

    move-result v0

    const/4 v1, 0x7

    #v1=(PosByte);
    if-ne v0, v1, :cond_1

    .line 345
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->updateWallpaperOffsetDuringSwitchingPreview()V

    goto :goto_0

    .line 348
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getScreenCount()I

    move-result v0

    const/4 v1, 0x1

    #v1=(One);
    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    #v0=(Integer);
    iget v1, p0, Lcom/android/launcher2/Workspace;->mRight:I

    #v1=(Integer);
    iget v2, p0, Lcom/android/launcher2/Workspace;->mLeft:I

    #v2=(Integer);
    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/android/launcher2/Workspace;->updateWallpaperOffset(I)V

    goto :goto_0
.end method

.method private updateWallpaperOffset(I)V
    .locals 7
    .parameter "scrollRange"

    .prologue
    const/high16 v6, 0x3f80

    #v6=(Integer);
    const/4 v4, 0x1

    #v4=(One);
    const/4 v5, 0x0

    .line 353
    #v5=(Null);
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    .line 354
    .local v2, token:Landroid/os/IBinder;
    #v2=(Reference);
    if-eqz v2, :cond_0

    .line 355
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getScreenCount()I

    move-result v3

    #v3=(Integer);
    if-ne v3, v4, :cond_1

    move v1, v5

    .line 356
    .local v1, steps:F
    :goto_0
    #v1=(Float);
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getScreenCount()I

    move-result v3

    if-ne v3, v4, :cond_2

    move v0, v5

    .line 358
    .local v0, offsetX:F
    :goto_1
    #v0=(Float);v4=(Float);
    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    #v3=(Reference);
    invoke-virtual {v3, v1, v5, v0, v5}, Lcom/android/launcher2/Launcher;->updateWallpaperOffset(FFFF)V

    .line 360
    .end local v0           #offsetX:F
    .end local v1           #steps:F
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v3=(Conflicted);
    return-void

    .line 355
    :cond_1
    #v0=(Uninit);v1=(Uninit);v3=(Integer);v4=(One);
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getScreenCount()I

    move-result v3

    sub-int/2addr v3, v4

    int-to-float v3, v3

    #v3=(Float);
    div-float v3, v6, v3

    move v1, v3

    #v1=(Float);
    goto :goto_0

    .line 356
    .restart local v1       #steps:F
    :cond_2
    #v3=(Integer);
    iget v3, p0, Lcom/android/launcher2/Workspace;->mScrollX:I

    int-to-float v3, v3

    #v3=(Float);
    int-to-float v4, p1

    #v4=(Float);
    div-float/2addr v3, v4

    invoke-static {v3, v6}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v5, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    move v0, v3

    #v0=(Float);
    goto :goto_1
.end method


# virtual methods
.method public acceptDrop(Lcom/android/launcher2/DragSource;IIIILcom/android/launcher2/DragView;Lcom/android/launcher2/ItemInfo;)Z
    .locals 2
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    .line 674
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mScroller:Landroid/widget/Scroller;

    #v0=(Reference);
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    .line 675
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    #v0=(Reference);
    const v1, 0x7f0c0039

    #v1=(Integer);
    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->showError(I)V

    .line 676
    const/4 v0, 0x0

    .line 678
    :goto_0
    #v0=(Boolean);v1=(Conflicted);
    return v0

    :cond_0
    #v1=(Uninit);
    const/4 v0, 0x1

    #v0=(One);
    goto :goto_0
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 4
    .parameter
    .parameter "direction"
    .parameter "focusableMode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v3, 0x1

    .line 452
    #v3=(One);
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v0

    .line 453
    .local v0, openFolder:Lcom/android/launcher2/Folder;
    #v0=(Reference);
    if-nez v0, :cond_2

    .line 454
    iget v1, p0, Lcom/android/launcher2/Workspace;->mCurrentScreen:I

    #v1=(Integer);
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {v1, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    .line 455
    const/16 v1, 0x11

    #v1=(PosByte);
    if-ne p2, v1, :cond_1

    .line 456
    iget v1, p0, Lcom/android/launcher2/Workspace;->mCurrentScreen:I

    #v1=(Integer);
    if-lez v1, :cond_0

    .line 457
    iget v1, p0, Lcom/android/launcher2/Workspace;->mCurrentScreen:I

    sub-int/2addr v1, v3

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {v1, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    .line 467
    :cond_0
    :goto_0
    #v1=(Conflicted);v2=(Conflicted);
    return-void

    .line 459
    :cond_1
    #v1=(PosByte);v2=(Uninit);
    const/16 v1, 0x42

    if-ne p2, v1, :cond_0

    .line 460
    iget v1, p0, Lcom/android/launcher2/Workspace;->mCurrentScreen:I

    #v1=(Integer);
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getScreenCount()I

    move-result v2

    #v2=(Integer);
    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_0

    .line 461
    iget v1, p0, Lcom/android/launcher2/Workspace;->mCurrentScreen:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {v1, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    goto :goto_0

    .line 465
    :cond_2
    #v1=(Uninit);v2=(Uninit);
    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/Folder;->addFocusables(Ljava/util/ArrayList;I)V

    goto :goto_0
.end method

.method addInCurrentScreen(Landroid/view/View;IIIIZ)V
    .locals 9
    .parameter "child"
    .parameter "x"
    .parameter "y"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "insert"

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mScreenIds:Ljava/util/ArrayList;

    #v0=(Reference);
    iget v1, p0, Lcom/android/launcher2/Workspace;->mCurrentScreen:I

    #v1=(Integer);
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    #v2=(LongLo);v3=(LongHi);
    move-object v0, p0

    move-object v1, p1

    #v1=(Reference);
    move v4, p2

    #v4=(Integer);
    move v5, p3

    #v5=(Integer);
    move v6, p4

    #v6=(Integer);
    move v7, p5

    #v7=(Integer);
    move v8, p6

    #v8=(Boolean);
    invoke-virtual/range {v0 .. v8}, Lcom/android/launcher2/Workspace;->addInScreen(Landroid/view/View;JIIIIZ)V

    .line 247
    return-void
.end method

.method addInScreen(Landroid/view/View;JIIII)V
    .locals 9
    .parameter "child"
    .parameter "screenId"
    .parameter "x"
    .parameter "y"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 261
    const/4 v8, 0x0

    #v8=(Null);
    move-object v0, p0

    #v0=(Reference);
    move-object v1, p1

    #v1=(Reference);
    move-wide v2, p2

    #v2=(LongLo);v3=(LongHi);
    move v4, p4

    #v4=(Integer);
    move v5, p5

    #v5=(Integer);
    move v6, p6

    #v6=(Integer);
    move/from16 v7, p7

    #v7=(Integer);
    invoke-virtual/range {v0 .. v8}, Lcom/android/launcher2/Workspace;->addInScreen(Landroid/view/View;JIIIIZ)V

    .line 262
    return-void
.end method

.method addInScreen(Landroid/view/View;JIIIIZ)V
    .locals 6
    .parameter "child"
    .parameter "screenId"
    .parameter "x"
    .parameter "y"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "insert"

    .prologue
    const/4 v5, 0x0

    .line 277
    #v5=(Null);
    invoke-virtual {p0, p2, p3}, Lcom/android/launcher2/Workspace;->getScreenIndexById(J)I

    move-result v3

    .line 278
    .local v3, screen:I
    #v3=(Integer);
    if-gez v3, :cond_1

    .line 279
    const-string v4, "Launcher.Workspace"

    #v4=(Reference);
    const-string v5, "The screen must be >= 0; skipping child"

    #v5=(Reference);
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    .end local p1
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v4=(Conflicted);
    return-void

    .line 283
    .restart local p1
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v4=(Uninit);v5=(Null);
    invoke-virtual {p0, v3}, Lcom/android/launcher2/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Lcom/android/launcher2/CellLayout;

    .line 284
    .local v1, group:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v0

    .line 285
    .local v0, folder:Lcom/android/launcher2/Folder;
    #v0=(Reference);
    if-eqz v0, :cond_2

    .line 286
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    #v4=(Reference);
    invoke-virtual {v4, v0, v5}, Lcom/android/launcher2/Launcher;->closeFolder(Lcom/android/launcher2/Folder;Z)Z

    .line 288
    :cond_2
    #v4=(Conflicted);
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    #v2=(Reference);
    check-cast v2, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 289
    .local v2, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    if-nez v2, :cond_4

    .line 290
    new-instance v2, Lcom/android/launcher2/CellLayout$LayoutParams;

    .end local v2           #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    #v2=(UninitRef);
    invoke-direct {v2, p4, p5, p6, p7}, Lcom/android/launcher2/CellLayout$LayoutParams;-><init>(IIII)V

    .line 297
    .restart local v2       #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    :goto_1
    #v2=(Reference);
    if-eqz p8, :cond_5

    move v4, v5

    :goto_2
    #v4=(Byte);
    invoke-virtual {v1, p1, v4, v2}, Lcom/android/launcher2/CellLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 299
    instance-of v4, p1, Lcom/android/launcher2/DropTarget;

    #v4=(Boolean);
    if-eqz v4, :cond_3

    .line 300
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mDragController:Lcom/android/launcher2/DragController;

    #v4=(Reference);
    check-cast p1, Lcom/android/launcher2/DropTarget;

    .end local p1
    invoke-virtual {v4, p1}, Lcom/android/launcher2/DragController;->addDropTarget(Lcom/android/launcher2/DropTarget;)V

    .line 303
    :cond_3
    #v4=(Conflicted);
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mThumbnailView:Lcom/android/launcher2/WorkspaceThumbnailView;

    #v4=(Reference);
    invoke-virtual {v4}, Lcom/android/launcher2/WorkspaceThumbnailView;->isShowing()Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_0

    .line 304
    new-instance v4, Lcom/android/launcher2/Workspace$1;

    #v4=(UninitRef);
    invoke-direct {v4, p0}, Lcom/android/launcher2/Workspace$1;-><init>(Lcom/android/launcher2/Workspace;)V

    #v4=(Reference);
    invoke-virtual {p0, v4}, Lcom/android/launcher2/Workspace;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 292
    .restart local p1
    :cond_4
    #v4=(Conflicted);
    iput p4, v2, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    .line 293
    iput p5, v2, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    .line 294
    iput p6, v2, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    .line 295
    iput p7, v2, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    goto :goto_1

    .line 297
    :cond_5
    const/4 v4, -0x1

    #v4=(Byte);
    goto :goto_2
.end method

.method public computeScroll()V
    .locals 0

    .prologue
    .line 364
    invoke-super {p0}, Lcom/android/launcher2/DragableScreenView;->computeScroll()V

    .line 365
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->updateWallpaperOffset()V

    .line 366
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .parameter "canvas"

    .prologue
    .line 375
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getTouchState()I

    move-result v9

    .line 376
    .local v9, touchState:I
    #v9=(Integer);
    iget v10, p0, Lcom/android/launcher2/Workspace;->mNextScreen:I

    #v10=(Integer);
    const/4 v11, -0x1

    #v11=(Byte);
    if-ne v10, v11, :cond_3

    if-eqz v9, :cond_0

    const/4 v10, 0x6

    #v10=(PosByte);
    if-eq v9, v10, :cond_0

    const/4 v10, 0x7

    if-ne v9, v10, :cond_3

    :cond_0
    #v10=(Integer);
    const/4 v10, 0x1

    #v10=(One);
    move v4, v10

    .line 381
    .local v4, fastDraw:Z
    :goto_0
    #v4=(Boolean);v10=(Boolean);
    if-eqz v4, :cond_4

    .line 382
    iget v10, p0, Lcom/android/launcher2/Workspace;->mCurrentScreen:I

    #v10=(Integer);
    invoke-virtual {p0, v10}, Lcom/android/launcher2/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object v10

    #v10=(Reference);
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getDrawingTime()J

    move-result-wide v11

    #v11=(LongLo);v12=(LongHi);
    invoke-virtual {p0, p1, v10, v11, v12}, Lcom/android/launcher2/Workspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 401
    :cond_1
    :goto_1
    #v2=(Conflicted);v3=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v1

    .line 402
    .local v1, count:I
    #v1=(Integer);
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getScreenCount()I

    move-result v5

    .local v5, i:I
    :goto_2
    #v0=(Conflicted);v5=(Integer);
    if-ge v5, v1, :cond_6

    .line 403
    invoke-virtual {p0, v5}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 404
    .local v0, child:Landroid/view/View;
    #v0=(Reference);
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v10

    #v10=(Integer);
    if-nez v10, :cond_2

    .line 405
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getDrawingTime()J

    move-result-wide v10

    #v10=(LongLo);v11=(LongHi);
    invoke-virtual {p0, p1, v0, v10, v11}, Lcom/android/launcher2/Workspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 402
    :cond_2
    #v10=(Conflicted);v11=(Conflicted);
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 376
    .end local v0           #child:Landroid/view/View;
    .end local v1           #count:I
    .end local v4           #fastDraw:Z
    .end local v5           #i:I
    :cond_3
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v10=(Integer);v11=(Byte);v12=(Uninit);
    const/4 v10, 0x0

    #v10=(Null);
    move v4, v10

    #v4=(Null);
    goto :goto_0

    .line 384
    .restart local v4       #fastDraw:Z
    :cond_4
    #v4=(Boolean);v10=(Boolean);
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getDrawingTime()J

    move-result-wide v2

    .line 385
    .local v2, drawingTime:J
    #v2=(LongLo);v3=(LongHi);
    iget v10, p0, Lcom/android/launcher2/Workspace;->mScrollX:I

    #v10=(Integer);
    int-to-float v10, v10

    #v10=(Float);
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getWidth()I

    move-result v11

    #v11=(Integer);
    int-to-float v11, v11

    #v11=(Float);
    div-float v8, v10, v11

    .line 386
    .local v8, scrollPos:F
    #v8=(Float);
    float-to-int v6, v8

    .line 387
    .local v6, leftScreen:I
    #v6=(Integer);
    add-int/lit8 v7, v6, 0x1

    .line 388
    .local v7, rightScreen:I
    #v7=(Integer);
    if-ltz v6, :cond_5

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getScreenCount()I

    move-result v10

    #v10=(Integer);
    if-ge v6, v10, :cond_5

    .line 389
    invoke-virtual {p0, v6}, Lcom/android/launcher2/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object v10

    #v10=(Reference);
    check-cast v10, Landroid/view/ViewGroup;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    #v10=(Integer);
    if-eqz v10, :cond_5

    .line 390
    invoke-virtual {p0, v6}, Lcom/android/launcher2/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object v10

    #v10=(Reference);
    invoke-virtual {p0, p1, v10, v2, v3}, Lcom/android/launcher2/Workspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 393
    :cond_5
    #v10=(Conflicted);
    int-to-float v10, v6

    #v10=(Float);
    cmpl-float v10, v8, v10

    #v10=(Byte);
    if-eqz v10, :cond_1

    if-ltz v7, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getScreenCount()I

    move-result v10

    #v10=(Integer);
    if-ge v7, v10, :cond_1

    .line 394
    invoke-virtual {p0, v7}, Lcom/android/launcher2/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object v10

    #v10=(Reference);
    check-cast v10, Landroid/view/ViewGroup;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    #v10=(Integer);
    if-eqz v10, :cond_1

    .line 395
    invoke-virtual {p0, v7}, Lcom/android/launcher2/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object v10

    #v10=(Reference);
    invoke-virtual {p0, p1, v10, v2, v3}, Lcom/android/launcher2/Workspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_1

    .line 408
    .end local v2           #drawingTime:J
    .end local v6           #leftScreen:I
    .end local v7           #rightScreen:I
    .end local v8           #scrollPos:F
    .restart local v1       #count:I
    .restart local v5       #i:I
    :cond_6
    #v0=(Conflicted);v1=(Integer);v2=(Conflicted);v3=(Conflicted);v5=(Integer);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 471
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    #v0=(Integer);
    if-nez v0, :cond_0

    .line 472
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->isWorkspaceLocked()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 473
    const/4 v0, 0x0

    .line 476
    :goto_0
    return v0

    :cond_0
    #v0=(Integer);
    invoke-super {p0, p1}, Lcom/android/launcher2/DragableScreenView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    #v0=(Boolean);
    goto :goto_0
.end method

.method public focusableViewAvailable(Landroid/view/View;)V
    .locals 4
    .parameter "focused"

    .prologue
    .line 533
    iget v3, p0, Lcom/android/launcher2/Workspace;->mCurrentScreen:I

    #v3=(Integer);
    invoke-virtual {p0, v3}, Lcom/android/launcher2/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object v0

    .line 534
    .local v0, current:Landroid/view/View;
    #v0=(Reference);
    move-object v2, p1

    .line 536
    .local v2, v:Landroid/view/View;
    :goto_0
    #v1=(Conflicted);v2=(Reference);
    if-ne v2, v0, :cond_1

    .line 537
    invoke-super {p0, p1}, Lcom/android/launcher2/DragableScreenView;->focusableViewAvailable(Landroid/view/View;)V

    .line 547
    :cond_0
    return-void

    .line 540
    :cond_1
    if-eq v2, p0, :cond_0

    .line 543
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 544
    .local v1, parent:Landroid/view/ViewParent;
    #v1=(Reference);
    instance-of v3, v1, Landroid/view/View;

    #v3=(Boolean);
    if-eqz v3, :cond_0

    .line 545
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .end local v2           #v:Landroid/view/View;
    check-cast v2, Landroid/view/View;

    .restart local v2       #v:Landroid/view/View;
    goto :goto_0
.end method

.method getCurrentScreenId()J
    .locals 2

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getCurrentScreen()Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/launcher2/CellLayout;

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getScreenId()J

    move-result-wide v0

    #v0=(LongLo);v1=(LongHi);
    return-wide v0
.end method

.method public getFolderForTag(Ljava/lang/Object;)Lcom/android/launcher2/Folder;
    .locals 11
    .parameter "tag"

    .prologue
    const/4 v10, 0x4

    .line 727
    #v10=(PosByte);
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getScreenCount()I

    move-result v8

    .line 728
    .local v8, screenCount:I
    #v8=(Integer);
    const/4 v7, 0x0

    .local v7, screen:I
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Integer);v9=(Conflicted);
    if-ge v7, v8, :cond_2

    .line 729
    invoke-virtual {p0, v7}, Lcom/android/launcher2/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object v3

    #v3=(Reference);
    check-cast v3, Lcom/android/launcher2/CellLayout;

    .line 730
    .local v3, currentScreen:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->getChildCount()I

    move-result v2

    .line 731
    .local v2, count:I
    #v2=(Integer);
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    #v5=(Integer);
    if-ge v5, v2, :cond_1

    .line 732
    invoke-virtual {v3, v5}, Lcom/android/launcher2/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 733
    .local v1, child:Landroid/view/View;
    #v1=(Reference);
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    #v6=(Reference);
    check-cast v6, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 734
    .local v6, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    iget v9, v6, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    #v9=(Integer);
    if-ne v9, v10, :cond_0

    iget v9, v6, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    if-ne v9, v10, :cond_0

    instance-of v9, v1, Lcom/android/launcher2/Folder;

    #v9=(Boolean);
    if-eqz v9, :cond_0

    .line 735
    move-object v0, v1

    #v0=(Reference);
    check-cast v0, Lcom/android/launcher2/Folder;

    move-object v4, v0

    .line 736
    .local v4, f:Lcom/android/launcher2/Folder;
    #v4=(Reference);
    invoke-virtual {v4}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderInfo;

    move-result-object v9

    #v9=(Reference);
    if-ne v9, p1, :cond_0

    move-object v9, v4

    .line 742
    .end local v1           #child:Landroid/view/View;
    .end local v2           #count:I
    .end local v3           #currentScreen:Lcom/android/launcher2/CellLayout;
    .end local v4           #f:Lcom/android/launcher2/Folder;
    .end local v5           #i:I
    .end local v6           #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    :goto_2
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    return-object v9

    .line 731
    .restart local v1       #child:Landroid/view/View;
    .restart local v2       #count:I
    .restart local v3       #currentScreen:Lcom/android/launcher2/CellLayout;
    .restart local v5       #i:I
    .restart local v6       #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_0
    #v1=(Reference);v2=(Integer);v3=(Reference);v5=(Integer);v6=(Reference);v9=(Conflicted);
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 728
    .end local v1           #child:Landroid/view/View;
    .end local v6           #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_1
    #v1=(Conflicted);v6=(Conflicted);
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 742
    .end local v2           #count:I
    .end local v3           #currentScreen:Lcom/android/launcher2/CellLayout;
    .end local v5           #i:I
    :cond_2
    #v2=(Conflicted);v3=(Conflicted);v5=(Conflicted);
    const/4 v9, 0x0

    #v9=(Null);
    goto :goto_2
.end method

.method getOpenFolder()Lcom/android/launcher2/Folder;
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/android/launcher2/Workspace;->mCurrentScreen:I

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/launcher2/CellLayout;

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method getOpenFolders()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/Folder;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x4

    .line 152
    #v9=(PosByte);
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getScreenCount()I

    move-result v7

    .line 153
    .local v7, screens:I
    #v7=(Integer);
    new-instance v3, Ljava/util/ArrayList;

    #v3=(UninitRef);
    invoke-direct {v3, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 155
    .local v3, folders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/Folder;>;"
    #v3=(Reference);
    const/4 v6, 0x0

    .local v6, screen:I
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Integer);v8=(Conflicted);
    if-ge v6, v7, :cond_2

    .line 156
    invoke-virtual {p0, v6}, Lcom/android/launcher2/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object v2

    #v2=(Reference);
    check-cast v2, Lcom/android/launcher2/CellLayout;

    .line 157
    .local v2, currentScreen:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v2}, Lcom/android/launcher2/CellLayout;->getChildCount()I

    move-result v1

    .line 158
    .local v1, count:I
    #v1=(Integer);
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    #v4=(Integer);
    if-ge v4, v1, :cond_0

    .line 159
    invoke-virtual {v2, v4}, Lcom/android/launcher2/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 160
    .local v0, child:Landroid/view/View;
    #v0=(Reference);
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    #v5=(Reference);
    check-cast v5, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 161
    .local v5, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    iget v8, v5, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    #v8=(Integer);
    if-ne v8, v9, :cond_1

    iget v8, v5, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    if-ne v8, v9, :cond_1

    instance-of v8, v0, Lcom/android/launcher2/Folder;

    #v8=(Boolean);
    if-eqz v8, :cond_1

    .line 162
    check-cast v0, Lcom/android/launcher2/Folder;

    .end local v0           #child:Landroid/view/View;
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    .end local v5           #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_0
    #v0=(Conflicted);v5=(Conflicted);v8=(Conflicted);
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 158
    .restart local v0       #child:Landroid/view/View;
    .restart local v5       #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_1
    #v0=(Reference);v5=(Reference);v8=(Integer);
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 168
    .end local v0           #child:Landroid/view/View;
    .end local v1           #count:I
    .end local v2           #currentScreen:Lcom/android/launcher2/CellLayout;
    .end local v4           #i:I
    .end local v5           #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_2
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v4=(Conflicted);v5=(Conflicted);v8=(Conflicted);
    return-object v3
.end method

.method public getScreenById(J)Landroid/view/View;
    .locals 2
    .parameter "id"

    .prologue
    .line 866
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/Workspace;->getScreenIndexById(J)I

    move-result v0

    .line 867
    .local v0, index:I
    #v0=(Integer);
    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getScreenCount()I

    move-result v1

    #v1=(Integer);
    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object v1

    :goto_0
    #v1=(Reference);
    return-object v1

    :cond_0
    #v1=(Conflicted);
    const/4 v1, 0x0

    #v1=(Null);
    goto :goto_0
.end method

.method getScreenIndexById(J)I
    .locals 2
    .parameter "id"

    .prologue
    .line 871
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mScreenIdMap:Landroid/util/LongSparseArray;

    #v0=(Reference);
    const/4 v1, -0x1

    #v1=(Byte);
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {v0, p1, p2, v1}, Landroid/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method isDefaultScreenShowing()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 172
    #v2=(Null);
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isScrolling()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    move v0, v2

    .line 175
    :goto_0
    #v1=(Conflicted);
    return v0

    :cond_0
    #v1=(Uninit);
    iget v0, p0, Lcom/android/launcher2/Workspace;->mCurrentScreen:I

    #v0=(Integer);
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->getDefaultScreenIndex()I

    move-result v1

    #v1=(Integer);
    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    #v0=(One);
    goto :goto_0

    :cond_1
    #v0=(Integer);
    move v0, v2

    #v0=(Null);
    goto :goto_0
.end method

.method isScrolling()Z
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mScroller:Landroid/widget/Scroller;

    #v0=(Reference);
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public loadScreens(Z)V
    .locals 15
    .parameter "firstTime"

    .prologue
    .line 875
    const-wide/16 v9, 0x0

    .line 877
    .local v9, mCurrentScreenId:J
    #v9=(LongLo);v10=(LongHi);
    if-nez p1, :cond_0

    .line 878
    const-string v0, "Launcher.Workspace"

    #v0=(Reference);
    new-instance v1, Ljava/lang/StringBuilder;

    #v1=(UninitRef);
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #v1=(Reference);
    const-string v2, "Screens before reload "

    #v2=(Reference);
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mScreenIds:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getCurrentScreenId()J

    move-result-wide v9

    .line 880
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mScreenIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 881
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mScreenIdMap:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 886
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mResolver:Landroid/content/ContentResolver;

    #v0=(Reference);
    sget-object v1, Lcom/android/launcher2/LauncherSettings$Screens;->CONTENT_URI:Landroid/net/Uri;

    #v1=(Reference);
    const/4 v2, 0x1

    #v2=(One);
    new-array v2, v2, [Ljava/lang/String;

    #v2=(Reference);
    const/4 v3, 0x0

    #v3=(Null);
    const-string v4, "_id"

    #v4=(Reference);
    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    #v4=(Null);
    const-string v5, "screenOrder ASC"

    #v5=(Reference);
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 893
    .local v6, c:Landroid/database/Cursor;
    :goto_0
    :try_start_0
    #v6=(Reference);v12=(Conflicted);v13=(Conflicted);
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_2

    .line 894
    const/4 v0, 0x0

    #v0=(Null);
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 895
    .local v12, screenId:J
    #v12=(LongLo);v13=(LongHi);
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mScreenIdMap:Landroid/util/LongSparseArray;

    #v0=(Reference);
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mScreenIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    #v1=(Integer);
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {v0, v12, v13, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 896
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mScreenIds:Ljava/util/ArrayList;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 899
    .end local v12           #screenId:J
    :catchall_0
    #v1=(Conflicted);v12=(Conflicted);v13=(Conflicted);
    move-exception v0

    if-eqz v6, :cond_1

    .line 900
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    .line 899
    :cond_2
    #v0=(Boolean);v1=(Reference);
    if-eqz v6, :cond_3

    .line 900
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 903
    :cond_3
    const-string v0, "Launcher.Workspace"

    #v0=(Reference);
    new-instance v1, Ljava/lang/StringBuilder;

    #v1=(UninitRef);
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #v1=(Reference);
    const-string v2, "Screens loaded "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mScreenIds:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    new-instance v14, Ljava/util/HashMap;

    #v14=(UninitRef);
    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 907
    .local v14, screens:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/launcher2/CellLayout;>;"
    #v14=(Reference);
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getScreenCount()I

    move-result v0

    #v0=(Integer);
    const/4 v1, 0x1

    #v1=(One);
    sub-int v8, v0, v1

    .line 909
    .local v8, index:I
    :goto_1
    #v0=(Conflicted);v1=(Conflicted);v7=(Conflicted);v8=(Integer);
    if-ltz v8, :cond_4

    .line 910
    invoke-virtual {p0, v8}, Lcom/android/launcher2/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object v7

    #v7=(Reference);
    check-cast v7, Lcom/android/launcher2/CellLayout;

    .line 911
    .local v7, cell:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v7}, Lcom/android/launcher2/CellLayout;->clearAnimation()V

    .line 912
    invoke-virtual {v7}, Lcom/android/launcher2/CellLayout;->getScreenId()J

    move-result-wide v0

    #v0=(LongLo);v1=(LongHi);
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    #v0=(Reference);
    invoke-virtual {v14, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 909
    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    .line 916
    .end local v7           #cell:Lcom/android/launcher2/CellLayout;
    :cond_4
    #v0=(Conflicted);v1=(Conflicted);v7=(Conflicted);
    const/4 v0, 0x0

    #v0=(Null);
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getScreenCount()I

    move-result v1

    #v1=(Integer);
    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/Workspace;->removeScreensInLayout(II)V

    .line 919
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mScreenIds:Ljava/util/ArrayList;

    #v0=(Reference);
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    #v0=(Integer);
    const/4 v1, 0x1

    #v1=(One);
    sub-int v8, v0, v1

    :goto_2
    #v1=(Integer);
    if-ltz v8, :cond_6

    .line 920
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mScreenIds:Ljava/util/ArrayList;

    #v0=(Reference);
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 921
    .restart local v12       #screenId:J
    #v12=(LongLo);v13=(LongHi);
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    #v7=(Reference);
    check-cast v7, Lcom/android/launcher2/CellLayout;

    .line 922
    .restart local v7       #cell:Lcom/android/launcher2/CellLayout;
    if-nez v7, :cond_5

    .line 923
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030020

    const/4 v2, 0x0

    #v2=(Null);
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .end local v7           #cell:Lcom/android/launcher2/CellLayout;
    check-cast v7, Lcom/android/launcher2/CellLayout;

    .line 924
    .restart local v7       #cell:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v7, v12, v13}, Lcom/android/launcher2/CellLayout;->setScreenId(J)V

    .line 925
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v7, v0}, Lcom/android/launcher2/CellLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 927
    :cond_5
    #v2=(Reference);
    const/4 v0, 0x0

    #v0=(Null);
    invoke-virtual {p0, v7, v0}, Lcom/android/launcher2/Workspace;->addView(Landroid/view/View;I)V

    .line 919
    add-int/lit8 v8, v8, -0x1

    goto :goto_2

    .line 930
    .end local v7           #cell:Lcom/android/launcher2/CellLayout;
    .end local v12           #screenId:J
    :cond_6
    #v0=(Integer);v7=(Conflicted);v12=(Conflicted);v13=(Conflicted);
    if-eqz p1, :cond_7

    .line 931
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mContext:Landroid/content/Context;

    #v0=(Reference);
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 932
    .local v11, pref:Landroid/content/SharedPreferences;
    #v11=(Reference);
    const-string v0, "pref_default_screen"

    const-wide/16 v1, 0x3

    #v1=(LongLo);v2=(LongHi);
    invoke-interface {v11, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    #v0=(LongLo);v1=(LongHi);
    iput-wide v0, p0, Lcom/android/launcher2/Workspace;->mDefaultScreenId:J

    .line 933
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->getDefaultScreenIndex()I

    move-result v0

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->setCurrentScreen(I)V

    .line 939
    .end local v11           #pref:Landroid/content/SharedPreferences;
    :goto_3
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v11=(Conflicted);
    return-void

    .line 937
    :cond_7
    #v0=(Integer);v1=(Integer);v2=(Reference);v11=(Uninit);
    invoke-virtual {p0, v9, v10}, Lcom/android/launcher2/Workspace;->setCurrentScreenById(J)V

    .line 938
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getCurrentScreen()Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_3
.end method

.method moveToDefaultScreen(Z)V
    .locals 2
    .parameter "animate"

    .prologue
    .line 853
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->getDefaultScreenIndex()I

    move-result v0

    .line 854
    .local v0, defaultScreenIndex:I
    #v0=(Integer);
    if-eqz p1, :cond_0

    .line 855
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->snapToScreen(I)V

    .line 859
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 860
    return-void

    .line 857
    :cond_0
    #v1=(Uninit);
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->setCurrentScreen(I)V

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 412
    invoke-super {p0}, Lcom/android/launcher2/DragableScreenView;->onAttachedToWindow()V

    .line 413
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragController:Lcom/android/launcher2/DragController;

    #v0=(Reference);
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {v0, v1}, Lcom/android/launcher2/DragController;->setWindowToken(Landroid/os/IBinder;)V

    .line 414
    return-void
.end method

.method public onDragEnter(Lcom/android/launcher2/DragSource;IIIILcom/android/launcher2/DragView;Lcom/android/launcher2/ItemInfo;)V
    .locals 0
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    .line 615
    return-void
.end method

.method public onDragExit(Lcom/android/launcher2/DragSource;IIIILcom/android/launcher2/DragView;Lcom/android/launcher2/ItemInfo;)V
    .locals 3
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    .line 627
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getScreenCount()I

    move-result v1

    #v1=(Integer);
    const/4 v2, 0x1

    #v2=(One);
    sub-int v0, v1, v2

    .local v0, i:I
    :goto_0
    #v0=(Integer);v1=(Conflicted);
    if-ltz v0, :cond_0

    .line 628
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->cancelInPlaceMovement()V

    .line 627
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 630
    :cond_0
    #v1=(Conflicted);
    return-void
.end method

.method public onDragOver(Lcom/android/launcher2/DragSource;IIIILcom/android/launcher2/DragView;Lcom/android/launcher2/ItemInfo;)V
    .locals 3
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    .line 619
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mScroller:Landroid/widget/Scroller;

    #v1=(Reference);
    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 620
    iget v1, p0, Lcom/android/launcher2/Workspace;->mCurrentScreen:I

    #v1=(Integer);
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 621
    .local v0, cellLayout:Lcom/android/launcher2/CellLayout;
    iget v1, p7, Lcom/android/launcher2/ItemInfo;->spanX:I

    iget v2, p7, Lcom/android/launcher2/ItemInfo;->spanY:I

    #v2=(Integer);
    invoke-virtual {v0, p2, p3, v1, v2}, Lcom/android/launcher2/CellLayout;->onDragOver(IIII)V

    .line 623
    .end local v0           #cellLayout:Lcom/android/launcher2/CellLayout;
    :cond_0
    #v0=(Conflicted);v2=(Conflicted);
    return-void
.end method

.method public onDrop(Lcom/android/launcher2/DragSource;IIIILcom/android/launcher2/DragView;Lcom/android/launcher2/ItemInfo;)Z
    .locals 19
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    .line 588
    move-object/from16 v0, p0

    #v0=(Reference);
    iget v0, v0, Lcom/android/launcher2/Workspace;->mCurrentScreen:I

    #v0=(Integer);
    move v3, v0

    #v3=(Integer);
    move-object/from16 v0, p0

    #v0=(Reference);
    move v1, v3

    #v1=(Integer);
    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object v9

    #v9=(Reference);
    check-cast v9, Lcom/android/launcher2/CellLayout;

    .line 589
    .local v9, cellLayout:Lcom/android/launcher2/CellLayout;
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    #v1=(Reference);
    if-eq v0, v1, :cond_0

    .line 590
    move-object/from16 v0, p1

    check-cast v0, Landroid/view/View;

    move-object v10, v0

    #v10=(Reference);
    move-object/from16 v3, p0

    #v3=(Reference);
    move/from16 v4, p2

    #v4=(Integer);
    move/from16 v5, p3

    #v5=(Integer);
    move/from16 v6, p4

    #v6=(Integer);
    move/from16 v7, p5

    #v7=(Integer);
    move-object/from16 v8, p7

    #v8=(Reference);
    invoke-direct/range {v3 .. v10}, Lcom/android/launcher2/Workspace;->onDropExternal(IIIILcom/android/launcher2/ItemInfo;Lcom/android/launcher2/CellLayout;Landroid/view/View;)Z

    move-result v3

    .line 610
    :goto_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Boolean);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);v13=(Conflicted);v14=(Conflicted);v15=(Conflicted);v16=(Conflicted);v17=(Conflicted);v18=(Conflicted);
    return v3

    .line 593
    :cond_0
    #v1=(Reference);v2=(Uninit);v3=(Integer);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v10=(Uninit);v11=(Uninit);v12=(Uninit);v13=(Uninit);v14=(Uninit);v15=(Uninit);v16=(Uninit);v17=(Uninit);v18=(Uninit);
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    move-object v3, v0

    #v3=(Reference);
    if-eqz v3, :cond_2

    .line 594
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    move-object v3, v0

    move-object v0, v3

    iget-object v0, v0, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    move-object/from16 v16, v0

    .line 596
    .local v16, cell:Landroid/view/View;
    #v16=(Reference);
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    move-object v3, v0

    iget v14, v3, Lcom/android/launcher2/CellLayout$CellInfo;->spanX:I

    #v14=(Integer);
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    move-object v3, v0

    iget v15, v3, Lcom/android/launcher2/CellLayout$CellInfo;->spanY:I

    #v15=(Integer);
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v17

    #v17=(Reference);
    check-cast v17, Lcom/android/launcher2/ItemInfo;

    move/from16 v10, p2

    #v10=(Integer);
    move/from16 v11, p3

    #v11=(Integer);
    move/from16 v12, p4

    #v12=(Integer);
    move/from16 v13, p5

    #v13=(Integer);
    invoke-virtual/range {v9 .. v17}, Lcom/android/launcher2/CellLayout;->insertToNearestVacantArea(IIIIIILandroid/view/View;Lcom/android/launcher2/ItemInfo;)Z

    move-result v3

    #v3=(Boolean);
    if-nez v3, :cond_1

    .line 599
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    move-object v3, v0

    #v3=(Reference);
    const v4, 0x7f0c0039

    #v4=(Integer);
    invoke-virtual {v3, v4}, Lcom/android/launcher2/Launcher;->showError(I)V

    .line 600
    const/4 v3, 0x0

    #v3=(Null);
    goto :goto_0

    .line 603
    :cond_1
    #v3=(Boolean);v4=(Uninit);
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mCurrentScreen:I

    #v0=(Integer);
    move v3, v0

    #v3=(Integer);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    move-object v4, v0

    #v4=(Reference);
    iget-wide v4, v4, Lcom/android/launcher2/CellLayout$CellInfo;->screenId:J

    #v4=(LongLo);v5=(LongHi);
    move-object/from16 v0, p0

    move-wide v1, v4

    #v1=(LongLo);v2=(LongHi);
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/Workspace;->getScreenIndexById(J)I

    move-result v4

    #v4=(Integer);
    if-eq v3, v4, :cond_2

    .line 604
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    move-object v3, v0

    #v3=(Reference);
    iget-wide v3, v3, Lcom/android/launcher2/CellLayout$CellInfo;->screenId:J

    #v3=(LongLo);v4=(LongHi);
    move-object/from16 v0, p0

    move-wide v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/Workspace;->getScreenById(J)Landroid/view/View;

    move-result-object v18

    #v18=(Reference);
    check-cast v18, Lcom/android/launcher2/CellLayout;

    .line 605
    .local v18, originalCellLayout:Lcom/android/launcher2/CellLayout;
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    #v1=(Reference);
    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->removeView(Landroid/view/View;)V

    .line 606
    move-object v0, v9

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->addView(Landroid/view/View;)V

    .line 610
    .end local v16           #cell:Landroid/view/View;
    .end local v18           #originalCellLayout:Lcom/android/launcher2/CellLayout;
    :cond_2
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);v13=(Conflicted);v14=(Conflicted);v15=(Conflicted);v16=(Conflicted);v17=(Conflicted);v18=(Conflicted);
    const/4 v3, 0x1

    #v3=(One);
    goto :goto_0
.end method

.method public onDropCompleted(Landroid/view/View;Z)V
    .locals 5
    .parameter "target"
    .parameter "success"

    .prologue
    .line 690
    if-eqz p2, :cond_1

    .line 691
    if-eq p1, p0, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    #v1=(Reference);
    if-eqz v1, :cond_0

    .line 692
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget-wide v1, v1, Lcom/android/launcher2/CellLayout$CellInfo;->screenId:J

    #v1=(LongLo);v2=(LongHi);
    invoke-virtual {p0, v1, v2}, Lcom/android/launcher2/Workspace;->getScreenById(J)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 693
    .local v0, cellLayout:Lcom/android/launcher2/CellLayout;
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    #v1=(Reference);
    iget-object v1, v1, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->removeView(Landroid/view/View;)V

    .line 694
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget-object v1, v1, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    instance-of v1, v1, Lcom/android/launcher2/DropTarget;

    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 695
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mDragController:Lcom/android/launcher2/DragController;

    #v2=(Reference);
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    #v1=(Reference);
    iget-object v1, v1, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    check-cast v1, Lcom/android/launcher2/DropTarget;

    invoke-virtual {v2, v1}, Lcom/android/launcher2/DragController;->removeDropTarget(Lcom/android/launcher2/DropTarget;)V

    .line 709
    .end local v0           #cellLayout:Lcom/android/launcher2/CellLayout;
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    const/4 v1, 0x0

    #v1=(Null);
    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    .line 710
    return-void

    .line 699
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    #v1=(Reference);
    if-eqz v1, :cond_2

    .line 700
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget-wide v1, v1, Lcom/android/launcher2/CellLayout$CellInfo;->screenId:J

    #v1=(LongLo);v2=(LongHi);
    invoke-virtual {p0, v1, v2}, Lcom/android/launcher2/Workspace;->getScreenById(J)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 701
    .restart local v0       #cellLayout:Lcom/android/launcher2/CellLayout;
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    #v1=(Reference);
    iget-object v1, v1, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->onDropAborted(Landroid/view/View;)V

    .line 704
    .end local v0           #cellLayout:Lcom/android/launcher2/CellLayout;
    :cond_2
    #v0=(Conflicted);v2=(Conflicted);
    if-ne p1, p0, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mScreenIds:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/launcher2/Workspace;->mCurrentScreen:I

    #v2=(Integer);
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    #v1=(LongLo);v2=(LongHi);
    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    #v3=(Reference);
    iget-wide v3, v3, Lcom/android/launcher2/CellLayout$CellInfo;->screenId:J

    #v3=(LongLo);v4=(LongHi);
    cmp-long v1, v1, v3

    #v1=(Byte);
    if-eqz v1, :cond_0

    .line 705
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    #v1=(Reference);
    const v2, 0x7f0c0039

    #v2=(Integer);
    invoke-virtual {v1, v2}, Lcom/android/launcher2/Launcher;->showWarning(I)V

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "ev"

    .prologue
    const/4 v5, 0x0

    .line 481
    #v5=(Null);
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->isWorkspaceLocked()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    move v0, v5

    .line 513
    :goto_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);
    return v0

    .line 490
    :cond_0
    #v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    .line 492
    .local v7, action:I
    #v7=(Integer);
    and-int/lit16 v0, v7, 0xff

    #v0=(Integer);
    packed-switch v0, :pswitch_data_0

    .line 513
    :cond_1
    :goto_1
    :pswitch_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v6=(Conflicted);v8=(Conflicted);
    invoke-super {p0, p1}, Lcom/android/launcher2/DragableScreenView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    #v0=(Boolean);
    goto :goto_0

    .line 495
    :pswitch_1
    #v0=(Integer);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v6=(Uninit);v8=(Uninit);
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getTouchState()I

    move-result v0

    if-nez v0, :cond_1

    .line 496
    iget v0, p0, Lcom/android/launcher2/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object v8

    #v8=(Reference);
    check-cast v8, Lcom/android/launcher2/CellLayout;

    .line 497
    .local v8, currentScreen:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v8}, Lcom/android/launcher2/CellLayout;->lastDownOnOccupiedCell()Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_1

    .line 498
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mTempCell:[I

    #v0=(Reference);
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->getLocationOnScreen([I)V

    .line 500
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    #v1=(Reference);
    const-string v2, "android.wallpaper.tap"

    #v2=(Reference);
    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mTempCell:[I

    #v3=(Reference);
    aget v3, v3, v5

    #v3=(Integer);
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    #v4=(Float);
    float-to-int v4, v4

    #v4=(Integer);
    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mTempCell:[I

    #v4=(Reference);
    const/4 v6, 0x1

    #v6=(One);
    aget v4, v4, v6

    #v4=(Integer);
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    #v6=(Float);
    float-to-int v6, v6

    #v6=(Integer);
    add-int/2addr v4, v6

    const/4 v6, 0x0

    #v6=(Null);
    invoke-virtual/range {v0 .. v6}, Landroid/app/WallpaperManager;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V

    goto :goto_1

    .line 492
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 418
    iget-boolean v1, p0, Lcom/android/launcher2/Workspace;->mFirstLayout:Z

    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 419
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 420
    .local v0, width:I
    #v0=(Integer);
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getScreenCount()I

    move-result v1

    #v1=(Integer);
    const/4 v2, 0x1

    #v2=(One);
    sub-int/2addr v1, v2

    mul-int/2addr v1, v0

    invoke-direct {p0, v1}, Lcom/android/launcher2/Workspace;->updateWallpaperOffset(I)V

    .line 422
    .end local v0           #width:I
    :cond_0
    #v0=(Conflicted);v2=(Conflicted);
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/DragableScreenView;->onMeasure(II)V

    .line 423
    return-void
.end method

.method protected onPinchIn(Landroid/view/ScaleGestureDetector;)V
    .locals 2
    .parameter "detector"

    .prologue
    .line 517
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->isInEditing()Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    .line 518
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->finishCurrentGesture()V

    .line 519
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    #v0=(Reference);
    const/4 v1, 0x1

    #v1=(One);
    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->showPreview(Z)V

    .line 521
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);
    invoke-super {p0, p1}, Lcom/android/launcher2/DragableScreenView;->onPinchIn(Landroid/view/ScaleGestureDetector;)V

    .line 522
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 5
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    const/4 v4, 0x0

    .line 427
    #v4=(Null);
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getScreenCount()I

    move-result v2

    #v2=(Integer);
    if-nez v2, :cond_0

    move v2, v4

    .line 447
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Boolean);v3=(Conflicted);
    return v2

    .line 435
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Integer);v3=(Uninit);
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v1

    .line 436
    .local v1, openFolder:Lcom/android/launcher2/Folder;
    #v1=(Reference);
    if-eqz v1, :cond_1

    .line 437
    invoke-virtual {v1, p1, p2}, Lcom/android/launcher2/Folder;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v2

    #v2=(Boolean);
    goto :goto_0

    .line 440
    :cond_1
    #v2=(Integer);
    iget v2, p0, Lcom/android/launcher2/Workspace;->mNextScreen:I

    const/4 v3, -0x1

    #v3=(Byte);
    if-eq v2, v3, :cond_2

    .line 441
    iget v0, p0, Lcom/android/launcher2/Workspace;->mNextScreen:I

    .line 445
    .local v0, focusableScreen:I
    :goto_1
    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v2, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move v2, v4

    .line 447
    #v2=(Null);
    goto :goto_0

    .line 443
    .end local v0           #focusableScreen:I
    :cond_2
    #v0=(Uninit);v2=(Integer);
    iget v0, p0, Lcom/android/launcher2/Workspace;->mCurrentScreen:I

    .restart local v0       #focusableScreen:I
    #v0=(Integer);
    goto :goto_1
.end method

.method public onStart()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    #v3=(One);
    const/4 v2, 0x0

    .line 1050
    #v2=(Null);
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    #v0=(Reference);
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1051
    const-string v1, "pref_key_enable_drawing_cache"

    #v1=(Reference);
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    #v1=(Boolean);
    invoke-direct {p0, v1}, Lcom/android/launcher2/Workspace;->buildChildCache(Z)V

    .line 1052
    const-string v1, "pref_key_transformation_classic"

    #v1=(Reference);
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 1053
    invoke-virtual {p0, v2}, Lcom/android/launcher2/Workspace;->setScreenTransitionType(I)V

    .line 1071
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);
    return-void

    .line 1054
    :cond_0
    #v0=(Reference);v1=(Boolean);
    const-string v1, "pref_key_transformation_classic_no_overshoot"

    #v1=(Reference);
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_1

    .line 1055
    invoke-virtual {p0, v3}, Lcom/android/launcher2/Workspace;->setScreenTransitionType(I)V

    goto :goto_0

    .line 1056
    :cond_1
    const-string v1, "pref_key_transformation_corss_fade"

    #v1=(Reference);
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_2

    .line 1057
    const/4 v0, 0x2

    #v0=(PosByte);
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->setScreenTransitionType(I)V

    goto :goto_0

    .line 1058
    :cond_2
    #v0=(Reference);
    const-string v1, "pref_key_transformation_fall_down"

    #v1=(Reference);
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_3

    .line 1059
    const/4 v0, 0x3

    #v0=(PosByte);
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->setScreenTransitionType(I)V

    goto :goto_0

    .line 1060
    :cond_3
    #v0=(Reference);
    const-string v1, "pref_key_transformation_cube"

    #v1=(Reference);
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_4

    .line 1061
    const/4 v0, 0x4

    #v0=(PosByte);
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->setScreenTransitionType(I)V

    goto :goto_0

    .line 1062
    :cond_4
    #v0=(Reference);
    const-string v1, "pref_key_transformation_left_page"

    #v1=(Reference);
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_5

    .line 1063
    const/4 v0, 0x5

    #v0=(PosByte);
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->setScreenTransitionType(I)V

    goto :goto_0

    .line 1064
    :cond_5
    #v0=(Reference);
    const-string v1, "pref_key_transformation_stack"

    #v1=(Reference);
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_6

    .line 1065
    const/4 v0, 0x7

    #v0=(PosByte);
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->setScreenTransitionType(I)V

    goto :goto_0

    .line 1066
    :cond_6
    #v0=(Reference);
    const-string v1, "pref_key_transformation_rotate"

    #v1=(Reference);
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_7

    .line 1067
    const/16 v0, 0x8

    #v0=(PosByte);
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->setScreenTransitionType(I)V

    goto :goto_0

    .line 1069
    :cond_7
    #v0=(Boolean);
    invoke-virtual {p0, v2}, Lcom/android/launcher2/Workspace;->setScreenTransitionType(I)V

    goto :goto_0
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 1045
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDelayedBuildChildCacheRunnable:Ljava/lang/Runnable;

    #v0=(Reference);
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1046
    const/4 v0, 0x0

    #v0=(Null);
    invoke-direct {p0, v0}, Lcom/android/launcher2/Workspace;->buildChildCache(Z)V

    .line 1047
    return-void
.end method

.method removeItems(Ljava/util/ArrayList;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/AllAppsList$RemoveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 761
    .local p1, packages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/AllAppsList$RemoveInfo;>;"
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getScreenCount()I

    move-result v6

    .line 762
    .local v6, count:I
    #v6=(Integer);
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mContext:Landroid/content/Context;

    #v0=(Reference);
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 763
    .local v4, manager:Landroid/content/pm/PackageManager;
    #v4=(Reference);
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v5

    .line 765
    .local v5, widgets:Landroid/appwidget/AppWidgetManager;
    #v5=(Reference);
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v7=(Integer);
    if-ge v7, v6, :cond_0

    .line 766
    invoke-virtual {p0, v7}, Lcom/android/launcher2/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object v2

    #v2=(Reference);
    check-cast v2, Lcom/android/launcher2/CellLayout;

    .line 769
    .local v2, layout:Lcom/android/launcher2/CellLayout;
    new-instance v0, Lcom/android/launcher2/Workspace$2;

    #v0=(UninitRef);
    move-object v1, p0

    #v1=(Reference);
    move-object v3, p1

    #v3=(Reference);
    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/Workspace$2;-><init>(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/CellLayout;Ljava/util/ArrayList;Landroid/content/pm/PackageManager;Landroid/appwidget/AppWidgetManager;)V

    #v0=(Reference);
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 765
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 845
    .end local v2           #layout:Lcom/android/launcher2/CellLayout;
    :cond_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    return-void
.end method

.method reorderScreens()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    #v6=(Null);
    const-string v7, "Launcher.Workspace"

    .line 942
    #v7=(Reference);
    const-string v4, "Launcher.Workspace"

    #v4=(Reference);
    new-instance v4, Ljava/lang/StringBuilder;

    #v4=(UninitRef);
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #v4=(Reference);
    const-string v5, "Screens before reorder "

    #v5=(Reference);
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher2/Workspace;->mScreenIds:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mScreenIds:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 945
    .local v1, count:I
    #v1=(Integer);
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mPositionMapping:[I

    if-nez v4, :cond_0

    .line 946
    new-array v4, v1, [I

    iput-object v4, p0, Lcom/android/launcher2/Workspace;->mPositionMapping:[I

    .line 947
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    #v2=(Integer);
    if-ge v2, v1, :cond_0

    .line 948
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mPositionMapping:[I

    aput v2, v4, v2

    .line 947
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 952
    .end local v2           #i:I
    :cond_0
    #v2=(Conflicted);
    new-instance v0, Ljava/util/ArrayList;

    #v0=(UninitRef);
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 953
    .local v0, bulkValue:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    #v0=(Reference);
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_1
    #v2=(Integer);v5=(Conflicted);
    if-ge v2, v1, :cond_1

    .line 954
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mScreenIds:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/launcher2/Workspace;->mPositionMapping:[I

    #v5=(Reference);
    aget v5, v5, v2

    #v5=(Integer);
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 953
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 956
    :cond_1
    #v5=(Conflicted);
    iput-object v6, p0, Lcom/android/launcher2/Workspace;->mPositionMapping:[I

    .line 958
    new-instance v3, Landroid/content/ContentValues;

    #v3=(UninitRef);
    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 960
    .local v3, values:Landroid/content/ContentValues;
    #v3=(Reference);
    const-string v4, "screenOrder"

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 961
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/android/launcher2/LauncherSettings$Screens;->CONTENT_URI:Landroid/net/Uri;

    #v5=(Reference);
    invoke-virtual {v4, v5, v3, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    #v4=(Integer);
    if-gtz v4, :cond_2

    .line 962
    const-string v4, "Launcher.Workspace"

    #v4=(Reference);
    const-string v4, "Failed to update screens table for reorder, aborting"

    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    :goto_2
    return-void

    .line 966
    :cond_2
    #v4=(Integer);
    const/4 v4, 0x0

    #v4=(Null);
    invoke-virtual {p0, v4}, Lcom/android/launcher2/Workspace;->loadScreens(Z)V

    .line 968
    const-string v4, "Launcher.Workspace"

    #v4=(Reference);
    new-instance v4, Ljava/lang/StringBuilder;

    #v4=(UninitRef);
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #v4=(Reference);
    const-string v5, "Screens after reorder "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher2/Workspace;->mScreenIds:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public setCurrentScreenById(J)V
    .locals 2
    .parameter "screenId"

    .prologue
    .line 213
    const/4 v0, 0x0

    #v0=(Null);
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/Workspace;->getScreenIndexById(J)I

    move-result v1

    #v1=(Integer);
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->setCurrentScreen(I)V

    .line 214
    return-void
.end method

.method protected setCurrentScreenInner(I)V
    .locals 12
    .parameter "screenIndex"

    .prologue
    const/4 v11, 0x1

    .line 184
    #v11=(One);
    iget v9, p0, Lcom/android/launcher2/Workspace;->mCurrentScreen:I

    #v9=(Integer);
    if-eq p1, v9, :cond_4

    iget-object v9, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    #v9=(Reference);
    if-eqz v9, :cond_4

    .line 185
    iget-object v9, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v9}, Lcom/android/launcher2/Launcher;->closeAnyFolderHotSeatOwned()Z

    .line 186
    iget-object v9, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    iget-object v9, v9, Lcom/android/launcher2/Launcher;->mGadgets:Ljava/util/ArrayList;

    if-eqz v9, :cond_4

    .line 189
    iget v9, p0, Lcom/android/launcher2/Workspace;->mCurrentScreen:I

    #v9=(Integer);
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getScreenCount()I

    move-result v10

    #v10=(Integer);
    if-ge v9, v10, :cond_1

    iget-object v9, p0, Lcom/android/launcher2/Workspace;->mScreenIds:Ljava/util/ArrayList;

    #v9=(Reference);
    iget v10, p0, Lcom/android/launcher2/Workspace;->mCurrentScreen:I

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    #v9=(LongLo);v10=(LongHi);
    move-wide v1, v9

    .line 190
    .local v1, currentId:J
    :goto_0
    #v1=(LongLo);v2=(LongHi);
    iget-object v9, p0, Lcom/android/launcher2/Workspace;->mScreenIds:Ljava/util/ArrayList;

    #v9=(Reference);
    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 192
    .local v7, nextId:J
    #v7=(LongLo);v8=(LongHi);
    iget-object v9, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    iget-object v4, v9, Lcom/android/launcher2/Launcher;->mGadgets:Ljava/util/ArrayList;

    .line 193
    .local v4, gadgets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/gadget/Gadget;>;"
    #v4=(Reference);
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    #v9=(Integer);
    sub-int v5, v9, v11

    .local v5, i:I
    :goto_1
    #v0=(Conflicted);v3=(Conflicted);v5=(Integer);v6=(Conflicted);
    if-ltz v5, :cond_2

    .line 194
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    #v3=(Reference);
    check-cast v3, Lcom/android/launcher2/gadget/Gadget;

    .line 195
    .local v3, gadget:Lcom/android/launcher2/gadget/Gadget;
    move-object v0, v3

    #v0=(Reference);
    check-cast v0, Landroid/view/View;

    move-object v9, v0

    #v9=(Reference);
    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    #v6=(Reference);
    check-cast v6, Lcom/android/launcher2/gadget/GadgetInfo;

    .line 196
    .local v6, info:Lcom/android/launcher2/gadget/GadgetInfo;
    iget-wide v9, v6, Lcom/android/launcher2/gadget/GadgetInfo;->screenId:J

    #v9=(LongLo);
    cmp-long v9, v9, v1

    #v9=(Byte);
    if-nez v9, :cond_0

    .line 197
    invoke-interface {v3}, Lcom/android/launcher2/gadget/Gadget;->onPause()V

    .line 193
    :cond_0
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 189
    .end local v1           #currentId:J
    .end local v3           #gadget:Lcom/android/launcher2/gadget/Gadget;
    .end local v4           #gadgets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/gadget/Gadget;>;"
    .end local v5           #i:I
    .end local v6           #info:Lcom/android/launcher2/gadget/GadgetInfo;
    .end local v7           #nextId:J
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Integer);v10=(Integer);
    const-wide/16 v9, -0x1

    #v9=(LongLo);v10=(LongHi);
    move-wide v1, v9

    #v1=(LongLo);v2=(LongHi);
    goto :goto_0

    .line 200
    .restart local v1       #currentId:J
    .restart local v4       #gadgets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/gadget/Gadget;>;"
    .restart local v5       #i:I
    .restart local v7       #nextId:J
    :cond_2
    #v0=(Conflicted);v3=(Conflicted);v4=(Reference);v5=(Integer);v6=(Conflicted);v7=(LongLo);v8=(LongHi);v9=(Integer);
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int v5, v9, v11

    :goto_2
    if-ltz v5, :cond_4

    .line 201
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    #v3=(Reference);
    check-cast v3, Lcom/android/launcher2/gadget/Gadget;

    .line 202
    .restart local v3       #gadget:Lcom/android/launcher2/gadget/Gadget;
    move-object v0, v3

    #v0=(Reference);
    check-cast v0, Landroid/view/View;

    move-object v9, v0

    #v9=(Reference);
    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    #v6=(Reference);
    check-cast v6, Lcom/android/launcher2/gadget/GadgetInfo;

    .line 203
    .restart local v6       #info:Lcom/android/launcher2/gadget/GadgetInfo;
    iget-wide v9, v6, Lcom/android/launcher2/gadget/GadgetInfo;->screenId:J

    #v9=(LongLo);
    cmp-long v9, v9, v7

    #v9=(Byte);
    if-nez v9, :cond_3

    .line 204
    invoke-interface {v3}, Lcom/android/launcher2/gadget/Gadget;->onResume()V

    .line 200
    :cond_3
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .line 209
    .end local v1           #currentId:J
    .end local v3           #gadget:Lcom/android/launcher2/gadget/Gadget;
    .end local v4           #gadgets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/gadget/Gadget;>;"
    .end local v5           #i:I
    .end local v6           #info:Lcom/android/launcher2/gadget/GadgetInfo;
    .end local v7           #nextId:J
    :cond_4
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);
    invoke-super {p0, p1}, Lcom/android/launcher2/DragableScreenView;->setCurrentScreenInner(I)V

    .line 210
    return-void
.end method

.method public setDragController(Lcom/android/launcher2/DragController;)V
    .locals 0
    .parameter "dragController"

    .prologue
    .line 686
    iput-object p1, p0, Lcom/android/launcher2/Workspace;->mDragController:Lcom/android/launcher2/DragController;

    .line 687
    return-void
.end method

.method setEditingPreview(Lcom/android/launcher2/WorkspaceEditingPreview;)V
    .locals 0
    .parameter "editingPreview"

    .prologue
    .line 1002
    iput-object p1, p0, Lcom/android/launcher2/Workspace;->mEditingPreview:Lcom/android/launcher2/WorkspaceEditingPreview;

    .line 1003
    return-void
.end method

.method setLauncher(Lcom/android/launcher2/Launcher;)V
    .locals 0
    .parameter "launcher"

    .prologue
    .line 682
    iput-object p1, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    .line 683
    return-void
.end method

.method setThumbnailView(Lcom/android/launcher2/WorkspaceThumbnailView;)V
    .locals 5
    .parameter "thumbnailView"

    .prologue
    const/high16 v4, 0x4000

    .line 1006
    #v4=(Integer);
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    #v1=(Reference);
    const v2, 0x7f020085

    #v2=(Integer);
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1008
    .local v0, bg:Landroid/graphics/drawable/Drawable;
    #v0=(Reference);
    iput-object p1, p0, Lcom/android/launcher2/Workspace;->mThumbnailView:Lcom/android/launcher2/WorkspaceThumbnailView;

    .line 1009
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mThumbnailView:Lcom/android/launcher2/WorkspaceThumbnailView;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    #v3=(Integer);
    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher2/WorkspaceThumbnailView;->setThumbnailMeasureSpec(II)V

    .line 1012
    new-instance v1, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;

    #v1=(UninitRef);
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mContext:Landroid/content/Context;

    #v2=(Reference);
    invoke-direct {v1, p0, v2}, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;-><init>(Lcom/android/launcher2/Workspace;Landroid/content/Context;)V

    #v1=(Reference);
    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mThumbnailViewAdapter:Lcom/android/launcher2/ThumbnailViewAdapter;

    .line 1013
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mThumbnailView:Lcom/android/launcher2/WorkspaceThumbnailView;

    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mThumbnailViewAdapter:Lcom/android/launcher2/ThumbnailViewAdapter;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/WorkspaceThumbnailView;->setAdapter(Lcom/android/launcher2/ThumbnailViewAdapter;)V

    .line 1014
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mThumbnailView:Lcom/android/launcher2/WorkspaceThumbnailView;

    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    #v2=(Integer);
    invoke-virtual {v1, v2}, Lcom/android/launcher2/WorkspaceThumbnailView;->setAnimationDuration(I)V

    .line 1015
    return-void
.end method

.method public showPreview(Z)V
    .locals 1
    .parameter "show"

    .prologue
    .line 1018
    new-instance v0, Lcom/android/launcher2/Workspace$3;

    #v0=(UninitRef);
    invoke-direct {v0, p0, p1}, Lcom/android/launcher2/Workspace$3;-><init>(Lcom/android/launcher2/Workspace;Z)V

    #v0=(Reference);
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 1024
    return-void
.end method

.method protected snapToScreen(IIZ)V
    .locals 4
    .parameter "whichScreen"
    .parameter "velocity"
    .parameter "settle"

    .prologue
    .line 554
    const/4 v1, 0x0

    #v1=(Null);
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getScreenCount()I

    move-result v2

    #v2=(Integer);
    const/4 v3, 0x1

    #v3=(One);
    sub-int/2addr v2, v3

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 556
    iput p1, p0, Lcom/android/launcher2/Workspace;->mNextScreen:I

    .line 558
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 559
    .local v0, focusedChild:Landroid/view/View;
    #v0=(Reference);
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/launcher2/Workspace;->mCurrentScreen:I

    #v1=(Integer);
    if-eq p1, v1, :cond_0

    iget v1, p0, Lcom/android/launcher2/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object v1

    #v1=(Reference);
    if-ne v0, v1, :cond_0

    .line 561
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 564
    :cond_0
    #v1=(Conflicted);
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher2/DragableScreenView;->snapToScreen(IIZ)V

    .line 565
    return-void
.end method

.method startDrag(Lcom/android/launcher2/CellLayout$CellInfo;)V
    .locals 5
    .parameter "cellInfo"

    .prologue
    .line 568
    iget-object v0, p1, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 571
    .local v0, child:Landroid/view/View;
    #v0=(Reference);
    invoke-virtual {v0}, Landroid/view/View;->isInTouchMode()Z

    move-result v2

    #v2=(Boolean);
    if-nez v2, :cond_0

    .line 583
    :goto_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    return-void

    .line 575
    :cond_0
    #v1=(Uninit);v2=(Boolean);v3=(Uninit);v4=(Uninit);
    iput-object p1, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    .line 577
    iget v2, p0, Lcom/android/launcher2/Workspace;->mCurrentScreen:I

    #v2=(Integer);
    invoke-virtual {p0, v2}, Lcom/android/launcher2/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Lcom/android/launcher2/CellLayout;

    .line 578
    .local v1, current:Lcom/android/launcher2/CellLayout;
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    #v2=(Reference);
    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->getScreenId()J

    move-result-wide v3

    #v3=(LongLo);v4=(LongHi);
    iput-wide v3, v2, Lcom/android/launcher2/CellLayout$CellInfo;->screenId:J

    .line 580
    invoke-virtual {v1, v0}, Lcom/android/launcher2/CellLayout;->onDragChild(Landroid/view/View;)V

    .line 581
    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mDragController:Lcom/android/launcher2/DragController;

    #v3=(Reference);
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/ItemInfo;

    sget v4, Lcom/android/launcher2/DragController;->DRAG_ACTION_MOVE:I

    #v4=(Integer);
    invoke-virtual {v3, v0, p0, v2, v4}, Lcom/android/launcher2/DragController;->startDrag(Landroid/view/View;Lcom/android/launcher2/DragSource;Lcom/android/launcher2/ItemInfo;I)V

    .line 582
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->invalidate()V

    goto :goto_0
.end method

.method public updateWallpaperOffsetDuringSwitchingPreview()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    #v11=(One);
    const/high16 v10, 0x3f80

    #v10=(Integer);
    const/4 v9, 0x0

    .line 317
    #v9=(Null);
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    .line 318
    .local v3, token:Landroid/os/IBinder;
    #v3=(Reference);
    iget v5, p0, Lcom/android/launcher2/Workspace;->mCurrentScreen:I

    #v5=(Integer);
    invoke-virtual {p0, v5}, Lcom/android/launcher2/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object v5

    #v5=(Reference);
    invoke-virtual {v5}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 319
    .local v0, currentAnimation:Landroid/view/animation/Animation;
    #v0=(Reference);
    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getStartTime()J

    move-result-wide v5

    #v5=(LongLo);v6=(LongHi);
    const-wide/16 v7, -0x1

    #v7=(LongLo);v8=(LongHi);
    cmp-long v5, v5, v7

    #v5=(Byte);
    if-eqz v5, :cond_0

    .line 326
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    #v5=(LongLo);
    invoke-virtual {v0}, Landroid/view/animation/Animation;->getStartTime()J

    move-result-wide v7

    sub-long/2addr v5, v7

    long-to-float v5, v5

    #v5=(Float);
    invoke-virtual {v0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v6

    #v6=(LongLo);v7=(LongHi);
    long-to-float v6, v6

    #v6=(Float);
    div-float v1, v5, v6

    .line 328
    .local v1, percentage:F
    #v1=(Float);
    invoke-static {v1, v10}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v9, v5}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 331
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getScreenCount()I

    move-result v5

    #v5=(Integer);
    if-ne v5, v11, :cond_1

    move v4, v9

    .line 334
    .local v4, xStep:F
    :goto_0
    #v4=(Float);
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getScreenCount()I

    move-result v5

    if-ne v5, v11, :cond_2

    move v2, v9

    .line 336
    .local v2, scrollX:F
    :goto_1
    #v2=(Float);
    iget-object v5, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    #v5=(Reference);
    invoke-static {v2, v10}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v9, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    invoke-virtual {v5, v4, v9, v6, v9}, Lcom/android/launcher2/Launcher;->updateWallpaperOffset(FFFF)V

    .line 338
    .end local v1           #percentage:F
    .end local v2           #scrollX:F
    .end local v4           #xStep:F
    :cond_0
    #v1=(Conflicted);v2=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);
    return-void

    .line 331
    .restart local v1       #percentage:F
    :cond_1
    #v1=(Float);v2=(Uninit);v4=(Uninit);v5=(Integer);v6=(Float);v7=(LongHi);v8=(LongHi);
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getScreenCount()I

    move-result v5

    sub-int/2addr v5, v11

    int-to-float v5, v5

    #v5=(Float);
    div-float v5, v10, v5

    move v4, v5

    #v4=(Float);
    goto :goto_0

    .line 334
    .restart local v4       #xStep:F
    :cond_2
    #v5=(Integer);
    iget v5, p0, Lcom/android/launcher2/Workspace;->mPreviousScreen:I

    int-to-float v5, v5

    #v5=(Float);
    sub-float v6, v10, v1

    mul-float/2addr v5, v6

    iget v6, p0, Lcom/android/launcher2/Workspace;->mCurrentScreen:I

    #v6=(Integer);
    int-to-float v6, v6

    #v6=(Float);
    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    mul-float/2addr v5, v4

    move v2, v5

    #v2=(Float);
    goto :goto_1
.end method

*/}
