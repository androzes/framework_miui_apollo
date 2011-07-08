.class public Lcom/nemustech/tiffany/widget/TFListView;
.super Lcom/nemustech/tiffany/widget/TFAbsListView;
.source "TFListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nemustech/tiffany/widget/TFListView$SavedState;,
        Lcom/nemustech/tiffany/widget/TFListView$ArrowScrollFocusResult;,
        Lcom/nemustech/tiffany/widget/TFListView$FixedViewInfo;
    }
.end annotation


# static fields
.field public static final CHOICE_MODE_MULTIPLE:I = 0x2

.field public static final CHOICE_MODE_NONE:I = 0x0

.field public static final CHOICE_MODE_SINGLE:I = 0x1

.field public static final EXCESS_SCROLL_EFFECT_DEFAULT:I = 0x0

.field public static final EXCESS_SCROLL_EFFECT_FLASH_FRAME:I = 0x3

.field public static final EXCESS_SCROLL_EFFECT_ITEM_SPRING:I = 0x1

.field public static final EXCESS_SCROLL_EFFECT_TREMBLE:I = 0x2

.field private static final EXCESS_SCROLL_TENSION:F = 0.5f

.field private static final MAX_SCROLL_FACTOR:F = 0.33f

.field private static final MIN_SCROLL_PREVIEW_PIXELS:I = 0x2

.field static final NO_POSITION:I = -0x1


# instance fields
.field private mAreAllItemsSelectable:Z

.field private mArrowScrollFocusResult:Lcom/nemustech/tiffany/widget/TFListView$ArrowScrollFocusResult;

.field private mCheckStates:Landroid/util/SparseBooleanArray;

.field private mChoiceMode:I

.field private mClipDivider:Z

.field private mDensityScale:F

.field mDivider:Landroid/graphics/drawable/Drawable;

.field mDividerHeight:I

.field private mDividerIsOpaque:Z

.field private mDividerPaint:Landroid/graphics/Paint;

.field private mExcessScrollDrawInterpolator:Landroid/view/animation/Interpolator;

.field private mExcessScrollEffect:I

.field private mFooterDividersEnabled:Z

.field private mFooterViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nemustech/tiffany/widget/TFListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaderDividersEnabled:Z

.field private mHeaderViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nemustech/tiffany/widget/TFListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIsCacheColorOpaque:Z

.field private mItemsCanFocus:Z

.field protected mShowAnimationOnDataChange:Z

.field private final mTempPaint:Landroid/graphics/Paint;

.field private final mTempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 227
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nemustech/tiffany/widget/TFListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 228
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 234
    invoke-static {}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInstance()Lcom/nemustech/tiffany/widget/TFResourceBroker;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInt(I)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/nemustech/tiffany/widget/TFListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 235
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 241
    invoke-direct {p0, p1, p2, p3}, Lcom/nemustech/tiffany/widget/TFAbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 135
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/nemustech/tiffany/widget/TFListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 136
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/nemustech/tiffany/widget/TFListView;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 148
    iput-boolean v8, p0, Lcom/nemustech/tiffany/widget/TFListView;->mAreAllItemsSelectable:Z

    .line 150
    iput-boolean v7, p0, Lcom/nemustech/tiffany/widget/TFListView;->mItemsCanFocus:Z

    .line 152
    iput v7, p0, Lcom/nemustech/tiffany/widget/TFListView;->mChoiceMode:I

    .line 157
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/nemustech/tiffany/widget/TFListView;->mTempRect:Landroid/graphics/Rect;

    .line 159
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/nemustech/tiffany/widget/TFListView;->mTempPaint:Landroid/graphics/Paint;

    .line 163
    new-instance v4, Lcom/nemustech/tiffany/widget/TFListView$ArrowScrollFocusResult;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/nemustech/tiffany/widget/TFListView$ArrowScrollFocusResult;-><init>(Lcom/nemustech/tiffany/widget/TFListView$1;)V

    iput-object v4, p0, Lcom/nemustech/tiffany/widget/TFListView;->mArrowScrollFocusResult:Lcom/nemustech/tiffany/widget/TFListView$ArrowScrollFocusResult;

    .line 170
    iput-boolean v7, p0, Lcom/nemustech/tiffany/widget/TFListView;->mShowAnimationOnDataChange:Z

    .line 173
    new-instance v4, Lcom/nemustech/tiffany/widget/TFListView$1;

    invoke-direct {v4, p0}, Lcom/nemustech/tiffany/widget/TFListView$1;-><init>(Lcom/nemustech/tiffany/widget/TFListView;)V

    iput-object v4, p0, Lcom/nemustech/tiffany/widget/TFListView;->mExcessScrollDrawInterpolator:Landroid/view/animation/Interpolator;

    .line 201
    iput v7, p0, Lcom/nemustech/tiffany/widget/TFListView;->mExcessScrollEffect:I

    .line 244
    iput-boolean v8, p0, Lcom/nemustech/tiffany/widget/TFListView;->mExcessScrollEnabled:Z

    .line 245
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    iput v4, p0, Lcom/nemustech/tiffany/widget/TFListView;->mDensityScale:F

    .line 247
    invoke-static {}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInstance()Lcom/nemustech/tiffany/widget/TFResourceBroker;

    move-result-object v4

    const/16 v5, 0x104

    invoke-virtual {v4, v5}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getIntArr(I)[I

    move-result-object v4

    invoke-virtual {p1, p2, v4, p3, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 250
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-static {}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInstance()Lcom/nemustech/tiffany/widget/TFResourceBroker;

    move-result-object v4

    const/16 v5, 0x1c

    invoke-virtual {v4, v5}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInt(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    .line 252
    .local v3, entries:[Ljava/lang/CharSequence;
    if-eqz v3, :cond_0

    .line 253
    new-instance v4, Landroid/widget/ArrayAdapter;

    invoke-static {}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInstance()Lcom/nemustech/tiffany/widget/TFResourceBroker;

    move-result-object v5

    const/4 v6, 0x7

    invoke-virtual {v5, v6}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInt(I)I

    move-result v5

    invoke-direct {v4, p1, v5, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v4}, Lcom/nemustech/tiffany/widget/TFListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 257
    :cond_0
    invoke-static {}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInstance()Lcom/nemustech/tiffany/widget/TFResourceBroker;

    move-result-object v4

    const/16 v5, 0x1a

    invoke-virtual {v4, v5}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInt(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 258
    .local v1, d:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    .line 260
    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 264
    :cond_1
    invoke-static {}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInstance()Lcom/nemustech/tiffany/widget/TFResourceBroker;

    move-result-object v4

    const/16 v5, 0x1b

    invoke-virtual {v4, v5}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInt(I)I

    move-result v4

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 266
    .local v2, dividerHeight:I
    if-eqz v2, :cond_2

    .line 267
    invoke-virtual {p0, v2}, Lcom/nemustech/tiffany/widget/TFListView;->setDividerHeight(I)V

    .line 270
    :cond_2
    const/4 v4, 0x3

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/nemustech/tiffany/widget/TFListView;->setChoiceMode(I)V

    .line 272
    invoke-static {}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInstance()Lcom/nemustech/tiffany/widget/TFResourceBroker;

    move-result-object v4

    const/16 v5, 0x1e

    invoke-virtual {v4, v5}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInt(I)I

    move-result v4

    invoke-virtual {v0, v4, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/nemustech/tiffany/widget/TFListView;->mHeaderDividersEnabled:Z

    .line 273
    invoke-static {}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInstance()Lcom/nemustech/tiffany/widget/TFResourceBroker;

    move-result-object v4

    const/16 v5, 0x1d

    invoke-virtual {v4, v5}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInt(I)I

    move-result v4

    invoke-virtual {v0, v4, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/nemustech/tiffany/widget/TFListView;->mFooterDividersEnabled:Z

    .line 275
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 276
    return-void
.end method

.method private addViewAbove(Landroid/view/View;I)Landroid/view/View;
    .locals 8
    .parameter "theView"
    .parameter "position"

    .prologue
    const/4 v4, 0x0

    .line 2927
    const/4 v0, 0x1

    sub-int v2, p2, v0

    .line 2928
    .local v2, abovePosition:I
    invoke-virtual {p0, v2}, Lcom/nemustech/tiffany/widget/TFListView;->obtainView(I)Landroid/view/View;

    move-result-object v1

    .line 2929
    .local v1, view:Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iget v5, p0, Lcom/nemustech/tiffany/widget/TFListView;->mDividerHeight:I

    sub-int v3, v0, v5

    .line 2930
    .local v3, edgeOfNewChild:I
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v6, v4

    move v7, v4

    invoke-direct/range {v0 .. v7}, Lcom/nemustech/tiffany/widget/TFListView;->setupChild(Landroid/view/View;IIZIZZ)V

    .line 2931
    return-object v1
.end method

.method private addViewBelow(Landroid/view/View;I)Landroid/view/View;
    .locals 8
    .parameter "theView"
    .parameter "position"

    .prologue
    const/4 v6, 0x0

    .line 2935
    add-int/lit8 v2, p2, 0x1

    .line 2936
    .local v2, belowPosition:I
    invoke-virtual {p0, v2}, Lcom/nemustech/tiffany/widget/TFListView;->obtainView(I)Landroid/view/View;

    move-result-object v1

    .line 2937
    .local v1, view:Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v4, p0, Lcom/nemustech/tiffany/widget/TFListView;->mDividerHeight:I

    add-int v3, v0, v4

    .line 2938
    .local v3, edgeOfNewChild:I
    const/4 v4, 0x1

    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/nemustech/tiffany/widget/TFListView;->setupChild(Landroid/view/View;IIZIZZ)V

    .line 2939
    return-object v1
.end method

.method private adjustViewsUpOrDown()V
    .locals 6

    .prologue
    .line 291
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->getChildCount()I

    move-result v1

    .line 294
    .local v1, childCount:I
    if-lez v1, :cond_2

    .line 297
    iget-boolean v3, p0, Lcom/nemustech/tiffany/widget/TFListView;->mStackFromBottom:Z

    if-nez v3, :cond_3

    .line 300
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/nemustech/tiffany/widget/TFListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 301
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int v2, v3, v4

    .line 302
    .local v2, delta:I
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFListView;->mFirstPosition:I

    if-eqz v3, :cond_0

    .line 305
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFListView;->mDividerHeight:I

    sub-int/2addr v2, v3

    .line 307
    :cond_0
    if-gez v2, :cond_1

    .line 309
    const/4 v2, 0x0

    .line 327
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 328
    neg-int v3, v2

    invoke-virtual {p0, v3}, Lcom/nemustech/tiffany/widget/TFListView;->offsetChildrenTopAndBottom(I)V

    .line 331
    .end local v0           #child:Landroid/view/View;
    .end local v2           #delta:I
    :cond_2
    return-void

    .line 313
    :cond_3
    const/4 v3, 0x1

    sub-int v3, v1, v3

    invoke-virtual {p0, v3}, Lcom/nemustech/tiffany/widget/TFListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 314
    .restart local v0       #child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    sub-int v2, v3, v4

    .line 316
    .restart local v2       #delta:I
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFListView;->mFirstPosition:I

    add-int/2addr v3, v1

    iget v4, p0, Lcom/nemustech/tiffany/widget/TFListView;->mItemCount:I

    if-ge v3, v4, :cond_4

    .line 319
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFListView;->mDividerHeight:I

    add-int/2addr v2, v3

    .line 322
    :cond_4
    if-lez v2, :cond_1

    .line 323
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private amountToScroll(II)I
    .locals 12
    .parameter "direction"
    .parameter "nextSelectedPosition"

    .prologue
    .line 2541
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->getHeight()I

    move-result v10

    iget-object v11, p0, Lcom/nemustech/tiffany/widget/TFListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v10, v11

    .line 2542
    .local v4, listBottom:I
    iget-object v10, p0, Lcom/nemustech/tiffany/widget/TFListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v10, Landroid/graphics/Rect;->top:I

    .line 2544
    .local v5, listTop:I
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->getChildCount()I

    move-result v7

    .line 2546
    .local v7, numChildren:I
    const/16 v10, 0x82

    if-ne p1, v10, :cond_5

    .line 2547
    const/4 v10, 0x1

    sub-int v3, v7, v10

    .line 2548
    .local v3, indexToMakeVisible:I
    const/4 v10, -0x1

    if-eq p2, v10, :cond_0

    .line 2549
    iget v10, p0, Lcom/nemustech/tiffany/widget/TFListView;->mFirstPosition:I

    sub-int v3, p2, v10

    .line 2552
    :cond_0
    iget v10, p0, Lcom/nemustech/tiffany/widget/TFListView;->mFirstPosition:I

    add-int v8, v10, v3

    .line 2553
    .local v8, positionToMakeVisible:I
    invoke-virtual {p0, v3}, Lcom/nemustech/tiffany/widget/TFListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 2555
    .local v9, viewToMakeVisible:Landroid/view/View;
    move v1, v4

    .line 2556
    .local v1, goalBottom:I
    iget v10, p0, Lcom/nemustech/tiffany/widget/TFListView;->mItemCount:I

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    if-ge v8, v10, :cond_1

    .line 2557
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFListView;->getArrowScrollPreviewLength()I

    move-result v10

    sub-int/2addr v1, v10

    .line 2560
    :cond_1
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v10

    if-gt v10, v1, :cond_2

    .line 2562
    const/4 v10, 0x0

    .line 2608
    .end local v1           #goalBottom:I
    :goto_0
    return v10

    .line 2565
    .restart local v1       #goalBottom:I
    :cond_2
    const/4 v10, -0x1

    if-eq p2, v10, :cond_3

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v10

    sub-int v10, v1, v10

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->getMaxScrollAmount()I

    move-result v11

    if-lt v10, v11, :cond_3

    .line 2568
    const/4 v10, 0x0

    goto :goto_0

    .line 2571
    :cond_3
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v10

    sub-int v0, v10, v1

    .line 2573
    .local v0, amountToScroll:I
    iget v10, p0, Lcom/nemustech/tiffany/widget/TFListView;->mFirstPosition:I

    add-int/2addr v10, v7

    iget v11, p0, Lcom/nemustech/tiffany/widget/TFListView;->mItemCount:I

    if-ne v10, v11, :cond_4

    .line 2575
    const/4 v10, 0x1

    sub-int v10, v7, v10

    invoke-virtual {p0, v10}, Lcom/nemustech/tiffany/widget/TFListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v10

    sub-int v6, v10, v4

    .line 2576
    .local v6, max:I
    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2579
    .end local v6           #max:I
    :cond_4
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->getMaxScrollAmount()I

    move-result v10

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto :goto_0

    .line 2581
    .end local v0           #amountToScroll:I
    .end local v1           #goalBottom:I
    .end local v3           #indexToMakeVisible:I
    .end local v8           #positionToMakeVisible:I
    .end local v9           #viewToMakeVisible:Landroid/view/View;
    :cond_5
    const/4 v3, 0x0

    .line 2582
    .restart local v3       #indexToMakeVisible:I
    const/4 v10, -0x1

    if-eq p2, v10, :cond_6

    .line 2583
    iget v10, p0, Lcom/nemustech/tiffany/widget/TFListView;->mFirstPosition:I

    sub-int v3, p2, v10

    .line 2585
    :cond_6
    iget v10, p0, Lcom/nemustech/tiffany/widget/TFListView;->mFirstPosition:I

    add-int v8, v10, v3

    .line 2586
    .restart local v8       #positionToMakeVisible:I
    invoke-virtual {p0, v3}, Lcom/nemustech/tiffany/widget/TFListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 2587
    .restart local v9       #viewToMakeVisible:Landroid/view/View;
    move v2, v5

    .line 2588
    .local v2, goalTop:I
    if-lez v8, :cond_7

    .line 2589
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFListView;->getArrowScrollPreviewLength()I

    move-result v10

    add-int/2addr v2, v10

    .line 2591
    :cond_7
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v10

    if-lt v10, v2, :cond_8

    .line 2593
    const/4 v10, 0x0

    goto :goto_0

    .line 2596
    :cond_8
    const/4 v10, -0x1

    if-eq p2, v10, :cond_9

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v10

    sub-int/2addr v10, v2

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->getMaxScrollAmount()I

    move-result v11

    if-lt v10, v11, :cond_9

    .line 2599
    const/4 v10, 0x0

    goto :goto_0

    .line 2602
    :cond_9
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v10

    sub-int v0, v2, v10

    .line 2603
    .restart local v0       #amountToScroll:I
    iget v10, p0, Lcom/nemustech/tiffany/widget/TFListView;->mFirstPosition:I

    if-nez v10, :cond_a

    .line 2605
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/nemustech/tiffany/widget/TFListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v10

    sub-int v6, v5, v10

    .line 2606
    .restart local v6       #max:I
    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2608
    .end local v6           #max:I
    :cond_a
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->getMaxScrollAmount()I

    move-result v10

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto/16 :goto_0
.end method

.method private amountToScrollToNewFocus(ILandroid/view/View;I)I
    .locals 4
    .parameter "direction"
    .parameter "newFocus"
    .parameter "positionOfNewFocus"

    .prologue
    .line 2800
    const/4 v0, 0x0

    .line 2801
    .local v0, amountToScroll:I
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 2802
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v2}, Lcom/nemustech/tiffany/widget/TFListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2803
    const/16 v2, 0x21

    if-ne p1, v2, :cond_1

    .line 2804
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-ge v2, v3, :cond_0

    .line 2805
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFListView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int v0, v2, v3

    .line 2806
    if-lez p3, :cond_0

    .line 2807
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFListView;->getArrowScrollPreviewLength()I

    move-result v2

    add-int/2addr v0, v2

    .line 2819
    :cond_0
    :goto_0
    return v0

    .line 2811
    :cond_1
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v2, v3

    .line 2812
    .local v1, listBottom:I
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-le v2, v1, :cond_0

    .line 2813
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v2, v1

    .line 2814
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFListView;->mItemCount:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge p3, v2, :cond_0

    .line 2815
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFListView;->getArrowScrollPreviewLength()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0
.end method

.method private arrowScrollFocused(I)Lcom/nemustech/tiffany/widget/TFListView$ArrowScrollFocusResult;
    .locals 20
    .parameter "direction"

    .prologue
    .line 2698
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->getSelectedView()Landroid/view/View;

    move-result-object v14

    .line 2700
    .local v14, selectedView:Landroid/view/View;
    if-eqz v14, :cond_2

    invoke-virtual {v14}, Landroid/view/View;->hasFocus()Z

    move-result v17

    if-eqz v17, :cond_2

    .line 2701
    invoke-virtual {v14}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v11

    .line 2702
    .local v11, oldFocus:Landroid/view/View;
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object v2, v11

    move/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v10

    .line 2727
    .end local v11           #oldFocus:Landroid/view/View;
    .local v10, newFocus:Landroid/view/View;
    :goto_0
    if-eqz v10, :cond_c

    .line 2728
    move-object/from16 v0, p0

    move-object v1, v10

    invoke-direct {v0, v1}, Lcom/nemustech/tiffany/widget/TFListView;->positionOfNewFocus(Landroid/view/View;)I

    move-result v12

    .line 2732
    .local v12, positionOfNewFocus:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mSelectedPosition:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mSelectedPosition:I

    move/from16 v17, v0

    move v0, v12

    move/from16 v1, v17

    if-eq v0, v1, :cond_a

    .line 2733
    invoke-direct/range {p0 .. p1}, Lcom/nemustech/tiffany/widget/TFListView;->lookForSelectablePositionOnScreen(I)I

    move-result v13

    .line 2734
    .local v13, selectablePosition:I
    const/16 v17, -0x1

    move v0, v13

    move/from16 v1, v17

    if-eq v0, v1, :cond_a

    const/16 v17, 0x82

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_0

    if-lt v13, v12, :cond_1

    :cond_0
    const/16 v17, 0x21

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_a

    if-le v13, v12, :cond_a

    .line 2737
    :cond_1
    const/16 v17, 0x0

    .line 2759
    .end local v12           #positionOfNewFocus:I
    .end local v13           #selectablePosition:I
    :goto_1
    return-object v17

    .line 2704
    .end local v10           #newFocus:Landroid/view/View;
    :cond_2
    const/16 v17, 0x82

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_6

    .line 2705
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mFirstPosition:I

    move/from16 v17, v0

    if-lez v17, :cond_3

    const/16 v17, 0x1

    move/from16 v15, v17

    .line 2706
    .local v15, topFadingEdgeShowing:Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    if-eqz v15, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->getArrowScrollPreviewLength()I

    move-result v18

    :goto_3
    add-int v8, v17, v18

    .line 2708
    .local v8, listTop:I
    if-eqz v14, :cond_5

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v17

    move/from16 v0, v17

    move v1, v8

    if-le v0, v1, :cond_5

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v17

    move/from16 v16, v17

    .line 2712
    .local v16, ySearchPoint:I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v16

    move/from16 v3, v19

    move/from16 v4, v16

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2724
    .end local v8           #listTop:I
    .end local v15           #topFadingEdgeShowing:Z
    :goto_5
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    move/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v10

    .restart local v10       #newFocus:Landroid/view/View;
    goto/16 :goto_0

    .line 2705
    .end local v10           #newFocus:Landroid/view/View;
    .end local v16           #ySearchPoint:I
    :cond_3
    const/16 v17, 0x0

    move/from16 v15, v17

    goto :goto_2

    .line 2706
    .restart local v15       #topFadingEdgeShowing:Z
    :cond_4
    const/16 v18, 0x0

    goto :goto_3

    .restart local v8       #listTop:I
    :cond_5
    move/from16 v16, v8

    .line 2708
    goto :goto_4

    .line 2714
    .end local v8           #listTop:I
    .end local v15           #topFadingEdgeShowing:Z
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mFirstPosition:I

    move/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->getChildCount()I

    move-result v18

    add-int v17, v17, v18

    const/16 v18, 0x1

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mItemCount:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_7

    const/16 v17, 0x1

    move/from16 v5, v17

    .line 2716
    .local v5, bottomFadingEdgeShowing:Z
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->getHeight()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    if-eqz v5, :cond_8

    invoke-direct/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->getArrowScrollPreviewLength()I

    move-result v18

    :goto_7
    sub-int v7, v17, v18

    .line 2718
    .local v7, listBottom:I
    if-eqz v14, :cond_9

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v17

    move/from16 v0, v17

    move v1, v7

    if-ge v0, v1, :cond_9

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v17

    move/from16 v16, v17

    .line 2722
    .restart local v16       #ySearchPoint:I
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v16

    move/from16 v3, v19

    move/from16 v4, v16

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_5

    .line 2714
    .end local v5           #bottomFadingEdgeShowing:Z
    .end local v7           #listBottom:I
    .end local v16           #ySearchPoint:I
    :cond_7
    const/16 v17, 0x0

    move/from16 v5, v17

    goto :goto_6

    .line 2716
    .restart local v5       #bottomFadingEdgeShowing:Z
    :cond_8
    const/16 v18, 0x0

    goto :goto_7

    .restart local v7       #listBottom:I
    :cond_9
    move/from16 v16, v7

    .line 2718
    goto :goto_8

    .line 2741
    .end local v5           #bottomFadingEdgeShowing:Z
    .end local v7           #listBottom:I
    .restart local v10       #newFocus:Landroid/view/View;
    .restart local v12       #positionOfNewFocus:I
    :cond_a
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object v2, v10

    move v3, v12

    invoke-direct {v0, v1, v2, v3}, Lcom/nemustech/tiffany/widget/TFListView;->amountToScrollToNewFocus(ILandroid/view/View;I)I

    move-result v6

    .line 2743
    .local v6, focusScroll:I
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->getMaxScrollAmount()I

    move-result v9

    .line 2744
    .local v9, maxScrollAmount:I
    if-ge v6, v9, :cond_b

    .line 2746
    move-object v0, v10

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->requestFocus(I)Z

    .line 2747
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mArrowScrollFocusResult:Lcom/nemustech/tiffany/widget/TFListView$ArrowScrollFocusResult;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move v1, v12

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFListView$ArrowScrollFocusResult;->populate(II)V

    .line 2748
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mArrowScrollFocusResult:Lcom/nemustech/tiffany/widget/TFListView$ArrowScrollFocusResult;

    move-object/from16 v17, v0

    goto/16 :goto_1

    .line 2749
    :cond_b
    move-object/from16 v0, p0

    move-object v1, v10

    invoke-direct {v0, v1}, Lcom/nemustech/tiffany/widget/TFListView;->distanceToView(Landroid/view/View;)I

    move-result v17

    move/from16 v0, v17

    move v1, v9

    if-ge v0, v1, :cond_c

    .line 2754
    move-object v0, v10

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->requestFocus(I)Z

    .line 2755
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mArrowScrollFocusResult:Lcom/nemustech/tiffany/widget/TFListView$ArrowScrollFocusResult;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move v1, v12

    move v2, v9

    invoke-virtual {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFListView$ArrowScrollFocusResult;->populate(II)V

    .line 2756
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mArrowScrollFocusResult:Lcom/nemustech/tiffany/widget/TFListView$ArrowScrollFocusResult;

    move-object/from16 v17, v0

    goto/16 :goto_1

    .line 2759
    .end local v6           #focusScroll:I
    .end local v9           #maxScrollAmount:I
    .end local v12           #positionOfNewFocus:I
    :cond_c
    const/16 v17, 0x0

    goto/16 :goto_1
.end method

.method private arrowScrollImpl(I)Z
    .locals 10
    .parameter "direction"

    .prologue
    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 2327
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->getChildCount()I

    move-result v6

    if-gtz v6, :cond_0

    move v6, v7

    .line 2399
    :goto_0
    return v6

    .line 2331
    :cond_0
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->getSelectedView()Landroid/view/View;

    move-result-object v5

    .line 2333
    .local v5, selectedView:Landroid/view/View;
    invoke-direct {p0, p1}, Lcom/nemustech/tiffany/widget/TFListView;->lookForSelectablePositionOnScreen(I)I

    move-result v4

    .line 2334
    .local v4, nextSelectedPosition:I
    invoke-direct {p0, p1, v4}, Lcom/nemustech/tiffany/widget/TFListView;->amountToScroll(II)I

    move-result v0

    .line 2337
    .local v0, amountToScroll:I
    iget-boolean v6, p0, Lcom/nemustech/tiffany/widget/TFListView;->mItemsCanFocus:Z

    if-eqz v6, :cond_9

    invoke-direct {p0, p1}, Lcom/nemustech/tiffany/widget/TFListView;->arrowScrollFocused(I)Lcom/nemustech/tiffany/widget/TFListView$ArrowScrollFocusResult;

    move-result-object v6

    move-object v1, v6

    .line 2338
    .local v1, focusResult:Lcom/nemustech/tiffany/widget/TFListView$ArrowScrollFocusResult;
    :goto_1
    if-eqz v1, :cond_1

    .line 2339
    invoke-virtual {v1}, Lcom/nemustech/tiffany/widget/TFListView$ArrowScrollFocusResult;->getSelectedPosition()I

    move-result v4

    .line 2340
    invoke-virtual {v1}, Lcom/nemustech/tiffany/widget/TFListView$ArrowScrollFocusResult;->getAmountToScroll()I

    move-result v0

    .line 2343
    :cond_1
    if-eqz v1, :cond_a

    move v3, v9

    .line 2344
    .local v3, needToRedraw:Z
    :goto_2
    if-eq v4, v8, :cond_3

    .line 2345
    if-eqz v1, :cond_b

    move v6, v9

    :goto_3
    invoke-direct {p0, v5, p1, v4, v6}, Lcom/nemustech/tiffany/widget/TFListView;->handleNewSelectionChange(Landroid/view/View;IIZ)V

    .line 2346
    invoke-virtual {p0, v4}, Lcom/nemustech/tiffany/widget/TFListView;->setSelectedPositionInt(I)V

    .line 2347
    invoke-virtual {p0, v4}, Lcom/nemustech/tiffany/widget/TFListView;->setNextSelectedPositionInt(I)V

    .line 2348
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->getSelectedView()Landroid/view/View;

    move-result-object v5

    .line 2349
    iget-boolean v6, p0, Lcom/nemustech/tiffany/widget/TFListView;->mItemsCanFocus:Z

    if-eqz v6, :cond_2

    if-nez v1, :cond_2

    .line 2352
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    .line 2353
    .local v2, focused:Landroid/view/View;
    if-eqz v2, :cond_2

    .line 2354
    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    .line 2357
    .end local v2           #focused:Landroid/view/View;
    :cond_2
    const/4 v3, 0x1

    .line 2358
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->checkSelectionChanged()V

    .line 2361
    :cond_3
    if-lez v0, :cond_4

    .line 2362
    const/16 v6, 0x21

    if-ne p1, v6, :cond_c

    move v6, v0

    :goto_4
    invoke-direct {p0, v6}, Lcom/nemustech/tiffany/widget/TFListView;->scrollListItemsBy(I)V

    .line 2363
    const/4 v3, 0x1

    .line 2368
    :cond_4
    iget-boolean v6, p0, Lcom/nemustech/tiffany/widget/TFListView;->mItemsCanFocus:Z

    if-eqz v6, :cond_5

    if-nez v1, :cond_5

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Landroid/view/View;->hasFocus()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2370
    invoke-virtual {v5}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v2

    .line 2371
    .restart local v2       #focused:Landroid/view/View;
    invoke-direct {p0, v2}, Lcom/nemustech/tiffany/widget/TFListView;->distanceToView(Landroid/view/View;)I

    move-result v6

    if-lez v6, :cond_5

    .line 2372
    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    .line 2377
    .end local v2           #focused:Landroid/view/View;
    :cond_5
    if-ne v4, v8, :cond_6

    if-eqz v5, :cond_6

    invoke-direct {p0, v5, p0}, Lcom/nemustech/tiffany/widget/TFListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 2379
    const/4 v5, 0x0

    .line 2380
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->hideSelector()V

    .line 2384
    iput v8, p0, Lcom/nemustech/tiffany/widget/TFListView;->mResurrectToPosition:I

    .line 2387
    :cond_6
    if-eqz v3, :cond_d

    .line 2388
    if-eqz v5, :cond_7

    .line 2389
    invoke-virtual {p0, v5}, Lcom/nemustech/tiffany/widget/TFListView;->positionSelector(Landroid/view/View;)V

    .line 2390
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v6

    iput v6, p0, Lcom/nemustech/tiffany/widget/TFListView;->mSelectedTop:I

    .line 2392
    :cond_7
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->awakenScrollBars()Z

    move-result v6

    if-nez v6, :cond_8

    .line 2393
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->invalidate()V

    .line 2395
    :cond_8
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->invokeOnItemScrollListener()V

    move v6, v9

    .line 2396
    goto/16 :goto_0

    .line 2337
    .end local v1           #focusResult:Lcom/nemustech/tiffany/widget/TFListView$ArrowScrollFocusResult;
    .end local v3           #needToRedraw:Z
    :cond_9
    const/4 v6, 0x0

    move-object v1, v6

    goto/16 :goto_1

    .restart local v1       #focusResult:Lcom/nemustech/tiffany/widget/TFListView$ArrowScrollFocusResult;
    :cond_a
    move v3, v7

    .line 2343
    goto :goto_2

    .restart local v3       #needToRedraw:Z
    :cond_b
    move v6, v7

    .line 2345
    goto :goto_3

    .line 2362
    :cond_c
    neg-int v6, v0

    goto :goto_4

    :cond_d
    move v6, v7

    .line 2399
    goto/16 :goto_0
.end method

.method private clearRecycledState(Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nemustech/tiffany/widget/TFListView$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 577
    .local p1, infos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/nemustech/tiffany/widget/TFListView$FixedViewInfo;>;"
    if-eqz p1, :cond_1

    .line 578
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 580
    .local v1, count:I
    const/4 v2, 0x0

    .end local p0
    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 581
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/nemustech/tiffany/widget/TFListView$FixedViewInfo;

    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFListView$FixedViewInfo;->view:Landroid/view/View;

    .line 582
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/nemustech/tiffany/widget/TFAbsListView$LayoutParams;

    .line 583
    .local v3, p:Lcom/nemustech/tiffany/widget/TFAbsListView$LayoutParams;
    if-eqz v3, :cond_0

    .line 584
    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/nemustech/tiffany/widget/TFAbsListView$LayoutParams;->recycledHeaderFooter:Z

    .line 580
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 588
    .end local v0           #child:Landroid/view/View;
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v3           #p:Lcom/nemustech/tiffany/widget/TFAbsListView$LayoutParams;
    :cond_1
    return-void
.end method

.method private commonKey(IILandroid/view/KeyEvent;)Z
    .locals 7
    .parameter "keyCode"
    .parameter "count"
    .parameter "event"

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x82

    const/16 v4, 0x21

    const/4 v3, 0x1

    .line 2072
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v2, :cond_0

    move v2, v6

    .line 2165
    :goto_0
    return v2

    .line 2076
    :cond_0
    iget-boolean v2, p0, Lcom/nemustech/tiffany/widget/TFListView;->mDataChanged:Z

    if-eqz v2, :cond_1

    .line 2077
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->layoutChildren()V

    .line 2080
    :cond_1
    const/4 v1, 0x0

    .line 2081
    .local v1, handled:Z
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 2083
    .local v0, action:I
    if-eq v0, v3, :cond_3

    .line 2084
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFListView;->mSelectedPosition:I

    if-gez v2, :cond_2

    .line 2085
    sparse-switch p1, :sswitch_data_0

    .line 2096
    :cond_2
    sparse-switch p1, :sswitch_data_1

    .line 2147
    :cond_3
    :goto_1
    if-nez v1, :cond_4

    .line 2148
    invoke-virtual {p0, p1, p2, p3}, Lcom/nemustech/tiffany/widget/TFListView;->sendToTextFilter(IILandroid/view/KeyEvent;)Z

    move-result v1

    .line 2151
    :cond_4
    if-eqz v1, :cond_a

    move v2, v3

    .line 2152
    goto :goto_0

    .line 2091
    :sswitch_0
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->resurrectSelection()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    .line 2092
    goto :goto_0

    .line 2098
    :sswitch_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v2

    if-nez v2, :cond_5

    .line 2099
    :goto_2
    if-lez p2, :cond_3

    .line 2100
    invoke-virtual {p0, v4}, Lcom/nemustech/tiffany/widget/TFListView;->arrowScroll(I)Z

    move-result v1

    .line 2101
    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    .line 2104
    :cond_5
    invoke-virtual {p0, v4}, Lcom/nemustech/tiffany/widget/TFListView;->fullScroll(I)Z

    move-result v1

    .line 2106
    goto :goto_1

    .line 2109
    :sswitch_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v2

    if-nez v2, :cond_6

    .line 2110
    :goto_3
    if-lez p2, :cond_3

    .line 2111
    invoke-virtual {p0, v5}, Lcom/nemustech/tiffany/widget/TFListView;->arrowScroll(I)Z

    move-result v1

    .line 2112
    add-int/lit8 p2, p2, -0x1

    goto :goto_3

    .line 2115
    :cond_6
    invoke-virtual {p0, v5}, Lcom/nemustech/tiffany/widget/TFListView;->fullScroll(I)Z

    move-result v1

    .line 2117
    goto :goto_1

    .line 2120
    :sswitch_3
    const/16 v2, 0x11

    invoke-direct {p0, v2}, Lcom/nemustech/tiffany/widget/TFListView;->handleHorizontalFocusWithinListItem(I)Z

    move-result v1

    .line 2121
    goto :goto_1

    .line 2123
    :sswitch_4
    const/16 v2, 0x42

    invoke-direct {p0, v2}, Lcom/nemustech/tiffany/widget/TFListView;->handleHorizontalFocusWithinListItem(I)Z

    move-result v1

    .line 2124
    goto :goto_1

    .line 2128
    :sswitch_5
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFListView;->mItemCount:I

    if-lez v2, :cond_7

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_7

    .line 2129
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->keyPressed()V

    .line 2131
    :cond_7
    const/4 v1, 0x1

    .line 2132
    goto :goto_1

    .line 2135
    :sswitch_6
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2136
    :cond_8
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v2

    if-nez v2, :cond_9

    .line 2137
    invoke-virtual {p0, v5}, Lcom/nemustech/tiffany/widget/TFListView;->pageScroll(I)Z

    .line 2141
    :goto_4
    const/4 v1, 0x1

    goto :goto_1

    .line 2139
    :cond_9
    invoke-virtual {p0, v4}, Lcom/nemustech/tiffany/widget/TFListView;->pageScroll(I)Z

    goto :goto_4

    .line 2154
    :cond_a
    packed-switch v0, :pswitch_data_0

    move v2, v6

    .line 2165
    goto/16 :goto_0

    .line 2156
    :pswitch_0
    invoke-super {p0, p1, p3}, Lcom/nemustech/tiffany/widget/TFAbsListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    .line 2159
    :pswitch_1
    invoke-super {p0, p1, p3}, Lcom/nemustech/tiffany/widget/TFAbsListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    .line 2162
    :pswitch_2
    invoke-super {p0, p1, p2, p3}, Lcom/nemustech/tiffany/widget/TFAbsListView;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    .line 2085
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x17 -> :sswitch_0
        0x3e -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch

    .line 2096
    :sswitch_data_1
    .sparse-switch
        0x13 -> :sswitch_1
        0x14 -> :sswitch_2
        0x15 -> :sswitch_3
        0x16 -> :sswitch_4
        0x17 -> :sswitch_5
        0x3e -> :sswitch_6
        0x42 -> :sswitch_5
    .end sparse-switch

    .line 2154
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private correctTooHigh(I)V
    .locals 10
    .parameter "childCount"

    .prologue
    const/4 v9, 0x1

    .line 1352
    iget v7, p0, Lcom/nemustech/tiffany/widget/TFListView;->mFirstPosition:I

    add-int/2addr v7, p1

    sub-int v6, v7, v9

    .line 1353
    .local v6, lastPosition:I
    iget v7, p0, Lcom/nemustech/tiffany/widget/TFListView;->mItemCount:I

    sub-int/2addr v7, v9

    if-ne v6, v7, :cond_2

    if-lez p1, :cond_2

    .line 1356
    sub-int v7, p1, v9

    invoke-virtual {p0, v7}, Lcom/nemustech/tiffany/widget/TFListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1359
    .local v5, lastChild:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 1362
    .local v4, lastBottom:I
    iget v7, p0, Lcom/nemustech/tiffany/widget/TFListView;->mBottom:I

    iget v8, p0, Lcom/nemustech/tiffany/widget/TFListView;->mTop:I

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v7, v8

    .line 1366
    .local v1, end:I
    sub-int v0, v1, v4

    .line 1367
    .local v0, bottomOffset:I
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/nemustech/tiffany/widget/TFListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1368
    .local v2, firstChild:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    .line 1372
    .local v3, firstTop:I
    if-lez v0, :cond_2

    iget v7, p0, Lcom/nemustech/tiffany/widget/TFListView;->mFirstPosition:I

    if-gtz v7, :cond_0

    iget-object v7, p0, Lcom/nemustech/tiffany/widget/TFListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    if-ge v3, v7, :cond_2

    .line 1373
    :cond_0
    iget v7, p0, Lcom/nemustech/tiffany/widget/TFListView;->mFirstPosition:I

    if-nez v7, :cond_1

    .line 1375
    iget-object v7, p0, Lcom/nemustech/tiffany/widget/TFListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v3

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1378
    :cond_1
    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/widget/TFListView;->offsetChildrenTopAndBottom(I)V

    .line 1379
    iget v7, p0, Lcom/nemustech/tiffany/widget/TFListView;->mFirstPosition:I

    if-lez v7, :cond_2

    .line 1382
    iget v7, p0, Lcom/nemustech/tiffany/widget/TFListView;->mFirstPosition:I

    sub-int/2addr v7, v9

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v8

    iget v9, p0, Lcom/nemustech/tiffany/widget/TFListView;->mDividerHeight:I

    sub-int/2addr v8, v9

    invoke-direct {p0, v7, v8}, Lcom/nemustech/tiffany/widget/TFListView;->fillUp(II)Landroid/view/View;

    .line 1384
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFListView;->adjustViewsUpOrDown()V

    .line 1389
    .end local v0           #bottomOffset:I
    .end local v1           #end:I
    .end local v2           #firstChild:Landroid/view/View;
    .end local v3           #firstTop:I
    .end local v4           #lastBottom:I
    .end local v5           #lastChild:Landroid/view/View;
    :cond_2
    return-void
.end method

.method private correctTooLow(I)V
    .locals 11
    .parameter "childCount"

    .prologue
    const/4 v10, 0x1

    .line 1401
    iget v8, p0, Lcom/nemustech/tiffany/widget/TFListView;->mFirstPosition:I

    if-nez v8, :cond_2

    if-lez p1, :cond_2

    .line 1404
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/nemustech/tiffany/widget/TFListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1407
    .local v1, firstChild:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    .line 1410
    .local v2, firstTop:I
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v8, Landroid/graphics/Rect;->top:I

    .line 1413
    .local v6, start:I
    iget v8, p0, Lcom/nemustech/tiffany/widget/TFListView;->mBottom:I

    iget v9, p0, Lcom/nemustech/tiffany/widget/TFListView;->mTop:I

    sub-int/2addr v8, v9

    iget-object v9, p0, Lcom/nemustech/tiffany/widget/TFListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v8, v9

    .line 1417
    .local v0, end:I
    sub-int v7, v2, v6

    .line 1418
    .local v7, topOffset:I
    sub-int v8, p1, v10

    invoke-virtual {p0, v8}, Lcom/nemustech/tiffany/widget/TFListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1419
    .local v4, lastChild:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 1420
    .local v3, lastBottom:I
    iget v8, p0, Lcom/nemustech/tiffany/widget/TFListView;->mFirstPosition:I

    add-int/2addr v8, p1

    sub-int v5, v8, v10

    .line 1424
    .local v5, lastPosition:I
    if-lez v7, :cond_2

    .line 1425
    iget v8, p0, Lcom/nemustech/tiffany/widget/TFListView;->mItemCount:I

    sub-int/2addr v8, v10

    if-lt v5, v8, :cond_0

    if-le v3, v0, :cond_3

    .line 1426
    :cond_0
    iget v8, p0, Lcom/nemustech/tiffany/widget/TFListView;->mItemCount:I

    sub-int/2addr v8, v10

    if-ne v5, v8, :cond_1

    .line 1428
    sub-int v8, v3, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 1431
    :cond_1
    neg-int v8, v7

    invoke-virtual {p0, v8}, Lcom/nemustech/tiffany/widget/TFListView;->offsetChildrenTopAndBottom(I)V

    .line 1432
    iget v8, p0, Lcom/nemustech/tiffany/widget/TFListView;->mItemCount:I

    sub-int/2addr v8, v10

    if-ge v5, v8, :cond_2

    .line 1435
    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v9

    iget v10, p0, Lcom/nemustech/tiffany/widget/TFListView;->mDividerHeight:I

    add-int/2addr v9, v10

    invoke-direct {p0, v8, v9}, Lcom/nemustech/tiffany/widget/TFListView;->fillDown(II)Landroid/view/View;

    .line 1437
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFListView;->adjustViewsUpOrDown()V

    .line 1444
    .end local v0           #end:I
    .end local v1           #firstChild:Landroid/view/View;
    .end local v2           #firstTop:I
    .end local v3           #lastBottom:I
    .end local v4           #lastChild:Landroid/view/View;
    .end local v5           #lastPosition:I
    .end local v6           #start:I
    .end local v7           #topOffset:I
    :cond_2
    :goto_0
    return-void

    .line 1439
    .restart local v0       #end:I
    .restart local v1       #firstChild:Landroid/view/View;
    .restart local v2       #firstTop:I
    .restart local v3       #lastBottom:I
    .restart local v4       #lastChild:Landroid/view/View;
    .restart local v5       #lastPosition:I
    .restart local v6       #start:I
    .restart local v7       #topOffset:I
    :cond_3
    iget v8, p0, Lcom/nemustech/tiffany/widget/TFListView;->mItemCount:I

    sub-int/2addr v8, v10

    if-ne v5, v8, :cond_2

    .line 1440
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFListView;->adjustViewsUpOrDown()V

    goto :goto_0
.end method

.method private distanceToView(Landroid/view/View;)I
    .locals 4
    .parameter "descendant"

    .prologue
    .line 2829
    const/4 v0, 0x0

    .line 2830
    .local v0, distance:I
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 2831
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v2}, Lcom/nemustech/tiffany/widget/TFListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2832
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFListView;->mBottom:I

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFListView;->mTop:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v2, v3

    .line 2833
    .local v1, listBottom:I
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-ge v2, v3, :cond_1

    .line 2834
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFListView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v2, v3

    .line 2838
    :cond_0
    :goto_0
    return v0

    .line 2835
    :cond_1
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-le v2, v1, :cond_0

    .line 2836
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int v0, v2, v1

    goto :goto_0
.end method

.method private fillAboveAndBelow(Landroid/view/View;I)V
    .locals 4
    .parameter "sel"
    .parameter "position"

    .prologue
    const/4 v3, 0x1

    .line 834
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFListView;->mDividerHeight:I

    .line 835
    .local v0, dividerHeight:I
    iget-boolean v1, p0, Lcom/nemustech/tiffany/widget/TFListView;->mStackFromBottom:Z

    if-nez v1, :cond_0

    .line 836
    sub-int v1, p2, v3

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Lcom/nemustech/tiffany/widget/TFListView;->fillUp(II)Landroid/view/View;

    .line 837
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFListView;->adjustViewsUpOrDown()V

    .line 838
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Lcom/nemustech/tiffany/widget/TFListView;->fillDown(II)Landroid/view/View;

    .line 844
    :goto_0
    return-void

    .line 840
    :cond_0
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Lcom/nemustech/tiffany/widget/TFListView;->fillDown(II)Landroid/view/View;

    .line 841
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFListView;->adjustViewsUpOrDown()V

    .line 842
    sub-int v1, p2, v3

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Lcom/nemustech/tiffany/widget/TFListView;->fillUp(II)Landroid/view/View;

    goto :goto_0
.end method

.method private fillDown(II)Landroid/view/View;
    .locals 9
    .parameter "pos"
    .parameter "nextTop"

    .prologue
    const/4 v3, 0x1

    .line 723
    const/4 v8, 0x0

    .line 725
    .local v8, selectedView:Landroid/view/View;
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFListView;->mBottom:I

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFListView;->mTop:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v7, v0, v1

    .line 727
    .local v7, end:I
    :goto_0
    if-ge p2, v7, :cond_2

    iget v0, p0, Lcom/nemustech/tiffany/widget/TFListView;->mItemCount:I

    if-ge p1, v0, :cond_2

    .line 729
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFListView;->mSelectedPosition:I

    if-ne p1, v0, :cond_1

    move v5, v3

    .line 730
    .local v5, selected:Z
    :goto_1
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/nemustech/tiffany/widget/TFListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v6

    .line 732
    .local v6, child:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFListView;->mDividerHeight:I

    add-int p2, v0, v1

    .line 733
    if-eqz v5, :cond_0

    .line 734
    move-object v8, v6

    .line 736
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 737
    goto :goto_0

    .line 729
    .end local v5           #selected:Z
    .end local v6           #child:Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    move v5, v0

    goto :goto_1

    .line 739
    :cond_2
    return-object v8
.end method

.method private fillFromMiddle(II)Landroid/view/View;
    .locals 9
    .parameter "childrenTop"
    .parameter "childrenBottom"

    .prologue
    const/4 v3, 0x1

    .line 802
    sub-int v6, p2, p1

    .line 804
    .local v6, height:I
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->reconcileSelectedPosition()I

    move-result v1

    .line 806
    .local v1, position:I
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v2, p1

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/nemustech/tiffany/widget/TFListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v7

    .line 808
    .local v7, sel:Landroid/view/View;
    iput v1, p0, Lcom/nemustech/tiffany/widget/TFListView;->mFirstPosition:I

    .line 810
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 811
    .local v8, selHeight:I
    if-gt v8, v6, :cond_0

    .line 812
    sub-int v0, v6, v8

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v7, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 815
    :cond_0
    invoke-direct {p0, v7, v1}, Lcom/nemustech/tiffany/widget/TFListView;->fillAboveAndBelow(Landroid/view/View;I)V

    .line 817
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFListView;->mStackFromBottom:Z

    if-nez v0, :cond_1

    .line 818
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->getChildCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/nemustech/tiffany/widget/TFListView;->correctTooHigh(I)V

    .line 823
    :goto_0
    return-object v7

    .line 820
    :cond_1
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->getChildCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/nemustech/tiffany/widget/TFListView;->correctTooLow(I)V

    goto :goto_0
.end method

.method private fillFromSelection(III)Landroid/view/View;
    .locals 17
    .parameter "selectedTop"
    .parameter "childrenTop"
    .parameter "childrenBottom"

    .prologue
    .line 858
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->getVerticalFadingEdgeLength()I

    move-result v11

    .line 859
    .local v11, fadingEdgeLength:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mSelectedPosition:I

    move v5, v0

    .line 863
    .local v5, selectedPosition:I
    move-object/from16 v0, p0

    move/from16 v1, p2

    move v2, v11

    move v3, v5

    invoke-direct {v0, v1, v2, v3}, Lcom/nemustech/tiffany/widget/TFListView;->getTopSelectionPixel(III)I

    move-result v16

    .line 865
    .local v16, topSelectionPixel:I
    move-object/from16 v0, p0

    move/from16 v1, p3

    move v2, v11

    move v3, v5

    invoke-direct {v0, v1, v2, v3}, Lcom/nemustech/tiffany/widget/TFListView;->getBottomSelectionPixel(III)I

    move-result v10

    .line 868
    .local v10, bottomSelectionPixel:I
    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mListPadding:Landroid/graphics/Rect;

    move-object v4, v0

    iget v8, v4, Landroid/graphics/Rect;->left:I

    const/4 v9, 0x1

    move-object/from16 v4, p0

    move/from16 v6, p1

    invoke-direct/range {v4 .. v9}, Lcom/nemustech/tiffany/widget/TFListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v13

    .line 872
    .local v13, sel:Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v4

    if-le v4, v10, :cond_1

    .line 875
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int v14, v4, v16

    .line 879
    .local v14, spaceAbove:I
    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v4

    sub-int v15, v4, v10

    .line 880
    .local v15, spaceBelow:I
    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 883
    .local v12, offset:I
    neg-int v4, v12

    invoke-virtual {v13, v4}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 899
    .end local v12           #offset:I
    .end local v14           #spaceAbove:I
    .end local v15           #spaceBelow:I
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    move-object v1, v13

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFListView;->fillAboveAndBelow(Landroid/view/View;I)V

    .line 901
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mStackFromBottom:Z

    move v4, v0

    if-nez v4, :cond_2

    .line 902
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->getChildCount()I

    move-result v4

    move-object/from16 v0, p0

    move v1, v4

    invoke-direct {v0, v1}, Lcom/nemustech/tiffany/widget/TFListView;->correctTooHigh(I)V

    .line 907
    :goto_1
    return-object v13

    .line 884
    :cond_1
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v4

    move v0, v4

    move/from16 v1, v16

    if-ge v0, v1, :cond_0

    .line 887
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int v14, v16, v4

    .line 891
    .restart local v14       #spaceAbove:I
    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v4

    sub-int v15, v10, v4

    .line 892
    .restart local v15       #spaceBelow:I
    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 895
    .restart local v12       #offset:I
    invoke-virtual {v13, v12}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_0

    .line 904
    .end local v12           #offset:I
    .end local v14           #spaceAbove:I
    .end local v15           #spaceBelow:I
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->getChildCount()I

    move-result v4

    move-object/from16 v0, p0

    move v1, v4

    invoke-direct {v0, v1}, Lcom/nemustech/tiffany/widget/TFListView;->correctTooLow(I)V

    goto :goto_1
.end method

.method private fillFromTop(I)Landroid/view/View;
    .locals 3
    .parameter "nextTop"

    .prologue
    .line 782
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFListView;->mFirstPosition:I

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFListView;->mSelectedPosition:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFListView;->mFirstPosition:I

    .line 783
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFListView;->mFirstPosition:I

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFListView;->mItemCount:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFListView;->mFirstPosition:I

    .line 784
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFListView;->mFirstPosition:I

    if-gez v0, :cond_0

    .line 785
    const/4 v0, 0x0

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFListView;->mFirstPosition:I

    .line 787
    :cond_0
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFListView;->mFirstPosition:I

    invoke-direct {p0, v0, p1}, Lcom/nemustech/tiffany/widget/TFListView;->fillDown(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private fillSpecific(II)Landroid/view/View;
    .locals 11
    .parameter "position"
    .parameter "top"

    .prologue
    const/4 v3, 0x1

    .line 1304
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFListView;->mSelectedPosition:I

    if-ne p1, v0, :cond_1

    move v5, v3

    .line 1305
    .local v5, tempIsSelected:Z
    :goto_0
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/nemustech/tiffany/widget/TFListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v10

    .line 1307
    .local v10, temp:Landroid/view/View;
    iput p1, p0, Lcom/nemustech/tiffany/widget/TFListView;->mFirstPosition:I

    .line 1312
    iget v9, p0, Lcom/nemustech/tiffany/widget/TFListView;->mDividerHeight:I

    .line 1313
    .local v9, dividerHeight:I
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFListView;->mStackFromBottom:Z

    if-nez v0, :cond_2

    .line 1314
    sub-int v0, p1, v3

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v1, v9

    invoke-direct {p0, v0, v1}, Lcom/nemustech/tiffany/widget/TFListView;->fillUp(II)Landroid/view/View;

    move-result-object v6

    .line 1316
    .local v6, above:Landroid/view/View;
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFListView;->adjustViewsUpOrDown()V

    .line 1317
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v1

    add-int/2addr v1, v9

    invoke-direct {p0, v0, v1}, Lcom/nemustech/tiffany/widget/TFListView;->fillDown(II)Landroid/view/View;

    move-result-object v7

    .line 1318
    .local v7, below:Landroid/view/View;
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->getChildCount()I

    move-result v8

    .line 1319
    .local v8, childCount:I
    if-lez v8, :cond_0

    .line 1320
    invoke-direct {p0, v8}, Lcom/nemustech/tiffany/widget/TFListView;->correctTooHigh(I)V

    .line 1333
    :cond_0
    :goto_1
    if-eqz v5, :cond_3

    move-object v0, v10

    .line 1338
    :goto_2
    return-object v0

    .line 1304
    .end local v5           #tempIsSelected:Z
    .end local v6           #above:Landroid/view/View;
    .end local v7           #below:Landroid/view/View;
    .end local v8           #childCount:I
    .end local v9           #dividerHeight:I
    .end local v10           #temp:Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    move v5, v0

    goto :goto_0

    .line 1323
    .restart local v5       #tempIsSelected:Z
    .restart local v9       #dividerHeight:I
    .restart local v10       #temp:Landroid/view/View;
    :cond_2
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v1

    add-int/2addr v1, v9

    invoke-direct {p0, v0, v1}, Lcom/nemustech/tiffany/widget/TFListView;->fillDown(II)Landroid/view/View;

    move-result-object v7

    .line 1325
    .restart local v7       #below:Landroid/view/View;
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFListView;->adjustViewsUpOrDown()V

    .line 1326
    sub-int v0, p1, v3

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v1, v9

    invoke-direct {p0, v0, v1}, Lcom/nemustech/tiffany/widget/TFListView;->fillUp(II)Landroid/view/View;

    move-result-object v6

    .line 1327
    .restart local v6       #above:Landroid/view/View;
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->getChildCount()I

    move-result v8

    .line 1328
    .restart local v8       #childCount:I
    if-lez v8, :cond_0

    .line 1329
    invoke-direct {p0, v8}, Lcom/nemustech/tiffany/widget/TFListView;->correctTooLow(I)V

    goto :goto_1

    .line 1335
    :cond_3
    if-eqz v6, :cond_4

    move-object v0, v6

    .line 1336
    goto :goto_2

    :cond_4
    move-object v0, v7

    .line 1338
    goto :goto_2
.end method

.method private fillUp(II)Landroid/view/View;
    .locals 9
    .parameter "pos"
    .parameter "nextBottom"

    .prologue
    const/4 v3, 0x0

    .line 753
    const/4 v8, 0x0

    .line 755
    .local v8, selectedView:Landroid/view/View;
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v0, Landroid/graphics/Rect;->top:I

    .line 757
    .local v7, end:I
    :goto_0
    if-le p2, v7, :cond_2

    if-ltz p1, :cond_2

    .line 759
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFListView;->mSelectedPosition:I

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    move v5, v0

    .line 760
    .local v5, selected:Z
    :goto_1
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/nemustech/tiffany/widget/TFListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v6

    .line 761
    .local v6, child:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v0

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFListView;->mDividerHeight:I

    sub-int p2, v0, v1

    .line 762
    if-eqz v5, :cond_0

    .line 763
    move-object v8, v6

    .line 765
    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 766
    goto :goto_0

    .end local v5           #selected:Z
    .end local v6           #child:Landroid/view/View;
    :cond_1
    move v5, v3

    .line 759
    goto :goto_1

    .line 768
    :cond_2
    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFListView;->mFirstPosition:I

    .line 770
    return-object v8
.end method

.method private getArrowScrollPreviewLength()I
    .locals 2

    .prologue
    .line 2525
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->getVerticalFadingEdgeLength()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getBottomSelectionPixel(III)I
    .locals 3
    .parameter "childrenBottom"
    .parameter "fadingEdgeLength"
    .parameter "selectedPosition"

    .prologue
    .line 920
    move v0, p1

    .line 921
    .local v0, bottomSelectionPixel:I
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFListView;->mItemCount:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-eq p3, v1, :cond_0

    .line 922
    sub-int/2addr v0, p2

    .line 924
    :cond_0
    return v0
.end method

.method private getTopSelectionPixel(III)I
    .locals 1
    .parameter "childrenTop"
    .parameter "fadingEdgeLength"
    .parameter "selectedPosition"

    .prologue
    .line 937
    move v0, p1

    .line 938
    .local v0, topSelectionPixel:I
    if-lez p3, :cond_0

    .line 939
    add-int/2addr v0, p2

    .line 941
    :cond_0
    return v0
.end method

.method private handleHorizontalFocusWithinListItem(I)Z
    .locals 7
    .parameter "direction"

    .prologue
    .line 2262
    const/16 v5, 0x11

    if-eq p1, v5, :cond_0

    const/16 v5, 0x42

    if-eq p1, v5, :cond_0

    .line 2263
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "direction must be one of {View.FOCUS_LEFT, View.FOCUS_RIGHT}"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2267
    :cond_0
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->getChildCount()I

    move-result v3

    .line 2268
    .local v3, numChildren:I
    iget-boolean v5, p0, Lcom/nemustech/tiffany/widget/TFListView;->mItemsCanFocus:Z

    if-eqz v5, :cond_2

    if-lez v3, :cond_2

    iget v5, p0, Lcom/nemustech/tiffany/widget/TFListView;->mSelectedPosition:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 2269
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->getSelectedView()Landroid/view/View;

    move-result-object v4

    .line 2270
    .local v4, selectedView:Landroid/view/View;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/view/View;->hasFocus()Z

    move-result v5

    if-eqz v5, :cond_2

    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_2

    .line 2273
    invoke-virtual {v4}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 2274
    .local v0, currentFocus:Landroid/view/View;
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v5

    check-cast v4, Landroid/view/ViewGroup;

    .end local v4           #selectedView:Landroid/view/View;
    invoke-virtual {v5, v4, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 2276
    .local v2, nextFocus:Landroid/view/View;
    if-eqz v2, :cond_1

    .line 2278
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v5}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 2279
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v5}, Lcom/nemustech/tiffany/widget/TFListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2280
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2, v5}, Lcom/nemustech/tiffany/widget/TFListView;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2281
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, v5}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2282
    const/4 v5, 0x1

    .line 2296
    .end local v0           #currentFocus:Landroid/view/View;
    .end local v2           #nextFocus:Landroid/view/View;
    :goto_0
    return v5

    .line 2289
    .restart local v0       #currentFocus:Landroid/view/View;
    .restart local v2       #nextFocus:Landroid/view/View;
    :cond_1
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->getRootView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v6, v5, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 2291
    .local v1, globalNextFocus:Landroid/view/View;
    if-eqz v1, :cond_2

    .line 2292
    invoke-direct {p0, v1, p0}, Lcom/nemustech/tiffany/widget/TFListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v5

    goto :goto_0

    .line 2296
    .end local v0           #currentFocus:Landroid/view/View;
    .end local v1           #globalNextFocus:Landroid/view/View;
    .end local v2           #nextFocus:Landroid/view/View;
    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private handleNewSelectionChange(Landroid/view/View;IIZ)V
    .locals 10
    .parameter "selectedView"
    .parameter "direction"
    .parameter "newSelectedPosition"
    .parameter "newFocusAssigned"

    .prologue
    .line 2417
    const/4 v8, -0x1

    if-ne p3, v8, :cond_0

    .line 2418
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "newSelectedPosition needs to be valid"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 2428
    :cond_0
    const/4 v5, 0x0

    .line 2429
    .local v5, topSelected:Z
    iget v8, p0, Lcom/nemustech/tiffany/widget/TFListView;->mSelectedPosition:I

    iget v9, p0, Lcom/nemustech/tiffany/widget/TFListView;->mFirstPosition:I

    sub-int v4, v8, v9

    .line 2430
    .local v4, selectedIndex:I
    iget v8, p0, Lcom/nemustech/tiffany/widget/TFListView;->mFirstPosition:I

    sub-int v2, p3, v8

    .line 2431
    .local v2, nextSelectedIndex:I
    const/16 v8, 0x21

    if-ne p2, v8, :cond_3

    .line 2432
    move v7, v2

    .line 2433
    .local v7, topViewIndex:I
    move v1, v4

    .line 2434
    .local v1, bottomViewIndex:I
    invoke-virtual {p0, v7}, Lcom/nemustech/tiffany/widget/TFListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2435
    .local v6, topView:Landroid/view/View;
    move-object v0, p1

    .line 2436
    .local v0, bottomView:Landroid/view/View;
    const/4 v5, 0x1

    .line 2444
    :goto_0
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->getChildCount()I

    move-result v3

    .line 2447
    .local v3, numChildren:I
    if-eqz v6, :cond_1

    .line 2448
    if-nez p4, :cond_4

    if-eqz v5, :cond_4

    const/4 v8, 0x1

    :goto_1
    invoke-virtual {v6, v8}, Landroid/view/View;->setSelected(Z)V

    .line 2449
    invoke-direct {p0, v6, v7, v3}, Lcom/nemustech/tiffany/widget/TFListView;->measureAndAdjustDown(Landroid/view/View;II)V

    .line 2453
    :cond_1
    if-eqz v0, :cond_2

    .line 2454
    if-nez p4, :cond_5

    if-nez v5, :cond_5

    const/4 v8, 0x1

    :goto_2
    invoke-virtual {v0, v8}, Landroid/view/View;->setSelected(Z)V

    .line 2455
    invoke-direct {p0, v0, v1, v3}, Lcom/nemustech/tiffany/widget/TFListView;->measureAndAdjustDown(Landroid/view/View;II)V

    .line 2457
    :cond_2
    return-void

    .line 2438
    .end local v0           #bottomView:Landroid/view/View;
    .end local v1           #bottomViewIndex:I
    .end local v3           #numChildren:I
    .end local v6           #topView:Landroid/view/View;
    .end local v7           #topViewIndex:I
    :cond_3
    move v7, v4

    .line 2439
    .restart local v7       #topViewIndex:I
    move v1, v2

    .line 2440
    .restart local v1       #bottomViewIndex:I
    move-object v6, p1

    .line 2441
    .restart local v6       #topView:Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .restart local v0       #bottomView:Landroid/view/View;
    goto :goto_0

    .line 2448
    .restart local v3       #numChildren:I
    :cond_4
    const/4 v8, 0x0

    goto :goto_1

    .line 2454
    :cond_5
    const/4 v8, 0x0

    goto :goto_2
.end method

.method private isDirectChildHeaderOrFooter(Landroid/view/View;)Z
    .locals 7
    .parameter "child"

    .prologue
    const/4 v6, 0x1

    .line 1714
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 1715
    .local v1, headers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/nemustech/tiffany/widget/TFListView$FixedViewInfo;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1716
    .local v4, numHeaders:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 1717
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nemustech/tiffany/widget/TFListView$FixedViewInfo;

    iget-object v5, v5, Lcom/nemustech/tiffany/widget/TFListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne p1, v5, :cond_0

    move v5, v6

    .line 1728
    .end local p0
    :goto_1
    return v5

    .line 1716
    .restart local p0
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1721
    :cond_1
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFListView;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 1722
    .local v0, footers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/nemustech/tiffany/widget/TFListView$FixedViewInfo;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1723
    .local v3, numFooters:I
    const/4 v2, 0x0

    .end local p0
    :goto_2
    if-ge v2, v3, :cond_3

    .line 1724
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/nemustech/tiffany/widget/TFListView$FixedViewInfo;

    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne p1, v5, :cond_2

    move v5, v6

    .line 1725
    goto :goto_1

    .line 1723
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1728
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 3
    .parameter "child"
    .parameter "parent"

    .prologue
    const/4 v2, 0x1

    .line 2782
    if-ne p1, p2, :cond_0

    move v1, v2

    .line 2787
    :goto_0
    return v1

    .line 2786
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2787
    .local v0, theParent:Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/view/View;

    .end local v0           #theParent:Landroid/view/ViewParent;
    invoke-direct {p0, v0, p2}, Lcom/nemustech/tiffany/widget/TFListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private lookForSelectablePositionOnScreen(I)I
    .locals 9
    .parameter "direction"

    .prologue
    const/4 v8, 0x1

    const/4 v7, -0x1

    .line 2645
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFListView;->mFirstPosition:I

    .line 2646
    .local v1, firstPosition:I
    const/16 v6, 0x82

    if-ne p1, v6, :cond_4

    .line 2647
    iget v6, p0, Lcom/nemustech/tiffany/widget/TFListView;->mSelectedPosition:I

    if-eq v6, v7, :cond_0

    iget v6, p0, Lcom/nemustech/tiffany/widget/TFListView;->mSelectedPosition:I

    add-int/lit8 v6, v6, 0x1

    move v5, v6

    .line 2650
    .local v5, startPos:I
    :goto_0
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    if-lt v5, v6, :cond_1

    move v6, v7

    .line 2685
    :goto_1
    return v6

    .end local v5           #startPos:I
    :cond_0
    move v5, v1

    .line 2647
    goto :goto_0

    .line 2653
    .restart local v5       #startPos:I
    :cond_1
    if-ge v5, v1, :cond_2

    .line 2654
    move v5, v1

    .line 2657
    :cond_2
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->getLastVisiblePosition()I

    move-result v3

    .line 2658
    .local v3, lastVisiblePos:I
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 2659
    .local v0, adapter:Landroid/widget/ListAdapter;
    move v4, v5

    .local v4, pos:I
    :goto_2
    if-gt v4, v3, :cond_9

    .line 2660
    invoke-interface {v0, v4}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_3

    sub-int v6, v4, v1

    invoke-virtual {p0, v6}, Lcom/nemustech/tiffany/widget/TFListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_3

    move v6, v4

    .line 2662
    goto :goto_1

    .line 2659
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 2666
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    .end local v3           #lastVisiblePos:I
    .end local v4           #pos:I
    .end local v5           #startPos:I
    :cond_4
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->getChildCount()I

    move-result v6

    add-int/2addr v6, v1

    sub-int v2, v6, v8

    .line 2667
    .local v2, last:I
    iget v6, p0, Lcom/nemustech/tiffany/widget/TFListView;->mSelectedPosition:I

    if-eq v6, v7, :cond_5

    iget v6, p0, Lcom/nemustech/tiffany/widget/TFListView;->mSelectedPosition:I

    sub-int/2addr v6, v8

    move v5, v6

    .line 2670
    .restart local v5       #startPos:I
    :goto_3
    if-gez v5, :cond_6

    move v6, v7

    .line 2671
    goto :goto_1

    .line 2667
    .end local v5           #startPos:I
    :cond_5
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->getChildCount()I

    move-result v6

    add-int/2addr v6, v1

    sub-int/2addr v6, v8

    move v5, v6

    goto :goto_3

    .line 2673
    .restart local v5       #startPos:I
    :cond_6
    if-le v5, v2, :cond_7

    .line 2674
    move v5, v2

    .line 2677
    :cond_7
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 2678
    .restart local v0       #adapter:Landroid/widget/ListAdapter;
    move v4, v5

    .restart local v4       #pos:I
    :goto_4
    if-lt v4, v1, :cond_9

    .line 2679
    invoke-interface {v0, v4}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_8

    sub-int v6, v4, v1

    invoke-virtual {p0, v6}, Lcom/nemustech/tiffany/widget/TFListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_8

    move v6, v4

    .line 2681
    goto :goto_1

    .line 2678
    :cond_8
    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    .end local v2           #last:I
    :cond_9
    move v6, v7

    .line 2685
    goto :goto_1
.end method

.method private makeAndAddView(IIZIZ)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "y"
    .parameter "flow"
    .parameter "childrenLeft"
    .parameter "selected"

    .prologue
    .line 1749
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFListView;->mDataChanged:Z

    if-nez v0, :cond_0

    .line 1751
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;

    invoke-virtual {v0, p1}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->getActiveView(I)Landroid/view/View;

    move-result-object v1

    .line 1752
    .local v1, child:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 1760
    const/4 v7, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/nemustech/tiffany/widget/TFListView;->setupChild(Landroid/view/View;IIZIZZ)V

    move-object v8, v1

    .line 1772
    .end local v1           #child:Landroid/view/View;
    .local v8, child:Landroid/view/View;
    :goto_0
    return-object v8

    .line 1767
    .end local v8           #child:Landroid/view/View;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/nemustech/tiffany/widget/TFListView;->obtainView(I)Landroid/view/View;

    move-result-object v1

    .line 1770
    .restart local v1       #child:Landroid/view/View;
    const/4 v7, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/nemustech/tiffany/widget/TFListView;->setupChild(Landroid/view/View;IIZIZZ)V

    move-object v8, v1

    .line 1772
    .end local v1           #child:Landroid/view/View;
    .restart local v8       #child:Landroid/view/View;
    goto :goto_0
.end method

.method private measureAndAdjustDown(Landroid/view/View;II)V
    .locals 4
    .parameter "child"
    .parameter "childIndex"
    .parameter "numChildren"

    .prologue
    .line 2467
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 2468
    .local v2, oldHeight:I
    invoke-direct {p0, p1}, Lcom/nemustech/tiffany/widget/TFListView;->measureItem(Landroid/view/View;)V

    .line 2469
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    if-eq v3, v2, :cond_0

    .line 2471
    invoke-direct {p0, p1}, Lcom/nemustech/tiffany/widget/TFListView;->relayoutMeasuredItem(Landroid/view/View;)V

    .line 2474
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int v0, v3, v2

    .line 2475
    .local v0, heightDelta:I
    add-int/lit8 v1, p2, 0x1

    .local v1, i:I
    :goto_0
    if-ge v1, p3, :cond_0

    .line 2476
    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 2475
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2479
    .end local v0           #heightDelta:I
    .end local v1           #i:I
    :cond_0
    return-void
.end method

.method private measureItem(Landroid/view/View;)V
    .locals 8
    .parameter "child"

    .prologue
    const/4 v7, 0x0

    .line 2487
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 2488
    .local v3, p:Landroid/view/ViewGroup$LayoutParams;
    if-nez v3, :cond_0

    .line 2489
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .end local v3           #p:Landroid/view/ViewGroup$LayoutParams;
    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 2494
    .restart local v3       #p:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    iget v4, p0, Lcom/nemustech/tiffany/widget/TFListView;->mWidthMeasureSpec:I

    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    iget v6, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v4, v5, v6}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 2496
    .local v1, childWidthSpec:I
    iget v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2498
    .local v2, lpHeight:I
    if-lez v2, :cond_1

    .line 2499
    const/high16 v4, 0x4000

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 2503
    .local v0, childHeightSpec:I
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 2504
    return-void

    .line 2501
    .end local v0           #childHeightSpec:I
    :cond_1
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0       #childHeightSpec:I
    goto :goto_0
.end method

.method private measureScrapChild(Landroid/view/View;II)V
    .locals 7
    .parameter "child"
    .parameter "position"
    .parameter "widthMeasureSpec"

    .prologue
    const/4 v6, 0x0

    .line 1161
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/nemustech/tiffany/widget/TFAbsListView$LayoutParams;

    .line 1162
    .local v3, p:Lcom/nemustech/tiffany/widget/TFAbsListView$LayoutParams;
    if-nez v3, :cond_0

    .line 1163
    new-instance v3, Lcom/nemustech/tiffany/widget/TFAbsListView$LayoutParams;

    .end local v3           #p:Lcom/nemustech/tiffany/widget/TFAbsListView$LayoutParams;
    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5, v6}, Lcom/nemustech/tiffany/widget/TFAbsListView$LayoutParams;-><init>(III)V

    .line 1165
    .restart local v3       #p:Lcom/nemustech/tiffany/widget/TFAbsListView$LayoutParams;
    invoke-virtual {p1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1167
    :cond_0
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, p2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v4

    iput v4, v3, Lcom/nemustech/tiffany/widget/TFAbsListView$LayoutParams;->viewType:I

    .line 1169
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iget v5, v3, Lcom/nemustech/tiffany/widget/TFAbsListView$LayoutParams;->width:I

    invoke-static {p3, v4, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 1171
    .local v1, childWidthSpec:I
    iget v2, v3, Lcom/nemustech/tiffany/widget/TFAbsListView$LayoutParams;->height:I

    .line 1173
    .local v2, lpHeight:I
    if-lez v2, :cond_1

    .line 1174
    const/high16 v4, 0x4000

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1178
    .local v0, childHeightSpec:I
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1179
    return-void

    .line 1176
    .end local v0           #childHeightSpec:I
    :cond_1
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0       #childHeightSpec:I
    goto :goto_0
.end method

.method private moveSelection(Landroid/view/View;Landroid/view/View;III)Landroid/view/View;
    .locals 21
    .parameter "oldSel"
    .parameter "newSel"
    .parameter "delta"
    .parameter "childrenTop"
    .parameter "childrenBottom"

    .prologue
    .line 964
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->getVerticalFadingEdgeLength()I

    move-result v12

    .line 965
    .local v12, fadingEdgeLength:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mSelectedPosition:I

    move/from16 v17, v0

    .line 969
    .local v17, selectedPosition:I
    move-object/from16 v0, p0

    move/from16 v1, p4

    move v2, v12

    move/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/nemustech/tiffany/widget/TFListView;->getTopSelectionPixel(III)I

    move-result v20

    .line 971
    .local v20, topSelectionPixel:I
    move-object/from16 v0, p0

    move/from16 v1, p4

    move v2, v12

    move/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/nemustech/tiffany/widget/TFListView;->getBottomSelectionPixel(III)I

    move-result v10

    .line 974
    .local v10, bottomSelectionPixel:I
    if-lez p3, :cond_2

    .line 996
    const/4 v4, 0x1

    sub-int v5, v17, v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v6

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mListPadding:Landroid/graphics/Rect;

    move-object v4, v0

    iget v8, v4, Landroid/graphics/Rect;->left:I

    const/4 v9, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/nemustech/tiffany/widget/TFListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object p1

    .line 999
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mDividerHeight:I

    move v11, v0

    .line 1002
    .local v11, dividerHeight:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v4

    add-int v6, v4, v11

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mListPadding:Landroid/graphics/Rect;

    move-object v4, v0

    iget v8, v4, Landroid/graphics/Rect;->left:I

    const/4 v9, 0x1

    move-object/from16 v4, p0

    move/from16 v5, v17

    invoke-direct/range {v4 .. v9}, Lcom/nemustech/tiffany/widget/TFListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v16

    .line 1006
    .local v16, sel:Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getBottom()I

    move-result v4

    if-le v4, v10, :cond_0

    .line 1009
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int v18, v4, v20

    .line 1012
    .local v18, spaceAbove:I
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getBottom()I

    move-result v4

    sub-int v19, v4, v10

    .line 1015
    .local v19, spaceBelow:I
    sub-int v4, p5, p4

    div-int/lit8 v13, v4, 0x2

    .line 1016
    .local v13, halfVerticalSpace:I
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 1017
    .local v15, offset:I
    invoke-static {v15, v13}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 1020
    neg-int v4, v15

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1022
    neg-int v4, v15

    move-object/from16 v0, v16

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1026
    .end local v13           #halfVerticalSpace:I
    .end local v15           #offset:I
    .end local v18           #spaceAbove:I
    .end local v19           #spaceBelow:I
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mStackFromBottom:Z

    move v4, v0

    if-nez v4, :cond_1

    .line 1027
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mSelectedPosition:I

    move v4, v0

    const/4 v5, 0x2

    sub-int/2addr v4, v5

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int/2addr v5, v11

    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFListView;->fillUp(II)Landroid/view/View;

    .line 1028
    invoke-direct/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->adjustViewsUpOrDown()V

    .line 1029
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mSelectedPosition:I

    move v4, v0

    add-int/lit8 v4, v4, 0x1

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getBottom()I

    move-result v5

    add-int/2addr v5, v11

    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFListView;->fillDown(II)Landroid/view/View;

    .line 1110
    .end local v11           #dividerHeight:I
    :goto_0
    return-object v16

    .line 1031
    .restart local v11       #dividerHeight:I
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mSelectedPosition:I

    move v4, v0

    add-int/lit8 v4, v4, 0x1

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getBottom()I

    move-result v5

    add-int/2addr v5, v11

    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFListView;->fillDown(II)Landroid/view/View;

    .line 1032
    invoke-direct/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->adjustViewsUpOrDown()V

    .line 1033
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mSelectedPosition:I

    move v4, v0

    const/4 v5, 0x2

    sub-int/2addr v4, v5

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int/2addr v5, v11

    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFListView;->fillUp(II)Landroid/view/View;

    goto :goto_0

    .line 1035
    .end local v11           #dividerHeight:I
    .end local v16           #sel:Landroid/view/View;
    :cond_2
    if-gez p3, :cond_5

    .line 1056
    if-eqz p2, :cond_4

    .line 1058
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v6

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mListPadding:Landroid/graphics/Rect;

    move-object v4, v0

    iget v8, v4, Landroid/graphics/Rect;->left:I

    const/4 v9, 0x1

    move-object/from16 v4, p0

    move/from16 v5, v17

    invoke-direct/range {v4 .. v9}, Lcom/nemustech/tiffany/widget/TFListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v16

    .line 1068
    .restart local v16       #sel:Landroid/view/View;
    :goto_1
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v4

    move v0, v4

    move/from16 v1, v20

    if-ge v0, v1, :cond_3

    .line 1070
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int v18, v20, v4

    .line 1073
    .restart local v18       #spaceAbove:I
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getBottom()I

    move-result v4

    sub-int v19, v10, v4

    .line 1076
    .restart local v19       #spaceBelow:I
    sub-int v4, p5, p4

    div-int/lit8 v13, v4, 0x2

    .line 1077
    .restart local v13       #halfVerticalSpace:I
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 1078
    .restart local v15       #offset:I
    invoke-static {v15, v13}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 1081
    move-object/from16 v0, v16

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1085
    .end local v13           #halfVerticalSpace:I
    .end local v15           #offset:I
    .end local v18           #spaceAbove:I
    .end local v19           #spaceBelow:I
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFListView;->fillAboveAndBelow(Landroid/view/View;I)V

    goto :goto_0

    .line 1063
    .end local v16           #sel:Landroid/view/View;
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v6

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mListPadding:Landroid/graphics/Rect;

    move-object v4, v0

    iget v8, v4, Landroid/graphics/Rect;->left:I

    const/4 v9, 0x1

    move-object/from16 v4, p0

    move/from16 v5, v17

    invoke-direct/range {v4 .. v9}, Lcom/nemustech/tiffany/widget/TFListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v16

    .restart local v16       #sel:Landroid/view/View;
    goto :goto_1

    .line 1088
    .end local v16           #sel:Landroid/view/View;
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v6

    .line 1093
    .local v6, oldTop:I
    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mListPadding:Landroid/graphics/Rect;

    move-object v4, v0

    iget v8, v4, Landroid/graphics/Rect;->left:I

    const/4 v9, 0x1

    move-object/from16 v4, p0

    move/from16 v5, v17

    invoke-direct/range {v4 .. v9}, Lcom/nemustech/tiffany/widget/TFListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v16

    .line 1096
    .restart local v16       #sel:Landroid/view/View;
    move v0, v6

    move/from16 v1, p4

    if-ge v0, v1, :cond_6

    .line 1099
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getBottom()I

    move-result v14

    .line 1100
    .local v14, newBottom:I
    add-int/lit8 v4, p4, 0x14

    if-ge v14, v4, :cond_6

    .line 1102
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int v4, p4, v4

    move-object/from16 v0, v16

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1107
    .end local v14           #newBottom:I
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFListView;->fillAboveAndBelow(Landroid/view/View;I)V

    goto/16 :goto_0
.end method

.method private positionOfNewFocus(Landroid/view/View;)I
    .locals 5
    .parameter "newFocus"

    .prologue
    .line 2767
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->getChildCount()I

    move-result v2

    .line 2768
    .local v2, numChildren:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 2769
    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2770
    .local v0, child:Landroid/view/View;
    invoke-direct {p0, p1, v0}, Lcom/nemustech/tiffany/widget/TFListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2771
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFListView;->mFirstPosition:I

    add-int/2addr v3, v1

    return v3

    .line 2768
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2774
    .end local v0           #child:Landroid/view/View;
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "newFocus is not a child of any of the children of the list!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private relayoutMeasuredItem(Landroid/view/View;)V
    .locals 7
    .parameter "child"

    .prologue
    .line 2512
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 2513
    .local v5, w:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 2514
    .local v4, h:I
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v6, Landroid/graphics/Rect;->left:I

    .line 2515
    .local v1, childLeft:I
    add-int v2, v1, v5

    .line 2516
    .local v2, childRight:I
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    .line 2517
    .local v3, childTop:I
    add-int v0, v3, v4

    .line 2518
    .local v0, childBottom:I
    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/view/View;->layout(IIII)V

    .line 2519
    return-void
.end method

.method private removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 4
    .parameter "v"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nemustech/tiffany/widget/TFListView$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 401
    .local p2, where:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/nemustech/tiffany/widget/TFListView$FixedViewInfo;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 402
    .local v2, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 403
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nemustech/tiffany/widget/TFListView$FixedViewInfo;

    .line 404
    .local v1, info:Lcom/nemustech/tiffany/widget/TFListView$FixedViewInfo;
    iget-object v3, v1, Lcom/nemustech/tiffany/widget/TFListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne v3, p1, :cond_1

    .line 405
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 409
    .end local v1           #info:Lcom/nemustech/tiffany/widget/TFListView$FixedViewInfo;
    :cond_0
    return-void

    .line 402
    .restart local v1       #info:Lcom/nemustech/tiffany/widget/TFListView$FixedViewInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private scrollListItemsBy(I)V
    .locals 13
    .parameter "amount"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 2849
    invoke-virtual {p0, p1}, Lcom/nemustech/tiffany/widget/TFListView;->offsetChildrenTopAndBottom(I)V

    .line 2851
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->getHeight()I

    move-result v9

    iget-object v10, p0, Lcom/nemustech/tiffany/widget/TFListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    sub-int v5, v9, v10

    .line 2852
    .local v5, listBottom:I
    iget-object v9, p0, Lcom/nemustech/tiffany/widget/TFListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v9, Landroid/graphics/Rect;->top:I

    .line 2853
    .local v6, listTop:I
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;

    .line 2855
    .local v8, recycleBin:Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;
    if-gez p1, :cond_3

    .line 2859
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->getChildCount()I

    move-result v7

    .line 2860
    .local v7, numChildren:I
    sub-int v9, v7, v11

    invoke-virtual {p0, v9}, Lcom/nemustech/tiffany/widget/TFListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2861
    .local v1, last:Landroid/view/View;
    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v9, v5, :cond_0

    .line 2862
    iget v9, p0, Lcom/nemustech/tiffany/widget/TFListView;->mFirstPosition:I

    add-int/2addr v9, v7

    sub-int v3, v9, v11

    .line 2863
    .local v3, lastVisiblePosition:I
    iget v9, p0, Lcom/nemustech/tiffany/widget/TFListView;->mItemCount:I

    sub-int/2addr v9, v11

    if-ge v3, v9, :cond_0

    .line 2864
    invoke-direct {p0, v1, v3}, Lcom/nemustech/tiffany/widget/TFListView;->addViewBelow(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 2865
    add-int/lit8 v7, v7, 0x1

    .line 2869
    goto :goto_0

    .line 2874
    .end local v3           #lastVisiblePosition:I
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v9, v5, :cond_1

    .line 2876
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v9

    sub-int v9, v5, v9

    invoke-virtual {p0, v9}, Lcom/nemustech/tiffany/widget/TFListView;->offsetChildrenTopAndBottom(I)V

    .line 2880
    :cond_1
    invoke-virtual {p0, v12}, Lcom/nemustech/tiffany/widget/TFListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2881
    .local v0, first:Landroid/view/View;
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v9, v6, :cond_7

    .line 2882
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/nemustech/tiffany/widget/TFAbsListView$LayoutParams;

    .line 2883
    .local v4, layoutParams:Lcom/nemustech/tiffany/widget/TFAbsListView$LayoutParams;
    iget v9, v4, Lcom/nemustech/tiffany/widget/TFAbsListView$LayoutParams;->viewType:I

    invoke-virtual {v8, v9}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 2884
    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/widget/TFListView;->removeViewInLayout(Landroid/view/View;)V

    .line 2885
    invoke-virtual {v8, v0}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 2889
    :goto_2
    invoke-virtual {p0, v12}, Lcom/nemustech/tiffany/widget/TFListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2890
    iget v9, p0, Lcom/nemustech/tiffany/widget/TFListView;->mFirstPosition:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/nemustech/tiffany/widget/TFListView;->mFirstPosition:I

    goto :goto_1

    .line 2887
    :cond_2
    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/widget/TFListView;->detachViewFromParent(Landroid/view/View;)V

    goto :goto_2

    .line 2894
    .end local v0           #first:Landroid/view/View;
    .end local v1           #last:Landroid/view/View;
    .end local v4           #layoutParams:Lcom/nemustech/tiffany/widget/TFAbsListView$LayoutParams;
    .end local v7           #numChildren:I
    :cond_3
    invoke-virtual {p0, v12}, Lcom/nemustech/tiffany/widget/TFListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2897
    .restart local v0       #first:Landroid/view/View;
    :goto_3
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v9

    if-le v9, v6, :cond_4

    iget v9, p0, Lcom/nemustech/tiffany/widget/TFListView;->mFirstPosition:I

    if-lez v9, :cond_4

    .line 2898
    iget v9, p0, Lcom/nemustech/tiffany/widget/TFListView;->mFirstPosition:I

    invoke-direct {p0, v0, v9}, Lcom/nemustech/tiffany/widget/TFListView;->addViewAbove(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 2899
    iget v9, p0, Lcom/nemustech/tiffany/widget/TFListView;->mFirstPosition:I

    sub-int/2addr v9, v11

    iput v9, p0, Lcom/nemustech/tiffany/widget/TFListView;->mFirstPosition:I

    goto :goto_3

    .line 2904
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v9

    if-le v9, v6, :cond_5

    .line 2906
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v9

    sub-int v9, v6, v9

    invoke-virtual {p0, v9}, Lcom/nemustech/tiffany/widget/TFListView;->offsetChildrenTopAndBottom(I)V

    .line 2909
    :cond_5
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->getChildCount()I

    move-result v9

    sub-int v2, v9, v11

    .line 2910
    .local v2, lastIndex:I
    invoke-virtual {p0, v2}, Lcom/nemustech/tiffany/widget/TFListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2913
    .restart local v1       #last:Landroid/view/View;
    :goto_4
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v9

    if-le v9, v5, :cond_7

    .line 2914
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/nemustech/tiffany/widget/TFAbsListView$LayoutParams;

    .line 2915
    .restart local v4       #layoutParams:Lcom/nemustech/tiffany/widget/TFAbsListView$LayoutParams;
    iget v9, v4, Lcom/nemustech/tiffany/widget/TFAbsListView$LayoutParams;->viewType:I

    invoke-virtual {v8, v9}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 2916
    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFListView;->removeViewInLayout(Landroid/view/View;)V

    .line 2917
    invoke-virtual {v8, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 2921
    :goto_5
    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/nemustech/tiffany/widget/TFListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2922
    goto :goto_4

    .line 2919
    :cond_6
    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFListView;->detachViewFromParent(Landroid/view/View;)V

    goto :goto_5

    .line 2924
    .end local v2           #lastIndex:I
    .end local v4           #layoutParams:Lcom/nemustech/tiffany/widget/TFAbsListView$LayoutParams;
    :cond_7
    return-void
.end method

.method private setupChild(Landroid/view/View;IIZIZZ)V
    .locals 23
    .parameter "child"
    .parameter "position"
    .parameter "y"
    .parameter "flowDown"
    .parameter "childrenLeft"
    .parameter "selected"
    .parameter "recycled"

    .prologue
    .line 1791
    if-eqz p6, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->shouldShowSelector()Z

    move-result v20

    if-eqz v20, :cond_7

    const/16 v20, 0x1

    move/from16 v12, v20

    .line 1792
    .local v12, isSelected:Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isSelected()Z

    move-result v20

    move v0, v12

    move/from16 v1, v20

    if-eq v0, v1, :cond_8

    const/16 v20, 0x1

    move/from16 v18, v20

    .line 1793
    .local v18, updateChildSelected:Z
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mTouchMode:I

    move v14, v0

    .line 1794
    .local v14, mode:I
    if-lez v14, :cond_9

    const/16 v20, 0x3

    move v0, v14

    move/from16 v1, v20

    if-ge v0, v1, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mMotionPosition:I

    move/from16 v20, v0

    move/from16 v0, v20

    move/from16 v1, p2

    if-ne v0, v1, :cond_9

    const/16 v20, 0x1

    move/from16 v11, v20

    .line 1796
    .local v11, isPressed:Z
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isPressed()Z

    move-result v20

    move v0, v11

    move/from16 v1, v20

    if-eq v0, v1, :cond_a

    const/16 v20, 0x1

    move/from16 v17, v20

    .line 1797
    .local v17, updateChildPressed:Z
    :goto_3
    if-eqz p7, :cond_0

    if-nez v18, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v20

    if-eqz v20, :cond_b

    :cond_0
    const/16 v20, 0x1

    move/from16 v15, v20

    .line 1801
    .local v15, needToMeasure:Z
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Lcom/nemustech/tiffany/widget/TFAbsListView$LayoutParams;

    .line 1802
    .local v16, p:Lcom/nemustech/tiffany/widget/TFAbsListView$LayoutParams;
    if-nez v16, :cond_1

    .line 1803
    new-instance v16, Lcom/nemustech/tiffany/widget/TFAbsListView$LayoutParams;

    .end local v16           #p:Lcom/nemustech/tiffany/widget/TFAbsListView$LayoutParams;
    const/16 v20, -0x1

    const/16 v21, -0x2

    const/16 v22, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/nemustech/tiffany/widget/TFAbsListView$LayoutParams;-><init>(III)V

    .line 1806
    .restart local v16       #p:Lcom/nemustech/tiffany/widget/TFAbsListView$LayoutParams;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, v16

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAbsListView$LayoutParams;->viewType:I

    .line 1808
    if-nez p7, :cond_2

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView$LayoutParams;->recycledHeaderFooter:Z

    move/from16 v20, v0

    if-eqz v20, :cond_d

    move-object/from16 v0, v16

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView$LayoutParams;->viewType:I

    move/from16 v20, v0

    const/16 v21, -0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_d

    .line 1810
    :cond_2
    if-eqz p4, :cond_c

    const/16 v20, -0x1

    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    move-object/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Lcom/nemustech/tiffany/widget/TFListView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1818
    :goto_6
    if-eqz v18, :cond_3

    .line 1819
    move-object/from16 v0, p1

    move v1, v12

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 1822
    :cond_3
    if-eqz v17, :cond_4

    .line 1823
    move-object/from16 v0, p1

    move v1, v11

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 1826
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mChoiceMode:I

    move/from16 v20, v0

    if-eqz v20, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v20, v0

    if-eqz v20, :cond_5

    .line 1827
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/Checkable;

    move/from16 v20, v0

    if-eqz v20, :cond_5

    .line 1828
    move-object/from16 v0, p1

    check-cast v0, Landroid/widget/Checkable;

    move-object/from16 p6, v0

    .end local p6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v20

    move-object/from16 v0, p6

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 1832
    :cond_5
    if-eqz v15, :cond_11

    .line 1833
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mWidthMeasureSpec:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    add-int v21, v21, v22

    move-object/from16 v0, v16

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView$LayoutParams;->width:I

    move/from16 v22, v0

    invoke-static/range {v20 .. v22}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v9

    .line 1835
    .local v9, childWidthSpec:I
    move-object/from16 v0, v16

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView$LayoutParams;->height:I

    move v13, v0

    .line 1837
    .local v13, lpHeight:I
    if-lez v13, :cond_10

    .line 1838
    const/high16 v20, 0x4000

    move v0, v13

    move/from16 v1, v20

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 1842
    .local v6, childHeightSpec:I
    :goto_7
    move-object/from16 v0, p1

    move v1, v9

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 1847
    .end local v6           #childHeightSpec:I
    .end local v9           #childWidthSpec:I
    .end local v13           #lpHeight:I
    :goto_8
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v19

    .line 1848
    .local v19, w:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 1849
    .local v10, h:I
    if-eqz p4, :cond_12

    move/from16 v8, p3

    .line 1851
    .local v8, childTop:I
    :goto_9
    if-eqz v15, :cond_13

    .line 1852
    add-int v7, p5, v19

    .line 1853
    .local v7, childRight:I
    add-int v5, v8, v10

    .line 1854
    .local v5, childBottom:I
    move-object/from16 v0, p1

    move/from16 v1, p5

    move v2, v8

    move v3, v7

    move v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 1860
    .end local v5           #childBottom:I
    .end local v7           #childRight:I
    :goto_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mCachingStarted:Z

    move/from16 v20, v0

    if-eqz v20, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v20

    if-nez v20, :cond_6

    .line 1861
    const/16 v20, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 1863
    :cond_6
    return-void

    .line 1791
    .end local v8           #childTop:I
    .end local v10           #h:I
    .end local v11           #isPressed:Z
    .end local v12           #isSelected:Z
    .end local v14           #mode:I
    .end local v15           #needToMeasure:Z
    .end local v16           #p:Lcom/nemustech/tiffany/widget/TFAbsListView$LayoutParams;
    .end local v17           #updateChildPressed:Z
    .end local v18           #updateChildSelected:Z
    .end local v19           #w:I
    .restart local p6
    :cond_7
    const/16 v20, 0x0

    move/from16 v12, v20

    goto/16 :goto_0

    .line 1792
    .restart local v12       #isSelected:Z
    :cond_8
    const/16 v20, 0x0

    move/from16 v18, v20

    goto/16 :goto_1

    .line 1794
    .restart local v14       #mode:I
    .restart local v18       #updateChildSelected:Z
    :cond_9
    const/16 v20, 0x0

    move/from16 v11, v20

    goto/16 :goto_2

    .line 1796
    .restart local v11       #isPressed:Z
    :cond_a
    const/16 v20, 0x0

    move/from16 v17, v20

    goto/16 :goto_3

    .line 1797
    .restart local v17       #updateChildPressed:Z
    :cond_b
    const/16 v20, 0x0

    move/from16 v15, v20

    goto/16 :goto_4

    .line 1810
    .restart local v15       #needToMeasure:Z
    .restart local v16       #p:Lcom/nemustech/tiffany/widget/TFAbsListView$LayoutParams;
    :cond_c
    const/16 v20, 0x0

    goto/16 :goto_5

    .line 1812
    :cond_d
    move-object/from16 v0, v16

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView$LayoutParams;->viewType:I

    move/from16 v20, v0

    const/16 v21, -0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_e

    .line 1813
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/nemustech/tiffany/widget/TFAbsListView$LayoutParams;->recycledHeaderFooter:Z

    .line 1815
    :cond_e
    if-eqz p4, :cond_f

    const/16 v20, -0x1

    :goto_b
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    move-object/from16 v3, v16

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/nemustech/tiffany/widget/TFListView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    goto/16 :goto_6

    :cond_f
    const/16 v20, 0x0

    goto :goto_b

    .line 1840
    .end local p6
    .restart local v9       #childWidthSpec:I
    .restart local v13       #lpHeight:I
    :cond_10
    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .restart local v6       #childHeightSpec:I
    goto/16 :goto_7

    .line 1844
    .end local v6           #childHeightSpec:I
    .end local v9           #childWidthSpec:I
    .end local v13           #lpHeight:I
    :cond_11
    invoke-virtual/range {p0 .. p1}, Lcom/nemustech/tiffany/widget/TFListView;->cleanupLayoutState(Landroid/view/View;)V

    goto/16 :goto_8

    .line 1849
    .restart local v10       #h:I
    .restart local v19       #w:I
    :cond_12
    sub-int v20, p3, v10

    move/from16 v8, v20

    goto/16 :goto_9

    .line 1856
    .restart local v8       #childTop:I
    :cond_13
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v20

    sub-int v20, p5, v20

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1857
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v20

    sub-int v20, v8, v20

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto/16 :goto_a
.end method

.method private showingBottomFadingEdge()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 602
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->getChildCount()I

    move-result v1

    .line 603
    .local v1, childCount:I
    sub-int v4, v1, v6

    invoke-virtual {p0, v4}, Lcom/nemustech/tiffany/widget/TFListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 604
    .local v0, bottomOfBottomChild:I
    iget v4, p0, Lcom/nemustech/tiffany/widget/TFListView;->mFirstPosition:I

    add-int/2addr v4, v1

    sub-int v2, v4, v6

    .line 606
    .local v2, lastVisiblePosition:I
    iget v4, p0, Lcom/nemustech/tiffany/widget/TFListView;->mScrollY:I

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int v3, v4, v5

    .line 608
    .local v3, listBottom:I
    iget v4, p0, Lcom/nemustech/tiffany/widget/TFListView;->mItemCount:I

    sub-int/2addr v4, v6

    if-lt v2, v4, :cond_0

    if-ge v0, v3, :cond_1

    :cond_0
    move v4, v6

    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private showingTopFadingEdge()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 594
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFListView;->mScrollY:I

    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int v0, v1, v2

    .line 595
    .local v0, listTop:I
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFListView;->mFirstPosition:I

    if-gtz v1, :cond_0

    invoke-virtual {p0, v3}, Lcom/nemustech/tiffany/widget/TFListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    if-le v1, v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    move v1, v3

    goto :goto_0
.end method


# virtual methods
.method public addFooterView(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 449
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/nemustech/tiffany/widget/TFListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 450
    return-void
.end method

.method public addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 2
    .parameter "v"
    .parameter "data"
    .parameter "isSelectable"

    .prologue
    .line 425
    new-instance v0, Lcom/nemustech/tiffany/widget/TFListView$FixedViewInfo;

    invoke-direct {v0, p0}, Lcom/nemustech/tiffany/widget/TFListView$FixedViewInfo;-><init>(Lcom/nemustech/tiffany/widget/TFListView;)V

    .line 426
    .local v0, info:Lcom/nemustech/tiffany/widget/TFListView$FixedViewInfo;
    iput-object p1, v0, Lcom/nemustech/tiffany/widget/TFListView$FixedViewInfo;->view:Landroid/view/View;

    .line 427
    iput-object p2, v0, Lcom/nemustech/tiffany/widget/TFListView$FixedViewInfo;->data:Ljava/lang/Object;

    .line 428
    iput-boolean p3, v0, Lcom/nemustech/tiffany/widget/TFListView$FixedViewInfo;->isSelectable:Z

    .line 429
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 433
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFListView;->mDataSetObserver:Lcom/nemustech/tiffany/widget/TFAdapterView$AdapterDataSetObserver;

    if-eqz v1, :cond_0

    .line 434
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFListView;->mDataSetObserver:Lcom/nemustech/tiffany/widget/TFAdapterView$AdapterDataSetObserver;

    invoke-virtual {v1}, Lcom/nemustech/tiffany/widget/TFAdapterView$AdapterDataSetObserver;->onChanged()V

    .line 436
    :cond_0
    return-void
.end method

.method public addHeaderView(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 372
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/nemustech/tiffany/widget/TFListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 373
    return-void
.end method

.method public addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 3
    .parameter "v"
    .parameter "data"
    .parameter "isSelectable"

    .prologue
    .line 348
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    .line 349
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot add header view to list -- setAdapter has already been called."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 353
    :cond_0
    new-instance v0, Lcom/nemustech/tiffany/widget/TFListView$FixedViewInfo;

    invoke-direct {v0, p0}, Lcom/nemustech/tiffany/widget/TFListView$FixedViewInfo;-><init>(Lcom/nemustech/tiffany/widget/TFListView;)V

    .line 354
    .local v0, info:Lcom/nemustech/tiffany/widget/TFListView$FixedViewInfo;
    iput-object p1, v0, Lcom/nemustech/tiffany/widget/TFListView$FixedViewInfo;->view:Landroid/view/View;

    .line 355
    iput-object p2, v0, Lcom/nemustech/tiffany/widget/TFListView$FixedViewInfo;->data:Ljava/lang/Object;

    .line 356
    iput-boolean p3, v0, Lcom/nemustech/tiffany/widget/TFListView$FixedViewInfo;->isSelectable:Z

    .line 357
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 358
    return-void
.end method

.method arrowScroll(I)Z
    .locals 3
    .parameter "direction"

    .prologue
    const/4 v2, 0x0

    .line 2308
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/nemustech/tiffany/widget/TFListView;->mInLayout:Z

    .line 2309
    invoke-direct {p0, p1}, Lcom/nemustech/tiffany/widget/TFListView;->arrowScrollImpl(I)Z

    move-result v0

    .line 2310
    .local v0, handled:Z
    if-eqz v0, :cond_0

    .line 2311
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFListView;->playSoundEffect(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2315
    :cond_0
    iput-boolean v2, p0, Lcom/nemustech/tiffany/widget/TFListView;->mInLayout:Z

    return v0

    .end local v0           #handled:Z
    :catchall_0
    move-exception v1

    iput-boolean v2, p0, Lcom/nemustech/tiffany/widget/TFListView;->mInLayout:Z

    throw v1
.end method

.method protected canAnimate()Z
    .locals 1

    .prologue
    .line 1867
    invoke-super {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->canAnimate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/nemustech/tiffany/widget/TFListView;->mItemCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clearChoices()V
    .locals 1

    .prologue
    .line 4111
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    .line 4112
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 4114
    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 28
    .parameter "canvas"

    .prologue
    .line 2992
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mExcessScroll:I

    move/from16 v25, v0

    if-eqz v25, :cond_0

    .line 2993
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mExcessScrollEffect:I

    move/from16 v25, v0

    packed-switch v25, :pswitch_data_0

    .line 3004
    invoke-virtual/range {p0 .. p1}, Lcom/nemustech/tiffany/widget/TFListView;->dispatchDrawWithExcessScroll_Default(Landroid/graphics/Canvas;)V

    .line 3166
    :goto_0
    return-void

    .line 2995
    :pswitch_0
    invoke-virtual/range {p0 .. p1}, Lcom/nemustech/tiffany/widget/TFListView;->dispatchDrawWithExcessScroll_FlashFrame(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 2998
    :pswitch_1
    invoke-virtual/range {p0 .. p1}, Lcom/nemustech/tiffany/widget/TFListView;->dispatchDrawWithExcessScroll_Tremble(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 3001
    :pswitch_2
    invoke-virtual/range {p0 .. p1}, Lcom/nemustech/tiffany/widget/TFListView;->dispatchDrawWithExcessScroll_ItemSpring(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 3009
    :cond_0
    const/4 v9, 0x0

    .line 3010
    .local v9, clipSaved:Z
    const/16 v23, 0x0

    .line 3011
    .local v23, saveClip:I
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->getChildCount()I

    move-result v25

    if-lez v25, :cond_1

    .line 3012
    const/4 v9, 0x1

    .line 3013
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->getPaddingLeft()I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 3014
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->getPaddingTop()I

    move-result v26

    const/16 v27, 0x1

    sub-int v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 3015
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->getWidth()I

    move-result v26

    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->getPaddingRight()I

    move-result v27

    sub-int v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 3016
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->getHeight()I

    move-result v26

    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->getPaddingBottom()I

    move-result v27

    sub-int v26, v26, v27

    add-int/lit8 v26, v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 3017
    const/16 v25, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->save(I)I

    move-result v23

    .line 3018
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 3022
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mDividerHeight:I

    move v11, v0

    .line 3024
    .local v11, dividerHeight:I
    if-lez v11, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v25, v0

    if-eqz v25, :cond_f

    .line 3026
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mTempRect:Landroid/graphics/Rect;

    move-object v7, v0

    .line 3027
    .local v7, bounds:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mPaddingLeft:I

    move/from16 v25, v0

    move/from16 v0, v25

    move-object v1, v7

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 3028
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mRight:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mLeft:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mPaddingRight:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    move/from16 v0, v25

    move-object v1, v7

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 3030
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->getChildCount()I

    move-result v10

    .line 3031
    .local v10, count:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 3032
    .local v16, headerCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mItemCount:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mFooterViewInfos:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v26

    sub-int v25, v25, v26

    const/16 v26, 0x1

    sub-int v15, v25, v26

    .line 3033
    .local v15, footerLimit:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mHeaderDividersEnabled:Z

    move/from16 v17, v0

    .line 3034
    .local v17, headerDividers:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mFooterDividersEnabled:Z

    move v14, v0

    .line 3035
    .local v14, footerDividers:Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mFirstPosition:I

    move v13, v0

    .line 3036
    .local v13, first:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mAreAllItemsSelectable:Z

    move v5, v0

    .line 3037
    .local v5, areAllItemsSelectable:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object v4, v0

    .line 3042
    .local v4, adapter:Landroid/widget/ListAdapter;
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->isOpaque()Z

    move-result v25

    if-eqz v25, :cond_7

    invoke-super/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->isOpaque()Z

    move-result v25

    if-nez v25, :cond_7

    const/16 v25, 0x1

    move/from16 v12, v25

    .line 3044
    .local v12, fillForMissingDividers:Z
    :goto_1
    if-eqz v12, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    if-nez v25, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mIsCacheColorOpaque:Z

    move/from16 v25, v0

    if-eqz v25, :cond_2

    .line 3045
    new-instance v25, Landroid/graphics/Paint;

    invoke-direct/range {v25 .. v25}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nemustech/tiffany/widget/TFListView;->mDividerPaint:Landroid/graphics/Paint;

    .line 3046
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->getCacheColorHint()I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/Paint;->setColor(I)V

    .line 3048
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    .line 3050
    .local v22, paint:Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mStackFromBottom:Z

    move/from16 v25, v0

    if-nez v25, :cond_9

    .line 3052
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mBottom:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mTop:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v26, v0

    sub-int v20, v25, v26

    .line 3054
    .local v20, listBottom:I
    const/16 v18, 0x0

    .local v18, i:I
    :goto_2
    move/from16 v0, v18

    move v1, v10

    if-ge v0, v1, :cond_f

    .line 3055
    if-nez v17, :cond_3

    add-int v25, v13, v18

    move/from16 v0, v25

    move/from16 v1, v16

    if-lt v0, v1, :cond_6

    :cond_3
    if-nez v14, :cond_4

    add-int v25, v13, v18

    move/from16 v0, v25

    move v1, v15

    if-ge v0, v1, :cond_6

    .line 3057
    :cond_4
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 3058
    .local v8, child:Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v6

    .line 3060
    .local v6, bottom:I
    move v0, v6

    move/from16 v1, v20

    if-ge v0, v1, :cond_6

    .line 3061
    if-nez v5, :cond_5

    add-int v25, v13, v18

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v26

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_8

    add-int v25, v13, v18

    move-object v0, v4

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v25

    if-eqz v25, :cond_8

    const/16 v25, 0x1

    sub-int v25, v10, v25

    move/from16 v0, v18

    move/from16 v1, v25

    if-eq v0, v1, :cond_5

    add-int v25, v13, v18

    add-int/lit8 v25, v25, 0x1

    move-object v0, v4

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v25

    if-eqz v25, :cond_8

    .line 3065
    :cond_5
    iput v6, v7, Landroid/graphics/Rect;->top:I

    .line 3066
    add-int v25, v6, v11

    move/from16 v0, v25

    move-object v1, v7

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 3067
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v7

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/nemustech/tiffany/widget/TFListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 3054
    .end local v6           #bottom:I
    .end local v8           #child:Landroid/view/View;
    :cond_6
    :goto_3
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 3042
    .end local v12           #fillForMissingDividers:Z
    .end local v18           #i:I
    .end local v20           #listBottom:I
    .end local v22           #paint:Landroid/graphics/Paint;
    :cond_7
    const/16 v25, 0x0

    move/from16 v12, v25

    goto/16 :goto_1

    .line 3068
    .restart local v6       #bottom:I
    .restart local v8       #child:Landroid/view/View;
    .restart local v12       #fillForMissingDividers:Z
    .restart local v18       #i:I
    .restart local v20       #listBottom:I
    .restart local v22       #paint:Landroid/graphics/Paint;
    :cond_8
    if-eqz v12, :cond_6

    .line 3069
    iput v6, v7, Landroid/graphics/Rect;->top:I

    .line 3070
    add-int v25, v6, v11

    move/from16 v0, v25

    move-object v1, v7

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 3071
    move-object/from16 v0, p1

    move-object v1, v7

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_3

    .line 3078
    .end local v6           #bottom:I
    .end local v8           #child:Landroid/view/View;
    .end local v18           #i:I
    .end local v20           #listBottom:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    .line 3080
    .local v21, listTop:I
    const/16 v18, 0x0

    .restart local v18       #i:I
    :goto_4
    move/from16 v0, v18

    move v1, v10

    if-ge v0, v1, :cond_f

    .line 3081
    if-nez v17, :cond_a

    add-int v25, v13, v18

    move/from16 v0, v25

    move/from16 v1, v16

    if-lt v0, v1, :cond_d

    :cond_a
    if-nez v14, :cond_b

    add-int v25, v13, v18

    move/from16 v0, v25

    move v1, v15

    if-ge v0, v1, :cond_d

    .line 3083
    :cond_b
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 3084
    .restart local v8       #child:Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v24

    .line 3086
    .local v24, top:I
    move/from16 v0, v24

    move/from16 v1, v21

    if-le v0, v1, :cond_d

    .line 3087
    if-nez v5, :cond_c

    add-int v25, v13, v18

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v26

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_e

    add-int v25, v13, v18

    move-object v0, v4

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v25

    if-eqz v25, :cond_e

    add-int v25, v13, v18

    if-eqz v25, :cond_c

    add-int v25, v13, v18

    const/16 v26, 0x1

    sub-int v25, v25, v26

    move-object v0, v4

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v25

    if-eqz v25, :cond_e

    .line 3094
    :cond_c
    sub-int v25, v24, v11

    move/from16 v0, v25

    move-object v1, v7

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 3095
    move/from16 v0, v24

    move-object v1, v7

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 3100
    const/16 v25, 0x1

    sub-int v25, v18, v25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v7

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/nemustech/tiffany/widget/TFListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 3080
    .end local v8           #child:Landroid/view/View;
    .end local v24           #top:I
    :cond_d
    :goto_5
    add-int/lit8 v18, v18, 0x1

    goto :goto_4

    .line 3101
    .restart local v8       #child:Landroid/view/View;
    .restart local v24       #top:I
    :cond_e
    if-eqz v12, :cond_d

    .line 3102
    sub-int v25, v24, v11

    move/from16 v0, v25

    move-object v1, v7

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 3103
    move/from16 v0, v24

    move-object v1, v7

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 3104
    move-object/from16 v0, p1

    move-object v1, v7

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_5

    .line 3113
    .end local v4           #adapter:Landroid/widget/ListAdapter;
    .end local v5           #areAllItemsSelectable:Z
    .end local v7           #bounds:Landroid/graphics/Rect;
    .end local v8           #child:Landroid/view/View;
    .end local v10           #count:I
    .end local v12           #fillForMissingDividers:Z
    .end local v13           #first:I
    .end local v14           #footerDividers:Z
    .end local v15           #footerLimit:I
    .end local v16           #headerCount:I
    .end local v17           #headerDividers:Z
    .end local v18           #i:I
    .end local v21           #listTop:I
    .end local v22           #paint:Landroid/graphics/Paint;
    .end local v24           #top:I
    :cond_f
    if-lez v11, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v25, v0

    if-eqz v25, :cond_11

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mExcessScrollEnabled:Z

    move/from16 v25, v0

    if-eqz v25, :cond_11

    .line 3116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mTempRect:Landroid/graphics/Rect;

    move-object v7, v0

    .line 3117
    .restart local v7       #bounds:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mPaddingLeft:I

    move/from16 v25, v0

    move/from16 v0, v25

    move-object v1, v7

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 3118
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mRight:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mLeft:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mPaddingRight:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    move/from16 v0, v25

    move-object v1, v7

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 3120
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->getChildCount()I

    move-result v25

    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->getFloatingViewCount()I

    move-result v26

    sub-int v10, v25, v26

    .line 3121
    .restart local v10       #count:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object v4, v0

    .line 3122
    .restart local v4       #adapter:Landroid/widget/ListAdapter;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mFirstPosition:I

    move v13, v0

    .line 3124
    .restart local v13       #first:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mStackFromBottom:Z

    move/from16 v25, v0

    if-nez v25, :cond_13

    .line 3127
    if-lez v10, :cond_10

    const/16 v25, 0x0

    move-object v0, v4

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v25

    if-eqz v25, :cond_10

    .line 3128
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFListView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getTop()I

    move-result v25

    const/16 v26, 0x1

    sub-int v25, v25, v26

    move/from16 v0, v25

    move-object v1, v7

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 3129
    move-object v0, v7

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v25, v0

    add-int v25, v25, v11

    move/from16 v0, v25

    move-object v1, v7

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 3130
    const/16 v25, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v7

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/nemustech/tiffany/widget/TFListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 3133
    :cond_10
    if-lez v10, :cond_11

    add-int v25, v13, v10

    const/16 v26, 0x1

    sub-int v25, v25, v26

    move-object v0, v4

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v25

    if-eqz v25, :cond_11

    .line 3135
    const/16 v25, 0x1

    sub-int v25, v10, v25

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFListView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getBottom()I

    move-result v19

    .line 3137
    .local v19, itemBottom:I
    move/from16 v0, v19

    move-object v1, v7

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 3138
    move-object v0, v7

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v25, v0

    add-int v25, v25, v11

    move/from16 v0, v25

    move-object v1, v7

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 3139
    const/16 v25, 0x1

    sub-int v25, v10, v25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v7

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/nemustech/tiffany/widget/TFListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 3161
    .end local v4           #adapter:Landroid/widget/ListAdapter;
    .end local v7           #bounds:Landroid/graphics/Rect;
    .end local v10           #count:I
    .end local v13           #first:I
    .end local v19           #itemBottom:I
    :cond_11
    :goto_6
    if-eqz v9, :cond_12

    .line 3162
    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3165
    :cond_12
    invoke-super/range {p0 .. p1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    .line 3144
    .restart local v4       #adapter:Landroid/widget/ListAdapter;
    .restart local v7       #bounds:Landroid/graphics/Rect;
    .restart local v10       #count:I
    .restart local v13       #first:I
    :cond_13
    if-lez v10, :cond_14

    const/16 v25, 0x0

    move-object v0, v4

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v25

    if-eqz v25, :cond_14

    .line 3145
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFListView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getTop()I

    move-result v25

    const/16 v26, 0x1

    sub-int v25, v25, v26

    move/from16 v0, v25

    move-object v1, v7

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 3146
    move-object v0, v7

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v25, v0

    add-int v25, v25, v11

    move/from16 v0, v25

    move-object v1, v7

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 3147
    const/16 v25, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v7

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/nemustech/tiffany/widget/TFListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 3150
    :cond_14
    if-lez v10, :cond_11

    add-int v25, v13, v10

    const/16 v26, 0x1

    sub-int v25, v25, v26

    move-object v0, v4

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v25

    if-eqz v25, :cond_11

    .line 3152
    const/16 v25, 0x1

    sub-int v25, v10, v25

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFListView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getBottom()I

    move-result v19

    .line 3154
    .restart local v19       #itemBottom:I
    move/from16 v0, v19

    move-object v1, v7

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 3155
    move-object v0, v7

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v25, v0

    add-int v25, v25, v11

    move/from16 v0, v25

    move-object v1, v7

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 3156
    const/16 v25, 0x1

    sub-int v25, v10, v25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v7

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/nemustech/tiffany/widget/TFListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto/16 :goto_6

    .line 2993
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected dispatchDrawWithExcessScroll_Default(Landroid/graphics/Canvas;)V
    .locals 31
    .parameter "canvas"

    .prologue
    .line 3193
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->getHeight()I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v20, v0

    .line 3194
    .local v20, height:F
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->getExcessScrollDrawInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mExcessScroll:I

    move/from16 v29, v0

    invoke-static/range {v29 .. v29}, Ljava/lang/Math;->abs(I)I

    move-result v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    div-float v29, v29, v20

    invoke-interface/range {v28 .. v29}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v28

    mul-float v28, v28, v20

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v26, v0

    .line 3197
    .local v26, shift:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mExcessScroll:I

    move/from16 v28, v0

    if-gez v28, :cond_0

    .line 3198
    mul-int/lit8 v26, v26, -0x1

    .line 3201
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->getPaddingLeft()I

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 3202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->getPaddingTop()I

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 3203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->getWidth()I

    move-result v29

    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->getPaddingRight()I

    move-result v30

    sub-int v29, v29, v30

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 3204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->getHeight()I

    move-result v29

    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->getPaddingBottom()I

    move-result v30

    sub-int v29, v29, v30

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 3205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 3207
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v25

    .line 3208
    .local v25, save1:I
    const/16 v28, 0x0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p1

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3210
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->getChildCount()I

    move-result v10

    .line 3213
    .local v10, childCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mDividerHeight:I

    move v12, v0

    .line 3215
    .local v12, dividerHeight:I
    if-lez v12, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v28, v0

    if-eqz v28, :cond_a

    .line 3217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mTempRect:Landroid/graphics/Rect;

    move-object v8, v0

    .line 3218
    .local v8, bounds:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mPaddingLeft:I

    move/from16 v28, v0

    move/from16 v0, v28

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 3219
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mRight:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mLeft:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mPaddingRight:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move/from16 v0, v28

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 3221
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->getChildCount()I

    move-result v11

    .line 3222
    .local v11, count:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v18

    .line 3223
    .local v18, headerCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mItemCount:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mFooterViewInfos:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v29

    sub-int v28, v28, v29

    const/16 v29, 0x1

    sub-int v17, v28, v29

    .line 3224
    .local v17, footerLimit:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mHeaderDividersEnabled:Z

    move/from16 v19, v0

    .line 3225
    .local v19, headerDividers:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mFooterDividersEnabled:Z

    move/from16 v16, v0

    .line 3226
    .local v16, footerDividers:Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mFirstPosition:I

    move v15, v0

    .line 3227
    .local v15, first:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mAreAllItemsSelectable:Z

    move v6, v0

    .line 3228
    .local v6, areAllItemsSelectable:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object v5, v0

    .line 3230
    .local v5, adapter:Landroid/widget/ListAdapter;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mStackFromBottom:Z

    move/from16 v28, v0

    if-nez v28, :cond_5

    .line 3232
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mBottom:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mTop:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v29, v0

    sub-int v23, v28, v29

    .line 3234
    .local v23, listBottom:I
    const/16 v21, 0x0

    .local v21, i:I
    :goto_0
    move/from16 v0, v21

    move v1, v11

    if-ge v0, v1, :cond_a

    .line 3235
    if-nez v19, :cond_1

    add-int v28, v15, v21

    move/from16 v0, v28

    move/from16 v1, v18

    if-lt v0, v1, :cond_4

    :cond_1
    if-nez v16, :cond_2

    add-int v28, v15, v21

    move/from16 v0, v28

    move/from16 v1, v17

    if-ge v0, v1, :cond_4

    .line 3237
    :cond_2
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 3238
    .local v9, child:Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v7

    .line 3240
    .local v7, bottom:I
    move v0, v7

    move/from16 v1, v23

    if-ge v0, v1, :cond_4

    if-nez v6, :cond_3

    add-int v28, v15, v21

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v29

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_4

    add-int v28, v15, v21

    move-object v0, v5

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v28

    if-eqz v28, :cond_4

    const/16 v28, 0x1

    sub-int v28, v11, v28

    move/from16 v0, v21

    move/from16 v1, v28

    if-eq v0, v1, :cond_3

    add-int v28, v15, v21

    add-int/lit8 v28, v28, 0x1

    move-object v0, v5

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v28

    if-eqz v28, :cond_4

    .line 3244
    :cond_3
    iput v7, v8, Landroid/graphics/Rect;->top:I

    .line 3245
    add-int v28, v7, v12

    move/from16 v0, v28

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 3246
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v8

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/nemustech/tiffany/widget/TFListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 3234
    .end local v7           #bottom:I
    .end local v9           #child:Landroid/view/View;
    :cond_4
    add-int/lit8 v21, v21, 0x1

    goto :goto_0

    .line 3252
    .end local v21           #i:I
    .end local v23           #listBottom:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    .line 3254
    .local v24, listTop:I
    const/16 v21, 0x0

    .restart local v21       #i:I
    :goto_1
    move/from16 v0, v21

    move v1, v11

    if-ge v0, v1, :cond_a

    .line 3255
    if-nez v19, :cond_6

    add-int v28, v15, v21

    move/from16 v0, v28

    move/from16 v1, v18

    if-lt v0, v1, :cond_9

    :cond_6
    if-nez v16, :cond_7

    add-int v28, v15, v21

    move/from16 v0, v28

    move/from16 v1, v17

    if-ge v0, v1, :cond_9

    .line 3257
    :cond_7
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 3258
    .restart local v9       #child:Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v27

    .line 3260
    .local v27, top:I
    move/from16 v0, v27

    move/from16 v1, v24

    if-le v0, v1, :cond_9

    if-nez v6, :cond_8

    add-int v28, v15, v21

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v29

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_9

    add-int v28, v15, v21

    move-object v0, v5

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v28

    if-eqz v28, :cond_9

    add-int v28, v15, v21

    if-eqz v28, :cond_8

    add-int v28, v15, v21

    const/16 v29, 0x1

    sub-int v28, v28, v29

    move-object v0, v5

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v28

    if-eqz v28, :cond_9

    .line 3267
    :cond_8
    sub-int v28, v27, v12

    move/from16 v0, v28

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 3268
    move/from16 v0, v27

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 3273
    const/16 v28, 0x1

    sub-int v28, v21, v28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v8

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lcom/nemustech/tiffany/widget/TFListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 3254
    .end local v9           #child:Landroid/view/View;
    .end local v27           #top:I
    :cond_9
    add-int/lit8 v21, v21, 0x1

    goto :goto_1

    .line 3281
    .end local v5           #adapter:Landroid/widget/ListAdapter;
    .end local v6           #areAllItemsSelectable:Z
    .end local v8           #bounds:Landroid/graphics/Rect;
    .end local v11           #count:I
    .end local v15           #first:I
    .end local v16           #footerDividers:Z
    .end local v17           #footerLimit:I
    .end local v18           #headerCount:I
    .end local v19           #headerDividers:Z
    .end local v21           #i:I
    .end local v24           #listTop:I
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->getDrawingTime()J

    move-result-wide v13

    .line 3283
    .local v13, drawingTime:J
    const/16 v21, 0x0

    .restart local v21       #i:I
    :goto_2
    move/from16 v0, v21

    move v1, v10

    if-ge v0, v1, :cond_c

    .line 3284
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 3285
    .restart local v9       #child:Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v28

    if-nez v28, :cond_b

    .line 3286
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v9

    move-wide v3, v13

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/nemustech/tiffany/widget/TFListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 3283
    :cond_b
    add-int/lit8 v21, v21, 0x1

    goto :goto_2

    .line 3291
    .end local v9           #child:Landroid/view/View;
    :cond_c
    if-lez v12, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v28, v0

    if-eqz v28, :cond_e

    .line 3293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mTempRect:Landroid/graphics/Rect;

    move-object v8, v0

    .line 3294
    .restart local v8       #bounds:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mPaddingLeft:I

    move/from16 v28, v0

    move/from16 v0, v28

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 3295
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mRight:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mLeft:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mPaddingRight:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move/from16 v0, v28

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 3297
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->getChildCount()I

    move-result v11

    .line 3298
    .restart local v11       #count:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object v5, v0

    .line 3299
    .restart local v5       #adapter:Landroid/widget/ListAdapter;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mFirstPosition:I

    move v15, v0

    .line 3301
    .restart local v15       #first:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mStackFromBottom:Z

    move/from16 v28, v0

    if-nez v28, :cond_f

    .line 3304
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mExcessScroll:I

    move/from16 v28, v0

    if-lez v28, :cond_d

    if-lez v11, :cond_d

    const/16 v28, 0x0

    move-object v0, v5

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v28

    if-eqz v28, :cond_d

    .line 3305
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->getPaddingTop()I

    move-result v28

    const/16 v29, 0x1

    sub-int v28, v28, v29

    move/from16 v0, v28

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 3306
    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v28, v0

    add-int v28, v28, v12

    move/from16 v0, v28

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 3307
    const/16 v28, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v8

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lcom/nemustech/tiffany/widget/TFListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 3310
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mExcessScroll:I

    move/from16 v28, v0

    if-gez v28, :cond_e

    if-lez v11, :cond_e

    add-int v28, v15, v11

    const/16 v29, 0x1

    sub-int v28, v28, v29

    move-object v0, v5

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v28

    if-eqz v28, :cond_e

    .line 3312
    const/16 v28, 0x1

    sub-int v28, v11, v28

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFListView;->getChildAt(I)Landroid/view/View;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getBottom()I

    move-result v22

    .line 3314
    .local v22, itemBottom:I
    move/from16 v0, v22

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 3315
    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v28, v0

    add-int v28, v28, v12

    move/from16 v0, v28

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 3316
    const/16 v28, 0x1

    sub-int v28, v11, v28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v8

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lcom/nemustech/tiffany/widget/TFListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 3338
    .end local v5           #adapter:Landroid/widget/ListAdapter;
    .end local v8           #bounds:Landroid/graphics/Rect;
    .end local v11           #count:I
    .end local v15           #first:I
    .end local v22           #itemBottom:I
    :cond_e
    :goto_3
    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3339
    return-void

    .line 3321
    .restart local v5       #adapter:Landroid/widget/ListAdapter;
    .restart local v8       #bounds:Landroid/graphics/Rect;
    .restart local v11       #count:I
    .restart local v15       #first:I
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mExcessScroll:I

    move/from16 v28, v0

    if-lez v28, :cond_10

    if-lez v11, :cond_10

    const/16 v28, 0x0

    move-object v0, v5

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v28

    if-eqz v28, :cond_10

    .line 3322
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFListView;->getChildAt(I)Landroid/view/View;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getTop()I

    move-result v28

    const/16 v29, 0x1

    sub-int v28, v28, v29

    move/from16 v0, v28

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 3323
    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v28, v0

    add-int v28, v28, v12

    move/from16 v0, v28

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 3324
    const/16 v28, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v8

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lcom/nemustech/tiffany/widget/TFListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 3327
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mExcessScroll:I

    move/from16 v28, v0

    if-gez v28, :cond_e

    if-lez v11, :cond_e

    add-int v28, v15, v11

    const/16 v29, 0x1

    sub-int v28, v28, v29

    move-object v0, v5

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v28

    if-eqz v28, :cond_e

    .line 3329
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mBottom:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mTop:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v29, v0

    sub-int v23, v28, v29

    .line 3331
    .restart local v23       #listBottom:I
    move/from16 v0, v23

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 3332
    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v28, v0

    add-int v28, v28, v12

    move/from16 v0, v28

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 3333
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v8

    move v3, v11

    invoke-virtual {v0, v1, v2, v3}, Lcom/nemustech/tiffany/widget/TFListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto/16 :goto_3
.end method

.method protected dispatchDrawWithExcessScroll_FlashFrame(Landroid/graphics/Canvas;)V
    .locals 31
    .parameter "canvas"

    .prologue
    .line 3583
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v29

    .line 3585
    .local v29, save1:I
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->getChildCount()I

    move-result v16

    .line 3588
    .local v16, childCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mDividerHeight:I

    move/from16 v18, v0

    .line 3590
    .local v18, dividerHeight:I
    if-lez v18, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object v5, v0

    if-eqz v5, :cond_9

    .line 3592
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mTempRect:Landroid/graphics/Rect;

    move-object v14, v0

    .line 3593
    .local v14, bounds:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mPaddingLeft:I

    move v5, v0

    iput v5, v14, Landroid/graphics/Rect;->left:I

    .line 3594
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mRight:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mLeft:I

    move v6, v0

    sub-int/2addr v5, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mPaddingRight:I

    move v6, v0

    sub-int/2addr v5, v6

    iput v5, v14, Landroid/graphics/Rect;->right:I

    .line 3596
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->getChildCount()I

    move-result v17

    .line 3597
    .local v17, count:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v24

    .line 3598
    .local v24, headerCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mItemCount:I

    move v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mFooterViewInfos:Ljava/util/ArrayList;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v5, v6

    const/4 v6, 0x1

    sub-int v23, v5, v6

    .line 3599
    .local v23, footerLimit:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mHeaderDividersEnabled:Z

    move/from16 v25, v0

    .line 3600
    .local v25, headerDividers:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mFooterDividersEnabled:Z

    move/from16 v22, v0

    .line 3601
    .local v22, footerDividers:Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mFirstPosition:I

    move/from16 v21, v0

    .line 3602
    .local v21, first:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mAreAllItemsSelectable:Z

    move v12, v0

    .line 3603
    .local v12, areAllItemsSelectable:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object v11, v0

    .line 3605
    .local v11, adapter:Landroid/widget/ListAdapter;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mStackFromBottom:Z

    move v5, v0

    if-nez v5, :cond_4

    .line 3607
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mBottom:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mTop:I

    move v6, v0

    sub-int/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mListPadding:Landroid/graphics/Rect;

    move-object v6, v0

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int v27, v5, v6

    .line 3609
    .local v27, listBottom:I
    const/16 v26, 0x0

    .local v26, i:I
    :goto_0
    move/from16 v0, v26

    move/from16 v1, v17

    if-ge v0, v1, :cond_9

    .line 3610
    if-nez v25, :cond_0

    add-int v5, v21, v26

    move v0, v5

    move/from16 v1, v24

    if-lt v0, v1, :cond_3

    :cond_0
    if-nez v22, :cond_1

    add-int v5, v21, v26

    move v0, v5

    move/from16 v1, v23

    if-ge v0, v1, :cond_3

    .line 3612
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFListView;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 3613
    .local v15, child:Landroid/view/View;
    invoke-virtual {v15}, Landroid/view/View;->getBottom()I

    move-result v13

    .line 3615
    .local v13, bottom:I
    move v0, v13

    move/from16 v1, v27

    if-ge v0, v1, :cond_3

    if-nez v12, :cond_2

    add-int v5, v21, v26

    invoke-interface {v11}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    if-ge v5, v6, :cond_3

    add-int v5, v21, v26

    invoke-interface {v11, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    sub-int v5, v17, v5

    move/from16 v0, v26

    move v1, v5

    if-eq v0, v1, :cond_2

    add-int v5, v21, v26

    add-int/lit8 v5, v5, 0x1

    invoke-interface {v11, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3619
    :cond_2
    iput v13, v14, Landroid/graphics/Rect;->top:I

    .line 3620
    add-int v5, v13, v18

    iput v5, v14, Landroid/graphics/Rect;->bottom:I

    .line 3621
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v14

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/nemustech/tiffany/widget/TFListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 3609
    .end local v13           #bottom:I
    .end local v15           #child:Landroid/view/View;
    :cond_3
    add-int/lit8 v26, v26, 0x1

    goto :goto_0

    .line 3627
    .end local v26           #i:I
    .end local v27           #listBottom:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mListPadding:Landroid/graphics/Rect;

    move-object v5, v0

    move-object v0, v5

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v28, v0

    .line 3629
    .local v28, listTop:I
    const/16 v26, 0x0

    .restart local v26       #i:I
    :goto_1
    move/from16 v0, v26

    move/from16 v1, v17

    if-ge v0, v1, :cond_9

    .line 3630
    if-nez v25, :cond_5

    add-int v5, v21, v26

    move v0, v5

    move/from16 v1, v24

    if-lt v0, v1, :cond_8

    :cond_5
    if-nez v22, :cond_6

    add-int v5, v21, v26

    move v0, v5

    move/from16 v1, v23

    if-ge v0, v1, :cond_8

    .line 3632
    :cond_6
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFListView;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 3633
    .restart local v15       #child:Landroid/view/View;
    invoke-virtual {v15}, Landroid/view/View;->getTop()I

    move-result v30

    .line 3635
    .local v30, top:I
    move/from16 v0, v30

    move/from16 v1, v28

    if-le v0, v1, :cond_8

    if-nez v12, :cond_7

    add-int v5, v21, v26

    invoke-interface {v11}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    if-ge v5, v6, :cond_8

    add-int v5, v21, v26

    invoke-interface {v11, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_8

    add-int v5, v21, v26

    if-eqz v5, :cond_7

    add-int v5, v21, v26

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    invoke-interface {v11, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 3642
    :cond_7
    sub-int v5, v30, v18

    iput v5, v14, Landroid/graphics/Rect;->top:I

    .line 3643
    move/from16 v0, v30

    move-object v1, v14

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 3648
    const/4 v5, 0x1

    sub-int v5, v26, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v14

    move v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/nemustech/tiffany/widget/TFListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 3629
    .end local v15           #child:Landroid/view/View;
    .end local v30           #top:I
    :cond_8
    add-int/lit8 v26, v26, 0x1

    goto :goto_1

    .line 3656
    .end local v11           #adapter:Landroid/widget/ListAdapter;
    .end local v12           #areAllItemsSelectable:Z
    .end local v14           #bounds:Landroid/graphics/Rect;
    .end local v17           #count:I
    .end local v21           #first:I
    .end local v22           #footerDividers:Z
    .end local v23           #footerLimit:I
    .end local v24           #headerCount:I
    .end local v25           #headerDividers:Z
    .end local v26           #i:I
    .end local v28           #listTop:I
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->getDrawingTime()J

    move-result-wide v19

    .line 3658
    .local v19, drawingTime:J
    const/16 v26, 0x0

    .restart local v26       #i:I
    :goto_2
    move/from16 v0, v26

    move/from16 v1, v16

    if-ge v0, v1, :cond_b

    .line 3659
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFListView;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 3660
    .restart local v15       #child:Landroid/view/View;
    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_a

    .line 3661
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v15

    move-wide/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/nemustech/tiffany/widget/TFListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 3658
    :cond_a
    add-int/lit8 v26, v26, 0x1

    goto :goto_2

    .line 3665
    .end local v15           #child:Landroid/view/View;
    :cond_b
    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3667
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->getExcessScrollMode()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_c

    .line 3669
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mExcessScroll:I

    move v5, v0

    rem-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_c

    .line 3670
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mTempRect:Landroid/graphics/Rect;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFListView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 3671
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mTempPaint:Landroid/graphics/Paint;

    move-object v5, v0

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 3672
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mTempPaint:Landroid/graphics/Paint;

    move-object v5, v0

    const/high16 v6, 0x4040

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 3673
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mTempRect:Landroid/graphics/Rect;

    move-object v5, v0

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v6, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mTempRect:Landroid/graphics/Rect;

    move-object v5, v0

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v7, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mTempRect:Landroid/graphics/Rect;

    move-object v5, v0

    iget v5, v5, Landroid/graphics/Rect;->right:I

    int-to-float v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mTempRect:Landroid/graphics/Rect;

    move-object v5, v0

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v9, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mTempPaint:Landroid/graphics/Paint;

    move-object v10, v0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 3674
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mTempRect:Landroid/graphics/Rect;

    move-object v5, v0

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v6, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mTempRect:Landroid/graphics/Rect;

    move-object v5, v0

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mTempRect:Landroid/graphics/Rect;

    move-object v5, v0

    iget v5, v5, Landroid/graphics/Rect;->right:I

    int-to-float v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mTempRect:Landroid/graphics/Rect;

    move-object v5, v0

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mTempPaint:Landroid/graphics/Paint;

    move-object v10, v0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 3675
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mTempRect:Landroid/graphics/Rect;

    move-object v5, v0

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v6, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mTempRect:Landroid/graphics/Rect;

    move-object v5, v0

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v7, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mTempRect:Landroid/graphics/Rect;

    move-object v5, v0

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mTempRect:Landroid/graphics/Rect;

    move-object v5, v0

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mTempPaint:Landroid/graphics/Paint;

    move-object v10, v0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 3676
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mTempRect:Landroid/graphics/Rect;

    move-object v5, v0

    iget v5, v5, Landroid/graphics/Rect;->right:I

    int-to-float v6, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mTempRect:Landroid/graphics/Rect;

    move-object v5, v0

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v7, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mTempRect:Landroid/graphics/Rect;

    move-object v5, v0

    iget v5, v5, Landroid/graphics/Rect;->right:I

    int-to-float v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mTempRect:Landroid/graphics/Rect;

    move-object v5, v0

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mTempPaint:Landroid/graphics/Paint;

    move-object v10, v0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 3679
    :cond_c
    return-void
.end method

.method protected dispatchDrawWithExcessScroll_ItemSpring(Landroid/graphics/Canvas;)V
    .locals 32
    .parameter "canvas"

    .prologue
    .line 3346
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->getHeight()I

    move-result v30

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v20, v0

    .line 3347
    .local v20, height:F
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->getExcessScrollDrawInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v30

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mExcessScroll:I

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Math;->abs(I)I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    div-float v31, v31, v20

    invoke-interface/range {v30 .. v31}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v30

    mul-float v30, v30, v20

    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->getChildCount()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    div-float v30, v30, v31

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v27, v0

    .line 3350
    .local v27, shiftPerItem:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mExcessScroll:I

    move/from16 v30, v0

    if-gez v30, :cond_0

    .line 3351
    mul-int/lit8 v27, v27, -0x1

    .line 3353
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->getChildCount()I

    move-result v10

    .line 3356
    .local v10, childCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mDividerHeight:I

    move v12, v0

    .line 3358
    .local v12, dividerHeight:I
    if-lez v12, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v30, v0

    if-eqz v30, :cond_12

    .line 3360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mTempRect:Landroid/graphics/Rect;

    move-object v8, v0

    .line 3361
    .local v8, bounds:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mPaddingLeft:I

    move/from16 v30, v0

    move/from16 v0, v30

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 3362
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mRight:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mLeft:I

    move/from16 v31, v0

    sub-int v30, v30, v31

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mPaddingRight:I

    move/from16 v31, v0

    sub-int v30, v30, v31

    move/from16 v0, v30

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 3364
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->getChildCount()I

    move-result v11

    .line 3365
    .local v11, count:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v18

    .line 3366
    .local v18, headerCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mItemCount:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mFooterViewInfos:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v31

    sub-int v30, v30, v31

    const/16 v31, 0x1

    sub-int v17, v30, v31

    .line 3367
    .local v17, footerLimit:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mHeaderDividersEnabled:Z

    move/from16 v19, v0

    .line 3368
    .local v19, headerDividers:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mFooterDividersEnabled:Z

    move/from16 v16, v0

    .line 3369
    .local v16, footerDividers:Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mFirstPosition:I

    move v15, v0

    .line 3370
    .local v15, first:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mAreAllItemsSelectable:Z

    move v6, v0

    .line 3371
    .local v6, areAllItemsSelectable:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object v5, v0

    .line 3373
    .local v5, adapter:Landroid/widget/ListAdapter;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mStackFromBottom:Z

    move/from16 v30, v0

    if-nez v30, :cond_9

    .line 3375
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mBottom:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mTop:I

    move/from16 v31, v0

    sub-int v30, v30, v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v31, v0

    sub-int v22, v30, v31

    .line 3377
    .local v22, listBottom:I
    const/16 v21, 0x0

    .local v21, i:I
    :goto_0
    move/from16 v0, v21

    move v1, v11

    if-ge v0, v1, :cond_12

    .line 3378
    if-nez v19, :cond_1

    add-int v30, v15, v21

    move/from16 v0, v30

    move/from16 v1, v18

    if-lt v0, v1, :cond_6

    :cond_1
    if-nez v16, :cond_2

    add-int v30, v15, v21

    move/from16 v0, v30

    move/from16 v1, v17

    if-ge v0, v1, :cond_6

    .line 3380
    :cond_2
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 3381
    .local v9, child:Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v7

    .line 3383
    .local v7, bottom:I
    move v0, v7

    move/from16 v1, v22

    if-ge v0, v1, :cond_6

    if-nez v6, :cond_3

    add-int v30, v15, v21

    move-object v0, v5

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v30

    if-eqz v30, :cond_6

    const/16 v30, 0x1

    sub-int v30, v11, v30

    move/from16 v0, v21

    move/from16 v1, v30

    if-eq v0, v1, :cond_3

    add-int v30, v15, v21

    add-int/lit8 v30, v30, 0x1

    move-object v0, v5

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v30

    if-eqz v30, :cond_6

    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFListView;->getChildAt(I)Landroid/view/View;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v30

    if-nez v30, :cond_6

    const/16 v30, 0x1

    sub-int v30, v11, v30

    move/from16 v0, v21

    move/from16 v1, v30

    if-ge v0, v1, :cond_4

    add-int/lit8 v30, v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFListView;->getChildAt(I)Landroid/view/View;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v30

    if-nez v30, :cond_6

    .line 3391
    :cond_4
    iput v7, v8, Landroid/graphics/Rect;->top:I

    .line 3392
    add-int v30, v7, v12

    move/from16 v0, v30

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 3394
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mExcessScroll:I

    move/from16 v30, v0

    if-lez v30, :cond_7

    mul-int v30, v27, v21

    move/from16 v25, v30

    .line 3396
    .local v25, shift:I
    :goto_1
    const/16 v30, 0x1

    sub-int v30, v11, v30

    move/from16 v0, v21

    move/from16 v1, v30

    if-eq v0, v1, :cond_5

    .line 3397
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mExcessScroll:I

    move/from16 v30, v0

    if-lez v30, :cond_8

    add-int/lit8 v30, v21, 0x1

    mul-int v30, v30, v27

    move/from16 v26, v30

    .line 3398
    .local v26, shiftNext:I
    :goto_2
    add-int v30, v25, v26

    div-int/lit8 v25, v30, 0x2

    .line 3400
    .end local v26           #shiftNext:I
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v24

    .line 3401
    .local v24, save:I
    const/16 v30, 0x0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v31, v0

    move-object/from16 v0, p1

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3402
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v8

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/nemustech/tiffany/widget/TFListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 3403
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3377
    .end local v7           #bottom:I
    .end local v9           #child:Landroid/view/View;
    .end local v24           #save:I
    .end local v25           #shift:I
    :cond_6
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_0

    .line 3394
    .restart local v7       #bottom:I
    .restart local v9       #child:Landroid/view/View;
    :cond_7
    const/16 v30, 0x1

    sub-int v30, v10, v30

    sub-int v30, v30, v21

    mul-int v30, v30, v27

    move/from16 v25, v30

    goto :goto_1

    .line 3397
    .restart local v25       #shift:I
    :cond_8
    const/16 v30, 0x1

    sub-int v30, v10, v30

    add-int/lit8 v31, v21, 0x1

    sub-int v30, v30, v31

    mul-int v30, v30, v27

    move/from16 v26, v30

    goto :goto_2

    .line 3409
    .end local v7           #bottom:I
    .end local v9           #child:Landroid/view/View;
    .end local v21           #i:I
    .end local v22           #listBottom:I
    .end local v25           #shift:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    .line 3411
    .local v23, listTop:I
    const/16 v21, 0x0

    .restart local v21       #i:I
    :goto_3
    move/from16 v0, v21

    move v1, v11

    if-ge v0, v1, :cond_12

    .line 3412
    if-nez v19, :cond_a

    add-int v30, v15, v21

    move/from16 v0, v30

    move/from16 v1, v18

    if-lt v0, v1, :cond_f

    :cond_a
    if-nez v16, :cond_b

    add-int v30, v15, v21

    move/from16 v0, v30

    move/from16 v1, v17

    if-ge v0, v1, :cond_f

    .line 3414
    :cond_b
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 3415
    .restart local v9       #child:Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v29

    .line 3417
    .local v29, top:I
    move/from16 v0, v29

    move/from16 v1, v23

    if-le v0, v1, :cond_f

    if-nez v6, :cond_c

    add-int v30, v15, v21

    move-object v0, v5

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v30

    if-eqz v30, :cond_f

    add-int v30, v15, v21

    if-eqz v30, :cond_c

    add-int v30, v15, v21

    const/16 v31, 0x1

    sub-int v30, v30, v31

    move-object v0, v5

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v30

    if-eqz v30, :cond_f

    :cond_c
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFListView;->getChildAt(I)Landroid/view/View;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v30

    if-nez v30, :cond_f

    if-lez v21, :cond_d

    const/16 v30, 0x1

    sub-int v30, v21, v30

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFListView;->getChildAt(I)Landroid/view/View;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v30

    if-nez v30, :cond_f

    .line 3428
    :cond_d
    sub-int v30, v29, v12

    move/from16 v0, v30

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 3429
    move/from16 v0, v29

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 3435
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mExcessScroll:I

    move/from16 v30, v0

    if-lez v30, :cond_10

    mul-int v30, v27, v21

    move/from16 v25, v30

    .line 3437
    .restart local v25       #shift:I
    :goto_4
    if-eqz v21, :cond_e

    .line 3438
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mExcessScroll:I

    move/from16 v30, v0

    if-lez v30, :cond_11

    const/16 v30, 0x1

    sub-int v30, v21, v30

    mul-int v30, v30, v27

    move/from16 v28, v30

    .line 3439
    .local v28, shiftPrev:I
    :goto_5
    add-int v30, v25, v28

    div-int/lit8 v25, v30, 0x2

    .line 3441
    .end local v28           #shiftPrev:I
    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v24

    .line 3442
    .restart local v24       #save:I
    const/16 v30, 0x0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v31, v0

    move-object/from16 v0, p1

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3443
    const/16 v30, 0x1

    sub-int v30, v21, v30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v8

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/nemustech/tiffany/widget/TFListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 3444
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3411
    .end local v9           #child:Landroid/view/View;
    .end local v24           #save:I
    .end local v25           #shift:I
    .end local v29           #top:I
    :cond_f
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_3

    .line 3435
    .restart local v9       #child:Landroid/view/View;
    .restart local v29       #top:I
    :cond_10
    const/16 v30, 0x1

    sub-int v30, v10, v30

    sub-int v30, v30, v21

    mul-int v30, v30, v27

    move/from16 v25, v30

    goto :goto_4

    .line 3438
    .restart local v25       #shift:I
    :cond_11
    const/16 v30, 0x1

    sub-int v30, v10, v30

    const/16 v31, 0x1

    sub-int v31, v21, v31

    sub-int v30, v30, v31

    mul-int v30, v30, v27

    move/from16 v28, v30

    goto :goto_5

    .line 3452
    .end local v5           #adapter:Landroid/widget/ListAdapter;
    .end local v6           #areAllItemsSelectable:Z
    .end local v8           #bounds:Landroid/graphics/Rect;
    .end local v9           #child:Landroid/view/View;
    .end local v11           #count:I
    .end local v15           #first:I
    .end local v16           #footerDividers:Z
    .end local v17           #footerLimit:I
    .end local v18           #headerCount:I
    .end local v19           #headerDividers:Z
    .end local v21           #i:I
    .end local v23           #listTop:I
    .end local v25           #shift:I
    .end local v29           #top:I
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->getDrawingTime()J

    move-result-wide v13

    .line 3454
    .local v13, drawingTime:J
    const/16 v21, 0x0

    .restart local v21       #i:I
    :goto_6
    move/from16 v0, v21

    move v1, v10

    if-ge v0, v1, :cond_15

    .line 3455
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 3456
    .restart local v9       #child:Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v30

    if-nez v30, :cond_13

    .line 3457
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mExcessScroll:I

    move/from16 v30, v0

    if-lez v30, :cond_14

    mul-int v30, v27, v21

    move/from16 v25, v30

    .line 3459
    .restart local v25       #shift:I
    :goto_7
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v24

    .line 3460
    .restart local v24       #save:I
    const/16 v30, 0x0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v31, v0

    move-object/from16 v0, p1

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3461
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v9

    move-wide v3, v13

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/nemustech/tiffany/widget/TFListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 3462
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3454
    .end local v24           #save:I
    .end local v25           #shift:I
    :cond_13
    add-int/lit8 v21, v21, 0x1

    goto :goto_6

    .line 3457
    :cond_14
    const/16 v30, 0x1

    sub-int v30, v10, v30

    sub-int v30, v30, v21

    mul-int v30, v30, v27

    move/from16 v25, v30

    goto :goto_7

    .line 3465
    .end local v9           #child:Landroid/view/View;
    :cond_15
    return-void
.end method

.method protected dispatchDrawWithExcessScroll_Tremble(Landroid/graphics/Canvas;)V
    .locals 32
    .parameter "canvas"

    .prologue
    .line 3472
    const/16 v25, 0x0

    .line 3474
    .local v25, shift:I
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->getExcessScrollMode()I

    move-result v30

    const/16 v31, 0x2

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_1

    .line 3476
    const/16 v5, 0x9

    .line 3477
    .local v5, TREMBLE_HEIGHT:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mDensityScale:F

    move/from16 v30, v0

    const/high16 v31, 0x4110

    mul-float v30, v30, v31

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v29, v0

    .line 3479
    .local v29, tremble_height:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mExcessScroll:I

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/Math;->abs(I)I

    move-result v30

    rem-int v26, v30, v29

    .line 3480
    .local v26, temp:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mExcessScroll:I

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/Math;->abs(I)I

    move-result v30

    mul-int/lit8 v31, v29, 0x2

    rem-int v27, v30, v31

    .line 3482
    .local v27, temp2:I
    move/from16 v25, v27

    .line 3483
    move/from16 v0, v27

    move/from16 v1, v26

    if-eq v0, v1, :cond_0

    .line 3484
    sub-int v25, v29, v26

    .line 3487
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mExcessScroll:I

    move/from16 v30, v0

    if-gez v30, :cond_1

    .line 3488
    mul-int/lit8 v25, v25, -0x1

    .line 3492
    .end local v5           #TREMBLE_HEIGHT:I
    .end local v26           #temp:I
    .end local v27           #temp2:I
    .end local v29           #tremble_height:I
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v24

    .line 3493
    .local v24, save1:I
    const/16 v30, 0x0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v31, v0

    move-object/from16 v0, p1

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3495
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->getChildCount()I

    move-result v11

    .line 3498
    .local v11, childCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mDividerHeight:I

    move v13, v0

    .line 3500
    .local v13, dividerHeight:I
    if-lez v13, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v30, v0

    if-eqz v30, :cond_b

    .line 3502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mTempRect:Landroid/graphics/Rect;

    move-object v9, v0

    .line 3503
    .local v9, bounds:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mPaddingLeft:I

    move/from16 v30, v0

    move/from16 v0, v30

    move-object v1, v9

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 3504
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mRight:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mLeft:I

    move/from16 v31, v0

    sub-int v30, v30, v31

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mPaddingRight:I

    move/from16 v31, v0

    sub-int v30, v30, v31

    move/from16 v0, v30

    move-object v1, v9

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 3506
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->getChildCount()I

    move-result v12

    .line 3507
    .local v12, count:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 3508
    .local v19, headerCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mItemCount:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mFooterViewInfos:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v31

    sub-int v30, v30, v31

    const/16 v31, 0x1

    sub-int v18, v30, v31

    .line 3509
    .local v18, footerLimit:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mHeaderDividersEnabled:Z

    move/from16 v20, v0

    .line 3510
    .local v20, headerDividers:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mFooterDividersEnabled:Z

    move/from16 v17, v0

    .line 3511
    .local v17, footerDividers:Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mFirstPosition:I

    move/from16 v16, v0

    .line 3512
    .local v16, first:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mAreAllItemsSelectable:Z

    move v7, v0

    .line 3513
    .local v7, areAllItemsSelectable:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object v6, v0

    .line 3515
    .local v6, adapter:Landroid/widget/ListAdapter;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mStackFromBottom:Z

    move/from16 v30, v0

    if-nez v30, :cond_6

    .line 3517
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mBottom:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mTop:I

    move/from16 v31, v0

    sub-int v30, v30, v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v31, v0

    sub-int v22, v30, v31

    .line 3519
    .local v22, listBottom:I
    const/16 v21, 0x0

    .local v21, i:I
    :goto_0
    move/from16 v0, v21

    move v1, v12

    if-ge v0, v1, :cond_b

    .line 3520
    if-nez v20, :cond_2

    add-int v30, v16, v21

    move/from16 v0, v30

    move/from16 v1, v19

    if-lt v0, v1, :cond_5

    :cond_2
    if-nez v17, :cond_3

    add-int v30, v16, v21

    move/from16 v0, v30

    move/from16 v1, v18

    if-ge v0, v1, :cond_5

    .line 3522
    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 3523
    .local v10, child:Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v8

    .line 3525
    .local v8, bottom:I
    move v0, v8

    move/from16 v1, v22

    if-ge v0, v1, :cond_5

    if-nez v7, :cond_4

    add-int v30, v16, v21

    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v31

    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_5

    add-int v30, v16, v21

    move-object v0, v6

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v30

    if-eqz v30, :cond_5

    const/16 v30, 0x1

    sub-int v30, v12, v30

    move/from16 v0, v21

    move/from16 v1, v30

    if-eq v0, v1, :cond_4

    add-int v30, v16, v21

    add-int/lit8 v30, v30, 0x1

    move-object v0, v6

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v30

    if-eqz v30, :cond_5

    .line 3529
    :cond_4
    iput v8, v9, Landroid/graphics/Rect;->top:I

    .line 3530
    add-int v30, v8, v13

    move/from16 v0, v30

    move-object v1, v9

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 3531
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v9

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/nemustech/tiffany/widget/TFListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 3519
    .end local v8           #bottom:I
    .end local v10           #child:Landroid/view/View;
    :cond_5
    add-int/lit8 v21, v21, 0x1

    goto :goto_0

    .line 3537
    .end local v21           #i:I
    .end local v22           #listBottom:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    .line 3539
    .local v23, listTop:I
    const/16 v21, 0x0

    .restart local v21       #i:I
    :goto_1
    move/from16 v0, v21

    move v1, v12

    if-ge v0, v1, :cond_b

    .line 3540
    if-nez v20, :cond_7

    add-int v30, v16, v21

    move/from16 v0, v30

    move/from16 v1, v19

    if-lt v0, v1, :cond_a

    :cond_7
    if-nez v17, :cond_8

    add-int v30, v16, v21

    move/from16 v0, v30

    move/from16 v1, v18

    if-ge v0, v1, :cond_a

    .line 3542
    :cond_8
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 3543
    .restart local v10       #child:Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v28

    .line 3545
    .local v28, top:I
    move/from16 v0, v28

    move/from16 v1, v23

    if-le v0, v1, :cond_a

    if-nez v7, :cond_9

    add-int v30, v16, v21

    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v31

    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_a

    add-int v30, v16, v21

    move-object v0, v6

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v30

    if-eqz v30, :cond_a

    add-int v30, v16, v21

    if-eqz v30, :cond_9

    add-int v30, v16, v21

    const/16 v31, 0x1

    sub-int v30, v30, v31

    move-object v0, v6

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v30

    if-eqz v30, :cond_a

    .line 3552
    :cond_9
    sub-int v30, v28, v13

    move/from16 v0, v30

    move-object v1, v9

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 3553
    move/from16 v0, v28

    move-object v1, v9

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 3558
    const/16 v30, 0x1

    sub-int v30, v21, v30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v9

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/nemustech/tiffany/widget/TFListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 3539
    .end local v10           #child:Landroid/view/View;
    .end local v28           #top:I
    :cond_a
    add-int/lit8 v21, v21, 0x1

    goto :goto_1

    .line 3566
    .end local v6           #adapter:Landroid/widget/ListAdapter;
    .end local v7           #areAllItemsSelectable:Z
    .end local v9           #bounds:Landroid/graphics/Rect;
    .end local v12           #count:I
    .end local v16           #first:I
    .end local v17           #footerDividers:Z
    .end local v18           #footerLimit:I
    .end local v19           #headerCount:I
    .end local v20           #headerDividers:Z
    .end local v21           #i:I
    .end local v23           #listTop:I
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->getDrawingTime()J

    move-result-wide v14

    .line 3568
    .local v14, drawingTime:J
    const/16 v21, 0x0

    .restart local v21       #i:I
    :goto_2
    move/from16 v0, v21

    move v1, v11

    if-ge v0, v1, :cond_d

    .line 3569
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 3570
    .restart local v10       #child:Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v30

    if-nez v30, :cond_c

    .line 3571
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v10

    move-wide v3, v14

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/nemustech/tiffany/widget/TFListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 3568
    :cond_c
    add-int/lit8 v21, v21, 0x1

    goto :goto_2

    .line 3575
    .end local v10           #child:Landroid/view/View;
    :cond_d
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3576
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 2043
    invoke-super {p0, p1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    .line 2044
    .local v1, handled:Z
    if-nez v1, :cond_0

    .line 2046
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 2047
    .local v0, focused:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    .line 2050
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {p0, v2, p1}, Lcom/nemustech/tiffany/widget/TFListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 2053
    .end local v0           #focused:Landroid/view/View;
    :cond_0
    return v1
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    .line 1989
    invoke-super {p0, p1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v5

    .line 1993
    .local v5, populated:Z
    if-nez v5, :cond_4

    .line 1994
    const/4 v4, 0x0

    .line 1995
    .local v4, itemCount:I
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->getSelectedItemPosition()I

    move-result v2

    .line 1997
    .local v2, currentItemIndex:I
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 1998
    .local v0, adapter:Landroid/widget/ListAdapter;
    if-eqz v0, :cond_3

    .line 1999
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 2000
    .local v1, count:I
    const/16 v6, 0xf

    if-ge v1, v6, :cond_2

    .line 2001
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_3

    .line 2002
    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2003
    add-int/lit8 v4, v4, 0x1

    .line 2001
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2004
    :cond_1
    if-gt v3, v2, :cond_0

    .line 2005
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 2009
    .end local v3           #i:I
    :cond_2
    move v4, v1

    .line 2013
    .end local v1           #count:I
    :cond_3
    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 2014
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    .line 2017
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    .end local v2           #currentItemIndex:I
    .end local v4           #itemCount:I
    :cond_4
    return v5
.end method

.method drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .locals 2
    .parameter "canvas"
    .parameter "bounds"
    .parameter "childIndex"

    .prologue
    .line 3692
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFListView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 3693
    .local v1, divider:Landroid/graphics/drawable/Drawable;
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFListView;->mClipDivider:Z

    .line 3695
    .local v0, clipDivider:Z
    if-nez v0, :cond_1

    .line 3696
    invoke-virtual {v1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3702
    :goto_0
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3704
    if-eqz v0, :cond_0

    .line 3705
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 3707
    :cond_0
    return-void

    .line 3698
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3699
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    goto :goto_0
.end method

.method fillGap(Z)V
    .locals 5
    .parameter "down"

    .prologue
    const/4 v4, 0x1

    .line 697
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->getChildCount()I

    move-result v0

    .line 698
    .local v0, count:I
    if-eqz p1, :cond_1

    .line 699
    if-lez v0, :cond_0

    sub-int v2, v0, v4

    invoke-virtual {p0, v2}, Lcom/nemustech/tiffany/widget/TFListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFListView;->mDividerHeight:I

    add-int/2addr v2, v3

    move v1, v2

    .line 701
    .local v1, startOffset:I
    :goto_0
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFListView;->mFirstPosition:I

    add-int/2addr v2, v0

    invoke-direct {p0, v2, v1}, Lcom/nemustech/tiffany/widget/TFListView;->fillDown(II)Landroid/view/View;

    .line 702
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->getChildCount()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/nemustech/tiffany/widget/TFListView;->correctTooHigh(I)V

    .line 709
    :goto_1
    return-void

    .line 699
    .end local v1           #startOffset:I
    :cond_0
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->getListPaddingTop()I

    move-result v2

    move v1, v2

    goto :goto_0

    .line 704
    :cond_1
    if-lez v0, :cond_2

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/nemustech/tiffany/widget/TFListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFListView;->mDividerHeight:I

    sub-int/2addr v2, v3

    move v1, v2

    .line 706
    .restart local v1       #startOffset:I
    :goto_2
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFListView;->mFirstPosition:I

    sub-int/2addr v2, v4

    invoke-direct {p0, v2, v1}, Lcom/nemustech/tiffany/widget/TFListView;->fillUp(II)Landroid/view/View;

    .line 707
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->getChildCount()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/nemustech/tiffany/widget/TFListView;->correctTooLow(I)V

    goto :goto_1

    .line 704
    .end local v1           #startOffset:I
    :cond_2
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->getListPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    move v1, v2

    goto :goto_2
.end method

.method findMotionRow(I)I
    .locals 5
    .parameter "y"

    .prologue
    .line 1279
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->getChildCount()I

    move-result v0

    .line 1280
    .local v0, childCount:I
    if-lez v0, :cond_2

    .line 1281
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1282
    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1283
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    if-gt p1, v3, :cond_0

    .line 1284
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFListView;->mFirstPosition:I

    add-int/2addr v3, v1

    .line 1289
    .end local v1           #i:I
    .end local v2           #v:Landroid/view/View;
    :goto_1
    return v3

    .line 1281
    .restart local v1       #i:I
    .restart local v2       #v:Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1287
    .end local v2           #v:Landroid/view/View;
    :cond_1
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFListView;->mFirstPosition:I

    add-int/2addr v3, v0

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    goto :goto_1

    .line 1289
    .end local v1           #i:I
    :cond_2
    const/4 v3, -0x1

    goto :goto_1
.end method

.method findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;
    .locals 4
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nemustech/tiffany/widget/TFListView$FixedViewInfo;",
            ">;I)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 3868
    .local p1, where:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/nemustech/tiffany/widget/TFListView$FixedViewInfo;>;"
    if-eqz p1, :cond_1

    .line 3869
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3872
    .local v1, len:I
    const/4 v0, 0x0

    .end local p0
    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 3873
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/nemustech/tiffany/widget/TFListView$FixedViewInfo;

    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFListView$FixedViewInfo;->view:Landroid/view/View;

    .line 3875
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3876
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 3878
    if-eqz v2, :cond_0

    move-object v3, v2

    .line 3884
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #v:Landroid/view/View;
    :goto_1
    return-object v3

    .line 3872
    .restart local v0       #i:I
    .restart local v1       #len:I
    .restart local v2       #v:Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3884
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #v:Landroid/view/View;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method findViewTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter "tag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nemustech/tiffany/widget/TFListView$FixedViewInfo;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 3914
    .local p1, where:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/nemustech/tiffany/widget/TFListView$FixedViewInfo;>;"
    if-eqz p1, :cond_1

    .line 3915
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3918
    .local v1, len:I
    const/4 v0, 0x0

    .end local p0
    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 3919
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/nemustech/tiffany/widget/TFListView$FixedViewInfo;

    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFListView$FixedViewInfo;->view:Landroid/view/View;

    .line 3921
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3922
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    .line 3924
    if-eqz v2, :cond_0

    move-object v3, v2

    .line 3930
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #v:Landroid/view/View;
    :goto_1
    return-object v3

    .line 3918
    .restart local v0       #i:I
    .restart local v1       #len:I
    .restart local v2       #v:Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3930
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #v:Landroid/view/View;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method protected findViewTraversal(I)Landroid/view/View;
    .locals 3
    .parameter "id"

    .prologue
    .line 3849
    invoke-super {p0, p1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->findViewTraversal(I)Landroid/view/View;

    move-result-object v0

    .line 3850
    .local v0, v:Landroid/view/View;
    if-nez v0, :cond_1

    .line 3851
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Lcom/nemustech/tiffany/widget/TFListView;->findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v0

    .line 3852
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 3860
    .end local v0           #v:Landroid/view/View;
    .local v1, v:Landroid/view/View;
    :goto_0
    return-object v1

    .line 3855
    .end local v1           #v:Landroid/view/View;
    .restart local v0       #v:Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Lcom/nemustech/tiffany/widget/TFListView;->findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v0

    .line 3856
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 3857
    .end local v0           #v:Landroid/view/View;
    .restart local v1       #v:Landroid/view/View;
    goto :goto_0

    .end local v1           #v:Landroid/view/View;
    .restart local v0       #v:Landroid/view/View;
    :cond_1
    move-object v1, v0

    .line 3860
    .end local v0           #v:Landroid/view/View;
    .restart local v1       #v:Landroid/view/View;
    goto :goto_0
.end method

.method protected findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;
    .locals 3
    .parameter "tag"

    .prologue
    .line 3894
    invoke-super {p0, p1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 3895
    .local v0, v:Landroid/view/View;
    if-nez v0, :cond_1

    .line 3896
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Lcom/nemustech/tiffany/widget/TFListView;->findViewTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 3897
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 3906
    .end local v0           #v:Landroid/view/View;
    .local v1, v:Landroid/view/View;
    :goto_0
    return-object v1

    .line 3901
    .end local v1           #v:Landroid/view/View;
    .restart local v0       #v:Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Lcom/nemustech/tiffany/widget/TFListView;->findViewTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 3902
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 3903
    .end local v0           #v:Landroid/view/View;
    .restart local v1       #v:Landroid/view/View;
    goto :goto_0

    .end local v1           #v:Landroid/view/View;
    .restart local v0       #v:Landroid/view/View;
    :cond_1
    move-object v1, v0

    .line 3906
    .end local v0           #v:Landroid/view/View;
    .restart local v1       #v:Landroid/view/View;
    goto :goto_0
.end method

.method fullScroll(I)Z
    .locals 5
    .parameter "direction"

    .prologue
    const/4 v4, 0x1

    .line 2223
    const/4 v0, 0x0

    .line 2224
    .local v0, moved:Z
    const/16 v2, 0x21

    if-ne p1, v2, :cond_3

    .line 2225
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFListView;->mSelectedPosition:I

    if-eqz v2, :cond_1

    .line 2226
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v4}, Lcom/nemustech/tiffany/widget/TFListView;->lookForSelectablePosition(IZ)I

    move-result v1

    .line 2227
    .local v1, position:I
    if-ltz v1, :cond_0

    .line 2228
    iput v4, p0, Lcom/nemustech/tiffany/widget/TFListView;->mLayoutMode:I

    .line 2229
    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFListView;->setSelectionInt(I)V

    .line 2230
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->invokeOnItemScrollListener()V

    .line 2232
    :cond_0
    const/4 v0, 0x1

    .line 2246
    .end local v1           #position:I
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->awakenScrollBars()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2247
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->awakenScrollBars()Z

    .line 2248
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->invalidate()V

    .line 2251
    :cond_2
    return v0

    .line 2234
    :cond_3
    const/16 v2, 0x82

    if-ne p1, v2, :cond_1

    .line 2235
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFListView;->mSelectedPosition:I

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFListView;->mItemCount:I

    sub-int/2addr v3, v4

    if-ge v2, v3, :cond_1

    .line 2236
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFListView;->mItemCount:I

    sub-int/2addr v2, v4

    invoke-virtual {p0, v2, v4}, Lcom/nemustech/tiffany/widget/TFListView;->lookForSelectablePosition(IZ)I

    move-result v1

    .line 2237
    .restart local v1       #position:I
    if-ltz v1, :cond_4

    .line 2238
    const/4 v2, 0x3

    iput v2, p0, Lcom/nemustech/tiffany/widget/TFListView;->mLayoutMode:I

    .line 2239
    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFListView;->setSelectionInt(I)V

    .line 2240
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->invokeOnItemScrollListener()V

    .line 2242
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFListView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getCheckItemIds()[J
    .locals 7

    .prologue
    .line 4091
    iget v5, p0, Lcom/nemustech/tiffany/widget/TFListView;->mChoiceMode:I

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v5, :cond_1

    .line 4092
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 4093
    .local v4, states:Landroid/util/SparseBooleanArray;
    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    .line 4094
    .local v1, count:I
    new-array v3, v1, [J

    .line 4095
    .local v3, ids:[J
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 4097
    .local v0, adapter:Landroid/widget/ListAdapter;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 4098
    invoke-virtual {v4, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v5

    aput-wide v5, v3, v2

    .line 4097
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move-object v5, v3

    .line 4104
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v3           #ids:[J
    .end local v4           #states:Landroid/util/SparseBooleanArray;
    :goto_1
    return-object v5

    :cond_1
    const/4 v5, 0x0

    new-array v5, v5, [J

    goto :goto_1
.end method

.method public getCheckedItemPosition()I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 4061
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFListView;->mChoiceMode:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 4062
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    .line 4065
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getCheckedItemPositions()Landroid/util/SparseBooleanArray;
    .locals 1

    .prologue
    .line 4078
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    .line 4079
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 4081
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChoiceMode()I
    .locals 1

    .prologue
    .line 3949
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFListView;->mChoiceMode:I

    return v0
.end method

.method public getDivider()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 3715
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFListView;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDividerHeight()I
    .locals 1

    .prologue
    .line 3741
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFListView;->mDividerHeight:I

    return v0
.end method

.method protected getExcessScrollDrawInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFListView;->mExcessScrollDrawInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method protected getExcessScrollDrawShift(I)I
    .locals 4
    .parameter "childIndex"

    .prologue
    .line 3170
    iget-boolean v2, p0, Lcom/nemustech/tiffany/widget/TFListView;->mExcessScrollEnabled:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFListView;->mExcessScroll:I

    if-eqz v2, :cond_1

    .line 3171
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFListView;->mExcessScrollEffect:I

    if-nez v2, :cond_1

    .line 3172
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->getHeight()I

    move-result v2

    int-to-float v0, v2

    .line 3173
    .local v0, height:F
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->getExcessScrollDrawInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v2

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFListView;->mExcessScroll:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v0

    invoke-interface {v2, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    mul-float/2addr v2, v0

    float-to-int v1, v2

    .line 3176
    .local v1, shift:I
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFListView;->mExcessScroll:I

    if-gez v2, :cond_0

    .line 3177
    mul-int/lit8 v1, v1, -0x1

    :cond_0
    move v2, v1

    .line 3183
    .end local v0           #height:F
    .end local v1           #shift:I
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getExcessScrollEffect()I
    .locals 1

    .prologue
    .line 221
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFListView;->mExcessScrollEffect:I

    return v0
.end method

.method protected getFloatingViewCount()I
    .locals 1

    .prologue
    .line 2985
    const/4 v0, 0x0

    return v0
.end method

.method public getFooterViewsCount()I
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getHeaderViewsCount()I
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemsCanFocus()Z
    .locals 1

    .prologue
    .line 2960
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFListView;->mItemsCanFocus:Z

    return v0
.end method

.method public getMaxScrollAmount()I
    .locals 3

    .prologue
    .line 283
    const v0, 0x3ea8f5c3

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFListView;->mBottom:I

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFListView;->mTop:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public isItemChecked(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 4044
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    .line 4045
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    .line 4048
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOpaque()Z
    .locals 1

    .prologue
    .line 2968
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFListView;->mCachingStarted:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFListView;->mIsCacheColorOpaque:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFListView;->mDividerIsOpaque:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->hasOpaqueScrollbars()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected layoutChildren()V
    .locals 26

    .prologue
    .line 1448
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mBlockLayoutRequests:Z

    move v10, v0

    .line 1449
    .local v10, blockLayoutRequests:Z
    if-nez v10, :cond_0

    .line 1450
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/nemustech/tiffany/widget/TFListView;->mBlockLayoutRequests:Z

    .line 1456
    :try_start_0
    invoke-super/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->layoutChildren()V

    .line 1458
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->invalidate()V

    .line 1460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object v4, v0

    if-nez v4, :cond_1

    .line 1461
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->resetList()V

    .line 1462
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->invokeOnItemScrollListener()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1702
    if-nez v10, :cond_0

    .line 1703
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/nemustech/tiffany/widget/TFListView;->mBlockLayoutRequests:Z

    .line 1706
    :cond_0
    :goto_0
    return-void

    .line 1466
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mListPadding:Landroid/graphics/Rect;

    move-object v4, v0

    iget v8, v4, Landroid/graphics/Rect;->top:I

    .line 1467
    .local v8, childrenTop:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mBottom:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mTop:I

    move v5, v0

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mListPadding:Landroid/graphics/Rect;

    move-object v5, v0

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int v9, v4, v5

    .line 1469
    .local v9, childrenBottom:I
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->getChildCount()I

    move-result v12

    .line 1471
    .local v12, childCount:I
    const/4 v7, 0x0

    .line 1474
    .local v7, delta:I
    const/4 v5, 0x0

    .line 1475
    .local v5, oldSel:Landroid/view/View;
    const/16 v22, 0x0

    .line 1476
    .local v22, oldFirst:Landroid/view/View;
    const/4 v6, 0x0

    .line 1478
    .local v6, newSel:Landroid/view/View;
    const/16 v16, 0x0

    .line 1481
    .local v16, focusLayoutRestoreView:Landroid/view/View;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mLayoutMode:I

    move v4, v0

    packed-switch v4, :pswitch_data_0

    .line 1496
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mSelectedPosition:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mFirstPosition:I

    move v6, v0

    .end local v6           #newSel:Landroid/view/View;
    sub-int v21, v4, v6

    .line 1497
    .local v21, index:I
    if-ltz v21, :cond_2

    move/from16 v0, v21

    move v1, v12

    if-ge v0, v1, :cond_2

    .line 1498
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1502
    :cond_2
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFListView;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    .line 1504
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mNextSelectedPosition:I

    move v4, v0

    if-ltz v4, :cond_3

    .line 1505
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mNextSelectedPosition:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mSelectedPosition:I

    move v6, v0

    sub-int v7, v4, v6

    .line 1509
    :cond_3
    add-int v4, v21, v7

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1513
    .end local v21           #index:I
    .restart local v6       #newSel:Landroid/view/View;
    :cond_4
    :goto_1
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mDataChanged:Z

    move v13, v0

    .line 1514
    .local v13, dataChanged:Z
    if-eqz v13, :cond_5

    .line 1515
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->handleDataChanged()V

    .line 1520
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mItemCount:I

    move v4, v0

    if-nez v4, :cond_6

    .line 1521
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->resetList()V

    .line 1522
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->invokeOnItemScrollListener()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1702
    if-nez v10, :cond_0

    .line 1703
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/nemustech/tiffany/widget/TFListView;->mBlockLayoutRequests:Z

    goto/16 :goto_0

    .line 1483
    .end local v13           #dataChanged:Z
    :pswitch_1
    :try_start_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mNextSelectedPosition:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mFirstPosition:I

    move v11, v0

    sub-int v21, v4, v11

    .line 1484
    .restart local v21       #index:I
    if-ltz v21, :cond_4

    move/from16 v0, v21

    move v1, v12

    if-ge v0, v1, :cond_4

    .line 1485
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    goto :goto_1

    .line 1524
    .end local v21           #index:I
    .restart local v13       #dataChanged:Z
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mItemCount:I

    move v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object v11, v0

    invoke-interface {v11}, Landroid/widget/ListAdapter;->getCount()I

    move-result v11

    if-eq v4, v11, :cond_8

    .line 1525
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    .end local v5           #oldSel:Landroid/view/View;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The content of the adapter has changed but ListView did not receive a notification. Make sure the content of your adapter is not modified from a background thread, but only from the UI thread. [in ListView("

    .end local v6           #newSel:Landroid/view/View;
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") with Adapter("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1702
    .end local v7           #delta:I
    .end local v8           #childrenTop:I
    .end local v9           #childrenBottom:I
    .end local v12           #childCount:I
    .end local v13           #dataChanged:Z
    .end local v16           #focusLayoutRestoreView:Landroid/view/View;
    .end local v22           #oldFirst:Landroid/view/View;
    :catchall_0
    move-exception v4

    if-nez v10, :cond_7

    .line 1703
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/nemustech/tiffany/widget/TFListView;->mBlockLayoutRequests:Z

    :cond_7
    throw v4

    .line 1532
    .restart local v5       #oldSel:Landroid/view/View;
    .restart local v6       #newSel:Landroid/view/View;
    .restart local v7       #delta:I
    .restart local v8       #childrenTop:I
    .restart local v9       #childrenBottom:I
    .restart local v12       #childCount:I
    .restart local v13       #dataChanged:Z
    .restart local v16       #focusLayoutRestoreView:Landroid/view/View;
    .restart local v22       #oldFirst:Landroid/view/View;
    :cond_8
    :try_start_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mNextSelectedPosition:I

    move v4, v0

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFListView;->setSelectedPositionInt(I)V

    .line 1536
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mFirstPosition:I

    move v14, v0

    .line 1537
    .local v14, firstPosition:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;

    move-object/from16 v24, v0

    .line 1540
    .local v24, recycleBin:Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;
    const/4 v15, 0x0

    .line 1545
    .local v15, focusLayoutRestoreDirectChild:Landroid/view/View;
    if-eqz v13, :cond_a

    .line 1546
    const/16 v20, 0x0

    .local v20, i:I
    :goto_2
    move/from16 v0, v20

    move v1, v12

    if-ge v0, v1, :cond_b

    .line 1549
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mShowAnimationOnDataChange:Z

    move v4, v0

    if-eqz v4, :cond_9

    .line 1550
    add-int v4, v20, v14

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    move-object/from16 v0, v24

    move v1, v4

    move-object v2, v11

    invoke-virtual {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->addShouldRetainView(ILandroid/view/View;)V

    .line 1546
    :goto_3
    add-int/lit8 v20, v20, 0x1

    goto :goto_2

    .line 1552
    :cond_9
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, v24

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    goto :goto_3

    .line 1560
    .end local v20           #i:I
    :cond_a
    move-object/from16 v0, v24

    move v1, v12

    move v2, v14

    invoke-virtual {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->fillActiveViews(II)V

    .line 1567
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->getFocusedChild()Landroid/view/View;

    move-result-object v19

    .line 1568
    .local v19, focusedChild:Landroid/view/View;
    if-eqz v19, :cond_e

    .line 1573
    if-eqz v13, :cond_c

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/nemustech/tiffany/widget/TFListView;->isDirectChildHeaderOrFooter(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1574
    :cond_c
    move-object/from16 v15, v19

    .line 1576
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->findFocus()Landroid/view/View;

    move-result-object v16

    .line 1577
    if-eqz v16, :cond_d

    .line 1579
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->onStartTemporaryDetach()V

    .line 1582
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->requestFocus()Z

    .line 1587
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->detachAllViewsFromParent()V

    .line 1589
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mLayoutMode:I

    move v4, v0

    packed-switch v4, :pswitch_data_1

    .line 1616
    if-nez v12, :cond_17

    .line 1617
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mStackFromBottom:Z

    move v4, v0

    if-nez v4, :cond_16

    .line 1618
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFListView;->lookForSelectablePosition(IZ)I

    .end local v5           #oldSel:Landroid/view/View;
    move-result v23

    .line 1619
    .local v23, position:I
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFListView;->setSelectedPositionInt(I)V

    .line 1620
    move-object/from16 v0, p0

    move v1, v8

    invoke-direct {v0, v1}, Lcom/nemustech/tiffany/widget/TFListView;->fillFromTop(I)Landroid/view/View;

    move-result-object v25

    .line 1641
    .end local v6           #newSel:Landroid/view/View;
    .end local v23           #position:I
    .local v25, sel:Landroid/view/View;
    :goto_4
    invoke-virtual/range {v24 .. v24}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->scrapActiveViews()V

    .line 1643
    if-eqz v25, :cond_1f

    .line 1646
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mItemsCanFocus:Z

    move v4, v0

    if-eqz v4, :cond_1e

    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_1e

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->hasFocus()Z

    move-result v4

    if-nez v4, :cond_1e

    .line 1647
    move-object/from16 v0, v25

    move-object v1, v15

    if-ne v0, v1, :cond_f

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->requestFocus()Z

    move-result v4

    if-nez v4, :cond_10

    :cond_f
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->requestFocus()Z

    move-result v4

    if-eqz v4, :cond_1c

    :cond_10
    const/4 v4, 0x1

    move/from16 v17, v4

    .line 1649
    .local v17, focusWasTaken:Z
    :goto_5
    if-nez v17, :cond_1d

    .line 1653
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->getFocusedChild()Landroid/view/View;

    move-result-object v18

    .line 1654
    .local v18, focused:Landroid/view/View;
    if-eqz v18, :cond_11

    .line 1655
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->clearFocus()V

    .line 1657
    :cond_11
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFListView;->positionSelector(Landroid/view/View;)V

    .line 1665
    .end local v17           #focusWasTaken:Z
    .end local v18           #focused:Landroid/view/View;
    :goto_6
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getTop()I

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFListView;->mSelectedTop:I

    .line 1684
    :cond_12
    :goto_7
    if-eqz v16, :cond_13

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    if-eqz v4, :cond_13

    .line 1686
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->onFinishTemporaryDetach()V

    .line 1689
    :cond_13
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFListView;->mLayoutMode:I

    .line 1690
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/nemustech/tiffany/widget/TFListView;->mDataChanged:Z

    .line 1691
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/nemustech/tiffany/widget/TFListView;->mNeedSync:Z

    .line 1692
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mSelectedPosition:I

    move v4, v0

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFListView;->setNextSelectedPositionInt(I)V

    .line 1694
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->updateScrollIndicators()V

    .line 1696
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mItemCount:I

    move v4, v0

    if-lez v4, :cond_14

    .line 1697
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->checkSelectionChanged()V

    .line 1700
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->invokeOnItemScrollListener()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1702
    if-nez v10, :cond_0

    .line 1703
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/nemustech/tiffany/widget/TFListView;->mBlockLayoutRequests:Z

    goto/16 :goto_0

    .line 1591
    .end local v25           #sel:Landroid/view/View;
    .restart local v5       #oldSel:Landroid/view/View;
    .restart local v6       #newSel:Landroid/view/View;
    :pswitch_2
    if-eqz v6, :cond_15

    .line 1592
    :try_start_4
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v4

    move-object/from16 v0, p0

    move v1, v4

    move v2, v8

    move v3, v9

    invoke-direct {v0, v1, v2, v3}, Lcom/nemustech/tiffany/widget/TFListView;->fillFromSelection(III)Landroid/view/View;

    move-result-object v25

    .restart local v25       #sel:Landroid/view/View;
    goto/16 :goto_4

    .line 1594
    .end local v25           #sel:Landroid/view/View;
    :cond_15
    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    invoke-direct {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFListView;->fillFromMiddle(II)Landroid/view/View;

    move-result-object v25

    .line 1596
    .restart local v25       #sel:Landroid/view/View;
    goto/16 :goto_4

    .line 1598
    .end local v25           #sel:Landroid/view/View;
    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mSyncPosition:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mSpecificTop:I

    move v5, v0

    .end local v5           #oldSel:Landroid/view/View;
    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v25

    .line 1599
    .restart local v25       #sel:Landroid/view/View;
    goto/16 :goto_4

    .line 1601
    .end local v25           #sel:Landroid/view/View;
    .restart local v5       #oldSel:Landroid/view/View;
    :pswitch_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mItemCount:I

    move v4, v0

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    move v1, v4

    move v2, v9

    invoke-direct {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFListView;->fillUp(II)Landroid/view/View;

    .end local v5           #oldSel:Landroid/view/View;
    move-result-object v25

    .line 1602
    .restart local v25       #sel:Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->adjustViewsUpOrDown()V

    goto/16 :goto_4

    .line 1605
    .end local v25           #sel:Landroid/view/View;
    .restart local v5       #oldSel:Landroid/view/View;
    :pswitch_5
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFListView;->mFirstPosition:I

    .line 1606
    move-object/from16 v0, p0

    move v1, v8

    invoke-direct {v0, v1}, Lcom/nemustech/tiffany/widget/TFListView;->fillFromTop(I)Landroid/view/View;

    move-result-object v25

    .line 1607
    .restart local v25       #sel:Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->adjustViewsUpOrDown()V

    goto/16 :goto_4

    .line 1610
    .end local v25           #sel:Landroid/view/View;
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->reconcileSelectedPosition()I

    move-result v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mSpecificTop:I

    move v5, v0

    .end local v5           #oldSel:Landroid/view/View;
    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v25

    .line 1611
    .restart local v25       #sel:Landroid/view/View;
    goto/16 :goto_4

    .end local v25           #sel:Landroid/view/View;
    .restart local v5       #oldSel:Landroid/view/View;
    :pswitch_7
    move-object/from16 v4, p0

    .line 1613
    invoke-direct/range {v4 .. v9}, Lcom/nemustech/tiffany/widget/TFListView;->moveSelection(Landroid/view/View;Landroid/view/View;III)Landroid/view/View;

    move-result-object v25

    .line 1614
    .restart local v25       #sel:Landroid/view/View;
    goto/16 :goto_4

    .line 1622
    .end local v25           #sel:Landroid/view/View;
    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mItemCount:I

    move v4, v0

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFListView;->lookForSelectablePosition(IZ)I

    .end local v5           #oldSel:Landroid/view/View;
    move-result v23

    .line 1623
    .restart local v23       #position:I
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFListView;->setSelectedPositionInt(I)V

    .line 1624
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mItemCount:I

    move v4, v0

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    move v1, v4

    move v2, v9

    invoke-direct {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFListView;->fillUp(II)Landroid/view/View;

    move-result-object v25

    .line 1625
    .restart local v25       #sel:Landroid/view/View;
    goto/16 :goto_4

    .line 1627
    .end local v23           #position:I
    .end local v25           #sel:Landroid/view/View;
    .restart local v5       #oldSel:Landroid/view/View;
    :cond_17
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mSelectedPosition:I

    move v4, v0

    if-ltz v4, :cond_19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mSelectedPosition:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mItemCount:I

    move v6, v0

    .end local v6           #newSel:Landroid/view/View;
    if-ge v4, v6, :cond_19

    .line 1628
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mSelectedPosition:I

    move v4, v0

    if-nez v5, :cond_18

    move v5, v8

    .end local v5           #oldSel:Landroid/view/View;
    :goto_8
    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v25

    .restart local v25       #sel:Landroid/view/View;
    goto/16 :goto_4

    .end local v25           #sel:Landroid/view/View;
    .restart local v5       #oldSel:Landroid/view/View;
    :cond_18
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    goto :goto_8

    .line 1630
    :cond_19
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mFirstPosition:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mItemCount:I

    move v5, v0

    .end local v5           #oldSel:Landroid/view/View;
    if-ge v4, v5, :cond_1b

    .line 1631
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mFirstPosition:I

    move v4, v0

    if-nez v22, :cond_1a

    move v5, v8

    :goto_9
    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v25

    .restart local v25       #sel:Landroid/view/View;
    goto/16 :goto_4

    .end local v25           #sel:Landroid/view/View;
    :cond_1a
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getTop()I

    move-result v5

    goto :goto_9

    .line 1634
    :cond_1b
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v4

    move v2, v8

    invoke-direct {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v25

    .restart local v25       #sel:Landroid/view/View;
    goto/16 :goto_4

    .line 1647
    :cond_1c
    const/4 v4, 0x0

    move/from16 v17, v4

    goto/16 :goto_5

    .line 1659
    .restart local v17       #focusWasTaken:Z
    :cond_1d
    const/4 v4, 0x0

    move-object/from16 v0, v25

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 1660
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mSelectorRect:Landroid/graphics/Rect;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_6

    .line 1663
    .end local v17           #focusWasTaken:Z
    :cond_1e
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFListView;->positionSelector(Landroid/view/View;)V

    goto/16 :goto_6

    .line 1667
    :cond_1f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mTouchMode:I

    move v4, v0

    if-lez v4, :cond_21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mTouchMode:I

    move v4, v0

    const/4 v5, 0x3

    if-ge v4, v5, :cond_21

    .line 1668
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mMotionPosition:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mFirstPosition:I

    move v5, v0

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 1669
    .local v11, child:Landroid/view/View;
    if-eqz v11, :cond_20

    move-object/from16 v0, p0

    move-object v1, v11

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFListView;->positionSelector(Landroid/view/View;)V

    .line 1677
    .end local v11           #child:Landroid/view/View;
    :cond_20
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_12

    if-eqz v16, :cond_12

    .line 1678
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_7

    .line 1671
    :cond_21
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFListView;->mSelectedTop:I

    .line 1672
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mSelectorRect:Landroid/graphics/Rect;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_a

    .line 1481
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 1589
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_2
        :pswitch_4
        :pswitch_6
        :pswitch_3
        :pswitch_7
    .end packed-switch
.end method

.method lookForSelectablePosition(IZ)I
    .locals 4
    .parameter "position"
    .parameter "lookDown"

    .prologue
    const/4 v3, -0x1

    .line 1955
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 1956
    .local v0, adapter:Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v2, v3

    .line 1982
    :goto_0
    return v2

    .line 1960
    :cond_1
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 1961
    .local v1, count:I
    iget-boolean v2, p0, Lcom/nemustech/tiffany/widget/TFListView;->mAreAllItemsSelectable:Z

    if-nez v2, :cond_6

    .line 1962
    if-eqz p2, :cond_2

    .line 1963
    const/4 v2, 0x0

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1964
    :goto_1
    if-ge p1, v1, :cond_3

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1965
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 1968
    :cond_2
    const/4 v2, 0x1

    sub-int v2, v1, v2

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1969
    :goto_2
    if-ltz p1, :cond_3

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1970
    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    .line 1974
    :cond_3
    if-ltz p1, :cond_4

    if-lt p1, v1, :cond_5

    :cond_4
    move v2, v3

    .line 1975
    goto :goto_0

    :cond_5
    move v2, p1

    .line 1977
    goto :goto_0

    .line 1979
    :cond_6
    if-ltz p1, :cond_7

    if-lt p1, v1, :cond_8

    :cond_7
    move v2, v3

    .line 1980
    goto :goto_0

    :cond_8
    move v2, p1

    .line 1982
    goto :goto_0
.end method

.method final measureHeightOfChildren(IIIII)I
    .locals 10
    .parameter "widthMeasureSpec"
    .parameter "startPosition"
    .parameter "endPosition"
    .parameter "maxHeight"
    .parameter "disallowPartialChildPosition"

    .prologue
    .line 1220
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 1221
    .local v0, adapter:Landroid/widget/ListAdapter;
    if-nez v0, :cond_0

    .line 1222
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, Lcom/nemustech/tiffany/widget/TFListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v9

    .line 1274
    :goto_0
    return v8

    .line 1226
    :cond_0
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, Lcom/nemustech/tiffany/widget/TFListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int v7, v8, v9

    .line 1227
    .local v7, returnedHeight:I
    iget v8, p0, Lcom/nemustech/tiffany/widget/TFListView;->mDividerHeight:I

    if-lez v8, :cond_4

    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFListView;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_4

    iget v8, p0, Lcom/nemustech/tiffany/widget/TFListView;->mDividerHeight:I

    move v2, v8

    .line 1230
    .local v2, dividerHeight:I
    :goto_1
    const/4 v4, 0x0

    .line 1235
    .local v4, prevHeightWithoutPartialChild:I
    const/4 v8, -0x1

    if-ne p3, v8, :cond_1

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v8

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    move p3, v8

    .line 1236
    :cond_1
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;

    .line 1237
    .local v5, recycleBin:Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->recycleOnMeasure()Z

    move-result v6

    .line 1239
    .local v6, recyle:Z
    move v3, p2

    .local v3, i:I
    :goto_2
    if-gt v3, p3, :cond_8

    .line 1240
    invoke-virtual {p0, v3}, Lcom/nemustech/tiffany/widget/TFListView;->obtainView(I)Landroid/view/View;

    move-result-object v1

    .line 1242
    .local v1, child:Landroid/view/View;
    invoke-direct {p0, v1, v3, p1}, Lcom/nemustech/tiffany/widget/TFListView;->measureScrapChild(Landroid/view/View;II)V

    .line 1244
    if-lez v3, :cond_2

    .line 1246
    add-int/2addr v7, v2

    .line 1250
    :cond_2
    if-eqz v6, :cond_3

    .line 1251
    invoke-virtual {v5, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 1254
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v7, v8

    .line 1256
    if-lt v7, p4, :cond_6

    .line 1259
    if-ltz p5, :cond_5

    if-le v3, p5, :cond_5

    if-lez v4, :cond_5

    if-eq v7, p4, :cond_5

    move v8, v4

    goto :goto_0

    .line 1227
    .end local v1           #child:Landroid/view/View;
    .end local v2           #dividerHeight:I
    .end local v3           #i:I
    .end local v4           #prevHeightWithoutPartialChild:I
    .end local v5           #recycleBin:Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;
    .end local v6           #recyle:Z
    :cond_4
    const/4 v8, 0x0

    move v2, v8

    goto :goto_1

    .restart local v1       #child:Landroid/view/View;
    .restart local v2       #dividerHeight:I
    .restart local v3       #i:I
    .restart local v4       #prevHeightWithoutPartialChild:I
    .restart local v5       #recycleBin:Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;
    .restart local v6       #recyle:Z
    :cond_5
    move v8, p4

    .line 1259
    goto :goto_0

    .line 1267
    :cond_6
    if-ltz p5, :cond_7

    if-lt v3, p5, :cond_7

    .line 1268
    move v4, v7

    .line 1239
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .end local v1           #child:Landroid/view/View;
    :cond_8
    move v8, v7

    .line 1274
    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 3831
    invoke-super {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->onFinishInflate()V

    .line 3833
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->getChildCount()I

    move-result v0

    .line 3834
    .local v0, count:I
    if-lez v0, :cond_1

    .line 3835
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 3836
    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/nemustech/tiffany/widget/TFListView;->addHeaderView(Landroid/view/View;)V

    .line 3835
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3838
    :cond_0
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->removeAllViews()V

    .line 3840
    .end local v1           #i:I
    :cond_1
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 11
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 3783
    invoke-super {p0, p1, p2, p3}, Lcom/nemustech/tiffany/widget/TFAbsListView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 3785
    const/4 v2, -0x1

    .line 3786
    .local v2, closetChildIndex:I
    if-eqz p1, :cond_2

    if-eqz p3, :cond_2

    .line 3787
    iget v9, p0, Lcom/nemustech/tiffany/widget/TFListView;->mScrollX:I

    iget v10, p0, Lcom/nemustech/tiffany/widget/TFListView;->mScrollY:I

    invoke-virtual {p3, v9, v10}, Landroid/graphics/Rect;->offset(II)V

    .line 3791
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFListView;->mTempRect:Landroid/graphics/Rect;

    .line 3792
    .local v8, otherRect:Landroid/graphics/Rect;
    const v6, 0x7fffffff

    .line 3793
    .local v6, minDistance:I
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->getChildCount()I

    move-result v1

    .line 3794
    .local v1, childCount:I
    iget v4, p0, Lcom/nemustech/tiffany/widget/TFListView;->mFirstPosition:I

    .line 3795
    .local v4, firstPosition:I
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 3797
    .local v0, adapter:Landroid/widget/ListAdapter;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v1, :cond_2

    .line 3799
    add-int v9, v4, v5

    invoke-interface {v0, v9}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v9

    if-nez v9, :cond_1

    .line 3797
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 3803
    :cond_1
    invoke-virtual {p0, v5}, Lcom/nemustech/tiffany/widget/TFListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 3804
    .local v7, other:Landroid/view/View;
    invoke-virtual {v7, v8}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 3805
    invoke-virtual {p0, v7, v8}, Lcom/nemustech/tiffany/widget/TFListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3806
    invoke-static {p3, v8, p2}, Lcom/nemustech/tiffany/widget/TFListView;->getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result v3

    .line 3808
    .local v3, distance:I
    if-ge v3, v6, :cond_0

    .line 3809
    move v6, v3

    .line 3810
    move v2, v5

    goto :goto_1

    .line 3815
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    .end local v1           #childCount:I
    .end local v3           #distance:I
    .end local v4           #firstPosition:I
    .end local v5           #i:I
    .end local v6           #minDistance:I
    .end local v7           #other:Landroid/view/View;
    .end local v8           #otherRect:Landroid/graphics/Rect;
    :cond_2
    if-ltz v2, :cond_3

    .line 3816
    iget v9, p0, Lcom/nemustech/tiffany/widget/TFListView;->mFirstPosition:I

    add-int/2addr v9, v2

    invoke-virtual {p0, v9}, Lcom/nemustech/tiffany/widget/TFListView;->setSelection(I)V

    .line 3820
    :goto_2
    return-void

    .line 3818
    :cond_3
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->requestLayout()V

    goto :goto_2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 2058
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/nemustech/tiffany/widget/TFListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "repeatCount"
    .parameter "event"

    .prologue
    .line 2063
    invoke-direct {p0, p1, p2, p3}, Lcom/nemustech/tiffany/widget/TFListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 2068
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/nemustech/tiffany/widget/TFListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 12
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 1116
    invoke-super {p0, p1, p2}, Lcom/nemustech/tiffany/widget/TFAbsListView;->onMeasure(II)V

    .line 1118
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    .line 1119
    .local v10, widthMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    .line 1120
    .local v9, heightMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    .line 1121
    .local v11, widthSize:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 1123
    .local v4, heightSize:I
    const/4 v8, 0x0

    .line 1124
    .local v8, childWidth:I
    const/4 v7, 0x0

    .line 1126
    .local v7, childHeight:I
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_5

    move v0, v2

    :goto_0
    iput v0, p0, Lcom/nemustech/tiffany/widget/TFListView;->mItemCount:I

    .line 1127
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFListView;->mItemCount:I

    if-lez v0, :cond_1

    if-eqz v10, :cond_0

    if-nez v9, :cond_1

    .line 1129
    :cond_0
    invoke-virtual {p0, v2}, Lcom/nemustech/tiffany/widget/TFListView;->obtainView(I)Landroid/view/View;

    move-result-object v6

    .line 1131
    .local v6, child:Landroid/view/View;
    invoke-direct {p0, v6, v2, p1}, Lcom/nemustech/tiffany/widget/TFListView;->measureScrapChild(Landroid/view/View;II)V

    .line 1133
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 1134
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 1136
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->recycleOnMeasure()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1137
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;

    invoke-virtual {v0, v6}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 1141
    .end local v6           #child:Landroid/view/View;
    :cond_1
    if-nez v10, :cond_2

    .line 1142
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    add-int/2addr v0, v8

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->getVerticalScrollbarWidth()I

    move-result v1

    add-int v11, v0, v1

    .line 1146
    :cond_2
    if-nez v9, :cond_3

    .line 1147
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    add-int/2addr v0, v7

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->getVerticalFadingEdgeLength()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int v4, v0, v1

    .line 1151
    :cond_3
    const/high16 v0, -0x8000

    if-ne v9, v0, :cond_4

    move-object v0, p0

    move v1, p1

    move v5, v3

    .line 1153
    invoke-virtual/range {v0 .. v5}, Lcom/nemustech/tiffany/widget/TFListView;->measureHeightOfChildren(IIIII)I

    move-result v4

    .line 1156
    :cond_4
    invoke-virtual {p0, v11, v4}, Lcom/nemustech/tiffany/widget/TFListView;->setMeasuredDimension(II)V

    .line 1157
    iput p1, p0, Lcom/nemustech/tiffany/widget/TFListView;->mWidthMeasureSpec:I

    .line 1158
    return-void

    .line 1126
    :cond_5
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method protected onRestoreInstanceState2(Landroid/os/Bundle;)V
    .locals 2
    .parameter "b"

    .prologue
    .line 4173
    invoke-super {p0, p1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->onRestoreInstanceState2(Landroid/os/Bundle;)V

    .line 4175
    const-class v1, Lcom/nemustech/tiffany/widget/TFListView$SavedState;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 4176
    const-string v1, "com.nemustech.tiffany.tflistview.savedstate"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/nemustech/tiffany/widget/TFListView$SavedState;

    .line 4178
    .local v0, ss:Lcom/nemustech/tiffany/widget/TFListView$SavedState;
    if-eqz v0, :cond_0

    .line 4179
    iget-object v1, v0, Lcom/nemustech/tiffany/widget/TFListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    iput-object v1, p0, Lcom/nemustech/tiffany/widget/TFListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 4183
    :goto_0
    return-void

    .line 4181
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nemustech/tiffany/widget/TFListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    goto :goto_0
.end method

.method protected onSaveInstanceState2(Landroid/os/Bundle;)V
    .locals 2
    .parameter "b"

    .prologue
    .line 4165
    invoke-super {p0, p1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->onSaveInstanceState2(Landroid/os/Bundle;)V

    .line 4167
    new-instance v0, Lcom/nemustech/tiffany/widget/TFListView$SavedState;

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-direct {v0, v1}, Lcom/nemustech/tiffany/widget/TFListView$SavedState;-><init>(Landroid/util/SparseBooleanArray;)V

    .line 4168
    .local v0, ss:Lcom/nemustech/tiffany/widget/TFListView$SavedState;
    const-string v1, "com.nemustech.tiffany.tflistview.savedstate"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4169
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 3935
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFListView;->mItemsCanFocus:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    if-eqz v0, :cond_0

    .line 3938
    const/4 v0, 0x0

    .line 3940
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method pageScroll(I)Z
    .locals 8
    .parameter "direction"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2177
    const/4 v1, -0x1

    .line 2178
    .local v1, nextPage:I
    const/4 v0, 0x0

    .line 2180
    .local v0, down:Z
    const/16 v3, 0x21

    if-ne p1, v3, :cond_4

    .line 2181
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFListView;->mSelectedPosition:I

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->getChildCount()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr v3, v6

    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2187
    :cond_0
    :goto_0
    if-ltz v1, :cond_5

    .line 2188
    invoke-virtual {p0, v1, v0}, Lcom/nemustech/tiffany/widget/TFListView;->lookForSelectablePosition(IZ)I

    move-result v2

    .line 2189
    .local v2, position:I
    if-ltz v2, :cond_5

    .line 2190
    const/4 v3, 0x4

    iput v3, p0, Lcom/nemustech/tiffany/widget/TFListView;->mLayoutMode:I

    .line 2191
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFListView;->mPaddingTop:I

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->getVerticalFadingEdgeLength()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/nemustech/tiffany/widget/TFListView;->mSpecificTop:I

    .line 2193
    if-eqz v0, :cond_1

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFListView;->mItemCount:I

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->getChildCount()I

    move-result v4

    sub-int/2addr v3, v4

    if-le v2, v3, :cond_1

    .line 2194
    const/4 v3, 0x3

    iput v3, p0, Lcom/nemustech/tiffany/widget/TFListView;->mLayoutMode:I

    .line 2197
    :cond_1
    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 2198
    iput v6, p0, Lcom/nemustech/tiffany/widget/TFListView;->mLayoutMode:I

    .line 2201
    :cond_2
    invoke-virtual {p0, v2}, Lcom/nemustech/tiffany/widget/TFListView;->setSelectionInt(I)V

    .line 2202
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->invokeOnItemScrollListener()V

    .line 2203
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->awakenScrollBars()Z

    move-result v3

    if-nez v3, :cond_3

    .line 2204
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->invalidate()V

    :cond_3
    move v3, v6

    .line 2211
    .end local v2           #position:I
    :goto_1
    return v3

    .line 2182
    :cond_4
    const/16 v3, 0x82

    if-ne p1, v3, :cond_0

    .line 2183
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFListView;->mItemCount:I

    sub-int/2addr v3, v6

    iget v4, p0, Lcom/nemustech/tiffany/widget/TFListView;->mSelectedPosition:I

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->getChildCount()I

    move-result v5

    add-int/2addr v4, v5

    sub-int/2addr v4, v6

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2184
    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    move v3, v7

    .line 2211
    goto :goto_1
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 6
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3970
    const/4 v0, 0x0

    .line 3972
    .local v0, handled:Z
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFListView;->mChoiceMode:I

    if-eqz v2, :cond_1

    .line 3973
    const/4 v0, 0x1

    .line 3975
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFListView;->mChoiceMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 3976
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p2, v4}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    .line 3977
    .local v1, oldValue:Z
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-nez v1, :cond_2

    move v3, v5

    :goto_0
    invoke-virtual {v2, p2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 3986
    :cond_0
    :goto_1
    iput-boolean v5, p0, Lcom/nemustech/tiffany/widget/TFListView;->mDataChanged:Z

    .line 3987
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->rememberSyncState()V

    .line 3988
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->requestLayout()V

    .line 3991
    .end local v1           #oldValue:Z
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/nemustech/tiffany/widget/TFAbsListView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v2

    or-int/2addr v0, v2

    .line 3993
    return v0

    .restart local v1       #oldValue:Z
    :cond_2
    move v3, v4

    .line 3977
    goto :goto_0

    .line 3979
    .end local v1           #oldValue:Z
    :cond_3
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p2, v4}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    .line 3980
    .restart local v1       #oldValue:Z
    if-nez v1, :cond_0

    .line 3981
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 3982
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p2, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_1
.end method

.method protected recycleOnMeasure()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1188
    const/4 v0, 0x1

    return v0
.end method

.method public removeFooterView(Landroid/view/View;)Z
    .locals 2
    .parameter "v"

    .prologue
    .line 465
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 466
    const/4 v0, 0x0

    .line 467
    .local v0, result:Z
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Lcom/nemustech/tiffany/widget/TFHeaderViewListAdapter;

    invoke-virtual {v1, p1}, Lcom/nemustech/tiffany/widget/TFHeaderViewListAdapter;->removeFooter(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 468
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFListView;->mDataSetObserver:Lcom/nemustech/tiffany/widget/TFAdapterView$AdapterDataSetObserver;

    invoke-virtual {v1}, Lcom/nemustech/tiffany/widget/TFAdapterView$AdapterDataSetObserver;->onChanged()V

    .line 469
    const/4 v0, 0x1

    .line 471
    :cond_0
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, Lcom/nemustech/tiffany/widget/TFListView;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    move v1, v0

    .line 474
    .end local v0           #result:Z
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeHeaderView(Landroid/view/View;)Z
    .locals 2
    .parameter "v"

    .prologue
    .line 388
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 389
    const/4 v0, 0x0

    .line 390
    .local v0, result:Z
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Lcom/nemustech/tiffany/widget/TFHeaderViewListAdapter;

    invoke-virtual {v1, p1}, Lcom/nemustech/tiffany/widget/TFHeaderViewListAdapter;->removeHeader(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 391
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFListView;->mDataSetObserver:Lcom/nemustech/tiffany/widget/TFAdapterView$AdapterDataSetObserver;

    invoke-virtual {v1}, Lcom/nemustech/tiffany/widget/TFAdapterView$AdapterDataSetObserver;->onChanged()V

    .line 392
    const/4 v0, 0x1

    .line 394
    :cond_0
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, Lcom/nemustech/tiffany/widget/TFListView;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    move v1, v0

    .line 397
    .end local v0           #result:Z
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 18
    .parameter "child"
    .parameter "rect"
    .parameter "immediate"

    .prologue
    .line 616
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v11, v0

    .line 619
    .local v11, rectTopWithinChild:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v16

    move-object/from16 v0, p2

    move v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 620
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollX()I

    move-result v15

    neg-int v15, v15

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollY()I

    move-result v16

    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p2

    move v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 622
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->getHeight()I

    move-result v8

    .line 623
    .local v8, height:I
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->getScrollY()I

    move-result v10

    .line 624
    .local v10, listUnfadedTop:I
    add-int v9, v10, v8

    .line 625
    .local v9, listUnfadedBottom:I
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->getVerticalFadingEdgeLength()I

    move-result v7

    .line 627
    .local v7, fadingEdge:I
    invoke-direct/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->showingTopFadingEdge()Z

    move-result v15

    if-eqz v15, :cond_1

    .line 629
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mSelectedPosition:I

    move v15, v0

    if-gtz v15, :cond_0

    if-le v11, v7, :cond_1

    .line 630
    :cond_0
    add-int/2addr v10, v7

    .line 634
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->getChildCount()I

    move-result v4

    .line 635
    .local v4, childCount:I
    const/4 v15, 0x1

    sub-int v15, v4, v15

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFListView;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 637
    .local v3, bottomOfBottomChild:I
    invoke-direct/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->showingBottomFadingEdge()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 639
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mSelectedPosition:I

    move v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mItemCount:I

    move/from16 v16, v0

    const/16 v17, 0x1

    sub-int v16, v16, v17

    move v0, v15

    move/from16 v1, v16

    if-lt v0, v1, :cond_2

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v15, v0

    sub-int v16, v3, v7

    move v0, v15

    move/from16 v1, v16

    if-ge v0, v1, :cond_3

    .line 641
    :cond_2
    sub-int/2addr v9, v7

    .line 645
    :cond_3
    const/4 v13, 0x0

    .line 647
    .local v13, scrollYDelta:I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v15, v0

    if-le v15, v9, :cond_7

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v15, v0

    if-le v15, v10, :cond_7

    .line 652
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v15

    if-le v15, v8, :cond_6

    .line 654
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v15, v0

    sub-int/2addr v15, v10

    add-int/2addr v13, v15

    .line 661
    :goto_0
    sub-int v6, v3, v9

    .line 662
    .local v6, distanceToBottom:I
    invoke-static {v13, v6}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 682
    .end local v6           #distanceToBottom:I
    :cond_4
    :goto_1
    if-eqz v13, :cond_9

    const/4 v15, 0x1

    move v12, v15

    .line 683
    .local v12, scroll:Z
    :goto_2
    if-eqz v12, :cond_5

    .line 684
    neg-int v15, v13

    move-object/from16 v0, p0

    move v1, v15

    invoke-direct {v0, v1}, Lcom/nemustech/tiffany/widget/TFListView;->scrollListItemsBy(I)V

    .line 685
    invoke-virtual/range {p0 .. p1}, Lcom/nemustech/tiffany/widget/TFListView;->positionSelector(Landroid/view/View;)V

    .line 686
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v15

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFListView;->mSelectedTop:I

    .line 687
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->invalidate()V

    .line 689
    :cond_5
    return v12

    .line 657
    .end local v12           #scroll:Z
    :cond_6
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v15, v0

    sub-int/2addr v15, v9

    add-int/2addr v13, v15

    goto :goto_0

    .line 663
    :cond_7
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v15, v0

    if-ge v15, v10, :cond_4

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v15, v0

    if-ge v15, v9, :cond_4

    .line 668
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v15

    if-le v15, v8, :cond_8

    .line 670
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v15, v0

    sub-int v15, v9, v15

    sub-int/2addr v13, v15

    .line 677
    :goto_3
    const/4 v15, 0x0

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFListView;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getTop()I

    move-result v14

    .line 678
    .local v14, top:I
    sub-int v5, v14, v10

    .line 679
    .local v5, deltaToTop:I
    invoke-static {v13, v5}, Ljava/lang/Math;->max(II)I

    move-result v13

    goto :goto_1

    .line 673
    .end local v5           #deltaToTop:I
    .end local v14           #top:I
    :cond_8
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v15, v0

    sub-int v15, v10, v15

    sub-int/2addr v13, v15

    goto :goto_3

    .line 682
    :cond_9
    const/4 v15, 0x0

    move v12, v15

    goto :goto_2
.end method

.method resetList()V
    .locals 1

    .prologue
    .line 568
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/nemustech/tiffany/widget/TFListView;->clearRecycledState(Ljava/util/ArrayList;)V

    .line 569
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/nemustech/tiffany/widget/TFListView;->clearRecycledState(Ljava/util/ArrayList;)V

    .line 571
    invoke-super {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->resetList()V

    .line 573
    const/4 v0, 0x0

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFListView;->mLayoutMode:I

    .line 574
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/nemustech/tiffany/widget/TFListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 6
    .parameter "adapter"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 506
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    .line 507
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFListView;->mDataSetObserver:Lcom/nemustech/tiffany/widget/TFAdapterView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 510
    :cond_0
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->resetList()V

    .line 511
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;

    invoke-virtual {v1}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->clear()V

    .line 513
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_1

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 514
    :cond_1
    new-instance v1, Lcom/nemustech/tiffany/widget/TFHeaderViewListAdapter;

    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3, p1}, Lcom/nemustech/tiffany/widget/TFHeaderViewListAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    iput-object v1, p0, Lcom/nemustech/tiffany/widget/TFListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 519
    :goto_0
    const/4 v1, -0x1

    iput v1, p0, Lcom/nemustech/tiffany/widget/TFListView;->mOldSelectedPosition:I

    .line 520
    const-wide/high16 v1, -0x8000

    iput-wide v1, p0, Lcom/nemustech/tiffany/widget/TFListView;->mOldSelectedRowId:J

    .line 521
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_6

    .line 522
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/nemustech/tiffany/widget/TFListView;->mAreAllItemsSelectable:Z

    .line 523
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFListView;->mItemCount:I

    iput v1, p0, Lcom/nemustech/tiffany/widget/TFListView;->mOldItemCount:I

    .line 524
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    iput v1, p0, Lcom/nemustech/tiffany/widget/TFListView;->mItemCount:I

    .line 525
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->checkFocus()V

    .line 527
    new-instance v1, Lcom/nemustech/tiffany/widget/TFAdapterView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Lcom/nemustech/tiffany/widget/TFAdapterView$AdapterDataSetObserver;-><init>(Lcom/nemustech/tiffany/widget/TFAdapterView;)V

    iput-object v1, p0, Lcom/nemustech/tiffany/widget/TFListView;->mDataSetObserver:Lcom/nemustech/tiffany/widget/TFAdapterView$AdapterDataSetObserver;

    .line 528
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFListView;->mDataSetObserver:Lcom/nemustech/tiffany/widget/TFAdapterView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 530
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;

    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->setViewTypeCount(I)V

    .line 533
    iget-boolean v1, p0, Lcom/nemustech/tiffany/widget/TFListView;->mStackFromBottom:Z

    if-eqz v1, :cond_5

    .line 534
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFListView;->mItemCount:I

    sub-int/2addr v1, v4

    invoke-virtual {p0, v1, v5}, Lcom/nemustech/tiffany/widget/TFListView;->lookForSelectablePosition(IZ)I

    move-result v0

    .line 538
    .local v0, position:I
    :goto_1
    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/widget/TFListView;->setSelectedPositionInt(I)V

    .line 539
    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/widget/TFListView;->setNextSelectedPositionInt(I)V

    .line 541
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFListView;->mItemCount:I

    if-nez v1, :cond_2

    .line 543
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->checkSelectionChanged()V

    .line 553
    .end local v0           #position:I
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v1, :cond_3

    .line 554
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 557
    :cond_3
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->requestLayout()V

    .line 558
    return-void

    .line 516
    :cond_4
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFListView;->mAdapter:Landroid/widget/ListAdapter;

    goto :goto_0

    .line 536
    :cond_5
    invoke-virtual {p0, v5, v4}, Lcom/nemustech/tiffany/widget/TFListView;->lookForSelectablePosition(IZ)I

    move-result v0

    .restart local v0       #position:I
    goto :goto_1

    .line 547
    .end local v0           #position:I
    :cond_6
    iput-boolean v4, p0, Lcom/nemustech/tiffany/widget/TFListView;->mAreAllItemsSelectable:Z

    .line 548
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->checkFocus()V

    .line 550
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->checkSelectionChanged()V

    goto :goto_2
.end method

.method public setCacheColorHint(I)V
    .locals 3
    .parameter "color"

    .prologue
    .line 2974
    ushr-int/lit8 v1, p1, 0x18

    const/16 v2, 0xff

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    move v0, v1

    .line 2975
    .local v0, opaque:Z
    :goto_0
    iput-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFListView;->mIsCacheColorOpaque:Z

    .line 2976
    if-eqz v0, :cond_1

    .line 2977
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFListView;->mDividerPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_0

    .line 2978
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/nemustech/tiffany/widget/TFListView;->mDividerPaint:Landroid/graphics/Paint;

    .line 2980
    :cond_0
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFListView;->mDividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2982
    :cond_1
    invoke-super {p0, p1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->setCacheColorHint(I)V

    .line 2983
    return-void

    .line 2974
    .end local v0           #opaque:Z
    :cond_2
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public setChoiceMode(I)V
    .locals 1
    .parameter "choiceMode"

    .prologue
    .line 3962
    iput p1, p0, Lcom/nemustech/tiffany/widget/TFListView;->mChoiceMode:I

    .line 3963
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_0

    .line 3964
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 3966
    :cond_0
    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "divider"

    .prologue
    const/4 v2, 0x0

    .line 3725
    if-eqz p1, :cond_1

    .line 3726
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFListView;->mDividerHeight:I

    .line 3727
    instance-of v0, p1, Landroid/graphics/drawable/ColorDrawable;

    iput-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFListView;->mClipDivider:Z

    .line 3732
    :goto_0
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFListView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 3733
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFListView;->mDividerIsOpaque:Z

    .line 3734
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->requestLayoutIfNecessary()V

    .line 3735
    return-void

    .line 3729
    :cond_1
    iput v2, p0, Lcom/nemustech/tiffany/widget/TFListView;->mDividerHeight:I

    .line 3730
    iput-boolean v2, p0, Lcom/nemustech/tiffany/widget/TFListView;->mClipDivider:Z

    goto :goto_0

    :cond_2
    move v0, v2

    .line 3733
    goto :goto_1
.end method

.method public setDividerHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 3751
    iput p1, p0, Lcom/nemustech/tiffany/widget/TFListView;->mDividerHeight:I

    .line 3752
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->requestLayoutIfNecessary()V

    .line 3753
    return-void
.end method

.method public setExcessScrollEffect(I)V
    .locals 1
    .parameter "effect"

    .prologue
    .line 210
    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    .line 212
    iput p1, p0, Lcom/nemustech/tiffany/widget/TFListView;->mExcessScrollEffect:I

    .line 214
    :cond_0
    return-void
.end method

.method public setFooterDividersEnabled(Z)V
    .locals 0
    .parameter "footerDividersEnabled"

    .prologue
    .line 3777
    iput-boolean p1, p0, Lcom/nemustech/tiffany/widget/TFListView;->mFooterDividersEnabled:Z

    .line 3778
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->invalidate()V

    .line 3779
    return-void
.end method

.method public setHeaderDividersEnabled(Z)V
    .locals 0
    .parameter "headerDividersEnabled"

    .prologue
    .line 3764
    iput-boolean p1, p0, Lcom/nemustech/tiffany/widget/TFListView;->mHeaderDividersEnabled:Z

    .line 3765
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->invalidate()V

    .line 3766
    return-void
.end method

.method public setItemChecked(IZ)V
    .locals 3
    .parameter "position"
    .parameter "value"

    .prologue
    const/4 v2, 0x1

    .line 4005
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFListView;->mChoiceMode:I

    if-nez v0, :cond_1

    .line 4030
    :cond_0
    :goto_0
    return-void

    .line 4009
    :cond_1
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFListView;->mChoiceMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 4010
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 4025
    :cond_2
    :goto_1
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFListView;->mInLayout:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFListView;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    .line 4026
    iput-boolean v2, p0, Lcom/nemustech/tiffany/widget/TFListView;->mDataChanged:Z

    .line 4027
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->rememberSyncState()V

    .line 4028
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->requestLayout()V

    goto :goto_0

    .line 4014
    :cond_3
    if-nez p2, :cond_4

    invoke-virtual {p0, p1}, Lcom/nemustech/tiffany/widget/TFListView;->isItemChecked(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4015
    :cond_4
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 4019
    :cond_5
    if-eqz p2, :cond_2

    .line 4020
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_1
.end method

.method public setItemsCanFocus(Z)V
    .locals 1
    .parameter "itemsCanFocus"

    .prologue
    .line 2949
    iput-boolean p1, p0, Lcom/nemustech/tiffany/widget/TFListView;->mItemsCanFocus:Z

    .line 2950
    if-nez p1, :cond_0

    .line 2951
    const/high16 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/widget/TFListView;->setDescendantFocusability(I)V

    .line 2953
    :cond_0
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 1879
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/nemustech/tiffany/widget/TFListView;->setSelectionFromTop(II)V

    .line 1880
    return-void
.end method

.method public setSelectionAfterHeaderView()V
    .locals 2

    .prologue
    .line 2025
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2026
    .local v0, count:I
    if-lez v0, :cond_0

    .line 2027
    const/4 v1, 0x0

    iput v1, p0, Lcom/nemustech/tiffany/widget/TFListView;->mNextSelectedPosition:I

    .line 2038
    :goto_0
    return-void

    .line 2031
    :cond_0
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    .line 2032
    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/widget/TFListView;->setSelection(I)V

    goto :goto_0

    .line 2034
    :cond_1
    iput v0, p0, Lcom/nemustech/tiffany/widget/TFListView;->mNextSelectedPosition:I

    .line 2035
    const/4 v1, 0x2

    iput v1, p0, Lcom/nemustech/tiffany/widget/TFListView;->mLayoutMode:I

    goto :goto_0
.end method

.method public setSelectionFromTop(II)V
    .locals 2
    .parameter "position"
    .parameter "y"

    .prologue
    .line 1892
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_1

    .line 1916
    :cond_0
    :goto_0
    return-void

    .line 1896
    :cond_1
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1897
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/nemustech/tiffany/widget/TFListView;->lookForSelectablePosition(IZ)I

    move-result p1

    .line 1898
    if-ltz p1, :cond_2

    .line 1899
    invoke-virtual {p0, p1}, Lcom/nemustech/tiffany/widget/TFListView;->setNextSelectedPositionInt(I)V

    .line 1905
    :cond_2
    :goto_1
    if-ltz p1, :cond_0

    .line 1906
    const/4 v0, 0x4

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFListView;->mLayoutMode:I

    .line 1907
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFListView;->mSpecificTop:I

    .line 1909
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFListView;->mNeedSync:Z

    if-eqz v0, :cond_3

    .line 1910
    iput p1, p0, Lcom/nemustech/tiffany/widget/TFListView;->mSyncPosition:I

    .line 1911
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nemustech/tiffany/widget/TFListView;->mSyncRowId:J

    .line 1914
    :cond_3
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->requestLayout()V

    goto :goto_0

    .line 1902
    :cond_4
    iput p1, p0, Lcom/nemustech/tiffany/widget/TFListView;->mResurrectToPosition:I

    goto :goto_1
.end method

.method setSelectionInt(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 1925
    invoke-virtual {p0, p1}, Lcom/nemustech/tiffany/widget/TFListView;->setNextSelectedPositionInt(I)V

    .line 1926
    const/4 v0, 0x0

    .line 1928
    .local v0, awakeScrollbars:Z
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFListView;->mSelectedPosition:I

    .line 1930
    .local v1, selectedPosition:I
    if-ltz v1, :cond_0

    .line 1931
    const/4 v2, 0x1

    sub-int v2, v1, v2

    if-ne p1, v2, :cond_2

    .line 1932
    const/4 v0, 0x1

    .line 1938
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->layoutChildren()V

    .line 1940
    if-eqz v0, :cond_1

    .line 1941
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->awakenScrollBars()Z

    .line 1943
    :cond_1
    return-void

    .line 1933
    :cond_2
    add-int/lit8 v2, v1, 0x1

    if-ne p1, v2, :cond_0

    .line 1934
    const/4 v0, 0x1

    goto :goto_0
.end method
