.class public Landroid/widget/FrameLayout;
.super Landroid/view/ViewGroup;
.source "FrameLayout.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/FrameLayout$LayoutParams;
    }
.end annotation


# instance fields
.field private mForeground:Landroid/graphics/drawable/Drawable;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field mForegroundBoundsChanged:Z

.field private mForegroundGravity:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field protected mForegroundInPadding:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private mForegroundPaddingBottom:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private mForegroundPaddingLeft:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private mForegroundPaddingRight:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private mForegroundPaddingTop:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field mMeasureAllChildren:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private final mOverlayBounds:Landroid/graphics/Rect;

.field private final mSelfBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 50
    iput-boolean v1, p0, Landroid/widget/FrameLayout;->mMeasureAllChildren:Z

    .line 55
    iput v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingLeft:I

    .line 57
    iput v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingTop:I

    .line 59
    iput v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingRight:I

    .line 61
    iput v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingBottom:I

    .line 63
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/FrameLayout;->mSelfBounds:Landroid/graphics/Rect;

    .line 64
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/FrameLayout;->mOverlayBounds:Landroid/graphics/Rect;

    .line 66
    const/16 v0, 0x77

    iput v0, p0, Landroid/widget/FrameLayout;->mForegroundGravity:I

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/FrameLayout;->mForegroundInPadding:Z

    .line 72
    iput-boolean v1, p0, Landroid/widget/FrameLayout;->mForegroundBoundsChanged:Z

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 83
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    iput-boolean v4, p0, Landroid/widget/FrameLayout;->mMeasureAllChildren:Z

    .line 55
    iput v4, p0, Landroid/widget/FrameLayout;->mForegroundPaddingLeft:I

    .line 57
    iput v4, p0, Landroid/widget/FrameLayout;->mForegroundPaddingTop:I

    .line 59
    iput v4, p0, Landroid/widget/FrameLayout;->mForegroundPaddingRight:I

    .line 61
    iput v4, p0, Landroid/widget/FrameLayout;->mForegroundPaddingBottom:I

    .line 63
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/widget/FrameLayout;->mSelfBounds:Landroid/graphics/Rect;

    .line 64
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/widget/FrameLayout;->mOverlayBounds:Landroid/graphics/Rect;

    .line 66
    const/16 v2, 0x77

    iput v2, p0, Landroid/widget/FrameLayout;->mForegroundGravity:I

    .line 70
    iput-boolean v5, p0, Landroid/widget/FrameLayout;->mForegroundInPadding:Z

    .line 72
    iput-boolean v4, p0, Landroid/widget/FrameLayout;->mForegroundBoundsChanged:Z

    .line 85
    sget-object v2, Lcom/android/internal/R$styleable;->FrameLayout:[I

    invoke-virtual {p1, p2, v2, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 88
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v2, 0x2

    iget v3, p0, Landroid/widget/FrameLayout;->mForegroundGravity:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroid/widget/FrameLayout;->mForegroundGravity:I

    .line 91
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 92
    .local v1, d:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 93
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 96
    :cond_0
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 97
    invoke-virtual {p0, v5}, Landroid/widget/FrameLayout;->setMeasureAllChildren(Z)V

    .line 100
    :cond_1
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Landroid/widget/FrameLayout;->mForegroundInPadding:Z

    .line 103
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 104
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 426
    instance-of v0, p1, Landroid/widget/FrameLayout$LayoutParams;

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    const/4 v7, 0x0

    .line 352
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 354
    iget-object v5, p0, Landroid/widget/FrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_1

    .line 355
    iget-object v0, p0, Landroid/widget/FrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    .line 357
    .local v0, foreground:Landroid/graphics/drawable/Drawable;
    iget-boolean v5, p0, Landroid/widget/FrameLayout;->mForegroundBoundsChanged:Z

    if-eqz v5, :cond_0

    .line 358
    iput-boolean v7, p0, Landroid/widget/FrameLayout;->mForegroundBoundsChanged:Z

    .line 359
    iget-object v3, p0, Landroid/widget/FrameLayout;->mSelfBounds:Landroid/graphics/Rect;

    .line 360
    .local v3, selfBounds:Landroid/graphics/Rect;
    iget-object v2, p0, Landroid/widget/FrameLayout;->mOverlayBounds:Landroid/graphics/Rect;

    .line 362
    .local v2, overlayBounds:Landroid/graphics/Rect;
    iget v5, p0, Landroid/widget/FrameLayout;->mRight:I

    iget v6, p0, Landroid/widget/FrameLayout;->mLeft:I

    sub-int v4, v5, v6

    .line 363
    .local v4, w:I
    iget v5, p0, Landroid/widget/FrameLayout;->mBottom:I

    iget v6, p0, Landroid/widget/FrameLayout;->mTop:I

    sub-int v1, v5, v6

    .line 365
    .local v1, h:I
    iget-boolean v5, p0, Landroid/widget/FrameLayout;->mForegroundInPadding:Z

    if-eqz v5, :cond_2

    .line 366
    invoke-virtual {v3, v7, v7, v4, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 371
    :goto_0
    iget v5, p0, Landroid/widget/FrameLayout;->mForegroundGravity:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    invoke-static {v5, v6, v7, v3, v2}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 373
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 376
    .end local v1           #h:I
    .end local v2           #overlayBounds:Landroid/graphics/Rect;
    .end local v3           #selfBounds:Landroid/graphics/Rect;
    .end local v4           #w:I
    :cond_0
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 378
    .end local v0           #foreground:Landroid/graphics/drawable/Drawable;
    :cond_1
    return-void

    .line 368
    .restart local v0       #foreground:Landroid/graphics/drawable/Drawable;
    .restart local v1       #h:I
    .restart local v2       #overlayBounds:Landroid/graphics/Rect;
    .restart local v3       #selfBounds:Landroid/graphics/Rect;
    .restart local v4       #w:I
    :cond_2
    iget v5, p0, Landroid/widget/FrameLayout;->mPaddingLeft:I

    iget v6, p0, Landroid/widget/FrameLayout;->mPaddingTop:I

    iget v7, p0, Landroid/widget/FrameLayout;->mPaddingRight:I

    sub-int v7, v4, v7

    iget v8, p0, Landroid/widget/FrameLayout;->mPaddingBottom:I

    sub-int v8, v1, v8

    invoke-virtual {v3, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 159
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 160
    iget-object v0, p0, Landroid/widget/FrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/FrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Landroid/widget/FrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 163
    :cond_0
    return-void
.end method

.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .locals 2
    .parameter "region"

    .prologue
    .line 385
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result v0

    .line 386
    .local v0, opaque:Z
    if-eqz p1, :cond_0

    iget-object v1, p0, Landroid/widget/FrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 387
    iget-object v1, p0, Landroid/widget/FrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1, p1}, Landroid/widget/FrameLayout;->applyDrawableToTransparentRegion(Landroid/graphics/drawable/Drawable;Landroid/graphics/Region;)V

    .line 389
    :cond_0
    return v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 172
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "p"

    .prologue
    .line 431
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 418
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getConsiderGoneChildrenWhenMeasuring()Z
    .locals 1

    .prologue
    .line 410
    iget-boolean v0, p0, Landroid/widget/FrameLayout;->mMeasureAllChildren:Z

    return v0
.end method

.method public getForeground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Landroid/widget/FrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 22
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 275
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v8

    .line 277
    .local v8, count:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FrameLayout;->mPaddingLeft:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FrameLayout;->mForegroundPaddingLeft:I

    move/from16 v21, v0

    add-int v15, v20, v21

    .line 278
    .local v15, parentLeft:I
    sub-int v20, p4, p2

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FrameLayout;->mPaddingRight:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FrameLayout;->mForegroundPaddingRight:I

    move/from16 v21, v0

    sub-int v16, v20, v21

    .line 280
    .local v16, parentRight:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FrameLayout;->mPaddingTop:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FrameLayout;->mForegroundPaddingTop:I

    move/from16 v21, v0

    add-int v17, v20, v21

    .line 281
    .local v17, parentTop:I
    sub-int v20, p5, p3

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FrameLayout;->mPaddingBottom:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FrameLayout;->mForegroundPaddingBottom:I

    move/from16 v21, v0

    sub-int v14, v20, v21

    .line 283
    .local v14, parentBottom:I
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/FrameLayout;->mForegroundBoundsChanged:Z

    .line 285
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    if-ge v12, v8, :cond_2

    .line 286
    move-object/from16 v0, p0

    move v1, v12

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 287
    .local v5, child:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v20

    const/16 v21, 0x8

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_1

    .line 288
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/FrameLayout$LayoutParams;

    .line 290
    .local v13, lp:Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v19

    .line 291
    .local v19, width:I
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 293
    .local v10, height:I
    move v6, v15

    .line 294
    .local v6, childLeft:I
    move/from16 v7, v17

    .line 296
    .local v7, childTop:I
    iget v9, v13, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 298
    .local v9, gravity:I
    const/16 v20, -0x1

    move v0, v9

    move/from16 v1, v20

    if-eq v0, v1, :cond_0

    .line 299
    and-int/lit8 v11, v9, 0x7

    .line 300
    .local v11, horizontalGravity:I
    and-int/lit8 v18, v9, 0x70

    .line 302
    .local v18, verticalGravity:I
    packed-switch v11, :pswitch_data_0

    .line 314
    :pswitch_0
    move-object v0, v13

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move/from16 v20, v0

    add-int v6, v15, v20

    .line 317
    :goto_1
    sparse-switch v18, :sswitch_data_0

    .line 329
    move-object v0, v13

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move/from16 v20, v0

    add-int v7, v17, v20

    .line 333
    .end local v11           #horizontalGravity:I
    .end local v18           #verticalGravity:I
    :cond_0
    :goto_2
    add-int v20, v6, v19

    add-int v21, v7, v10

    move-object v0, v5

    move v1, v6

    move v2, v7

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 285
    .end local v6           #childLeft:I
    .end local v7           #childTop:I
    .end local v9           #gravity:I
    .end local v10           #height:I
    .end local v13           #lp:Landroid/widget/FrameLayout$LayoutParams;
    .end local v19           #width:I
    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 304
    .restart local v6       #childLeft:I
    .restart local v7       #childTop:I
    .restart local v9       #gravity:I
    .restart local v10       #height:I
    .restart local v11       #horizontalGravity:I
    .restart local v13       #lp:Landroid/widget/FrameLayout$LayoutParams;
    .restart local v18       #verticalGravity:I
    .restart local v19       #width:I
    :pswitch_1
    move-object v0, v13

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move/from16 v20, v0

    add-int v6, v15, v20

    .line 305
    goto :goto_1

    .line 307
    :pswitch_2
    sub-int v20, v16, v15

    sub-int v20, v20, v19

    div-int/lit8 v20, v20, 0x2

    add-int v20, v20, v15

    move-object v0, v13

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move-object v0, v13

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    move/from16 v21, v0

    sub-int v6, v20, v21

    .line 309
    goto :goto_1

    .line 311
    :pswitch_3
    sub-int v20, v16, v19

    move-object v0, v13

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    move/from16 v21, v0

    sub-int v6, v20, v21

    .line 312
    goto :goto_1

    .line 319
    :sswitch_0
    move-object v0, v13

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move/from16 v20, v0

    add-int v7, v17, v20

    .line 320
    goto :goto_2

    .line 322
    :sswitch_1
    sub-int v20, v14, v17

    sub-int v20, v20, v10

    div-int/lit8 v20, v20, 0x2

    add-int v20, v20, v17

    move-object v0, v13

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move-object v0, v13

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    move/from16 v21, v0

    sub-int v7, v20, v21

    .line 324
    goto :goto_2

    .line 326
    :sswitch_2
    sub-int v20, v14, v10

    move-object v0, v13

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    move/from16 v21, v0

    sub-int v7, v20, v21

    .line 327
    goto :goto_2

    .line 336
    .end local v5           #child:Landroid/view/View;
    .end local v6           #childLeft:I
    .end local v7           #childTop:I
    .end local v9           #gravity:I
    .end local v10           #height:I
    .end local v11           #horizontalGravity:I
    .end local v13           #lp:Landroid/widget/FrameLayout$LayoutParams;
    .end local v18           #verticalGravity:I
    .end local v19           #width:I
    :cond_2
    return-void

    .line 302
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 317
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x30 -> :sswitch_0
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 11
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v3, 0x0

    .line 236
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v6

    .line 238
    .local v6, count:I
    const/4 v9, 0x0

    .line 239
    .local v9, maxHeight:I
    const/4 v10, 0x0

    .line 242
    .local v10, maxWidth:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    if-ge v8, v6, :cond_2

    .line 243
    invoke-virtual {p0, v8}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 244
    .local v1, child:Landroid/view/View;
    iget-boolean v0, p0, Landroid/widget/FrameLayout;->mMeasureAllChildren:Z

    if-nez v0, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_1

    :cond_0
    move-object v0, p0

    move v2, p1

    move v4, p2

    move v5, v3

    .line 245
    invoke-virtual/range {v0 .. v5}, Landroid/widget/FrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 246
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 247
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 242
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 252
    .end local v1           #child:Landroid/view/View;
    :cond_2
    iget v0, p0, Landroid/widget/FrameLayout;->mPaddingLeft:I

    iget v2, p0, Landroid/widget/FrameLayout;->mPaddingRight:I

    add-int/2addr v0, v2

    iget v2, p0, Landroid/widget/FrameLayout;->mForegroundPaddingLeft:I

    add-int/2addr v0, v2

    iget v2, p0, Landroid/widget/FrameLayout;->mForegroundPaddingRight:I

    add-int/2addr v0, v2

    add-int/2addr v10, v0

    .line 253
    iget v0, p0, Landroid/widget/FrameLayout;->mPaddingTop:I

    iget v2, p0, Landroid/widget/FrameLayout;->mPaddingBottom:I

    add-int/2addr v0, v2

    iget v2, p0, Landroid/widget/FrameLayout;->mForegroundPaddingTop:I

    add-int/2addr v0, v2

    iget v2, p0, Landroid/widget/FrameLayout;->mForegroundPaddingBottom:I

    add-int/2addr v0, v2

    add-int/2addr v9, v0

    .line 256
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 257
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 260
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 261
    .local v7, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v7, :cond_3

    .line 262
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 263
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 266
    :cond_3
    invoke-static {v10, p1}, Landroid/widget/FrameLayout;->resolveSize(II)I

    move-result v0

    invoke-static {v9, p2}, Landroid/widget/FrameLayout;->resolveSize(II)I

    move-result v2

    invoke-virtual {p0, v0, v2}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    .line 268
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 343
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 344
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/FrameLayout;->mForegroundBoundsChanged:Z

    .line 345
    return-void
.end method

.method public setForeground(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .parameter "drawable"

    .prologue
    const/4 v3, 0x0

    .line 186
    iget-object v1, p0, Landroid/widget/FrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    if-eq v1, p1, :cond_3

    .line 187
    iget-object v1, p0, Landroid/widget/FrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 188
    iget-object v1, p0, Landroid/widget/FrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 189
    iget-object v1, p0, Landroid/widget/FrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 192
    :cond_0
    iput-object p1, p0, Landroid/widget/FrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    .line 193
    iput v3, p0, Landroid/widget/FrameLayout;->mForegroundPaddingLeft:I

    .line 194
    iput v3, p0, Landroid/widget/FrameLayout;->mForegroundPaddingTop:I

    .line 195
    iput v3, p0, Landroid/widget/FrameLayout;->mForegroundPaddingRight:I

    .line 196
    iput v3, p0, Landroid/widget/FrameLayout;->mForegroundPaddingBottom:I

    .line 198
    if-eqz p1, :cond_4

    .line 199
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 200
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 201
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 202
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 204
    :cond_1
    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundGravity:I

    const/16 v2, 0x77

    if-ne v1, v2, :cond_2

    .line 205
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 206
    .local v0, padding:Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 207
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingLeft:I

    .line 208
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingTop:I

    .line 209
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingRight:I

    .line 210
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iput v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingBottom:I

    .line 216
    .end local v0           #padding:Landroid/graphics/Rect;
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 217
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 219
    :cond_3
    return-void

    .line 214
    :cond_4
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    goto :goto_0
.end method

.method public setForegroundGravity(I)V
    .locals 4
    .parameter "foregroundGravity"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 115
    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundGravity:I

    if-eq v1, p1, :cond_3

    .line 116
    and-int/lit8 v1, p1, 0x7

    if-nez v1, :cond_0

    .line 117
    or-int/lit8 p1, p1, 0x3

    .line 120
    :cond_0
    and-int/lit8 v1, p1, 0x70

    if-nez v1, :cond_1

    .line 121
    or-int/lit8 p1, p1, 0x30

    .line 124
    :cond_1
    iput p1, p0, Landroid/widget/FrameLayout;->mForegroundGravity:I

    .line 127
    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundGravity:I

    const/16 v2, 0x77

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Landroid/widget/FrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    .line 128
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 129
    .local v0, padding:Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/widget/FrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 130
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingLeft:I

    .line 131
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingTop:I

    .line 132
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingRight:I

    .line 133
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iput v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingBottom:I

    .line 142
    .end local v0           #padding:Landroid/graphics/Rect;
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 144
    :cond_3
    return-void

    .line 136
    :cond_4
    iput v3, p0, Landroid/widget/FrameLayout;->mForegroundPaddingLeft:I

    .line 137
    iput v3, p0, Landroid/widget/FrameLayout;->mForegroundPaddingTop:I

    .line 138
    iput v3, p0, Landroid/widget/FrameLayout;->mForegroundPaddingRight:I

    .line 139
    iput v3, p0, Landroid/widget/FrameLayout;->mForegroundPaddingBottom:I

    goto :goto_0
.end method

.method public setMeasureAllChildren(Z)V
    .locals 0
    .parameter "measureAll"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 402
    iput-boolean p1, p0, Landroid/widget/FrameLayout;->mMeasureAllChildren:Z

    .line 403
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter "who"

    .prologue
    .line 151
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/FrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
