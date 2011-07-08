package com.android.launcher2; class WidgetThumbnailView {/*

.class public Lcom/android/launcher2/WidgetThumbnailView;
.super Lcom/android/launcher2/ThumbnailView;
.source "WidgetThumbnailView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/android/launcher2/DragSource;


# static fields
.field protected static final SCREEN_PADDING:Landroid/graphics/Rect;


# instance fields
.field private mDragController:Lcom/android/launcher2/DragController;

.field mHintIndicator:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 37
    #v3=(PosByte);
    new-instance v0, Landroid/graphics/Rect;

    #v0=(UninitRef);
    #widget_thumbnail_view top margin
    const/16 v1, 0x50

    #v1=(PosShort);
    const/16 v2, 0x2d

    #v2=(PosByte);
    invoke-direct {v0, v3, v1, v3, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    #v0=(Reference);
    sput-object v0, Lcom/android/launcher2/WidgetThumbnailView;->SCREEN_PADDING:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 47
    const/4 v0, 0x0

    #v0=(Null);
    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/WidgetThumbnailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    #p0=(Reference);
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/ThumbnailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    #p0=(Reference);
    invoke-direct {p0}, Lcom/android/launcher2/WidgetThumbnailView;->initWidgetThumbnailView()V

    .line 53
    invoke-virtual {p0, p0}, Lcom/android/launcher2/WidgetThumbnailView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 54
    return-void
.end method

.method private initWidgetThumbnailView()V
    .locals 6

    .prologue
    const/4 v5, -0x2

    #v5=(Byte);
    const/4 v4, 0x0

    .line 57
    #v4=(Null);
    sget-object v2, Lcom/android/launcher2/WidgetThumbnailView;->SCREEN_PADDING:Landroid/graphics/Rect;

    #v2=(Reference);
    invoke-virtual {p0, v2}, Lcom/android/launcher2/WidgetThumbnailView;->setScreenPadding(Landroid/graphics/Rect;)V

    .line 58
    const/4 v2, 0x2

    #v2=(PosByte);
    const/4 v3, 0x3

    #v3=(PosByte);
    invoke-virtual {p0, v2, v3}, Lcom/android/launcher2/WidgetThumbnailView;->setScreenGridSize(II)V

    .line 60
    new-instance v2, Landroid/widget/TextView;

    #v2=(UninitRef);
    iget-object v3, p0, Lcom/android/launcher2/WidgetThumbnailView;->mContext:Landroid/content/Context;

    #v3=(Reference);
    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    #v2=(Reference);
    iput-object v2, p0, Lcom/android/launcher2/WidgetThumbnailView;->mHintIndicator:Landroid/widget/TextView;

    .line 61
    iget-object v2, p0, Lcom/android/launcher2/WidgetThumbnailView;->mHintIndicator:Landroid/widget/TextView;

    const v3, 0x7f0c003d

    #v3=(Integer);
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 62
    iget-object v2, p0, Lcom/android/launcher2/WidgetThumbnailView;->mHintIndicator:Landroid/widget/TextView;

    #"drag widget to desired..." text size in float
    const/high16 v3, 0x4140

    invoke-virtual {v2, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V
   
    .line 64
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    #v0=(UninitRef);
    const/16 v2, 0x31

    #v2=(PosByte);
    invoke-direct {v0, v5, v5, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 68
    .local v0, layout:Landroid/widget/FrameLayout$LayoutParams;
    #v0=(Reference);
    #widget_text_hint top margin
    const/16 v2, 0x28

    invoke-virtual {v0, v4, v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 69
    iget-object v2, p0, Lcom/android/launcher2/WidgetThumbnailView;->mHintIndicator:Landroid/widget/TextView;

    #v2=(Reference);
    invoke-virtual {p0, v2, v0}, Lcom/android/launcher2/WidgetThumbnailView;->addIndicator(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    .line 71
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    #v1=(UninitRef);
    const/16 v2, 0x28

    #v2=(PosByte);
    const/16 v3, 0x51

    #v3=(PosByte);
    invoke-direct {v1, v5, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 75
    .local v1, seekBarlayout:Landroid/widget/FrameLayout$LayoutParams;
    #v1=(Reference);
    const/16 v2, 0xf

    invoke-virtual {v1, v4, v4, v4, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 76
    invoke-virtual {p0, v1}, Lcom/android/launcher2/WidgetThumbnailView;->setSeekBarPosition(Landroid/widget/FrameLayout$LayoutParams;)V

    .line 77
    return-void
.end method


# virtual methods
.method protected createScreen(Landroid/content/Context;IIII)Lcom/android/launcher2/ThumbnailScreen;
    .locals 7
    .parameter "context"
    .parameter "rowCount"
    .parameter "columnCount"
    .parameter "childWidth"
    .parameter "childHeight"

    .prologue
    .line 84
    new-instance v0, Lcom/android/launcher2/ThumbnailScreen;

    #v0=(UninitRef);
    iget-object v1, p0, Lcom/android/launcher2/WidgetThumbnailView;->mContext:Landroid/content/Context;

    #v1=(Reference);
    iget v2, p0, Lcom/android/launcher2/WidgetThumbnailView;->mRowCountPerScreen:I

    #v2=(Integer);
    iget v3, p0, Lcom/android/launcher2/WidgetThumbnailView;->mColumnCountPerScreen:I

    #v3=(Integer);
    iget v4, p0, Lcom/android/launcher2/WidgetThumbnailView;->mThumbnailWidth:I

    #v4=(Integer);
    iget v5, p0, Lcom/android/launcher2/WidgetThumbnailView;->mThumbnailHeight:I

    #v5=(Integer);
    const/4 v6, 0x0

    #v6=(Null);
    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/ThumbnailScreen;-><init>(Landroid/content/Context;IIIIZ)V

    .line 89
    .local v0, result:Lcom/android/launcher2/ThumbnailScreen;
    #v0=(Reference);
    return-object v0
.end method

.method public onDropCompleted(Landroid/view/View;Z)V
    .locals 2
    .parameter "target"
    .parameter "success"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/launcher2/WidgetThumbnailView;->mHintIndicator:Landroid/widget/TextView;

    #v0=(Reference);
    const v1, 0x7f0c003d

    #v1=(Integer);
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 112
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 5
    .parameter "v"

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/android/launcher2/WidgetThumbnailView;->isShown()Z

    move-result v2

    #v2=(Boolean);
    if-nez v2, :cond_0

    .line 94
    const/4 v2, 0x0

    .line 106
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    return v2

    .line 96
    :cond_0
    #v0=(Uninit);v1=(Uninit);v3=(Uninit);v4=(Uninit);
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 97
    .local v0, dragInfo:Ljava/lang/Object;
    #v0=(Reference);
    if-nez v0, :cond_1

    .line 98
    iget-object v2, p0, Lcom/android/launcher2/WidgetThumbnailView;->mDragController:Lcom/android/launcher2/DragController;

    #v2=(Reference);
    new-instance v3, Lcom/android/launcher2/UserFolderInfo;

    #v3=(UninitRef);
    invoke-direct {v3}, Lcom/android/launcher2/UserFolderInfo;-><init>()V

    #v3=(Reference);
    sget v4, Lcom/android/launcher2/DragController;->DRAG_ACTION_COPY:I

    #v4=(Integer);
    invoke-virtual {v2, p1, p0, v3, v4}, Lcom/android/launcher2/DragController;->startDrag(Landroid/view/View;Lcom/android/launcher2/DragSource;Lcom/android/launcher2/ItemInfo;I)V

    .line 106
    .end local v0           #dragInfo:Ljava/lang/Object;
    :goto_1
    #v1=(Conflicted);
    const/4 v2, 0x1

    #v2=(One);
    goto :goto_0

    .line 101
    .restart local v0       #dragInfo:Ljava/lang/Object;
    :cond_1
    #v1=(Uninit);v2=(Boolean);v3=(Uninit);v4=(Uninit);
    const v2, 0x7f080052

    #v2=(Integer);
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Landroid/widget/TextView;

    .line 102
    .local v1, textView:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/android/launcher2/WidgetThumbnailView;->mHintIndicator:Landroid/widget/TextView;

    #v2=(Reference);
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    #v3=(Reference);
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v2, p0, Lcom/android/launcher2/WidgetThumbnailView;->mDragController:Lcom/android/launcher2/DragController;

    check-cast v0, Lcom/android/launcher2/ItemInfo;

    .end local v0           #dragInfo:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/android/launcher2/ItemInfo;->clone()Lcom/android/launcher2/ItemInfo;

    move-result-object v3

    sget v4, Lcom/android/launcher2/DragController;->DRAG_ACTION_COPY:I

    #v4=(Integer);
    invoke-virtual {v2, p1, p0, v3, v4}, Lcom/android/launcher2/DragController;->startDrag(Landroid/view/View;Lcom/android/launcher2/DragSource;Lcom/android/launcher2/ItemInfo;I)V

    goto :goto_1
.end method

.method public setDragController(Lcom/android/launcher2/DragController;)V
    .locals 0
    .parameter "dragger"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/launcher2/WidgetThumbnailView;->mDragController:Lcom/android/launcher2/DragController;

    .line 117
    return-void
.end method

*/}
