package com.android.launcher2; class HotSeats {/*

.class public Lcom/android/launcher2/HotSeats;
.super Landroid/widget/LinearLayout;
.source "HotSeats.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/android/launcher2/DragSource;
.implements Lcom/android/launcher2/DropTarget;


# static fields
.field private static final PLACE_HOLDER_SEAT:Lcom/android/launcher2/ItemInfo;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mCurrentSeats:[Lcom/android/launcher2/ItemInfo;

.field private mDragController:Lcom/android/launcher2/DragController;

.field private mDraggingItem:Lcom/android/launcher2/ItemInfo;

.field private mIsLoading:Z

.field private final mIsReplaceSupported:Z

.field private mLauncher:Lcom/android/launcher2/Launcher;

.field private final mSavedSeats:[Lcom/android/launcher2/ItemInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/android/launcher2/ItemInfo;

    #v0=(UninitRef);
    invoke-direct {v0}, Lcom/android/launcher2/ItemInfo;-><init>()V

    #v0=(Reference);
    sput-object v0, Lcom/android/launcher2/HotSeats;->PLACE_HOLDER_SEAT:Lcom/android/launcher2/ItemInfo;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x6

    #v2=(PosByte);
    const/4 v1, 0x1

    .line 37
    #v1=(One);
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    #p0=(Reference);
    iput-boolean v1, p0, Lcom/android/launcher2/HotSeats;->mIsLoading:Z

    .line 38
    iput-boolean v1, p0, Lcom/android/launcher2/HotSeats;->mIsReplaceSupported:Z

    .line 39
    new-array v0, v2, [Lcom/android/launcher2/ItemInfo;

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/launcher2/HotSeats;->mCurrentSeats:[Lcom/android/launcher2/ItemInfo;

    .line 40
    new-array v0, v2, [Lcom/android/launcher2/ItemInfo;

    iput-object v0, p0, Lcom/android/launcher2/HotSeats;->mSavedSeats:[Lcom/android/launcher2/ItemInfo;

    .line 41
    iput-object p1, p0, Lcom/android/launcher2/HotSeats;->mContext:Landroid/content/Context;

    .line 42
    invoke-virtual {p0, v1}, Lcom/android/launcher2/HotSeats;->setDrawingCacheEnabled(Z)V

    .line 43
    return-void
.end method

.method private getSeatsCount()I
    .locals 4

    .prologue
    .line 231
    const/4 v0, 0x0

    .line 232
    .local v0, count:I
    #v0=(Null);
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    #v0=(Integer);v1=(Integer);v2=(Conflicted);v3=(Conflicted);
    const/4 v2, 0x6

    #v2=(PosByte);
    if-ge v1, v2, :cond_1

    .line 233
    iget-object v2, p0, Lcom/android/launcher2/HotSeats;->mSavedSeats:[Lcom/android/launcher2/ItemInfo;

    #v2=(Reference);
    aget-object v2, v2, v1

    #v2=(Null);
    iget-object v3, p0, Lcom/android/launcher2/HotSeats;->mDraggingItem:Lcom/android/launcher2/ItemInfo;

    #v3=(Reference);
    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/HotSeats;->mSavedSeats:[Lcom/android/launcher2/ItemInfo;

    #v2=(Reference);
    aget-object v2, v2, v1

    #v2=(Null);
    if-eqz v2, :cond_0

    .line 235
    add-int/lit8 v0, v0, 0x1

    .line 232
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 238
    :cond_1
    #v2=(PosByte);v3=(Conflicted);
    return v0
.end method

.method private getVisibleSeatsCount()I
    .locals 4

    .prologue
    .line 242
    const/4 v0, 0x0

    .line 243
    .local v0, count:I
    #v0=(Null);
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    #v0=(Integer);v1=(Integer);v2=(Conflicted);v3=(Conflicted);
    const/4 v2, 0x6

    #v2=(PosByte);
    if-ge v1, v2, :cond_1

    .line 244
    iget-object v2, p0, Lcom/android/launcher2/HotSeats;->mSavedSeats:[Lcom/android/launcher2/ItemInfo;

    #v2=(Reference);
    aget-object v2, v2, v1

    #v2=(Null);
    iget-object v3, p0, Lcom/android/launcher2/HotSeats;->mDraggingItem:Lcom/android/launcher2/ItemInfo;

    #v3=(Reference);
    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/HotSeats;->mSavedSeats:[Lcom/android/launcher2/ItemInfo;

    #v2=(Reference);
    aget-object v2, v2, v1

    #v2=(Null);
    sget-object v3, Lcom/android/launcher2/HotSeats;->PLACE_HOLDER_SEAT:Lcom/android/launcher2/ItemInfo;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/HotSeats;->mSavedSeats:[Lcom/android/launcher2/ItemInfo;

    #v2=(Reference);
    aget-object v2, v2, v1

    #v2=(Null);
    if-eqz v2, :cond_0

    .line 247
    add-int/lit8 v0, v0, 0x1

    .line 243
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 250
    :cond_1
    #v2=(PosByte);v3=(Conflicted);
    return v0
.end method

.method private isDropAllowed(ILcom/android/launcher2/ItemInfo;)Z
    .locals 8
    .parameter "x"
    .parameter "dragInfo"

    .prologue
    const/4 v7, 0x1

    #v7=(One);
    const/4 v6, 0x0

    .line 107
    #v6=(Null);
    invoke-direct {p0}, Lcom/android/launcher2/HotSeats;->getSeatsCount()I

    move-result v0

    .line 108
    .local v0, count:I
    #v0=(Integer);
    mul-int v2, p1, v0

    #v2=(Integer);
    invoke-virtual {p0}, Lcom/android/launcher2/HotSeats;->getWidth()I

    move-result v3

    #v3=(Integer);
    div-int/2addr v2, v3

    sub-int v3, v0, v7

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 109
    .local v1, pos:I
    #v1=(Integer);
    iget-object v2, p0, Lcom/android/launcher2/HotSeats;->mCurrentSeats:[Lcom/android/launcher2/ItemInfo;

    #v2=(Reference);
    aget-object v2, v2, v1

    #v2=(Null);
    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/HotSeats;->mCurrentSeats:[Lcom/android/launcher2/ItemInfo;

    #v2=(Reference);
    aget-object v2, v2, v1

    #v2=(Null);
    instance-of v2, v2, Lcom/android/launcher2/FolderInfo;

    #v2=(Boolean);
    if-eqz v2, :cond_0

    iget-wide v2, p2, Lcom/android/launcher2/ItemInfo;->container:J

    #v2=(LongLo);v3=(LongHi);
    const-wide/16 v4, 0x0

    #v4=(LongLo);v5=(LongHi);
    cmp-long v2, v2, v4

    #v2=(Byte);
    if-lez v2, :cond_0

    move v2, v6

    .line 113
    :goto_0
    #v2=(Boolean);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    return v2

    :cond_0
    #v2=(Byte);
    move v2, v7

    #v2=(One);
    goto :goto_0
.end method

.method private isDropAllowed(Lcom/android/launcher2/DragSource;Lcom/android/launcher2/ItemInfo;)Z
    .locals 5
    .parameter "source"
    .parameter "dragInfo"

    .prologue
    const/4 v4, 0x1

    #v4=(One);
    const/4 v3, 0x0

    .line 99
    #v3=(Null);
    iget-boolean v1, p0, Lcom/android/launcher2/HotSeats;->mIsReplaceSupported:Z

    #v1=(Boolean);
    if-eqz v1, :cond_2

    if-eq p1, p0, :cond_2

    move v0, v4

    .line 100
    .local v0, replaceSupported:Z
    :goto_0
    #v0=(Boolean);
    iget-boolean v1, p0, Lcom/android/launcher2/HotSeats;->mIsLoading:Z

    if-nez v1, :cond_3

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/launcher2/HotSeats;->getVisibleSeatsCount()I

    move-result v1

    #v1=(Integer);
    const/4 v2, 0x6

    #v2=(PosByte);
    if-ge v1, v2, :cond_3

    :cond_0
    #v2=(Conflicted);
    iget v1, p2, Lcom/android/launcher2/ItemInfo;->itemType:I

    if-eqz v1, :cond_1

    iget v1, p2, Lcom/android/launcher2/ItemInfo;->itemType:I

    const/4 v2, 0x2

    #v2=(PosByte);
    if-ne v1, v2, :cond_3

    :cond_1
    #v2=(Conflicted);
    move v1, v4

    :goto_1
    #v1=(Boolean);
    return v1

    .end local v0           #replaceSupported:Z
    :cond_2
    #v0=(Uninit);v2=(Uninit);
    move v0, v3

    .line 99
    #v0=(Null);
    goto :goto_0

    .restart local v0       #replaceSupported:Z
    :cond_3
    #v0=(Boolean);v1=(Integer);v2=(Conflicted);
    move v1, v3

    .line 100
    #v1=(Null);
    goto :goto_1
.end method

.method private restoreSeats()V
    .locals 3

    .prologue
    .line 51
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    #v0=(Integer);v1=(Conflicted);v2=(Conflicted);
    const/4 v1, 0x6

    #v1=(PosByte);
    if-ge v0, v1, :cond_1

    .line 52
    iget-object v1, p0, Lcom/android/launcher2/HotSeats;->mDraggingItem:Lcom/android/launcher2/ItemInfo;

    #v1=(Reference);
    iget-object v2, p0, Lcom/android/launcher2/HotSeats;->mSavedSeats:[Lcom/android/launcher2/ItemInfo;

    #v2=(Reference);
    aget-object v2, v2, v0

    #v2=(Null);
    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/HotSeats;->mSavedSeats:[Lcom/android/launcher2/ItemInfo;

    aget-object v1, v1, v0

    :goto_1
    #v1=(Null);
    invoke-direct {p0, v0, v1}, Lcom/android/launcher2/HotSeats;->setSeat(ILcom/android/launcher2/ItemInfo;)V

    .line 51
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 52
    :cond_0
    #v1=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    goto :goto_1

    .line 54
    :cond_1
    #v1=(PosByte);v2=(Conflicted);
    return-void
.end method

.method private saveSeats()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x1

    #v0=(One);
    invoke-direct {p0, v0}, Lcom/android/launcher2/HotSeats;->saveSeats(Z)V

    .line 58
    return-void
.end method

.method private saveSeats(Z)V
    .locals 8
    .parameter "updateInDatabase"

    .prologue
    const/4 v7, 0x0

    #v7=(Null);
    const/4 v6, 0x6

    .line 62
    #v6=(PosByte);
    new-instance v3, Landroid/content/ContentValues;

    #v3=(UninitRef);
    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 63
    .local v3, values:Landroid/content/ContentValues;
    #v3=(Reference);
    iget-object v4, p0, Lcom/android/launcher2/HotSeats;->mContext:Landroid/content/Context;

    #v4=(Reference);
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 65
    .local v0, cr:Landroid/content/ContentResolver;
    #v0=(Reference);
    const/4 v1, 0x0

    .line 66
    .local v1, currentPos:I
    #v1=(Null);
    const/4 v2, 0x0

    .line 67
    .local v2, savedPos:I
    :goto_0
    #v1=(Integer);v2=(Integer);v5=(Conflicted);
    if-ge v1, v6, :cond_2

    .line 68
    iget-object v4, p0, Lcom/android/launcher2/HotSeats;->mCurrentSeats:[Lcom/android/launcher2/ItemInfo;

    aget-object v4, v4, v1

    #v4=(Null);
    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/launcher2/HotSeats;->mCurrentSeats:[Lcom/android/launcher2/ItemInfo;

    #v4=(Reference);
    aget-object v4, v4, v1

    #v4=(Null);
    sget-object v5, Lcom/android/launcher2/HotSeats;->PLACE_HOLDER_SEAT:Lcom/android/launcher2/ItemInfo;

    #v5=(Reference);
    if-eq v4, v5, :cond_1

    .line 70
    iget-object v4, p0, Lcom/android/launcher2/HotSeats;->mSavedSeats:[Lcom/android/launcher2/ItemInfo;

    #v4=(Reference);
    iget-object v5, p0, Lcom/android/launcher2/HotSeats;->mCurrentSeats:[Lcom/android/launcher2/ItemInfo;

    aget-object v5, v5, v1

    #v5=(Null);
    aput-object v5, v4, v2

    .line 71
    iget-object v4, p0, Lcom/android/launcher2/HotSeats;->mSavedSeats:[Lcom/android/launcher2/ItemInfo;

    aget-object v4, v4, v2

    #v4=(Null);
    iput v2, v4, Lcom/android/launcher2/ItemInfo;->cellX:I

    .line 72
    if-eqz p1, :cond_0

    .line 73
    const-string v4, "cellX"

    #v4=(Reference);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    #v5=(Reference);
    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 74
    iget-object v4, p0, Lcom/android/launcher2/HotSeats;->mSavedSeats:[Lcom/android/launcher2/ItemInfo;

    aget-object v4, v4, v2

    #v4=(Null);
    iget-wide v4, v4, Lcom/android/launcher2/ItemInfo;->id:J

    #v4=(LongLo);v5=(LongHi);
    invoke-static {v4, v5}, Lcom/android/launcher2/LauncherSettings$Favorites;->getContentUri(J)Landroid/net/Uri;

    move-result-object v4

    #v4=(Reference);
    invoke-virtual {v0, v4, v3, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 76
    :cond_0
    #v5=(Conflicted);
    add-int/lit8 v2, v2, 0x1

    .line 78
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 81
    :cond_2
    :goto_1
    if-ge v2, v6, :cond_3

    .line 82
    iget-object v4, p0, Lcom/android/launcher2/HotSeats;->mSavedSeats:[Lcom/android/launcher2/ItemInfo;

    aput-object v7, v4, v2

    .line 83
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 86
    :cond_3
    const/4 v1, 0x0

    .line 87
    :goto_2
    if-ge v1, v6, :cond_4

    .line 88
    iget-object v4, p0, Lcom/android/launcher2/HotSeats;->mSavedSeats:[Lcom/android/launcher2/ItemInfo;

    aget-object v4, v4, v1

    #v4=(Null);
    invoke-direct {p0, v1, v4}, Lcom/android/launcher2/HotSeats;->setSeat(ILcom/android/launcher2/ItemInfo;)V

    .line 89
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 91
    :cond_4
    #v4=(Reference);
    return-void
.end method

.method private setSeat(ILcom/android/launcher2/ItemInfo;)V
    .locals 4
    .parameter "pos"
    .parameter "info"

    .prologue
    .line 254
    iget-object v3, p0, Lcom/android/launcher2/HotSeats;->mCurrentSeats:[Lcom/android/launcher2/ItemInfo;

    #v3=(Reference);
    aget-object v3, v3, p1

    #v3=(Null);
    if-ne v3, p2, :cond_0

    .line 277
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Integer);
    return-void

    .line 256
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Null);
    iget-object v3, p0, Lcom/android/launcher2/HotSeats;->mCurrentSeats:[Lcom/android/launcher2/ItemInfo;

    #v3=(Reference);
    aput-object p2, v3, p1

    .line 257
    invoke-virtual {p0, p1}, Lcom/android/launcher2/HotSeats;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    #v2=(Reference);
    check-cast v2, Lcom/android/launcher2/HotSeatButton;

    .line 258
    .local v2, v:Lcom/android/launcher2/HotSeatButton;
    iget-object v3, p0, Lcom/android/launcher2/HotSeats;->mDragController:Lcom/android/launcher2/DragController;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/HotSeatButton;->unbind(Lcom/android/launcher2/DragController;)V

    .line 259
    if-eqz p2, :cond_2

    .line 260
    sget-object v3, Lcom/android/launcher2/HotSeats;->PLACE_HOLDER_SEAT:Lcom/android/launcher2/ItemInfo;

    if-eq p2, v3, :cond_1

    .line 261
    iget-object v3, p0, Lcom/android/launcher2/HotSeats;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v3, p0, p2}, Lcom/android/launcher2/Launcher;->createItemIcon(Landroid/view/ViewGroup;Lcom/android/launcher2/ItemInfo;)Lcom/android/launcher2/ItemIcon;

    move-result-object v0

    .line 262
    .local v0, icon:Lcom/android/launcher2/ItemIcon;
    #v0=(Reference);
    const/4 v3, 0x1

    #v3=(One);
    invoke-virtual {v0, v3}, Lcom/android/launcher2/ItemIcon;->setCompactViewMode(Z)V

    .line 263
    iget-object v3, p0, Lcom/android/launcher2/HotSeats;->mDragController:Lcom/android/launcher2/DragController;

    #v3=(Reference);
    invoke-virtual {v2, v0, v3}, Lcom/android/launcher2/HotSeatButton;->bind(Lcom/android/launcher2/ItemIcon;Lcom/android/launcher2/DragController;)V

    .line 265
    .end local v0           #icon:Lcom/android/launcher2/ItemIcon;
    :cond_1
    #v0=(Conflicted);
    invoke-virtual {v2, p2}, Lcom/android/launcher2/HotSeatButton;->setTag(Ljava/lang/Object;)V

    .line 266
    invoke-virtual {v2, p0}, Lcom/android/launcher2/HotSeatButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 267
    invoke-virtual {v2}, Lcom/android/launcher2/HotSeatButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 268
    .local v1, lp:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v3, -0x1

    #v3=(Byte);
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 269
    const/high16 v3, 0x3f80

    #v3=(Integer);
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 270
    invoke-virtual {v2, v1}, Lcom/android/launcher2/HotSeatButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 272
    .end local v1           #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_2
    #v0=(Uninit);v1=(Uninit);v3=(Reference);
    invoke-virtual {v2}, Lcom/android/launcher2/HotSeatButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 273
    .restart local v1       #lp:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v3, 0x0

    #v3=(Null);
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 274
    const/4 v3, 0x0

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 275
    invoke-virtual {v2, v1}, Lcom/android/launcher2/HotSeatButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private setSeats(ILcom/android/launcher2/ItemInfo;)I
    .locals 12
    .parameter "x"
    .parameter "info"

    .prologue
    const/4 v11, 0x6

    #v11=(PosByte);
    const/4 v10, 0x0

    .line 147
    #v10=(Null);
    const/4 v4, -0x1

    .line 148
    .local v4, replacedPos:I
    #v4=(Byte);
    invoke-direct {p0}, Lcom/android/launcher2/HotSeats;->getVisibleSeatsCount()I

    move-result v1

    .line 150
    .local v1, count:I
    #v1=(Integer);
    if-ne v1, v11, :cond_2

    .line 151
    mul-int v8, p1, v1

    #v8=(Integer);
    invoke-virtual {p0}, Lcom/android/launcher2/HotSeats;->getWidth()I

    move-result v9

    #v9=(Integer);
    div-int/2addr v8, v9

    const/4 v9, 0x1

    #v9=(One);
    sub-int v9, v1, v9

    #v9=(Integer);
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v10, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 188
    :cond_0
    :goto_0
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Integer);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);
    if-ltz v4, :cond_1

    .line 189
    invoke-direct {p0}, Lcom/android/launcher2/HotSeats;->restoreSeats()V

    .line 190
    invoke-direct {p0, v4, p2}, Lcom/android/launcher2/HotSeats;->setSeat(ILcom/android/launcher2/ItemInfo;)V

    .line 193
    :cond_1
    return v4

    .line 152
    :cond_2
    #v0=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Byte);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);
    if-nez v1, :cond_3

    .line 153
    const/4 v4, 0x0

    #v4=(Null);
    goto :goto_0

    .line 155
    :cond_3
    #v4=(Byte);
    invoke-virtual {p0}, Lcom/android/launcher2/HotSeats;->getWidth()I

    move-result v8

    #v8=(Integer);
    div-int v6, v8, v1

    .line 157
    .local v6, seatWidth:I
    #v6=(Integer);
    iget-boolean v8, p0, Lcom/android/launcher2/HotSeats;->mIsReplaceSupported:Z

    #v8=(Boolean);
    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/launcher2/HotSeats;->mDraggingItem:Lcom/android/launcher2/ItemInfo;

    #v8=(Reference);
    if-nez v8, :cond_4

    const/16 v8, 0x24

    #v8=(PosByte);
    move v0, v8

    .line 159
    .local v0, buffer:I
    :goto_1
    #v0=(PosByte);v8=(Conflicted);
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    #v2=(Integer);v7=(Conflicted);v9=(Conflicted);
    add-int/lit8 v8, v1, 0x1

    #v8=(Integer);
    if-ge v2, v8, :cond_0

    .line 160
    mul-int v8, v6, v2

    div-int/lit8 v9, v6, 0x2

    #v9=(Integer);
    add-int v7, v8, v9

    .line 162
    .local v7, seatX:I
    #v7=(Integer);
    if-ge v2, v1, :cond_5

    sub-int v8, p1, v7

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-ge v8, v0, :cond_5

    .line 163
    move v4, v2

    .line 164
    #v4=(Integer);
    goto :goto_0

    .end local v0           #buffer:I
    .end local v2           #i:I
    .end local v7           #seatX:I
    :cond_4
    #v0=(Uninit);v2=(Uninit);v4=(Byte);v7=(Uninit);v8=(Conflicted);v9=(Uninit);
    move v0, v10

    .line 157
    #v0=(Null);
    goto :goto_1

    .line 167
    .restart local v0       #buffer:I
    .restart local v2       #i:I
    .restart local v7       #seatX:I
    :cond_5
    #v0=(PosByte);v2=(Integer);v7=(Integer);v8=(Integer);v9=(Integer);
    sub-int v8, v7, v6

    add-int/2addr v8, v0

    if-le p1, v8, :cond_8

    sub-int v8, v7, v0

    if-gt p1, v8, :cond_8

    .line 168
    const/4 v3, 0x0

    .line 169
    .local v3, pos:I
    #v3=(Null);
    const/4 v5, 0x0

    .line 170
    .local v5, savedPos:I
    :goto_3
    #v3=(Integer);v5=(Integer);
    if-ge v3, v11, :cond_0

    .line 171
    if-ne v3, v2, :cond_6

    .line 172
    invoke-direct {p0, v3, p2}, Lcom/android/launcher2/HotSeats;->setSeat(ILcom/android/launcher2/ItemInfo;)V

    .line 181
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 175
    :cond_6
    iget-object v8, p0, Lcom/android/launcher2/HotSeats;->mDraggingItem:Lcom/android/launcher2/ItemInfo;

    #v8=(Reference);
    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/android/launcher2/HotSeats;->mDraggingItem:Lcom/android/launcher2/ItemInfo;

    iget-object v9, p0, Lcom/android/launcher2/HotSeats;->mSavedSeats:[Lcom/android/launcher2/ItemInfo;

    #v9=(Reference);
    aget-object v9, v9, v5

    #v9=(Null);
    if-ne v8, v9, :cond_7

    .line 176
    add-int/lit8 v5, v5, 0x1

    .line 178
    :cond_7
    #v9=(Integer);
    iget-object v8, p0, Lcom/android/launcher2/HotSeats;->mSavedSeats:[Lcom/android/launcher2/ItemInfo;

    aget-object v8, v8, v5

    #v8=(Null);
    invoke-direct {p0, v3, v8}, Lcom/android/launcher2/HotSeats;->setSeat(ILcom/android/launcher2/ItemInfo;)V

    .line 179
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 159
    .end local v3           #pos:I
    .end local v5           #savedPos:I
    :cond_8
    #v3=(Uninit);v5=(Uninit);v8=(Integer);
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
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
    .line 95
    invoke-direct {p0, p1, p7}, Lcom/android/launcher2/HotSeats;->isDropAllowed(Lcom/android/launcher2/DragSource;Lcom/android/launcher2/ItemInfo;)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method findEmptySeat()I
    .locals 2

    .prologue
    .line 326
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    #v0=(Integer);v1=(Conflicted);
    const/4 v1, 0x6

    #v1=(PosByte);
    if-ge v0, v1, :cond_1

    .line 327
    invoke-virtual {p0, v0}, Lcom/android/launcher2/HotSeats;->isEmptySeat(I)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_0

    move v1, v0

    .line 331
    :goto_1
    #v1=(Integer);
    return v1

    .line 326
    :cond_0
    #v1=(Boolean);
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 331
    :cond_1
    #v1=(PosByte);
    const/4 v1, -0x1

    #v1=(Byte);
    goto :goto_1
.end method

.method public finishBinding()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 412
    #v0=(Null);
    invoke-direct {p0, v0}, Lcom/android/launcher2/HotSeats;->saveSeats(Z)V

    .line 413
    iput-boolean v0, p0, Lcom/android/launcher2/HotSeats;->mIsLoading:Z

    .line 414
    return-void
.end method

.method public getItemIcon(Lcom/android/launcher2/FolderInfo;)Lcom/android/launcher2/ItemIcon;
    .locals 2
    .parameter "fi"

    .prologue
    .line 395
    invoke-virtual {p0, p1}, Lcom/android/launcher2/HotSeats;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/launcher2/HotSeatButton;

    .line 396
    .local v0, btn:Lcom/android/launcher2/HotSeatButton;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/HotSeatButton;->getChildCount()I

    move-result v1

    #v1=(Integer);
    if-eqz v1, :cond_0

    .line 397
    const/4 v1, 0x0

    #v1=(Null);
    invoke-virtual {v0, v1}, Lcom/android/launcher2/HotSeatButton;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/launcher2/ItemIcon;

    move-object v1, p0

    .line 399
    :goto_0
    #v1=(Reference);
    return-object v1

    .restart local p0
    :cond_0
    #v1=(Conflicted);
    const/4 v1, 0x0

    #v1=(Null);
    goto :goto_0
.end method

.method isEmptySeat(I)Z
    .locals 3
    .parameter "i"

    .prologue
    const/4 v2, 0x0

    .line 322
    #v2=(Null);
    const/4 v0, 0x6

    #v0=(PosByte);
    if-ge p1, v0, :cond_2

    if-ltz p1, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/HotSeats;->mCurrentSeats:[Lcom/android/launcher2/ItemInfo;

    #v0=(Reference);
    aget-object v0, v0, p1

    #v0=(Null);
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/HotSeats;->mCurrentSeats:[Lcom/android/launcher2/ItemInfo;

    #v0=(Reference);
    aget-object v0, v0, p1

    #v0=(Null);
    sget-object v1, Lcom/android/launcher2/HotSeats;->PLACE_HOLDER_SEAT:Lcom/android/launcher2/ItemInfo;

    #v1=(Reference);
    if-ne v0, v1, :cond_1

    :cond_0
    #v1=(Conflicted);
    const/4 v0, 0x1

    :goto_0
    #v0=(Boolean);
    return v0

    :cond_1
    #v0=(Null);v1=(Reference);
    move v0, v2

    goto :goto_0

    :cond_2
    #v0=(PosByte);v1=(Uninit);
    move v0, v2

    #v0=(Null);
    goto :goto_0
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
    .line 118
    return-void
.end method

.method public onDragExit(Lcom/android/launcher2/DragSource;IIIILcom/android/launcher2/DragView;Lcom/android/launcher2/ItemInfo;)V
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
    invoke-direct {p0, p1, p7}, Lcom/android/launcher2/HotSeats;->isDropAllowed(Lcom/android/launcher2/DragSource;Lcom/android/launcher2/ItemInfo;)Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_1

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    invoke-direct {p0, p2, p7}, Lcom/android/launcher2/HotSeats;->isDropAllowed(ILcom/android/launcher2/ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    invoke-direct {p0}, Lcom/android/launcher2/HotSeats;->restoreSeats()V

    goto :goto_0
.end method

.method public onDragOver(Lcom/android/launcher2/DragSource;IIIILcom/android/launcher2/DragView;Lcom/android/launcher2/ItemInfo;)V
    .locals 1
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    .line 135
    invoke-direct {p0, p1, p7}, Lcom/android/launcher2/HotSeats;->isDropAllowed(Lcom/android/launcher2/DragSource;Lcom/android/launcher2/ItemInfo;)Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_1

    .line 144
    :cond_0
    :goto_0
    #v0=(Conflicted);
    return-void

    .line 139
    :cond_1
    #v0=(Boolean);
    invoke-direct {p0, p2, p7}, Lcom/android/launcher2/HotSeats;->isDropAllowed(ILcom/android/launcher2/ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    sget-object v0, Lcom/android/launcher2/HotSeats;->PLACE_HOLDER_SEAT:Lcom/android/launcher2/ItemInfo;

    #v0=(Reference);
    invoke-direct {p0, p2, v0}, Lcom/android/launcher2/HotSeats;->setSeats(ILcom/android/launcher2/ItemInfo;)I

    goto :goto_0
.end method

.method public onDrop(Lcom/android/launcher2/DragSource;IIIILcom/android/launcher2/DragView;Lcom/android/launcher2/ItemInfo;)Z
    .locals 13
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    .line 199
    move-object v0, p0

    #v0=(Reference);
    move v1, p2

    #v1=(Integer);
    move-object/from16 v2, p7

    #v2=(Reference);
    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/HotSeats;->isDropAllowed(ILcom/android/launcher2/ItemInfo;)Z

    move-result v3

    #v3=(Boolean);
    if-nez v3, :cond_0

    .line 200
    const/4 v3, 0x0

    .line 227
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);
    return v3

    .line 203
    :cond_0
    #v0=(Reference);v1=(Integer);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Uninit);v11=(Uninit);v12=(Uninit);
    move-object v0, p0

    move v1, p2

    move-object/from16 v2, p7

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/HotSeats;->setSeats(ILcom/android/launcher2/ItemInfo;)I

    move-result v12

    .line 204
    .local v12, replacedPos:I
    #v12=(Integer);
    if-ltz v12, :cond_3

    iget-object v3, p0, Lcom/android/launcher2/HotSeats;->mSavedSeats:[Lcom/android/launcher2/ItemInfo;

    #v3=(Reference);
    aget-object v3, v3, v12

    #v3=(Null);
    move-object v11, v3

    .line 205
    .local v11, replaced:Lcom/android/launcher2/ItemInfo;
    :goto_1
    #v11=(Null);
    if-eqz v11, :cond_1

    .line 206
    move-object/from16 v0, p7

    iget-wide v0, v0, Lcom/android/launcher2/ItemInfo;->container:J

    #v0=(LongLo);v1=(LongHi);
    move-wide v3, v0

    #v3=(LongLo);v4=(LongHi);
    iput-wide v3, v11, Lcom/android/launcher2/ItemInfo;->container:J

    .line 207
    move-object/from16 v0, p7

    #v0=(Reference);
    iget-wide v0, v0, Lcom/android/launcher2/ItemInfo;->screenId:J

    #v0=(LongLo);
    move-wide v3, v0

    iput-wide v3, v11, Lcom/android/launcher2/ItemInfo;->screenId:J

    .line 208
    move-object/from16 v0, p7

    #v0=(Reference);
    iget v0, v0, Lcom/android/launcher2/ItemInfo;->cellX:I

    #v0=(Integer);
    move v3, v0

    #v3=(Integer);
    iput v3, v11, Lcom/android/launcher2/ItemInfo;->cellX:I

    .line 209
    move-object/from16 v0, p7

    #v0=(Reference);
    iget v0, v0, Lcom/android/launcher2/ItemInfo;->cellY:I

    #v0=(Integer);
    move v3, v0

    iput v3, v11, Lcom/android/launcher2/ItemInfo;->cellY:I

    .line 212
    :cond_1
    #v0=(Conflicted);v1=(Conflicted);v4=(Conflicted);
    invoke-direct {p0}, Lcom/android/launcher2/HotSeats;->saveSeats()V

    .line 214
    iget-object v3, p0, Lcom/android/launcher2/HotSeats;->mDraggingItem:Lcom/android/launcher2/ItemInfo;

    #v3=(Reference);
    if-nez v3, :cond_2

    .line 216
    iget-object v3, p0, Lcom/android/launcher2/HotSeats;->mContext:Landroid/content/Context;

    const-wide/16 v5, -0x65

    #v5=(LongLo);v6=(LongHi);
    const-wide/16 v7, 0x0

    #v7=(LongLo);v8=(LongHi);
    move-object/from16 v0, p7

    #v0=(Reference);
    iget v0, v0, Lcom/android/launcher2/ItemInfo;->cellX:I

    #v0=(Integer);
    move v9, v0

    #v9=(Integer);
    const/4 v10, 0x0

    #v10=(Null);
    move-object/from16 v4, p7

    #v4=(Reference);
    invoke-static/range {v3 .. v10}, Lcom/android/launcher2/LauncherModel;->moveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;JJII)Z

    .line 218
    if-eqz v11, :cond_2

    .line 220
    iget-object v3, p0, Lcom/android/launcher2/HotSeats;->mContext:Landroid/content/Context;

    iget-wide v5, v11, Lcom/android/launcher2/ItemInfo;->container:J

    iget-wide v7, v11, Lcom/android/launcher2/ItemInfo;->screenId:J

    iget v9, v11, Lcom/android/launcher2/ItemInfo;->cellX:I

    iget v10, v11, Lcom/android/launcher2/ItemInfo;->cellY:I

    #v10=(Integer);
    move-object v4, v11

    #v4=(Null);
    invoke-static/range {v3 .. v10}, Lcom/android/launcher2/LauncherModel;->moveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;JJII)Z

    .line 223
    iget-object v3, p0, Lcom/android/launcher2/HotSeats;->mLauncher:Lcom/android/launcher2/Launcher;

    const/4 v4, 0x0

    invoke-virtual {v3, v11, v4}, Lcom/android/launcher2/Launcher;->addItem(Lcom/android/launcher2/ItemInfo;Z)V

    .line 227
    :cond_2
    #v0=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);
    const/4 v3, 0x1

    #v3=(One);
    goto :goto_0

    .line 204
    .end local v11           #replaced:Lcom/android/launcher2/ItemInfo;
    :cond_3
    #v0=(Reference);v1=(Integer);v3=(Boolean);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Uninit);v11=(Uninit);
    const/4 v3, 0x0

    #v3=(Null);
    move-object v11, v3

    #v11=(Null);
    goto :goto_1
.end method

.method public onDropCompleted(Landroid/view/View;Z)V
    .locals 1
    .parameter "target"
    .parameter "success"

    .prologue
    .line 280
    const/4 v0, 0x0

    #v0=(Null);
    iput-object v0, p0, Lcom/android/launcher2/HotSeats;->mDraggingItem:Lcom/android/launcher2/ItemInfo;

    .line 282
    if-nez p2, :cond_0

    .line 283
    invoke-direct {p0}, Lcom/android/launcher2/HotSeats;->restoreSeats()V

    .line 287
    :goto_0
    return-void

    .line 286
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher2/HotSeats;->saveSeats()V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 47
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 48
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    .line 301
    #v1=(Null);
    iget-boolean v0, p0, Lcom/android/launcher2/HotSeats;->mIsLoading:Z

    #v0=(Boolean);
    if-eqz v0, :cond_0

    move v0, v1

    .line 318
    :goto_0
    #v1=(Reference);v2=(Conflicted);
    return v0

    .line 305
    :cond_0
    #v1=(Null);v2=(Uninit);
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/launcher2/ItemInfo;

    iput-object v0, p0, Lcom/android/launcher2/HotSeats;->mDraggingItem:Lcom/android/launcher2/ItemInfo;

    .line 306
    iget-object v0, p0, Lcom/android/launcher2/HotSeats;->mDraggingItem:Lcom/android/launcher2/ItemInfo;

    if-nez v0, :cond_1

    move v0, v1

    .line 307
    #v0=(Null);
    goto :goto_0

    .line 310
    :cond_1
    #v0=(Reference);
    iget-object v0, p0, Lcom/android/launcher2/HotSeats;->mDraggingItem:Lcom/android/launcher2/ItemInfo;

    instance-of v0, v0, Lcom/android/launcher2/FolderInfo;

    #v0=(Boolean);
    if-eqz v0, :cond_2

    .line 311
    iget-object v0, p0, Lcom/android/launcher2/HotSeats;->mDraggingItem:Lcom/android/launcher2/ItemInfo;

    #v0=(Reference);
    check-cast v0, Lcom/android/launcher2/FolderInfo;

    iget-boolean v0, v0, Lcom/android/launcher2/FolderInfo;->opened:Z

    #v0=(Boolean);
    if-eqz v0, :cond_2

    move v0, v1

    .line 312
    #v0=(Null);
    goto :goto_0

    .line 316
    :cond_2
    #v0=(Boolean);
    iget-object v0, p0, Lcom/android/launcher2/HotSeats;->mDragController:Lcom/android/launcher2/DragController;

    #v0=(Reference);
    iget-object v1, p0, Lcom/android/launcher2/HotSeats;->mDraggingItem:Lcom/android/launcher2/ItemInfo;

    #v1=(Reference);
    sget v2, Lcom/android/launcher2/DragController;->DRAG_ACTION_COPY:I

    #v2=(Integer);
    invoke-virtual {v0, p1, p0, v1, v2}, Lcom/android/launcher2/DragController;->startDrag(Landroid/view/View;Lcom/android/launcher2/DragSource;Lcom/android/launcher2/ItemInfo;I)V

    .line 317
    iget-object v0, p0, Lcom/android/launcher2/HotSeats;->mDraggingItem:Lcom/android/launcher2/ItemInfo;

    iget v0, v0, Lcom/android/launcher2/ItemInfo;->cellX:I

    #v0=(Integer);
    sget-object v1, Lcom/android/launcher2/HotSeats;->PLACE_HOLDER_SEAT:Lcom/android/launcher2/ItemInfo;

    invoke-direct {p0, v0, v1}, Lcom/android/launcher2/HotSeats;->setSeat(ILcom/android/launcher2/ItemInfo;)V

    .line 318
    const/4 v0, 0x1

    #v0=(One);
    goto :goto_0
.end method

.method public pushItem(Lcom/android/launcher2/ItemInfo;)Z
    .locals 2
    .parameter "info"

    .prologue
    .line 335
    iget v0, p1, Lcom/android/launcher2/ItemInfo;->cellX:I

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/launcher2/HotSeats;->isEmptySeat(I)Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    .line 336
    invoke-virtual {p0}, Lcom/android/launcher2/HotSeats;->findEmptySeat()I

    move-result v0

    #v0=(Integer);
    iput v0, p1, Lcom/android/launcher2/ItemInfo;->cellX:I

    .line 338
    :cond_0
    iget v0, p1, Lcom/android/launcher2/ItemInfo;->cellX:I

    if-ltz v0, :cond_1

    iget v0, p1, Lcom/android/launcher2/ItemInfo;->cellX:I

    const/4 v1, 0x6

    #v1=(PosByte);
    if-lt v0, v1, :cond_2

    .line 339
    :cond_1
    #v1=(Conflicted);
    const/4 v0, 0x0

    .line 342
    :goto_0
    #v0=(Boolean);
    return v0

    .line 341
    :cond_2
    #v0=(Integer);v1=(PosByte);
    iget v0, p1, Lcom/android/launcher2/ItemInfo;->cellX:I

    invoke-direct {p0, v0, p1}, Lcom/android/launcher2/HotSeats;->setSeat(ILcom/android/launcher2/ItemInfo;)V

    .line 342
    const/4 v0, 0x1

    #v0=(One);
    goto :goto_0
.end method

.method removeItems(Ljava/util/ArrayList;)V
    .locals 7
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
    .line 366
    .local p1, packages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/AllAppsList$RemoveInfo;>;"
    const/4 v3, 0x0

    .line 368
    .local v3, removed:Z
    #v3=(Null);
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Reference);v3=(Boolean);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    #v4=(Reference);
    check-cast v4, Lcom/android/launcher2/AllAppsList$RemoveInfo;

    .line 369
    .local v4, ri:Lcom/android/launcher2/AllAppsList$RemoveInfo;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    #v1=(Integer);v5=(Conflicted);
    const/4 v5, 0x6

    #v5=(PosByte);
    if-ge v1, v5, :cond_0

    .line 370
    iget-object v5, p0, Lcom/android/launcher2/HotSeats;->mSavedSeats:[Lcom/android/launcher2/ItemInfo;

    #v5=(Reference);
    aget-object v5, v5, v1

    #v5=(Null);
    if-nez v5, :cond_2

    .line 369
    :cond_1
    :goto_1
    #v5=(Conflicted);
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 373
    :cond_2
    #v5=(Null);
    iget-object v5, p0, Lcom/android/launcher2/HotSeats;->mSavedSeats:[Lcom/android/launcher2/ItemInfo;

    #v5=(Reference);
    aget-object v5, v5, v1

    #v5=(Null);
    instance-of v5, v5, Lcom/android/launcher2/ShortcutInfo;

    #v5=(Boolean);
    if-eqz v5, :cond_3

    .line 374
    iget-object v5, p0, Lcom/android/launcher2/HotSeats;->mSavedSeats:[Lcom/android/launcher2/ItemInfo;

    #v5=(Reference);
    aget-object v5, v5, v1

    #v5=(Null);
    check-cast v5, Lcom/android/launcher2/ShortcutInfo;

    #v5=(Reference);
    iget-object v5, v5, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 375
    .local v0, app:Landroid/content/ComponentName;
    #v0=(Reference);
    iget-object v5, v4, Lcom/android/launcher2/AllAppsList$RemoveInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    #v6=(Reference);
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_1

    .line 377
    iget-boolean v5, v4, Lcom/android/launcher2/AllAppsList$RemoveInfo;->replacing:Z

    if-nez v5, :cond_1

    .line 380
    const/4 v5, 0x0

    #v5=(Null);
    invoke-direct {p0, v1, v5}, Lcom/android/launcher2/HotSeats;->setSeat(ILcom/android/launcher2/ItemInfo;)V

    .line 381
    const/4 v3, 0x1

    #v3=(One);
    goto :goto_1

    .line 383
    .end local v0           #app:Landroid/content/ComponentName;
    :cond_3
    #v0=(Conflicted);v3=(Boolean);v5=(Boolean);v6=(Conflicted);
    iget-object v5, p0, Lcom/android/launcher2/HotSeats;->mSavedSeats:[Lcom/android/launcher2/ItemInfo;

    #v5=(Reference);
    aget-object v5, v5, v1

    #v5=(Null);
    instance-of v5, v5, Lcom/android/launcher2/UserFolderInfo;

    #v5=(Boolean);
    if-eqz v5, :cond_1

    .line 384
    iget-object v5, p0, Lcom/android/launcher2/HotSeats;->mSavedSeats:[Lcom/android/launcher2/ItemInfo;

    #v5=(Reference);
    aget-object v5, v5, v1

    #v5=(Null);
    check-cast v5, Lcom/android/launcher2/UserFolderInfo;

    #v5=(Reference);
    iget-object v6, p0, Lcom/android/launcher2/HotSeats;->mLauncher:Lcom/android/launcher2/Launcher;

    #v6=(Reference);
    invoke-virtual {v5, p1, v6}, Lcom/android/launcher2/UserFolderInfo;->removeItems(Ljava/util/ArrayList;Lcom/android/launcher2/Launcher;)V

    goto :goto_1

    .line 389
    .end local v1           #i:I
    .end local v4           #ri:Lcom/android/launcher2/AllAppsList$RemoveInfo;
    :cond_4
    #v1=(Conflicted);v4=(Conflicted);v5=(Boolean);v6=(Conflicted);
    if-eqz v3, :cond_5

    .line 390
    invoke-direct {p0}, Lcom/android/launcher2/HotSeats;->saveSeats()V

    .line 392
    :cond_5
    return-void
.end method

.method public setDragController(Lcom/android/launcher2/DragController;)V
    .locals 0
    .parameter "dragger"

    .prologue
    .line 297
    iput-object p1, p0, Lcom/android/launcher2/HotSeats;->mDragController:Lcom/android/launcher2/DragController;

    .line 298
    return-void
.end method

.method public setLaucher(Lcom/android/launcher2/Launcher;)V
    .locals 3
    .parameter "launcher"

    .prologue
    .line 290
    iput-object p1, p0, Lcom/android/launcher2/HotSeats;->mLauncher:Lcom/android/launcher2/Launcher;

    .line 291
    invoke-virtual {p0}, Lcom/android/launcher2/HotSeats;->getChildCount()I

    move-result v1

    #v1=(Integer);
    const/4 v2, 0x1

    #v2=(One);
    sub-int v0, v1, v2

    .local v0, i:I
    :goto_0
    #v0=(Integer);v1=(Conflicted);
    if-ltz v0, :cond_0

    .line 292
    invoke-virtual {p0, v0}, Lcom/android/launcher2/HotSeats;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Lcom/android/launcher2/HotSeatButton;

    invoke-virtual {v1, p1}, Lcom/android/launcher2/HotSeatButton;->setLauncher(Lcom/android/launcher2/Launcher;)V

    .line 291
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 294
    :cond_0
    #v1=(Conflicted);
    return-void
.end method

.method public startBinding()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 403
    #v2=(Null);
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    #v0=(Integer);v1=(Conflicted);
    const/4 v1, 0x6

    #v1=(PosByte);
    if-ge v0, v1, :cond_0

    .line 404
    invoke-virtual {p0, v0}, Lcom/android/launcher2/HotSeats;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Lcom/android/launcher2/HotSeatButton;

    invoke-virtual {v1}, Lcom/android/launcher2/HotSeatButton;->removeAllViewsInLayout()V

    .line 405
    iget-object v1, p0, Lcom/android/launcher2/HotSeats;->mSavedSeats:[Lcom/android/launcher2/ItemInfo;

    aput-object v2, v1, v0

    .line 406
    iget-object v1, p0, Lcom/android/launcher2/HotSeats;->mCurrentSeats:[Lcom/android/launcher2/ItemInfo;

    aput-object v2, v1, v0

    .line 403
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 408
    :cond_0
    #v1=(PosByte);
    const/4 v1, 0x1

    #v1=(One);
    iput-boolean v1, p0, Lcom/android/launcher2/HotSeats;->mIsLoading:Z

    .line 409
    return-void
.end method

*/}
