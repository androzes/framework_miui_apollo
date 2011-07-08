package com.android.launcher2; class WorkspaceThumbnailView {/*

.class public Lcom/android/launcher2/WorkspaceThumbnailView;
.super Lcom/android/launcher2/ThumbnailView;
.source "WorkspaceThumbnailView.java"


# static fields
.field protected static final ARROW_INDICATOR_MARGIN:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x5

    #v2=(PosByte);
    const/4 v1, 0x0

    .line 37
    #v1=(Null);
    new-instance v0, Landroid/graphics/Rect;

    #v0=(UninitRef);
    invoke-direct {v0, v2, v1, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    #v0=(Reference);
    sput-object v0, Lcom/android/launcher2/WorkspaceThumbnailView;->ARROW_INDICATOR_MARGIN:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 46
    const/4 v0, 0x0

    #v0=(Null);
    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/WorkspaceThumbnailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    #p0=(Reference);
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/ThumbnailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    #p0=(Reference);
    sget-object v0, Lcom/android/launcher2/WorkspaceThumbnailView;->ARROW_INDICATOR_MARGIN:Landroid/graphics/Rect;

    #v0=(Reference);
    invoke-virtual {p0, v0}, Lcom/android/launcher2/WorkspaceThumbnailView;->setArrowIndicatorMarginRect(Landroid/graphics/Rect;)V

    .line 59
    const/4 v0, 0x1

    #v0=(One);
    invoke-virtual {p0, v0}, Lcom/android/launcher2/WorkspaceThumbnailView;->enableThumbnailPositionChanging(Z)V

    .line 60
    return-void
.end method


# virtual methods
.method protected onPinchOut(Landroid/view/ScaleGestureDetector;)V
    .locals 4
    .parameter "detector"

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/android/launcher2/WorkspaceThumbnailView;->finishCurrentGesture()V

    .line 120
    iget v2, p0, Lcom/android/launcher2/WorkspaceThumbnailView;->mCurrentScreen:I

    #v2=(Integer);
    invoke-virtual {p0, v2}, Lcom/android/launcher2/WorkspaceThumbnailView;->getScreen(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/launcher2/ThumbnailScreen;

    .line 121
    .local v0, screen:Lcom/android/launcher2/ThumbnailScreen;
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v2

    #v2=(Float);
    float-to-int v2, v2

    #v2=(Integer);
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v3

    #v3=(Float);
    float-to-int v3, v3

    #v3=(Integer);
    invoke-virtual {v0, v2, v3}, Lcom/android/launcher2/ThumbnailScreen;->getThumbnailIndex(II)I

    move-result v1

    .line 124
    .local v1, thumbnailIndex:I
    #v1=(Integer);
    if-ltz v1, :cond_0

    .line 125
    iget v2, p0, Lcom/android/launcher2/WorkspaceThumbnailView;->mThumbnailCountPerScreen:I

    iget v3, p0, Lcom/android/launcher2/WorkspaceThumbnailView;->mCurrentScreen:I

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 126
    iget-object v2, p0, Lcom/android/launcher2/WorkspaceThumbnailView;->mAdapter:Lcom/android/launcher2/ThumbnailViewAdapter;

    #v2=(Reference);
    invoke-virtual {v2}, Lcom/android/launcher2/ThumbnailViewAdapter;->getCount()I

    move-result v2

    #v2=(Integer);
    const/4 v3, 0x1

    #v3=(One);
    sub-int/2addr v2, v3

    if-eq v1, v2, :cond_0

    .line 127
    iget-object v2, p0, Lcom/android/launcher2/WorkspaceThumbnailView;->mAdapter:Lcom/android/launcher2/ThumbnailViewAdapter;

    #v2=(Reference);
    invoke-virtual {v2, v1}, Lcom/android/launcher2/ThumbnailViewAdapter;->onThumbnailClick(I)V

    .line 131
    :cond_0
    #v2=(Conflicted);v3=(Integer);
    invoke-super {p0, p1}, Lcom/android/launcher2/ThumbnailView;->onPinchOut(Landroid/view/ScaleGestureDetector;)V

    .line 132
    return-void
.end method

.method protected startDeletedAnimation(I)V
    .locals 4
    .parameter "position"

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/android/launcher2/WorkspaceThumbnailView;->getCurrentScreen()Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/launcher2/ThumbnailScreen;

    .line 111
    .local v0, screen:Lcom/android/launcher2/ThumbnailScreen;
    iget-object v1, p0, Lcom/android/launcher2/WorkspaceThumbnailView;->mContext:Landroid/content/Context;

    #v1=(Reference);
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0002

    #v2=(Integer);
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    #v1=(Integer);
    iget v2, p0, Lcom/android/launcher2/WorkspaceThumbnailView;->mThumbnailCountPerScreen:I

    rem-int v2, p1, v2

    invoke-virtual {v0}, Lcom/android/launcher2/ThumbnailScreen;->getChildCount()I

    move-result v3

    #v3=(Integer);
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher2/ThumbnailScreen;->startMovingAnimation(III)V

    .line 115
    return-void
.end method

.method protected startSwitchingAnimation(Z)V
    .locals 21
    .parameter "entering"

    .prologue
    .line 64
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/launcher2/WorkspaceThumbnailView;->mAdapter:Lcom/android/launcher2/ThumbnailViewAdapter;

    move-object v5, v0

    #v5=(Reference);
    invoke-virtual {v5}, Lcom/android/launcher2/ThumbnailViewAdapter;->getFocusedItemPosition()I

    move-result v5

    #v5=(Integer);
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/WorkspaceThumbnailView;->mThumbnailCountPerScreen:I

    #v0=(Integer);
    move v6, v0

    #v6=(Integer);
    rem-int v18, v5, v6

    .line 65
    .local v18, focusedThumbnailPosition:I
    #v18=(Integer);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget v0, v0, Lcom/android/launcher2/WorkspaceThumbnailView;->mCurrentScreen:I

    #v0=(Integer);
    move v5, v0

    move-object/from16 v0, p0

    #v0=(Reference);
    move v1, v5

    #v1=(Integer);
    invoke-virtual {v0, v1}, Lcom/android/launcher2/WorkspaceThumbnailView;->getScreen(I)Landroid/view/View;

    move-result-object v14

    #v14=(Reference);
    check-cast v14, Lcom/android/launcher2/ThumbnailScreen;

    .line 66
    .local v14, currentScreen:Lcom/android/launcher2/ThumbnailScreen;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/WorkspaceThumbnailView;->mAnimationDuration:I

    #v0=(Integer);
    move v5, v0

    if-eqz p1, :cond_1

    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/launcher2/WorkspaceThumbnailView;->ENTER_PREVIEW_ANIMATION_LISTENER:Landroid/view/animation/Animation$AnimationListener;

    move-object v6, v0

    :goto_0
    #v6=(Reference);
    move-object v0, v14

    move/from16 v1, p1

    #v1=(Boolean);
    move v2, v5

    #v2=(Integer);
    move/from16 v3, v18

    #v3=(Integer);
    move-object v4, v6

    #v4=(Reference);
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/launcher2/ThumbnailScreen;->startSwitchingAnimation(ZIILandroid/view/animation/Animation$AnimationListener;)V

    .line 73
    if-eqz p1, :cond_2

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    #v5=(UninitRef);
    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    #v5=(Reference);
    move-object/from16 v19, v5

    .line 80
    .local v19, interpolator:Landroid/view/animation/Interpolator;
    :goto_1
    #v19=(Reference);
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/WorkspaceThumbnailView;->mAdapter:Lcom/android/launcher2/ThumbnailViewAdapter;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/WorkspaceThumbnailView;->mAdapter:Lcom/android/launcher2/ThumbnailViewAdapter;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/launcher2/ThumbnailViewAdapter;->getFocusedItemPosition()I

    move-result v6

    #v6=(Integer);
    invoke-virtual {v5, v6}, Lcom/android/launcher2/ThumbnailViewAdapter;->getItem(I)Landroid/view/View;

    move-result-object v20

    .line 81
    .local v20, sourceView:Landroid/view/View;
    #v20=(Reference);
    if-eqz v20, :cond_0

    .line 83
    new-instance v13, Landroid/view/animation/AnimationSet;

    #v13=(UninitRef);
    const/4 v5, 0x1

    #v5=(One);
    invoke-direct {v13, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 85
    .local v13, animation:Landroid/view/animation/AnimationSet;
    #v13=(Reference);
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/WorkspaceThumbnailView;->mThumbnailWidth:I

    #v0=(Integer);
    move v5, v0

    #v5=(Integer);
    int-to-float v5, v5

    #v5=(Float);
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/WorkspaceThumbnailView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    #v6=(Float);
    div-float v7, v5, v6

    .line 86
    .local v7, scaleRatio:F
    #v7=(Float);
    if-eqz p1, :cond_3

    .line 87
    new-instance v5, Landroid/view/animation/ScaleAnimation;

    #v5=(UninitRef);
    const/high16 v6, 0x3f80

    #v6=(Integer);
    const/high16 v8, 0x3f80

    #v8=(Integer);
    const/4 v10, 0x0

    #v10=(Null);
    const/4 v11, 0x0

    #v11=(Null);
    move v9, v7

    #v9=(Float);
    invoke-direct/range {v5 .. v11}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    #v5=(Reference);
    invoke-virtual {v13, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 93
    :goto_2
    #v5=(Conflicted);v6=(Conflicted);v10=(Integer);v12=(Conflicted);
    move-object v0, v14

    #v0=(Reference);
    move/from16 v1, v18

    #v1=(Integer);
    invoke-virtual {v0, v1}, Lcom/android/launcher2/ThumbnailScreen;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    .line 94
    .local v17, focusedThumbnail:Landroid/view/View;
    #v17=(Reference);
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLeft()I

    move-result v5

    #v5=(Integer);
    int-to-float v15, v5

    .line 95
    .local v15, deltaX:F
    #v15=(Float);
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTop()I

    move-result v5

    const/16 v6, 0x26

    #v6=(PosByte);
    sub-int/2addr v5, v6

    move v0, v5

    #v0=(Integer);
    int-to-float v0, v0

    #v0=(Float);
    move/from16 v16, v0

    .line 96
    .local v16, deltaY:F
    #v16=(Float);
    if-eqz p1, :cond_4

    .line 97
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
    move v2, v15

    #v2=(Float);
    move v3, v7

    #v3=(Null);
    move/from16 v4, v16

    #v4=(Float);
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .end local v7           #scaleRatio:F
    #v0=(Reference);v5=(Reference);
    invoke-virtual {v13, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 103
    :goto_3
    #v1=(Float);v3=(Float);
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/WorkspaceThumbnailView;->mAnimationDuration:I

    #v0=(Integer);
    move v5, v0

    #v5=(Integer);
    int-to-long v5, v5

    #v5=(LongLo);v6=(LongHi);
    invoke-virtual {v13, v5, v6}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 104
    move-object v0, v13

    #v0=(Reference);
    move-object/from16 v1, v19

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 105
    move-object/from16 v0, v20

    move-object v1, v13

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 107
    .end local v13           #animation:Landroid/view/animation/AnimationSet;
    .end local v15           #deltaX:F
    .end local v16           #deltaY:F
    .end local v17           #focusedThumbnail:Landroid/view/View;
    :cond_0
    #v1=(Conflicted);v2=(Integer);v3=(Integer);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v13=(Conflicted);v15=(Conflicted);v16=(Conflicted);v17=(Conflicted);
    return-void

    .line 66
    .end local v19           #interpolator:Landroid/view/animation/Interpolator;
    .end local v20           #sourceView:Landroid/view/View;
    :cond_1
    #v0=(Integer);v1=(Integer);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Integer);v6=(Integer);v7=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Uninit);v11=(Uninit);v12=(Uninit);v13=(Uninit);v15=(Uninit);v16=(Uninit);v17=(Uninit);v19=(Uninit);v20=(Uninit);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/launcher2/WorkspaceThumbnailView;->EXIT_PREVIEW_ANIMATION_LISTENER:Landroid/view/animation/Animation$AnimationListener;

    move-object v6, v0

    #v6=(Reference);
    goto/16 :goto_0

    .line 73
    :cond_2
    #v1=(Boolean);v2=(Integer);v3=(Integer);v4=(Reference);
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    #v5=(UninitRef);
    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    #v5=(Reference);
    move-object/from16 v19, v5

    #v19=(Reference);
    goto/16 :goto_1

    .line 90
    .restart local v7       #scaleRatio:F
    .restart local v13       #animation:Landroid/view/animation/AnimationSet;
    .restart local v19       #interpolator:Landroid/view/animation/Interpolator;
    .restart local v20       #sourceView:Landroid/view/View;
    :cond_3
    #v0=(Integer);v5=(Float);v6=(Float);v7=(Float);v13=(Reference);v20=(Reference);
    new-instance v6, Landroid/view/animation/ScaleAnimation;

    #v6=(UninitRef);
    const/high16 v8, 0x3f80

    #v8=(Integer);
    const/high16 v10, 0x3f80

    #v10=(Integer);
    const/4 v11, 0x0

    #v11=(Null);
    const/4 v12, 0x0

    #v12=(Null);
    move v9, v7

    #v9=(Float);
    invoke-direct/range {v6 .. v12}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    #v6=(Reference);
    invoke-virtual {v13, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_2

    .line 100
    .restart local v15       #deltaX:F
    .restart local v16       #deltaY:F
    .restart local v17       #focusedThumbnail:Landroid/view/View;
    :cond_4
    #v0=(Float);v1=(Integer);v5=(Integer);v6=(PosByte);v12=(Conflicted);v15=(Float);v16=(Float);v17=(Reference);
    new-instance v5, Landroid/view/animation/TranslateAnimation;

    #v5=(UninitRef);
    const/4 v6, 0x0

    #v6=(Null);
    const/4 v7, 0x0

    #v7=(Null);
    move-object v0, v5

    #v0=(UninitRef);
    move v1, v15

    #v1=(Float);
    move v2, v6

    #v2=(Null);
    move/from16 v3, v16

    #v3=(Float);
    move v4, v7

    #v4=(Null);
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .end local v7           #scaleRatio:F
    #v0=(Reference);v5=(Reference);
    invoke-virtual {v13, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_3
.end method

*/}
