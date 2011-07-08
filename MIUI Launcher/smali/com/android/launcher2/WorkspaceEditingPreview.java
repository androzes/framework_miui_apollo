package com.android.launcher2; class WorkspaceEditingPreview {/*

.class public Lcom/android/launcher2/WorkspaceEditingPreview;
.super Landroid/widget/ScreenView;
.source "WorkspaceEditingPreview.java"

# interfaces
.implements Lcom/android/launcher2/DropTarget;


# static fields
.field protected static final ARROW_INDICATOR_MARGIN:Landroid/graphics/Rect;


# instance fields
.field private final THUMBNAIL_CLICK_HANDLER:Landroid/view/View$OnClickListener;

.field private THUMBNAIL_SCALE_ADDITION:F

.field private lastScreenDraggedOverOn:I

.field protected mAnimationDuration:I

.field private mCacheCanvas:Landroid/graphics/Canvas;

.field private mEnterAnimationRequested:Z

.field private mLauncher:Lcom/android/launcher2/Launcher;

.field private mShowing:Z

.field protected mSourceView:Landroid/widget/ScreenView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 49
    #v2=(Null);
    new-instance v0, Landroid/graphics/Rect;

    #v0=(UninitRef);
    const/16 v1, 0xb

    #v1=(PosByte);
    invoke-direct {v0, v2, v2, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    #v0=(Reference);
    sput-object v0, Lcom/android/launcher2/WorkspaceEditingPreview;->ARROW_INDICATOR_MARGIN:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 69
    const/4 v0, 0x0

    #v0=(Null);
    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/WorkspaceEditingPreview;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    #p0=(Reference);
    const/4 v0, 0x1

    #v0=(One);
    invoke-virtual {p0, v0}, Lcom/android/launcher2/WorkspaceEditingPreview;->setWholeAnimationCacheEnabled(Z)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v4, -0x1

    #v4=(Byte);
    const/4 v3, 0x0

    .line 81
    #v3=(Null);
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScreenView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    #p0=(Reference);
    const v1, 0x3f666666

    #v1=(Integer);
    iput v1, p0, Lcom/android/launcher2/WorkspaceEditingPreview;->THUMBNAIL_SCALE_ADDITION:F

    .line 55
    iput v4, p0, Lcom/android/launcher2/WorkspaceEditingPreview;->lastScreenDraggedOverOn:I

    .line 59
    iput-boolean v3, p0, Lcom/android/launcher2/WorkspaceEditingPreview;->mShowing:Z

    .line 60
    iput-boolean v3, p0, Lcom/android/launcher2/WorkspaceEditingPreview;->mEnterAnimationRequested:Z

    .line 119
    new-instance v1, Landroid/graphics/Canvas;

    #v1=(UninitRef);
    invoke-direct {v1}, Landroid/graphics/Canvas;-><init>()V

    #v1=(Reference);
    iput-object v1, p0, Lcom/android/launcher2/WorkspaceEditingPreview;->mCacheCanvas:Landroid/graphics/Canvas;

    .line 203
    new-instance v1, Lcom/android/launcher2/WorkspaceEditingPreview$1;

    #v1=(UninitRef);
    invoke-direct {v1, p0}, Lcom/android/launcher2/WorkspaceEditingPreview$1;-><init>(Lcom/android/launcher2/WorkspaceEditingPreview;)V

    #v1=(Reference);
    iput-object v1, p0, Lcom/android/launcher2/WorkspaceEditingPreview;->THUMBNAIL_CLICK_HANDLER:Landroid/view/View$OnClickListener;

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0002

    #v2=(Integer);
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    #v1=(Integer);
    iput v1, p0, Lcom/android/launcher2/WorkspaceEditingPreview;->mAnimationDuration:I

    .line 85
    sget-object v1, Lcom/android/launcher2/WorkspaceEditingPreview;->ARROW_INDICATOR_MARGIN:Landroid/graphics/Rect;

    #v1=(Reference);
    invoke-virtual {p0, v1}, Lcom/android/launcher2/WorkspaceEditingPreview;->setArrowIndicatorMarginRect(Landroid/graphics/Rect;)V

    .line 87
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    #v0=(UninitRef);
    invoke-virtual {p0}, Lcom/android/launcher2/WorkspaceEditingPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    #v1=(Integer);
    const/16 v2, 0x50

    #v2=(PosByte);
    invoke-direct {v0, v4, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 91
    .local v0, params:Landroid/widget/FrameLayout$LayoutParams;
    #v0=(Reference);
    invoke-virtual {p0, v0, v3}, Lcom/android/launcher2/WorkspaceEditingPreview;->setSlideBarPosition(Landroid/widget/FrameLayout$LayoutParams;I)V

    .line 92
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/WorkspaceEditingPreview;)Lcom/android/launcher2/Launcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/launcher2/WorkspaceEditingPreview;->mLauncher:Lcom/android/launcher2/Launcher;

    #v0=(Reference);
    return-object v0
.end method

.method private createThumbnail(Landroid/view/View;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "source"
    .parameter "thumbnail"
    .parameter "bitmap"

    .prologue
    const/high16 v9, 0x4000

    #v9=(Integer);
    const/4 v1, 0x0

    #v1=(Null);
    const/high16 v5, 0x3f80

    .line 122
    #v5=(Integer);
    invoke-virtual {p2}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    #v0=(Reference);
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    #v0=(Integer);
    invoke-virtual {p2}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v2

    #v2=(Integer);
    sub-int/2addr v0, v2

    invoke-virtual {p2}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v2

    sub-int v7, v0, v2

    .line 124
    .local v7, thumbnailHeight:I
    #v7=(Integer);
    invoke-virtual {p2}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    #v0=(Reference);
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    #v0=(Integer);
    invoke-virtual {p2}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p2}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v2

    sub-int v8, v0, v2

    .line 126
    .local v8, thumbnailWidth:I
    #v8=(Integer);
    int-to-float v0, v7

    #v0=(Float);
    mul-float/2addr v0, v5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    #v2=(Float);
    div-float v6, v0, v2

    .line 128
    .local v6, heightRatio:F
    #v6=(Float);
    if-nez p3, :cond_0

    .line 130
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    #v0=(Integer);
    int-to-float v0, v0

    #v0=(Float);
    mul-float/2addr v0, v6

    float-to-int v0, v0

    #v0=(Integer);
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    #v2=(Integer);
    int-to-float v2, v2

    #v2=(Float);
    mul-float/2addr v2, v6

    float-to-int v2, v2

    #v2=(Integer);
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    #v3=(Reference);
    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p3

    .line 138
    :goto_0
    #v3=(Conflicted);
    iget-object v0, p0, Lcom/android/launcher2/WorkspaceEditingPreview;->mCacheCanvas:Landroid/graphics/Canvas;

    #v0=(Reference);
    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 139
    iget-object v0, p0, Lcom/android/launcher2/WorkspaceEditingPreview;->mCacheCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, p3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 140
    iget-object v0, p0, Lcom/android/launcher2/WorkspaceEditingPreview;->mCacheCanvas:Landroid/graphics/Canvas;

    int-to-float v2, v8

    #v2=(Float);
    iget v3, p0, Lcom/android/launcher2/WorkspaceEditingPreview;->THUMBNAIL_SCALE_ADDITION:F

    #v3=(Integer);
    sub-float v3, v5, v3

    #v3=(Float);
    mul-float/2addr v2, v3

    div-float/2addr v2, v9

    sub-float/2addr v2, v5

    int-to-float v3, v7

    iget v4, p0, Lcom/android/launcher2/WorkspaceEditingPreview;->THUMBNAIL_SCALE_ADDITION:F

    #v4=(Integer);
    sub-float v4, v5, v4

    #v4=(Float);
    mul-float/2addr v3, v4

    div-float/2addr v3, v9

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 142
    iget v0, p0, Lcom/android/launcher2/WorkspaceEditingPreview;->THUMBNAIL_SCALE_ADDITION:F

    #v0=(Integer);
    mul-float/2addr v6, v0

    .line 143
    iget-object v0, p0, Lcom/android/launcher2/WorkspaceEditingPreview;->mCacheCanvas:Landroid/graphics/Canvas;

    #v0=(Reference);
    invoke-virtual {v0, v6, v6}, Landroid/graphics/Canvas;->scale(FF)V

    .line 144
    iget-object v0, p0, Lcom/android/launcher2/WorkspaceEditingPreview;->mCacheCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    #v2=(Integer);
    int-to-float v3, v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v4, v2

    sget-object v5, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    #v5=(Reference);
    move v2, v1

    #v2=(Null);
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 145
    iget-object v0, p0, Lcom/android/launcher2/WorkspaceEditingPreview;->mCacheCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p1, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 146
    iget-object v0, p0, Lcom/android/launcher2/WorkspaceEditingPreview;->mCacheCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 147
    return-object p3

    .line 135
    :cond_0
    #v0=(Float);v2=(Float);v3=(Uninit);v4=(Uninit);v5=(Integer);
    const/4 v0, 0x0

    #v0=(Null);
    invoke-virtual {p3, v0}, Landroid/graphics/Bitmap;->eraseColor(I)V

    goto :goto_0
.end method

.method private updateThumbnailBackgroundForDragOver(I)V
    .locals 3
    .parameter "x"

    .prologue
    .line 395
    iget v1, p0, Lcom/android/launcher2/WorkspaceEditingPreview;->lastScreenDraggedOverOn:I

    #v1=(Integer);
    if-ltz v1, :cond_0

    .line 396
    iget v1, p0, Lcom/android/launcher2/WorkspaceEditingPreview;->lastScreenDraggedOverOn:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/WorkspaceEditingPreview;->getScreen(I)Landroid/view/View;

    move-result-object v0

    .line 397
    .local v0, thumbnail:Landroid/view/View;
    #v0=(Reference);
    const v1, 0x7f02004d

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 400
    .end local v0           #thumbnail:Landroid/view/View;
    :cond_0
    #v0=(Conflicted);
    iget v1, p0, Lcom/android/launcher2/WorkspaceEditingPreview;->mCurrentScreen:I

    iget v2, p0, Lcom/android/launcher2/WorkspaceEditingPreview;->mChildScreenWidth:I

    #v2=(Integer);
    div-int v2, p1, v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/launcher2/WorkspaceEditingPreview;->lastScreenDraggedOverOn:I

    .line 401
    if-ltz p1, :cond_1

    iget v1, p0, Lcom/android/launcher2/WorkspaceEditingPreview;->lastScreenDraggedOverOn:I

    invoke-virtual {p0}, Lcom/android/launcher2/WorkspaceEditingPreview;->getScreenCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 402
    iget v1, p0, Lcom/android/launcher2/WorkspaceEditingPreview;->lastScreenDraggedOverOn:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/WorkspaceEditingPreview;->getScreen(I)Landroid/view/View;

    move-result-object v0

    .line 403
    .restart local v0       #thumbnail:Landroid/view/View;
    #v0=(Reference);
    const v1, 0x7f02004c

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 408
    .end local v0           #thumbnail:Landroid/view/View;
    :goto_0
    #v0=(Conflicted);
    return-void

    .line 406
    :cond_1
    const/4 v1, -0x1

    #v1=(Byte);
    iput v1, p0, Lcom/android/launcher2/WorkspaceEditingPreview;->lastScreenDraggedOverOn:I

    goto :goto_0
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
    .line 351
    iget v0, p7, Lcom/android/launcher2/ItemInfo;->itemType:I

    #v0=(Integer);
    const/4 v1, 0x6

    #v1=(PosByte);
    if-eq v0, v1, :cond_0

    iget v0, p7, Lcom/android/launcher2/ItemInfo;->itemType:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget v0, p7, Lcom/android/launcher2/ItemInfo;->itemType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    #v0=(Boolean);
    return v0

    :cond_1
    #v0=(Integer);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/android/launcher2/WorkspaceEditingPreview;->mShowing:Z

    #v0=(Boolean);
    return v0
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
    .line 359
    invoke-direct {p0, p2}, Lcom/android/launcher2/WorkspaceEditingPreview;->updateThumbnailBackgroundForDragOver(I)V

    .line 360
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
    .line 365
    const/4 v0, -0x1

    #v0=(Byte);
    invoke-direct {p0, v0}, Lcom/android/launcher2/WorkspaceEditingPreview;->updateThumbnailBackgroundForDragOver(I)V

    .line 366
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
    .line 371
    invoke-direct {p0, p2}, Lcom/android/launcher2/WorkspaceEditingPreview;->updateThumbnailBackgroundForDragOver(I)V

    .line 372
    return-void
.end method

.method public onDrop(Lcom/android/launcher2/DragSource;IIIILcom/android/launcher2/DragView;Lcom/android/launcher2/ItemInfo;)Z
    .locals 3
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    .line 377
    iget v1, p0, Lcom/android/launcher2/WorkspaceEditingPreview;->mCurrentScreen:I

    #v1=(Integer);
    iget v2, p0, Lcom/android/launcher2/WorkspaceEditingPreview;->mChildScreenWidth:I

    #v2=(Integer);
    div-int v2, p2, v2

    add-int v0, v1, v2

    .line 378
    .local v0, screenIndex:I
    #v0=(Integer);
    iget-object v1, p0, Lcom/android/launcher2/WorkspaceEditingPreview;->mLauncher:Lcom/android/launcher2/Launcher;

    #v1=(Reference);
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/WorkspaceEditingPreview;->getScreenCount()I

    move-result v1

    #v1=(Integer);
    if-ge v0, v1, :cond_0

    .line 379
    iget-object v1, p0, Lcom/android/launcher2/WorkspaceEditingPreview;->mLauncher:Lcom/android/launcher2/Launcher;

    #v1=(Reference);
    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/launcher2/Workspace;->setCurrentScreen(I)V

    .line 380
    iget-object v1, p0, Lcom/android/launcher2/WorkspaceEditingPreview;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getCurrentScreenId()J

    move-result-wide v1

    #v1=(LongLo);v2=(LongHi);
    iput-wide v1, p7, Lcom/android/launcher2/ItemInfo;->screenId:J

    .line 381
    iget v1, p7, Lcom/android/launcher2/ItemInfo;->itemType:I

    #v1=(Integer);
    const/4 v2, 0x6

    #v2=(PosByte);
    if-ne v1, v2, :cond_1

    .line 382
    iget-object v1, p0, Lcom/android/launcher2/WorkspaceEditingPreview;->mLauncher:Lcom/android/launcher2/Launcher;

    #v1=(Reference);
    check-cast p7, Lcom/android/launcher2/LauncherAppWidgetProviderInfo;

    .end local p7
    iget-object v2, p7, Lcom/android/launcher2/LauncherAppWidgetProviderInfo;->mProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    #v2=(Reference);
    invoke-virtual {v1, v2}, Lcom/android/launcher2/Launcher;->addAppWidget(Landroid/appwidget/AppWidgetProviderInfo;)V

    .line 391
    :cond_0
    :goto_0
    #v1=(Conflicted);v2=(Conflicted);
    const/4 v1, 0x1

    #v1=(One);
    return v1

    .line 384
    .restart local p7
    :cond_1
    #v1=(Integer);v2=(PosByte);
    iget v1, p7, Lcom/android/launcher2/ItemInfo;->itemType:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    .line 385
    iget-object v1, p0, Lcom/android/launcher2/WorkspaceEditingPreview;->mLauncher:Lcom/android/launcher2/Launcher;

    #v1=(Reference);
    check-cast p7, Lcom/android/launcher2/gadget/GadgetInfo;

    .end local p7
    invoke-virtual {v1, p7}, Lcom/android/launcher2/Launcher;->addGadget(Lcom/android/launcher2/gadget/GadgetInfo;)V

    goto :goto_0

    .line 388
    .restart local p7
    :cond_2
    #v1=(Integer);
    iget-object v1, p0, Lcom/android/launcher2/WorkspaceEditingPreview;->mLauncher:Lcom/android/launcher2/Launcher;

    #v1=(Reference);
    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->addEmptyFolder()V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 340
    invoke-super/range {p0 .. p5}, Landroid/widget/ScreenView;->onLayout(ZIIII)V

    .line 342
    iget-boolean v0, p0, Lcom/android/launcher2/WorkspaceEditingPreview;->mEnterAnimationRequested:Z

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 343
    const/4 v0, 0x1

    #v0=(One);
    invoke-virtual {p0, v0}, Lcom/android/launcher2/WorkspaceEditingPreview;->startSwitchingAnimation(Z)V

    .line 344
    const/4 v0, 0x0

    #v0=(Null);
    iput-boolean v0, p0, Lcom/android/launcher2/WorkspaceEditingPreview;->mEnterAnimationRequested:Z

    .line 346
    :cond_0
    #v0=(Boolean);
    return-void
.end method

.method public refreshThumbnails(Landroid/view/View;)V
    .locals 11
    .parameter "screen"

    .prologue
    const v10, 0x7f080005

    #v10=(Integer);
    const v9, 0x7f080003

    #v9=(Integer);
    const/4 v8, 0x0

    .line 152
    #v8=(Null);
    iget-object v6, p0, Lcom/android/launcher2/WorkspaceEditingPreview;->mSourceView:Landroid/widget/ScreenView;

    #v6=(Reference);
    invoke-virtual {v6}, Landroid/widget/ScreenView;->getScreenCount()I

    move-result v1

    .line 153
    .local v1, count:I
    #v1=(Integer);
    const/4 v5, 0x0

    .line 154
    .local v5, thumbnail:Landroid/widget/ImageView;
    #v5=(Null);
    const/4 v0, 0x0

    .line 155
    .local v0, bitmap:Landroid/graphics/Bitmap;
    #v0=(Null);
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/WorkspaceEditingPreview;->getScreenCount()I

    move-result v6

    #v6=(Integer);
    if-eq v1, v6, :cond_4

    .line 156
    :cond_0
    #v6=(Conflicted);
    invoke-virtual {p0}, Lcom/android/launcher2/WorkspaceEditingPreview;->getScreenCount()I

    move-result v6

    #v6=(Integer);
    invoke-virtual {p0, v8, v6}, Lcom/android/launcher2/WorkspaceEditingPreview;->removeScreensInLayout(II)V

    .line 158
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    #v0=(Reference);v2=(Integer);v3=(Conflicted);v4=(Conflicted);v5=(Reference);v6=(Conflicted);v7=(Conflicted);
    if-ge v2, v1, :cond_5

    .line 159
    iget-object v6, p0, Lcom/android/launcher2/WorkspaceEditingPreview;->mSourceView:Landroid/widget/ScreenView;

    #v6=(Reference);
    invoke-virtual {v6, v2}, Landroid/widget/ScreenView;->getScreen(I)Landroid/view/View;

    move-result-object v4

    #v4=(Reference);
    check-cast v4, Lcom/android/launcher2/CellLayout;

    .line 160
    .local v4, source:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v4, v9}, Lcom/android/launcher2/CellLayout;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    check-cast v0, Landroid/graphics/Bitmap;

    .line 161
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    new-instance v5, Landroid/widget/ImageView;

    .end local v5           #thumbnail:Landroid/widget/ImageView;
    #v5=(UninitRef);
    iget-object v6, p0, Lcom/android/launcher2/WorkspaceEditingPreview;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 162
    .restart local v5       #thumbnail:Landroid/widget/ImageView;
    #v5=(Reference);
    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 163
    iget-object v6, p0, Lcom/android/launcher2/WorkspaceEditingPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f02004d

    #v7=(Integer);
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 166
    iget-object v6, p0, Lcom/android/launcher2/WorkspaceEditingPreview;->THUMBNAIL_CLICK_HANDLER:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    #v3=(UninitRef);
    invoke-virtual {v5}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    #v6=(Integer);
    invoke-virtual {v5}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    #v7=(Reference);
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    #v7=(Integer);
    invoke-direct {v3, v6, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 172
    .local v3, params:Landroid/view/ViewGroup$LayoutParams;
    #v3=(Reference);
    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 175
    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->getScreenId()J

    move-result-wide v6

    #v6=(LongLo);v7=(LongHi);
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    #v6=(Reference);
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 178
    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->getHeight()I

    move-result v6

    #v6=(Integer);
    if-nez v6, :cond_1

    .line 158
    :goto_1
    #v6=(Conflicted);
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 179
    :cond_1
    #v6=(Integer);
    if-eqz v0, :cond_2

    invoke-virtual {v4, v10}, Lcom/android/launcher2/CellLayout;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    #v6=(Reference);
    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    #v6=(Boolean);
    if-eqz v6, :cond_3

    .line 181
    :cond_2
    #v6=(Integer);
    invoke-direct {p0, v4, v5, v0}, Lcom/android/launcher2/WorkspaceEditingPreview;->createThumbnail(Landroid/view/View;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 182
    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 183
    invoke-virtual {v4, v9, v0}, Lcom/android/launcher2/CellLayout;->setTag(ILjava/lang/Object;)V

    .line 184
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    #v6=(Reference);
    invoke-virtual {v4, v10, v6}, Lcom/android/launcher2/CellLayout;->setTag(ILjava/lang/Object;)V

    .line 188
    :goto_2
    #v6=(Conflicted);
    invoke-virtual {p0, v5}, Lcom/android/launcher2/WorkspaceEditingPreview;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 186
    :cond_3
    #v6=(Boolean);
    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2

    .line 191
    .end local v2           #i:I
    .end local v3           #params:Landroid/view/ViewGroup$LayoutParams;
    .end local v4           #source:Lcom/android/launcher2/CellLayout;
    :cond_4
    #v0=(Null);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Null);v6=(Integer);v7=(Uninit);
    iget-object v6, p0, Lcom/android/launcher2/WorkspaceEditingPreview;->mSourceView:Landroid/widget/ScreenView;

    #v6=(Reference);
    invoke-virtual {v6, p1}, Landroid/widget/ScreenView;->indexOfChild(Landroid/view/View;)I

    move-result v6

    #v6=(Integer);
    invoke-virtual {p0, v6}, Lcom/android/launcher2/WorkspaceEditingPreview;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .end local v5           #thumbnail:Landroid/widget/ImageView;
    #v5=(Reference);
    check-cast v5, Landroid/widget/ImageView;

    .line 192
    .restart local v5       #thumbnail:Landroid/widget/ImageView;
    if-eqz v5, :cond_5

    if-eqz p1, :cond_5

    .line 193
    invoke-virtual {p1, v9}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    #v6=(Reference);
    check-cast v6, Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, v5, v6}, Lcom/android/launcher2/WorkspaceEditingPreview;->createThumbnail(Landroid/view/View;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 195
    #v0=(Reference);
    invoke-virtual {p1, v9, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 196
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p1, v10, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 197
    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 200
    :cond_5
    #v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v6=(Conflicted);v7=(Conflicted);
    iget v6, p0, Lcom/android/launcher2/WorkspaceEditingPreview;->mCurrentScreen:I

    #v6=(Integer);
    invoke-virtual {p0, v6}, Lcom/android/launcher2/WorkspaceEditingPreview;->scrollToScreen(I)V

    .line 201
    return-void
.end method

.method setLauncher(Lcom/android/launcher2/Launcher;)V
    .locals 0
    .parameter "launcher"

    .prologue
    .line 411
    iput-object p1, p0, Lcom/android/launcher2/WorkspaceEditingPreview;->mLauncher:Lcom/android/launcher2/Launcher;

    .line 412
    return-void
.end method

.method public setSourceView(Landroid/widget/ScreenView;)V
    .locals 0
    .parameter "sourceView"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/launcher2/WorkspaceEditingPreview;->mSourceView:Landroid/widget/ScreenView;

    .line 96
    return-void
.end method

.method public show(Z)V
    .locals 3
    .parameter "show"

    .prologue
    const/4 v2, 0x1

    #v2=(One);
    const/4 v1, 0x0

    .line 103
    #v1=(Null);
    iget-boolean v0, p0, Lcom/android/launcher2/WorkspaceEditingPreview;->mShowing:Z

    #v0=(Boolean);
    if-ne v0, p1, :cond_0

    .line 117
    :goto_0
    #v0=(PosByte);
    return-void

    .line 105
    :cond_0
    #v0=(Boolean);
    iput-boolean p1, p0, Lcom/android/launcher2/WorkspaceEditingPreview;->mShowing:Z

    .line 106
    if-eqz p1, :cond_1

    .line 107
    const/4 v0, 0x0

    #v0=(Null);
    invoke-virtual {p0, v0}, Lcom/android/launcher2/WorkspaceEditingPreview;->refreshThumbnails(Landroid/view/View;)V

    .line 108
    iget-object v0, p0, Lcom/android/launcher2/WorkspaceEditingPreview;->mSourceView:Landroid/widget/ScreenView;

    #v0=(Reference);
    invoke-virtual {v0}, Landroid/widget/ScreenView;->getCurrentScreenIndex()I

    move-result v0

    #v0=(Integer);
    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/android/launcher2/WorkspaceEditingPreview;->setCurrentScreen(I)V

    .line 109
    iget v0, p0, Lcom/android/launcher2/WorkspaceEditingPreview;->mCurrentScreen:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/WorkspaceEditingPreview;->scrollToScreen(I)V

    .line 110
    iput-boolean v2, p0, Lcom/android/launcher2/WorkspaceEditingPreview;->mEnterAnimationRequested:Z

    .line 116
    :goto_1
    if-eqz p1, :cond_2

    move v0, v1

    :goto_2
    #v0=(PosByte);
    invoke-virtual {p0, v0}, Lcom/android/launcher2/WorkspaceEditingPreview;->setVisibility(I)V

    goto :goto_0

    .line 113
    :cond_1
    #v0=(Boolean);
    invoke-virtual {p0, v1}, Lcom/android/launcher2/WorkspaceEditingPreview;->startSwitchingAnimation(Z)V

    goto :goto_1

    .line 116
    :cond_2
    #v0=(Integer);
    const/4 v0, 0x4

    #v0=(PosByte);
    goto :goto_2
.end method

.method protected startSwitchingAnimation(Z)V
    .locals 28
    .parameter "entering"

    .prologue
    .line 212
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/WorkspaceEditingPreview;->getScreenCount()I

    move-result v5

    #v5=(Integer);
    if-nez v5, :cond_0

    .line 336
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);v13=(Conflicted);v14=(Conflicted);v15=(Conflicted);v16=(Conflicted);v17=(Conflicted);v18=(Conflicted);v19=(Conflicted);v20=(Conflicted);v21=(Conflicted);v22=(Conflicted);v23=(Conflicted);v24=(Conflicted);v25=(Conflicted);v26=(Conflicted);v27=(Conflicted);
    return-void

    .line 215
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Integer);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Uninit);v11=(Uninit);v12=(Uninit);v13=(Uninit);v14=(Uninit);v15=(Uninit);v16=(Uninit);v17=(Uninit);v18=(Uninit);v19=(Uninit);v20=(Uninit);v21=(Uninit);v22=(Uninit);v23=(Uninit);v24=(Uninit);v25=(Uninit);v26=(Uninit);v27=(Uninit);
    new-instance v23, Landroid/view/animation/DecelerateInterpolator;

    #v23=(UninitRef);
    invoke-direct/range {v23 .. v23}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 217
    .local v23, interpolator:Landroid/view/animation/Interpolator;
    #v23=(Reference);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/launcher2/WorkspaceEditingPreview;->mSourceView:Landroid/widget/ScreenView;

    move-object v5, v0

    #v5=(Reference);
    invoke-virtual {v5}, Landroid/widget/ScreenView;->getCurrentScreenIndex()I

    move-result v25

    .line 218
    .local v25, screenIndex:I
    #v25=(Integer);
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/WorkspaceEditingPreview;->mSourceView:Landroid/widget/ScreenView;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v25

    #v1=(Integer);
    invoke-virtual {v0, v1}, Landroid/widget/ScreenView;->getScreen(I)Landroid/view/View;

    move-result-object v24

    .line 219
    .local v24, screen:Landroid/view/View;
    #v24=(Reference);
    const/4 v5, 0x0

    #v5=(Null);
    move-object/from16 v0, p0

    move v1, v5

    #v1=(Null);
    invoke-virtual {v0, v1}, Lcom/android/launcher2/WorkspaceEditingPreview;->getScreen(I)Landroid/view/View;

    move-result-object v26

    .line 220
    .local v26, thumbnail:Landroid/view/View;
    #v26=(Reference);
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/WorkspaceEditingPreview;->mChildScreenWidth:I

    #v0=(Integer);
    move v5, v0

    #v5=(Integer);
    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    #v6=(Integer);
    sub-int/2addr v5, v6

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    sub-int v27, v5, v6

    .line 222
    .local v27, thumbnailWidth:I
    #v27=(Integer);
    move/from16 v0, v27

    int-to-float v0, v0

    #v0=(Float);
    move v5, v0

    #v5=(Float);
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    #v6=(Float);
    div-float v13, v5, v6

    .line 224
    .local v13, scaleRatio:F
    #v13=(Float);
    const/high16 v21, 0x3f80

    .line 225
    .local v21, deltaXIndex:F
    #v21=(Integer);
    if-eqz p1, :cond_3

    .line 226
    if-nez v25, :cond_2

    .line 227
    const/16 v21, 0x0

    .line 243
    :cond_1
    :goto_1
    #v0=(Integer);v1=(Integer);v5=(Integer);
    new-instance v19, Landroid/view/animation/AnimationSet;

    #v19=(UninitRef);
    const/4 v5, 0x1

    #v5=(One);
    move-object/from16 v0, v19

    #v0=(UninitRef);
    move v1, v5

    #v1=(One);
    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 244
    .local v19, animation:Landroid/view/animation/AnimationSet;
    #v0=(Reference);v19=(Reference);
    if-eqz p1, :cond_5

    .line 245
    new-instance v5, Landroid/view/animation/AlphaAnimation;

    #v5=(UninitRef);
    const/4 v6, 0x0

    #v6=(Null);
    const/high16 v7, 0x3f80

    #v7=(Integer);
    invoke-direct {v5, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    #v5=(Reference);
    move-object/from16 v0, v19

    move-object v1, v5

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 251
    :goto_2
    #v6=(Integer);
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/WorkspaceEditingPreview;->getWidth()I

    move-result v5

    #v5=(Integer);
    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    #v5=(Float);
    mul-float v10, v5, v21

    .line 252
    .local v10, pivotX:F
    #v10=(Float);
    if-eqz p1, :cond_6

    .line 253
    new-instance v5, Landroid/view/animation/ScaleAnimation;

    #v5=(UninitRef);
    const/high16 v6, 0x3f80

    div-float/2addr v6, v13

    #v6=(Float);
    const/high16 v7, 0x3f80

    const/high16 v8, 0x3f80

    #v8=(Integer);
    div-float/2addr v8, v13

    #v8=(Float);
    const/high16 v9, 0x3f80

    #v9=(Integer);
    const/4 v11, 0x0

    #v11=(Null);
    invoke-direct/range {v5 .. v11}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    #v5=(Reference);
    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 259
    :goto_3
    #v6=(Integer);v8=(Integer);
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/WorkspaceEditingPreview;->getTop()I

    move-result v5

    #v5=(Integer);
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int/2addr v5, v6

    move v0, v5

    #v0=(Integer);
    int-to-float v0, v0

    #v0=(Float);
    move/from16 v22, v0

    .line 260
    .local v22, deltaY:F
    #v22=(Float);
    if-eqz p1, :cond_7

    .line 261
    new-instance v5, Landroid/view/animation/TranslateAnimation;

    #v5=(UninitRef);
    const/4 v6, 0x0

    #v6=(Null);
    const/4 v7, 0x0

    #v7=(Null);
    move/from16 v0, v22

    neg-float v0, v0

    move v8, v0

    #v8=(Float);
    const/4 v9, 0x0

    #v9=(Null);
    invoke-direct {v5, v6, v7, v8, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    #v5=(Reference);
    move-object/from16 v0, v19

    #v0=(Reference);
    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 267
    :goto_4
    #v9=(Float);
    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 268
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/WorkspaceEditingPreview;->mAnimationDuration:I

    #v0=(Integer);
    move v5, v0

    #v5=(Integer);
    int-to-long v5, v5

    #v5=(LongLo);v6=(LongHi);
    move-object/from16 v0, v19

    #v0=(Reference);
    move-wide v1, v5

    #v1=(LongLo);v2=(LongHi);
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 271
    if-eqz p1, :cond_8

    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/WorkspaceEditingPreview;->mSourceView:Landroid/widget/ScreenView;

    move-object v5, v0

    #v5=(Reference);
    const/4 v6, 0x4

    #v6=(PosByte);
    invoke-virtual {v5, v6}, Landroid/widget/ScreenView;->setSlideBarVisibility(I)V

    .line 273
    const/4 v5, 0x4

    #v5=(PosByte);
    move-object/from16 v0, p0

    move v1, v5

    #v1=(PosByte);
    invoke-virtual {v0, v1}, Lcom/android/launcher2/WorkspaceEditingPreview;->setSlideBarVisibility(I)V

    .line 274
    new-instance v5, Lcom/android/launcher2/WorkspaceEditingPreview$2;

    #v5=(UninitRef);
    move-object v0, v5

    #v0=(UninitRef);
    move-object/from16 v1, p0

    #v1=(Reference);
    invoke-direct {v0, v1}, Lcom/android/launcher2/WorkspaceEditingPreview$2;-><init>(Lcom/android/launcher2/WorkspaceEditingPreview;)V

    #v0=(Reference);v5=(Reference);
    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 301
    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/launcher2/WorkspaceEditingPreview;->startAnimation(Landroid/view/animation/Animation;)V

    .line 308
    new-instance v19, Landroid/view/animation/AnimationSet;

    .end local v19           #animation:Landroid/view/animation/AnimationSet;
    #v19=(UninitRef);
    const/4 v5, 0x1

    #v5=(One);
    move-object/from16 v0, v19

    #v0=(UninitRef);
    move v1, v5

    #v1=(One);
    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 309
    .restart local v19       #animation:Landroid/view/animation/AnimationSet;
    #v0=(Reference);v19=(Reference);
    if-eqz p1, :cond_9

    .line 310
    new-instance v5, Landroid/view/animation/AlphaAnimation;

    #v5=(UninitRef);
    const/high16 v6, 0x3f80

    #v6=(Integer);
    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    #v5=(Reference);
    move-object/from16 v0, v19

    move-object v1, v5

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 316
    :goto_6
    #v7=(Integer);
    if-eqz p1, :cond_a

    .line 317
    new-instance v11, Landroid/view/animation/ScaleAnimation;

    #v11=(UninitRef);
    const/high16 v12, 0x3f80

    #v12=(Integer);
    const/high16 v14, 0x3f80

    #v14=(Integer);
    const/16 v16, 0x0

    #v16=(Null);
    const/16 v17, 0x0

    #v17=(Null);
    move v15, v13

    #v15=(Float);
    invoke-direct/range {v11 .. v17}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    #v11=(Reference);
    move-object/from16 v0, v19

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 323
    :goto_7
    #v12=(Conflicted);v16=(Integer);v18=(Conflicted);
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/WorkspaceEditingPreview;->mChildScreenWidth:I

    #v0=(Integer);
    move v5, v0

    #v5=(Integer);
    int-to-float v5, v5

    #v5=(Float);
    mul-float v20, v5, v21

    .line 324
    .local v20, deltaX:F
    #v20=(Float);
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/WorkspaceEditingPreview;->getTop()I

    move-result v5

    #v5=(Integer);
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int/2addr v5, v6

    move v0, v5

    int-to-float v0, v0

    #v0=(Float);
    move/from16 v22, v0

    .line 325
    if-eqz p1, :cond_b

    .line 326
    new-instance v5, Landroid/view/animation/TranslateAnimation;

    #v5=(UninitRef);
    const/4 v6, 0x0

    #v6=(Null);
    const/4 v7, 0x0

    #v7=(Null);
    move-object v0, v5

    #v0=(UninitRef);
    move v1, v6

    #v1=(Null);
    move/from16 v2, v20

    #v2=(Float);
    move v3, v7

    #v3=(Null);
    move/from16 v4, v22

    #v4=(Float);
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    #v0=(Reference);v5=(Reference);
    move-object/from16 v0, v19

    move-object v1, v5

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 332
    :goto_8
    #v3=(Float);
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/WorkspaceEditingPreview;->mAnimationDuration:I

    #v0=(Integer);
    move v5, v0

    #v5=(Integer);
    int-to-long v5, v5

    #v5=(LongLo);v6=(LongHi);
    move-object/from16 v0, v19

    #v0=(Reference);
    move-wide v1, v5

    #v1=(LongLo);v2=(LongHi);
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 333
    move-object/from16 v0, v19

    move-object/from16 v1, v23

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 334
    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 229
    .end local v10           #pivotX:F
    .end local v19           #animation:Landroid/view/animation/AnimationSet;
    .end local v20           #deltaX:F
    .end local v22           #deltaY:F
    :cond_2
    #v0=(Float);v1=(Null);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Float);v6=(Float);v7=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Uninit);v11=(Uninit);v12=(Uninit);v14=(Uninit);v15=(Uninit);v16=(Uninit);v17=(Uninit);v18=(Uninit);v19=(Uninit);v20=(Uninit);v22=(Uninit);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/launcher2/WorkspaceEditingPreview;->mSourceView:Landroid/widget/ScreenView;

    move-object v5, v0

    #v5=(Reference);
    invoke-virtual {v5}, Landroid/widget/ScreenView;->getScreenCount()I

    move-result v5

    #v5=(Integer);
    const/4 v6, 0x1

    #v6=(One);
    sub-int/2addr v5, v6

    move/from16 v0, v25

    #v0=(Integer);
    move v1, v5

    #v1=(Integer);
    if-ne v0, v1, :cond_1

    .line 230
    const/high16 v21, 0x4000

    goto/16 :goto_1

    .line 234
    :cond_3
    #v0=(Float);v1=(Null);v5=(Float);v6=(Float);
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/WorkspaceEditingPreview;->getCurrentScreenIndex()I

    move-result v5

    #v5=(Integer);
    move/from16 v0, v25

    #v0=(Integer);
    move v1, v5

    #v1=(Integer);
    if-ne v0, v1, :cond_4

    .line 235
    const/16 v21, 0x0

    #v21=(Null);
    goto/16 :goto_1

    .line 237
    :cond_4
    #v21=(Integer);
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/WorkspaceEditingPreview;->getCurrentScreenIndex()I

    move-result v5

    add-int/lit8 v5, v5, 0x2

    move/from16 v0, v25

    move v1, v5

    if-ne v0, v1, :cond_1

    .line 238
    const/high16 v21, 0x4000

    goto/16 :goto_1

    .line 248
    .restart local v19       #animation:Landroid/view/animation/AnimationSet;
    :cond_5
    #v0=(Reference);v1=(One);v5=(One);v19=(Reference);
    new-instance v5, Landroid/view/animation/AlphaAnimation;

    #v5=(UninitRef);
    const/high16 v6, 0x3f80

    #v6=(Integer);
    const/4 v7, 0x0

    #v7=(Null);
    invoke-direct {v5, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    #v5=(Reference);
    move-object/from16 v0, v19

    move-object v1, v5

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_2

    .line 256
    .restart local v10       #pivotX:F
    :cond_6
    #v5=(Float);v7=(Integer);v10=(Float);
    new-instance v5, Landroid/view/animation/ScaleAnimation;

    #v5=(UninitRef);
    const/high16 v6, 0x3f80

    const/high16 v7, 0x3f80

    div-float/2addr v7, v13

    #v7=(Float);
    const/high16 v8, 0x3f80

    #v8=(Integer);
    const/high16 v9, 0x3f80

    #v9=(Integer);
    div-float/2addr v9, v13

    #v9=(Float);
    const/4 v11, 0x0

    #v11=(Null);
    invoke-direct/range {v5 .. v11}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    #v5=(Reference);
    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_3

    .line 264
    .restart local v22       #deltaY:F
    :cond_7
    #v0=(Float);v5=(Integer);v7=(Integer);v9=(Integer);v22=(Float);
    new-instance v5, Landroid/view/animation/TranslateAnimation;

    #v5=(UninitRef);
    const/4 v6, 0x0

    #v6=(Null);
    const/4 v7, 0x0

    #v7=(Null);
    const/4 v8, 0x0

    #v8=(Null);
    move/from16 v0, v22

    neg-float v0, v0

    move v9, v0

    #v9=(Float);
    invoke-direct {v5, v6, v7, v8, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    #v5=(Reference);
    move-object/from16 v0, v19

    #v0=(Reference);
    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_4

    .line 287
    :cond_8
    #v1=(LongLo);v2=(LongHi);v5=(LongLo);v6=(LongHi);v8=(Float);
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/WorkspaceEditingPreview;->mSourceView:Landroid/widget/ScreenView;

    move-object v5, v0

    #v5=(Reference);
    const/4 v6, 0x0

    #v6=(Null);
    invoke-virtual {v5, v6}, Landroid/widget/ScreenView;->setVisibility(I)V

    .line 288
    const/4 v5, 0x4

    #v5=(PosByte);
    move-object/from16 v0, p0

    move v1, v5

    #v1=(PosByte);
    invoke-virtual {v0, v1}, Lcom/android/launcher2/WorkspaceEditingPreview;->setSlideBarVisibility(I)V

    .line 289
    new-instance v5, Lcom/android/launcher2/WorkspaceEditingPreview$3;

    #v5=(UninitRef);
    move-object v0, v5

    #v0=(UninitRef);
    move-object/from16 v1, p0

    #v1=(Reference);
    invoke-direct {v0, v1}, Lcom/android/launcher2/WorkspaceEditingPreview$3;-><init>(Lcom/android/launcher2/WorkspaceEditingPreview;)V

    #v0=(Reference);v5=(Reference);
    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto/16 :goto_5

    .line 313
    :cond_9
    #v1=(One);v5=(One);v6=(PosByte);
    new-instance v5, Landroid/view/animation/AlphaAnimation;

    #v5=(UninitRef);
    const/4 v6, 0x0

    #v6=(Null);
    const/high16 v7, 0x3f80

    #v7=(Integer);
    invoke-direct {v5, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    #v5=(Reference);
    move-object/from16 v0, v19

    move-object v1, v5

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_6

    .line 320
    :cond_a
    #v6=(Integer);
    new-instance v12, Landroid/view/animation/ScaleAnimation;

    #v12=(UninitRef);
    const/high16 v14, 0x3f80

    #v14=(Integer);
    const/high16 v16, 0x3f80

    #v16=(Integer);
    const/16 v17, 0x0

    #v17=(Null);
    const/16 v18, 0x0

    #v18=(Null);
    move v15, v13

    #v15=(Float);
    invoke-direct/range {v12 .. v18}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    #v12=(Reference);
    move-object/from16 v0, v19

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_7

    .line 329
    .restart local v20       #deltaX:F
    :cond_b
    #v0=(Float);v5=(Integer);v11=(Reference);v12=(Conflicted);v18=(Conflicted);v20=(Float);
    new-instance v5, Landroid/view/animation/TranslateAnimation;

    #v5=(UninitRef);
    const/4 v6, 0x0

    #v6=(Null);
    const/4 v7, 0x0

    #v7=(Null);
    move-object v0, v5

    #v0=(UninitRef);
    move/from16 v1, v20

    #v1=(Float);
    move v2, v6

    #v2=(Null);
    move/from16 v3, v22

    #v3=(Float);
    move v4, v7

    #v4=(Null);
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    #v0=(Reference);v5=(Reference);
    move-object/from16 v0, v19

    move-object v1, v5

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_8
.end method

*/}
