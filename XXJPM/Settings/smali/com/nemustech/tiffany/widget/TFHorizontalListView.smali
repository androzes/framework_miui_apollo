.class public Lcom/nemustech/tiffany/widget/TFHorizontalListView;
.super Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;
.source "TFHorizontalListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nemustech/tiffany/widget/TFHorizontalListView$1;,
        Lcom/nemustech/tiffany/widget/TFHorizontalListView$SavedState;,
        Lcom/nemustech/tiffany/widget/TFHorizontalListView$ArrowScrollFocusResult;,
        Lcom/nemustech/tiffany/widget/TFHorizontalListView$FixedViewInfo;
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

.field private static final MAX_SCROLL_FACTOR:F = 0.33f

.field private static final MIN_SCROLL_PREVIEW_PIXELS:I = 0x2

.field static final NO_POSITION:I = -0x1


# instance fields
.field private mAreAllItemsSelectable:Z

.field private mArrowScrollFocusResult:Lcom/nemustech/tiffany/widget/TFHorizontalListView$ArrowScrollFocusResult;

.field private mCheckStates:Landroid/util/SparseBooleanArray;

.field private mChoiceMode:I

.field private mClipDivider:Z

.field private mDensityScale:F

.field mDivider:Landroid/graphics/drawable/Drawable;

.field mDividerHeight:I

.field private mExcessScrollDrawInterpolator:Landroid/view/animation/Interpolator;

.field private mExcessScrollEffect:I

.field private mFooterDividersEnabled:Z

.field private mFooterViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nemustech/tiffany/widget/TFHorizontalListView$FixedViewInfo;",
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
            "Lcom/nemustech/tiffany/widget/TFHorizontalListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mItemsCanFocus:Z

.field private final mTempPaint:Landroid/graphics/Paint;

.field private final mTempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 211
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 212
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 218
    invoke-static {}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInstance()Lcom/nemustech/tiffany/widget/TFResourceBroker;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInt(I)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 219
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 225
    invoke-direct {p0, p1, p2, p3}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 135
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 136
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 144
    iput-boolean v8, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mAreAllItemsSelectable:Z

    .line 146
    iput-boolean v7, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mItemsCanFocus:Z

    .line 148
    iput v7, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mChoiceMode:I

    .line 153
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    .line 154
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mTempPaint:Landroid/graphics/Paint;

    .line 158
    new-instance v4, Lcom/nemustech/tiffany/widget/TFHorizontalListView$ArrowScrollFocusResult;

    invoke-direct {v4, v9}, Lcom/nemustech/tiffany/widget/TFHorizontalListView$ArrowScrollFocusResult;-><init>(Lcom/nemustech/tiffany/widget/TFHorizontalListView$1;)V

    iput-object v4, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mArrowScrollFocusResult:Lcom/nemustech/tiffany/widget/TFHorizontalListView$ArrowScrollFocusResult;

    .line 185
    iput v7, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mExcessScrollEffect:I

    .line 228
    iput-boolean v8, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mExcessScrollEnabled:Z

    .line 229
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    iput v4, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mDensityScale:F

    .line 231
    invoke-static {}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInstance()Lcom/nemustech/tiffany/widget/TFResourceBroker;

    move-result-object v4

    const/16 v5, 0x104

    invoke-virtual {v4, v5}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getIntArr(I)[I

    move-result-object v4

    invoke-virtual {p1, p2, v4, p3, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 234
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-static {}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInstance()Lcom/nemustech/tiffany/widget/TFResourceBroker;

    move-result-object v4

    const/16 v5, 0x1c

    invoke-virtual {v4, v5}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInt(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    .line 236
    .local v3, entries:[Ljava/lang/CharSequence;
    if-eqz v3, :cond_0

    .line 237
    new-instance v4, Landroid/widget/ArrayAdapter;

    invoke-static {}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInstance()Lcom/nemustech/tiffany/widget/TFResourceBroker;

    move-result-object v5

    const/4 v6, 0x7

    invoke-virtual {v5, v6}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInt(I)I

    move-result v5

    invoke-direct {v4, p1, v5, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v4}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 241
    :cond_0
    invoke-static {}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInstance()Lcom/nemustech/tiffany/widget/TFResourceBroker;

    move-result-object v4

    const/16 v5, 0x1a

    invoke-virtual {v4, v5}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInt(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 242
    .local v1, d:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    .line 244
    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 248
    :cond_1
    invoke-static {}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInstance()Lcom/nemustech/tiffany/widget/TFResourceBroker;

    move-result-object v4

    const/16 v5, 0x1b

    invoke-virtual {v4, v5}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInt(I)I

    move-result v4

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 250
    .local v2, dividerHeight:I
    if-eqz v2, :cond_2

    .line 251
    invoke-virtual {p0, v2}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->setDividerHeight(I)V

    .line 254
    :cond_2
    invoke-static {}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInstance()Lcom/nemustech/tiffany/widget/TFResourceBroker;

    move-result-object v4

    const/16 v5, 0x1e

    invoke-virtual {v4, v5}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInt(I)I

    move-result v4

    invoke-virtual {v0, v4, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mHeaderDividersEnabled:Z

    .line 255
    invoke-static {}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInstance()Lcom/nemustech/tiffany/widget/TFResourceBroker;

    move-result-object v4

    const/16 v5, 0x1d

    invoke-virtual {v4, v5}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInt(I)I

    move-result v4

    invoke-virtual {v0, v4, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mFooterDividersEnabled:Z

    .line 257
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 264
    invoke-virtual {p0, v9}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 265
    invoke-virtual {p0, v7}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->setDividerHeight(I)V

    .line 266
    return-void
.end method

.method private addViewAbove(Landroid/view/View;I)Landroid/view/View;
    .locals 8
    .parameter "theView"
    .parameter "position"

    .prologue
    const/4 v4, 0x0

    .line 2814
    const/4 v0, 0x1

    sub-int v2, p2, v0

    .line 2815
    .local v2, abovePosition:I
    invoke-virtual {p0, v2}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->obtainView(I)Landroid/view/View;

    move-result-object v1

    .line 2816
    .local v1, view:Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v5, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mDividerHeight:I

    sub-int v3, v0, v5

    .line 2817
    .local v3, edgeOfNewChild:I
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->top:I

    move-object v0, p0

    move v6, v4

    move v7, v4

    invoke-direct/range {v0 .. v7}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->setupChild(Landroid/view/View;IIZIZZ)V

    .line 2818
    return-object v1
.end method

.method private addViewBelow(Landroid/view/View;I)Landroid/view/View;
    .locals 8
    .parameter "theView"
    .parameter "position"

    .prologue
    const/4 v6, 0x0

    .line 2822
    add-int/lit8 v2, p2, 0x1

    .line 2823
    .local v2, belowPosition:I
    invoke-virtual {p0, v2}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->obtainView(I)Landroid/view/View;

    move-result-object v1

    .line 2824
    .local v1, view:Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    iget v4, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mDividerHeight:I

    add-int v3, v0, v4

    .line 2825
    .local v3, edgeOfNewChild:I
    const/4 v4, 0x1

    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->top:I

    move-object v0, p0

    move v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->setupChild(Landroid/view/View;IIZIZZ)V

    .line 2826
    return-object v1
.end method

.method private adjustViewsUpOrDown()V
    .locals 6

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getChildCount()I

    move-result v1

    .line 284
    .local v1, childCount:I
    if-lez v1, :cond_2

    .line 287
    iget-boolean v3, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mStackFromBottom:Z

    if-nez v3, :cond_3

    .line 290
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 291
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int v2, v3, v4

    .line 292
    .local v2, delta:I
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mFirstPosition:I

    if-eqz v3, :cond_0

    .line 295
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mDividerHeight:I

    sub-int/2addr v2, v3

    .line 297
    :cond_0
    if-gez v2, :cond_1

    .line 299
    const/4 v2, 0x0

    .line 317
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 318
    neg-int v3, v2

    invoke-virtual {p0, v3}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->offsetChildrenLeftAndRight(I)V

    .line 321
    .end local v0           #child:Landroid/view/View;
    .end local v2           #delta:I
    :cond_2
    return-void

    .line 303
    :cond_3
    const/4 v3, 0x1

    sub-int v3, v1, v3

    invoke-virtual {p0, v3}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 304
    .restart local v0       #child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    sub-int v2, v3, v4

    .line 306
    .restart local v2       #delta:I
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mFirstPosition:I

    add-int/2addr v3, v1

    iget v4, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mItemCount:I

    if-ge v3, v4, :cond_4

    .line 309
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mDividerHeight:I

    add-int/2addr v2, v3

    .line 312
    :cond_4
    if-lez v2, :cond_1

    .line 313
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private amountToScroll(II)I
    .locals 12
    .parameter "direction"
    .parameter "nextSelectedPosition"

    .prologue
    .line 2428
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getWidth()I

    move-result v10

    iget-object v11, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    sub-int v4, v10, v11

    .line 2429
    .local v4, listBottom:I
    iget-object v10, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v10, Landroid/graphics/Rect;->left:I

    .line 2431
    .local v5, listTop:I
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getChildCount()I

    move-result v7

    .line 2433
    .local v7, numChildren:I
    const/16 v10, 0x42

    if-ne p1, v10, :cond_5

    .line 2434
    const/4 v10, 0x1

    sub-int v3, v7, v10

    .line 2435
    .local v3, indexToMakeVisible:I
    const/4 v10, -0x1

    if-eq p2, v10, :cond_0

    .line 2436
    iget v10, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mFirstPosition:I

    sub-int v3, p2, v10

    .line 2439
    :cond_0
    iget v10, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mFirstPosition:I

    add-int v8, v10, v3

    .line 2440
    .local v8, positionToMakeVisible:I
    invoke-virtual {p0, v3}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 2442
    .local v9, viewToMakeVisible:Landroid/view/View;
    move v1, v4

    .line 2443
    .local v1, goalBottom:I
    iget v10, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mItemCount:I

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    if-ge v8, v10, :cond_1

    .line 2444
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getArrowScrollPreviewLength()I

    move-result v10

    sub-int/2addr v1, v10

    .line 2447
    :cond_1
    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v10

    if-gt v10, v1, :cond_2

    .line 2449
    const/4 v10, 0x0

    .line 2495
    .end local v1           #goalBottom:I
    :goto_0
    return v10

    .line 2452
    .restart local v1       #goalBottom:I
    :cond_2
    const/4 v10, -0x1

    if-eq p2, v10, :cond_3

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v10

    sub-int v10, v1, v10

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getMaxScrollAmount()I

    move-result v11

    if-lt v10, v11, :cond_3

    .line 2455
    const/4 v10, 0x0

    goto :goto_0

    .line 2458
    :cond_3
    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v10

    sub-int v0, v10, v1

    .line 2460
    .local v0, amountToScroll:I
    iget v10, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mFirstPosition:I

    add-int/2addr v10, v7

    iget v11, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mItemCount:I

    if-ne v10, v11, :cond_4

    .line 2462
    const/4 v10, 0x1

    sub-int v10, v7, v10

    invoke-virtual {p0, v10}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v10

    sub-int v6, v10, v4

    .line 2463
    .local v6, max:I
    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2466
    .end local v6           #max:I
    :cond_4
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getMaxScrollAmount()I

    move-result v10

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto :goto_0

    .line 2468
    .end local v0           #amountToScroll:I
    .end local v1           #goalBottom:I
    .end local v3           #indexToMakeVisible:I
    .end local v8           #positionToMakeVisible:I
    .end local v9           #viewToMakeVisible:Landroid/view/View;
    :cond_5
    const/4 v3, 0x0

    .line 2469
    .restart local v3       #indexToMakeVisible:I
    const/4 v10, -0x1

    if-eq p2, v10, :cond_6

    .line 2470
    iget v10, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mFirstPosition:I

    sub-int v3, p2, v10

    .line 2472
    :cond_6
    iget v10, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mFirstPosition:I

    add-int v8, v10, v3

    .line 2473
    .restart local v8       #positionToMakeVisible:I
    invoke-virtual {p0, v3}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 2474
    .restart local v9       #viewToMakeVisible:Landroid/view/View;
    move v2, v5

    .line 2475
    .local v2, goalTop:I
    if-lez v8, :cond_7

    .line 2476
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getArrowScrollPreviewLength()I

    move-result v10

    add-int/2addr v2, v10

    .line 2478
    :cond_7
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v10

    if-lt v10, v2, :cond_8

    .line 2480
    const/4 v10, 0x0

    goto :goto_0

    .line 2483
    :cond_8
    const/4 v10, -0x1

    if-eq p2, v10, :cond_9

    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v10

    sub-int/2addr v10, v2

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getMaxScrollAmount()I

    move-result v11

    if-lt v10, v11, :cond_9

    .line 2486
    const/4 v10, 0x0

    goto :goto_0

    .line 2489
    :cond_9
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v10

    sub-int v0, v2, v10

    .line 2490
    .restart local v0       #amountToScroll:I
    iget v10, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mFirstPosition:I

    if-nez v10, :cond_a

    .line 2492
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v10

    sub-int v6, v5, v10

    .line 2493
    .restart local v6       #max:I
    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2495
    .end local v6           #max:I
    :cond_a
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getMaxScrollAmount()I

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
    .line 2687
    const/4 v0, 0x0

    .line 2688
    .local v0, amountToScroll:I
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 2689
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v2}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2690
    const/16 v2, 0x11

    if-ne p1, v2, :cond_1

    .line 2691
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-ge v2, v3, :cond_0

    .line 2692
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int v0, v2, v3

    .line 2693
    if-lez p3, :cond_0

    .line 2694
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getArrowScrollPreviewLength()I

    move-result v2

    add-int/2addr v0, v2

    .line 2706
    :cond_0
    :goto_0
    return v0

    .line 2698
    :cond_1
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int v1, v2, v3

    .line 2699
    .local v1, listBottom:I
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    if-le v2, v1, :cond_0

    .line 2700
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int v0, v2, v1

    .line 2701
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mItemCount:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge p3, v2, :cond_0

    .line 2702
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getArrowScrollPreviewLength()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0
.end method

.method private arrowScrollFocused(I)Lcom/nemustech/tiffany/widget/TFHorizontalListView$ArrowScrollFocusResult;
    .locals 20
    .parameter "direction"

    .prologue
    .line 2585
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getSelectedView()Landroid/view/View;

    move-result-object v14

    .line 2587
    .local v14, selectedView:Landroid/view/View;
    if-eqz v14, :cond_2

    invoke-virtual {v14}, Landroid/view/View;->hasFocus()Z

    move-result v17

    if-eqz v17, :cond_2

    .line 2588
    invoke-virtual {v14}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v11

    .line 2589
    .local v11, oldFocus:Landroid/view/View;
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object v2, v11

    move/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v10

    .line 2614
    .end local v11           #oldFocus:Landroid/view/View;
    .local v10, newFocus:Landroid/view/View;
    :goto_0
    if-eqz v10, :cond_c

    .line 2615
    move-object/from16 v0, p0

    move-object v1, v10

    invoke-direct {v0, v1}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->positionOfNewFocus(Landroid/view/View;)I

    move-result v12

    .line 2619
    .local v12, positionOfNewFocus:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mSelectedPosition:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mSelectedPosition:I

    move/from16 v17, v0

    move v0, v12

    move/from16 v1, v17

    if-eq v0, v1, :cond_a

    .line 2620
    invoke-direct/range {p0 .. p1}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->lookForSelectablePositionOnScreen(I)I

    move-result v13

    .line 2621
    .local v13, selectablePosition:I
    const/16 v17, -0x1

    move v0, v13

    move/from16 v1, v17

    if-eq v0, v1, :cond_a

    const/16 v17, 0x42

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_0

    if-lt v13, v12, :cond_1

    :cond_0
    const/16 v17, 0x11

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_a

    if-le v13, v12, :cond_a

    .line 2624
    :cond_1
    const/16 v17, 0x0

    .line 2646
    .end local v12           #positionOfNewFocus:I
    .end local v13           #selectablePosition:I
    :goto_1
    return-object v17

    .line 2591
    .end local v10           #newFocus:Landroid/view/View;
    :cond_2
    const/16 v17, 0x42

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_6

    .line 2592
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mFirstPosition:I

    move/from16 v17, v0

    if-lez v17, :cond_3

    const/16 v17, 0x1

    move/from16 v15, v17

    .line 2593
    .local v15, topFadingEdgeShowing:Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    if-eqz v15, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getArrowScrollPreviewLength()I

    move-result v18

    :goto_3
    add-int v8, v17, v18

    .line 2595
    .local v8, listTop:I
    if-eqz v14, :cond_5

    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v17

    move/from16 v0, v17

    move v1, v8

    if-le v0, v1, :cond_5

    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v17

    move/from16 v16, v17

    .line 2599
    .local v16, ySearchPoint:I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v16

    move/from16 v2, v18

    move/from16 v3, v16

    move/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2611
    .end local v8           #listTop:I
    .end local v15           #topFadingEdgeShowing:Z
    :goto_5
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    move/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v10

    .restart local v10       #newFocus:Landroid/view/View;
    goto/16 :goto_0

    .line 2592
    .end local v10           #newFocus:Landroid/view/View;
    .end local v16           #ySearchPoint:I
    :cond_3
    const/16 v17, 0x0

    move/from16 v15, v17

    goto :goto_2

    .line 2593
    .restart local v15       #topFadingEdgeShowing:Z
    :cond_4
    const/16 v18, 0x0

    goto :goto_3

    .restart local v8       #listTop:I
    :cond_5
    move/from16 v16, v8

    .line 2595
    goto :goto_4

    .line 2601
    .end local v8           #listTop:I
    .end local v15           #topFadingEdgeShowing:Z
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mFirstPosition:I

    move/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getChildCount()I

    move-result v18

    add-int v17, v17, v18

    const/16 v18, 0x1

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mItemCount:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_7

    const/16 v17, 0x1

    move/from16 v5, v17

    .line 2603
    .local v5, bottomFadingEdgeShowing:Z
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getWidth()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    if-eqz v5, :cond_8

    invoke-direct/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getArrowScrollPreviewLength()I

    move-result v18

    :goto_7
    sub-int v7, v17, v18

    .line 2605
    .local v7, listBottom:I
    if-eqz v14, :cond_9

    invoke-virtual {v14}, Landroid/view/View;->getRight()I

    move-result v17

    move/from16 v0, v17

    move v1, v7

    if-ge v0, v1, :cond_9

    invoke-virtual {v14}, Landroid/view/View;->getRight()I

    move-result v17

    move/from16 v16, v17

    .line 2609
    .restart local v16       #ySearchPoint:I
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v16

    move/from16 v2, v18

    move/from16 v3, v16

    move/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_5

    .line 2601
    .end local v5           #bottomFadingEdgeShowing:Z
    .end local v7           #listBottom:I
    .end local v16           #ySearchPoint:I
    :cond_7
    const/16 v17, 0x0

    move/from16 v5, v17

    goto :goto_6

    .line 2603
    .restart local v5       #bottomFadingEdgeShowing:Z
    :cond_8
    const/16 v18, 0x0

    goto :goto_7

    .restart local v7       #listBottom:I
    :cond_9
    move/from16 v16, v7

    .line 2605
    goto :goto_8

    .line 2628
    .end local v5           #bottomFadingEdgeShowing:Z
    .end local v7           #listBottom:I
    .restart local v10       #newFocus:Landroid/view/View;
    .restart local v12       #positionOfNewFocus:I
    :cond_a
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object v2, v10

    move v3, v12

    invoke-direct {v0, v1, v2, v3}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->amountToScrollToNewFocus(ILandroid/view/View;I)I

    move-result v6

    .line 2630
    .local v6, focusScroll:I
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getMaxScrollAmount()I

    move-result v9

    .line 2631
    .local v9, maxScrollAmount:I
    if-ge v6, v9, :cond_b

    .line 2633
    move-object v0, v10

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->requestFocus(I)Z

    .line 2634
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mArrowScrollFocusResult:Lcom/nemustech/tiffany/widget/TFHorizontalListView$ArrowScrollFocusResult;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move v1, v12

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFHorizontalListView$ArrowScrollFocusResult;->populate(II)V

    .line 2635
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mArrowScrollFocusResult:Lcom/nemustech/tiffany/widget/TFHorizontalListView$ArrowScrollFocusResult;

    move-object/from16 v17, v0

    goto/16 :goto_1

    .line 2636
    :cond_b
    move-object/from16 v0, p0

    move-object v1, v10

    invoke-direct {v0, v1}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->distanceToView(Landroid/view/View;)I

    move-result v17

    move/from16 v0, v17

    move v1, v9

    if-ge v0, v1, :cond_c

    .line 2641
    move-object v0, v10

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->requestFocus(I)Z

    .line 2642
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mArrowScrollFocusResult:Lcom/nemustech/tiffany/widget/TFHorizontalListView$ArrowScrollFocusResult;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move v1, v12

    move v2, v9

    invoke-virtual {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFHorizontalListView$ArrowScrollFocusResult;->populate(II)V

    .line 2643
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mArrowScrollFocusResult:Lcom/nemustech/tiffany/widget/TFHorizontalListView$ArrowScrollFocusResult;

    move-object/from16 v17, v0

    goto/16 :goto_1

    .line 2646
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

    .line 2216
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getChildCount()I

    move-result v6

    if-gtz v6, :cond_0

    move v6, v7

    .line 2286
    :goto_0
    return v6

    .line 2220
    :cond_0
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getSelectedView()Landroid/view/View;

    move-result-object v5

    .line 2222
    .local v5, selectedView:Landroid/view/View;
    invoke-direct {p0, p1}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->lookForSelectablePositionOnScreen(I)I

    move-result v4

    .line 2223
    .local v4, nextSelectedPosition:I
    invoke-direct {p0, p1, v4}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->amountToScroll(II)I

    move-result v0

    .line 2226
    .local v0, amountToScroll:I
    iget-boolean v6, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mItemsCanFocus:Z

    if-eqz v6, :cond_8

    invoke-direct {p0, p1}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->arrowScrollFocused(I)Lcom/nemustech/tiffany/widget/TFHorizontalListView$ArrowScrollFocusResult;

    move-result-object v6

    move-object v1, v6

    .line 2227
    .local v1, focusResult:Lcom/nemustech/tiffany/widget/TFHorizontalListView$ArrowScrollFocusResult;
    :goto_1
    if-eqz v1, :cond_1

    .line 2228
    invoke-virtual {v1}, Lcom/nemustech/tiffany/widget/TFHorizontalListView$ArrowScrollFocusResult;->getSelectedPosition()I

    move-result v4

    .line 2229
    invoke-virtual {v1}, Lcom/nemustech/tiffany/widget/TFHorizontalListView$ArrowScrollFocusResult;->getAmountToScroll()I

    move-result v0

    .line 2232
    :cond_1
    if-eqz v1, :cond_9

    move v3, v9

    .line 2233
    .local v3, needToRedraw:Z
    :goto_2
    if-eq v4, v8, :cond_3

    .line 2234
    if-eqz v1, :cond_a

    move v6, v9

    :goto_3
    invoke-direct {p0, v5, p1, v4, v6}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->handleNewSelectionChange(Landroid/view/View;IIZ)V

    .line 2235
    invoke-virtual {p0, v4}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->setSelectedPositionInt(I)V

    .line 2236
    invoke-virtual {p0, v4}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->setNextSelectedPositionInt(I)V

    .line 2237
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getSelectedView()Landroid/view/View;

    move-result-object v5

    .line 2238
    iget-boolean v6, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mItemsCanFocus:Z

    if-eqz v6, :cond_2

    if-nez v1, :cond_2

    .line 2241
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    .line 2242
    .local v2, focused:Landroid/view/View;
    if-eqz v2, :cond_2

    .line 2243
    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    .line 2246
    .end local v2           #focused:Landroid/view/View;
    :cond_2
    const/4 v3, 0x1

    .line 2247
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->checkSelectionChanged()V

    .line 2250
    :cond_3
    if-lez v0, :cond_4

    .line 2251
    const/16 v6, 0x11

    if-ne p1, v6, :cond_b

    move v6, v0

    :goto_4
    invoke-direct {p0, v6}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->scrollListItemsBy(I)V

    .line 2252
    const/4 v3, 0x1

    .line 2257
    :cond_4
    iget-boolean v6, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mItemsCanFocus:Z

    if-eqz v6, :cond_5

    if-nez v1, :cond_5

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Landroid/view/View;->hasFocus()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2259
    invoke-virtual {v5}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v2

    .line 2260
    .restart local v2       #focused:Landroid/view/View;
    invoke-direct {p0, v2}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->distanceToView(Landroid/view/View;)I

    move-result v6

    if-lez v6, :cond_5

    .line 2261
    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    .line 2266
    .end local v2           #focused:Landroid/view/View;
    :cond_5
    if-ne v4, v8, :cond_6

    if-eqz v5, :cond_6

    invoke-direct {p0, v5, p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 2268
    const/4 v5, 0x0

    .line 2269
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->hideSelector()V

    .line 2273
    iput v8, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mResurrectToPosition:I

    .line 2276
    :cond_6
    if-eqz v3, :cond_c

    .line 2277
    if-eqz v5, :cond_7

    .line 2278
    invoke-virtual {p0, v5}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->positionSelector(Landroid/view/View;)V

    .line 2279
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v6

    iput v6, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mSelectedTop:I

    .line 2281
    :cond_7
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->invalidate()V

    .line 2282
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->invokeOnItemScrollListener()V

    move v6, v9

    .line 2283
    goto/16 :goto_0

    .line 2226
    .end local v1           #focusResult:Lcom/nemustech/tiffany/widget/TFHorizontalListView$ArrowScrollFocusResult;
    .end local v3           #needToRedraw:Z
    :cond_8
    const/4 v6, 0x0

    move-object v1, v6

    goto :goto_1

    .restart local v1       #focusResult:Lcom/nemustech/tiffany/widget/TFHorizontalListView$ArrowScrollFocusResult;
    :cond_9
    move v3, v7

    .line 2232
    goto :goto_2

    .restart local v3       #needToRedraw:Z
    :cond_a
    move v6, v7

    .line 2234
    goto :goto_3

    .line 2251
    :cond_b
    neg-int v6, v0

    goto :goto_4

    :cond_c
    move v6, v7

    .line 2286
    goto/16 :goto_0
.end method

.method private commonKey(IILandroid/view/KeyEvent;)Z
    .locals 7
    .parameter "keyCode"
    .parameter "count"
    .parameter "event"

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x42

    const/16 v4, 0x11

    const/4 v3, 0x1

    .line 1964
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v2, :cond_0

    move v2, v6

    .line 2057
    :goto_0
    return v2

    .line 1968
    :cond_0
    iget-boolean v2, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mDataChanged:Z

    if-eqz v2, :cond_1

    .line 1969
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->layoutChildren()V

    .line 1972
    :cond_1
    const/4 v1, 0x0

    .line 1973
    .local v1, handled:Z
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 1975
    .local v0, action:I
    if-eq v0, v3, :cond_3

    .line 1976
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mSelectedPosition:I

    if-gez v2, :cond_2

    .line 1977
    sparse-switch p1, :sswitch_data_0

    .line 1988
    :cond_2
    sparse-switch p1, :sswitch_data_1

    .line 2039
    :cond_3
    :goto_1
    if-nez v1, :cond_4

    .line 2040
    invoke-virtual {p0, p1, p2, p3}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->sendToTextFilter(IILandroid/view/KeyEvent;)Z

    move-result v1

    .line 2043
    :cond_4
    if-eqz v1, :cond_a

    move v2, v3

    .line 2044
    goto :goto_0

    .line 1983
    :sswitch_0
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->resurrectSelection()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    .line 1984
    goto :goto_0

    .line 1990
    :sswitch_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1991
    :goto_2
    if-lez p2, :cond_3

    .line 1992
    invoke-virtual {p0, v4}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->arrowScroll(I)Z

    move-result v1

    .line 1993
    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    .line 1996
    :cond_5
    invoke-virtual {p0, v4}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->fullScroll(I)Z

    move-result v1

    .line 1998
    goto :goto_1

    .line 2001
    :sswitch_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v2

    if-nez v2, :cond_6

    .line 2002
    :goto_3
    if-lez p2, :cond_3

    .line 2003
    invoke-virtual {p0, v5}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->arrowScroll(I)Z

    move-result v1

    .line 2004
    add-int/lit8 p2, p2, -0x1

    goto :goto_3

    .line 2007
    :cond_6
    invoke-virtual {p0, v5}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->fullScroll(I)Z

    move-result v1

    .line 2009
    goto :goto_1

    .line 2012
    :sswitch_3
    const/16 v2, 0x21

    invoke-direct {p0, v2}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->handleVerticalFocusWithinListItem(I)Z

    move-result v1

    .line 2013
    goto :goto_1

    .line 2015
    :sswitch_4
    const/16 v2, 0x82

    invoke-direct {p0, v2}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->handleVerticalFocusWithinListItem(I)Z

    move-result v1

    .line 2016
    goto :goto_1

    .line 2020
    :sswitch_5
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mItemCount:I

    if-lez v2, :cond_7

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_7

    .line 2021
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->keyPressed()V

    .line 2023
    :cond_7
    const/4 v1, 0x1

    .line 2024
    goto :goto_1

    .line 2027
    :sswitch_6
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2028
    :cond_8
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v2

    if-nez v2, :cond_9

    .line 2029
    invoke-virtual {p0, v5}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->pageScroll(I)Z

    .line 2033
    :goto_4
    const/4 v1, 0x1

    goto :goto_1

    .line 2031
    :cond_9
    invoke-virtual {p0, v4}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->pageScroll(I)Z

    goto :goto_4

    .line 2046
    :cond_a
    packed-switch v0, :pswitch_data_0

    move v2, v6

    .line 2057
    goto/16 :goto_0

    .line 2048
    :pswitch_0
    invoke-super {p0, p1, p3}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    .line 2051
    :pswitch_1
    invoke-super {p0, p1, p3}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    .line 2054
    :pswitch_2
    invoke-super {p0, p1, p2, p3}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    .line 1977
    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_0
        0x3e -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch

    .line 1988
    :sswitch_data_1
    .sparse-switch
        0x13 -> :sswitch_3
        0x14 -> :sswitch_4
        0x15 -> :sswitch_1
        0x16 -> :sswitch_2
        0x17 -> :sswitch_5
        0x3e -> :sswitch_6
        0x42 -> :sswitch_5
    .end sparse-switch

    .line 2046
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

    .line 1323
    iget v7, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mFirstPosition:I

    add-int/2addr v7, p1

    sub-int v6, v7, v9

    .line 1324
    .local v6, lastPosition:I
    iget v7, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mItemCount:I

    sub-int/2addr v7, v9

    if-ne v6, v7, :cond_2

    if-lez p1, :cond_2

    .line 1327
    sub-int v7, p1, v9

    invoke-virtual {p0, v7}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1330
    .local v5, lastChild:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v4

    .line 1333
    .local v4, lastBottom:I
    iget v7, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mRight:I

    iget v8, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mLeft:I

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    sub-int v1, v7, v8

    .line 1337
    .local v1, end:I
    sub-int v0, v1, v4

    .line 1338
    .local v0, bottomOffset:I
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1339
    .local v2, firstChild:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 1343
    .local v3, firstTop:I
    if-lez v0, :cond_2

    iget v7, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mFirstPosition:I

    if-gtz v7, :cond_0

    iget-object v7, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    if-ge v3, v7, :cond_2

    .line 1344
    :cond_0
    iget v7, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mFirstPosition:I

    if-nez v7, :cond_1

    .line 1346
    iget-object v7, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v3

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1349
    :cond_1
    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->offsetChildrenLeftAndRight(I)V

    .line 1350
    iget v7, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mFirstPosition:I

    if-lez v7, :cond_2

    .line 1353
    iget v7, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mFirstPosition:I

    sub-int/2addr v7, v9

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v8

    iget v9, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mDividerHeight:I

    sub-int/2addr v8, v9

    invoke-direct {p0, v7, v8}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->fillUp(II)Landroid/view/View;

    .line 1355
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->adjustViewsUpOrDown()V

    .line 1360
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

    .line 1372
    iget v8, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mFirstPosition:I

    if-nez v8, :cond_2

    if-lez p1, :cond_2

    .line 1375
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1378
    .local v1, firstChild:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 1381
    .local v2, firstTop:I
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v8, Landroid/graphics/Rect;->left:I

    .line 1384
    .local v6, start:I
    iget v8, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mRight:I

    iget v9, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mLeft:I

    sub-int/2addr v8, v9

    iget-object v9, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    sub-int v0, v8, v9

    .line 1388
    .local v0, end:I
    sub-int v7, v2, v6

    .line 1389
    .local v7, topOffset:I
    sub-int v8, p1, v10

    invoke-virtual {p0, v8}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1390
    .local v4, lastChild:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v3

    .line 1391
    .local v3, lastBottom:I
    iget v8, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mFirstPosition:I

    add-int/2addr v8, p1

    sub-int v5, v8, v10

    .line 1395
    .local v5, lastPosition:I
    if-lez v7, :cond_2

    iget v8, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mItemCount:I

    sub-int/2addr v8, v10

    if-lt v5, v8, :cond_0

    if-le v3, v0, :cond_2

    .line 1396
    :cond_0
    iget v8, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mItemCount:I

    sub-int/2addr v8, v10

    if-ne v5, v8, :cond_1

    .line 1398
    sub-int v8, v3, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 1401
    :cond_1
    neg-int v8, v7

    invoke-virtual {p0, v8}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->offsetChildrenLeftAndRight(I)V

    .line 1402
    iget v8, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mItemCount:I

    sub-int/2addr v8, v10

    if-ge v5, v8, :cond_2

    .line 1405
    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v9

    iget v10, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mDividerHeight:I

    add-int/2addr v9, v10

    invoke-direct {p0, v8, v9}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->fillDown(II)Landroid/view/View;

    .line 1407
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->adjustViewsUpOrDown()V

    .line 1411
    .end local v0           #end:I
    .end local v1           #firstChild:Landroid/view/View;
    .end local v2           #firstTop:I
    .end local v3           #lastBottom:I
    .end local v4           #lastChild:Landroid/view/View;
    .end local v5           #lastPosition:I
    .end local v6           #start:I
    .end local v7           #topOffset:I
    :cond_2
    return-void
.end method

.method private distanceToView(Landroid/view/View;)I
    .locals 4
    .parameter "descendant"

    .prologue
    .line 2716
    const/4 v0, 0x0

    .line 2717
    .local v0, distance:I
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 2718
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v2}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2719
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mRight:I

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mLeft:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int v1, v2, v3

    .line 2720
    .local v1, listBottom:I
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-ge v2, v3, :cond_1

    .line 2721
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int v0, v2, v3

    .line 2725
    :cond_0
    :goto_0
    return v0

    .line 2722
    :cond_1
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-le v2, v1, :cond_0

    .line 2723
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int v0, v2, v1

    goto :goto_0
.end method

.method private fillAboveAndBelow(Landroid/view/View;I)V
    .locals 4
    .parameter "sel"
    .parameter "position"

    .prologue
    const/4 v3, 0x1

    .line 804
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mDividerHeight:I

    .line 805
    .local v0, dividerHeight:I
    iget-boolean v1, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mStackFromBottom:Z

    if-nez v1, :cond_0

    .line 806
    sub-int v1, p2, v3

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->fillUp(II)Landroid/view/View;

    .line 807
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->adjustViewsUpOrDown()V

    .line 808
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    add-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->fillDown(II)Landroid/view/View;

    .line 814
    :goto_0
    return-void

    .line 810
    :cond_0
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    add-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->fillDown(II)Landroid/view/View;

    .line 811
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->adjustViewsUpOrDown()V

    .line 812
    sub-int v1, p2, v3

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->fillUp(II)Landroid/view/View;

    goto :goto_0
.end method

.method private fillDown(II)Landroid/view/View;
    .locals 9
    .parameter "pos"
    .parameter "nextTop"

    .prologue
    const/4 v3, 0x1

    .line 693
    const/4 v8, 0x0

    .line 695
    .local v8, selectedView:Landroid/view/View;
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mRight:I

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mLeft:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int v7, v0, v1

    .line 697
    .local v7, end:I
    :goto_0
    if-ge p2, v7, :cond_2

    iget v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mItemCount:I

    if-ge p1, v0, :cond_2

    .line 699
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mSelectedPosition:I

    if-ne p1, v0, :cond_1

    move v5, v3

    .line 700
    .local v5, selected:Z
    :goto_1
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v6

    .line 702
    .local v6, child:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v0

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mDividerHeight:I

    add-int p2, v0, v1

    .line 703
    if-eqz v5, :cond_0

    .line 704
    move-object v8, v6

    .line 706
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 707
    goto :goto_0

    .line 699
    .end local v5           #selected:Z
    .end local v6           #child:Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    move v5, v0

    goto :goto_1

    .line 709
    :cond_2
    return-object v8
.end method

.method private fillFromMiddle(II)Landroid/view/View;
    .locals 9
    .parameter "childrenLeft"
    .parameter "childrenRight"

    .prologue
    const/4 v3, 0x1

    .line 772
    sub-int v8, p2, p1

    .line 774
    .local v8, width:I
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->reconcileSelectedPosition()I

    move-result v1

    .line 776
    .local v1, position:I
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    move-object v0, p0

    move v2, p1

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v6

    .line 778
    .local v6, sel:Landroid/view/View;
    iput v1, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mFirstPosition:I

    .line 780
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 781
    .local v7, selWidth:I
    if-gt v7, v8, :cond_0

    .line 782
    sub-int v0, v8, v7

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v6, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 785
    :cond_0
    invoke-direct {p0, v6, v1}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->fillAboveAndBelow(Landroid/view/View;I)V

    .line 787
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mStackFromBottom:Z

    if-nez v0, :cond_1

    .line 788
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getChildCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->correctTooHigh(I)V

    .line 793
    :goto_0
    return-object v6

    .line 790
    :cond_1
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getChildCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->correctTooLow(I)V

    goto :goto_0
.end method

.method private fillFromSelection(III)Landroid/view/View;
    .locals 17
    .parameter "selectedTop"
    .parameter "childrenTop"
    .parameter "childrenBottom"

    .prologue
    .line 828
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getHorizontalFadingEdgeLength()I

    move-result v11

    .line 829
    .local v11, fadingEdgeLength:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mSelectedPosition:I

    move v5, v0

    .line 833
    .local v5, selectedPosition:I
    move-object/from16 v0, p0

    move/from16 v1, p2

    move v2, v11

    move v3, v5

    invoke-direct {v0, v1, v2, v3}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getTopSelectionPixel(III)I

    move-result v16

    .line 835
    .local v16, topSelectionPixel:I
    move-object/from16 v0, p0

    move/from16 v1, p3

    move v2, v11

    move v3, v5

    invoke-direct {v0, v1, v2, v3}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getBottomSelectionPixel(III)I

    move-result v10

    .line 838
    .local v10, bottomSelectionPixel:I
    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object v4, v0

    iget v8, v4, Landroid/graphics/Rect;->top:I

    const/4 v9, 0x1

    move-object/from16 v4, p0

    move/from16 v6, p1

    invoke-direct/range {v4 .. v9}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v13

    .line 842
    .local v13, sel:Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getRight()I

    move-result v4

    if-le v4, v10, :cond_1

    .line 845
    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int v14, v4, v16

    .line 849
    .local v14, spaceAbove:I
    invoke-virtual {v13}, Landroid/view/View;->getRight()I

    move-result v4

    sub-int v15, v4, v10

    .line 850
    .local v15, spaceBelow:I
    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 853
    .local v12, offset:I
    neg-int v4, v12

    invoke-virtual {v13, v4}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 869
    .end local v12           #offset:I
    .end local v14           #spaceAbove:I
    .end local v15           #spaceBelow:I
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    move-object v1, v13

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->fillAboveAndBelow(Landroid/view/View;I)V

    .line 871
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mStackFromBottom:Z

    move v4, v0

    if-nez v4, :cond_2

    .line 872
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getChildCount()I

    move-result v4

    move-object/from16 v0, p0

    move v1, v4

    invoke-direct {v0, v1}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->correctTooHigh(I)V

    .line 877
    :goto_1
    return-object v13

    .line 854
    :cond_1
    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v4

    move v0, v4

    move/from16 v1, v16

    if-ge v0, v1, :cond_0

    .line 857
    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int v14, v16, v4

    .line 861
    .restart local v14       #spaceAbove:I
    invoke-virtual {v13}, Landroid/view/View;->getRight()I

    move-result v4

    sub-int v15, v10, v4

    .line 862
    .restart local v15       #spaceBelow:I
    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 865
    .restart local v12       #offset:I
    invoke-virtual {v13, v12}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_0

    .line 874
    .end local v12           #offset:I
    .end local v14           #spaceAbove:I
    .end local v15           #spaceBelow:I
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getChildCount()I

    move-result v4

    move-object/from16 v0, p0

    move v1, v4

    invoke-direct {v0, v1}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->correctTooLow(I)V

    goto :goto_1
.end method

.method private fillFromTop(I)Landroid/view/View;
    .locals 3
    .parameter "nextTop"

    .prologue
    .line 752
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mFirstPosition:I

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mSelectedPosition:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mFirstPosition:I

    .line 753
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mFirstPosition:I

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mItemCount:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mFirstPosition:I

    .line 754
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mFirstPosition:I

    if-gez v0, :cond_0

    .line 755
    const/4 v0, 0x0

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mFirstPosition:I

    .line 757
    :cond_0
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mFirstPosition:I

    invoke-direct {p0, v0, p1}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->fillDown(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private fillSpecific(II)Landroid/view/View;
    .locals 11
    .parameter "position"
    .parameter "top"

    .prologue
    const/4 v3, 0x1

    .line 1275
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mSelectedPosition:I

    if-ne p1, v0, :cond_1

    move v5, v3

    .line 1276
    .local v5, tempIsSelected:Z
    :goto_0
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v10

    .line 1278
    .local v10, temp:Landroid/view/View;
    iput p1, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mFirstPosition:I

    .line 1283
    iget v9, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mDividerHeight:I

    .line 1284
    .local v9, dividerHeight:I
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mStackFromBottom:Z

    if-nez v0, :cond_2

    .line 1285
    sub-int v0, p1, v3

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v1, v9

    invoke-direct {p0, v0, v1}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->fillUp(II)Landroid/view/View;

    move-result-object v6

    .line 1287
    .local v6, above:Landroid/view/View;
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->adjustViewsUpOrDown()V

    .line 1288
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v1

    add-int/2addr v1, v9

    invoke-direct {p0, v0, v1}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->fillDown(II)Landroid/view/View;

    move-result-object v7

    .line 1289
    .local v7, below:Landroid/view/View;
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getChildCount()I

    move-result v8

    .line 1290
    .local v8, childCount:I
    if-lez v8, :cond_0

    .line 1291
    invoke-direct {p0, v8}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->correctTooHigh(I)V

    .line 1304
    :cond_0
    :goto_1
    if-eqz v5, :cond_3

    move-object v0, v10

    .line 1309
    :goto_2
    return-object v0

    .line 1275
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

    .line 1294
    .restart local v5       #tempIsSelected:Z
    .restart local v9       #dividerHeight:I
    .restart local v10       #temp:Landroid/view/View;
    :cond_2
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v1

    add-int/2addr v1, v9

    invoke-direct {p0, v0, v1}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->fillDown(II)Landroid/view/View;

    move-result-object v7

    .line 1296
    .restart local v7       #below:Landroid/view/View;
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->adjustViewsUpOrDown()V

    .line 1297
    sub-int v0, p1, v3

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v1, v9

    invoke-direct {p0, v0, v1}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->fillUp(II)Landroid/view/View;

    move-result-object v6

    .line 1298
    .restart local v6       #above:Landroid/view/View;
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getChildCount()I

    move-result v8

    .line 1299
    .restart local v8       #childCount:I
    if-lez v8, :cond_0

    .line 1300
    invoke-direct {p0, v8}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->correctTooLow(I)V

    goto :goto_1

    .line 1306
    :cond_3
    if-eqz v6, :cond_4

    move-object v0, v6

    .line 1307
    goto :goto_2

    :cond_4
    move-object v0, v7

    .line 1309
    goto :goto_2
.end method

.method private fillUp(II)Landroid/view/View;
    .locals 9
    .parameter "pos"
    .parameter "nextBottom"

    .prologue
    const/4 v3, 0x0

    .line 723
    const/4 v8, 0x0

    .line 725
    .local v8, selectedView:Landroid/view/View;
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v0, Landroid/graphics/Rect;->left:I

    .line 727
    .local v7, end:I
    :goto_0
    if-le p2, v7, :cond_2

    if-ltz p1, :cond_2

    .line 729
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mSelectedPosition:I

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    move v5, v0

    .line 730
    .local v5, selected:Z
    :goto_1
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v6

    .line 731
    .local v6, child:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mDividerHeight:I

    sub-int p2, v0, v1

    .line 732
    if-eqz v5, :cond_0

    .line 733
    move-object v8, v6

    .line 735
    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 736
    goto :goto_0

    .end local v5           #selected:Z
    .end local v6           #child:Landroid/view/View;
    :cond_1
    move v5, v3

    .line 729
    goto :goto_1

    .line 738
    :cond_2
    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mFirstPosition:I

    .line 740
    return-object v8
.end method

.method private getArrowScrollPreviewLength()I
    .locals 2

    .prologue
    .line 2412
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getHorizontalFadingEdgeLength()I

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
    .line 890
    move v0, p1

    .line 891
    .local v0, bottomSelectionPixel:I
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mItemCount:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-eq p3, v1, :cond_0

    .line 892
    sub-int/2addr v0, p2

    .line 894
    :cond_0
    return v0
.end method

.method private getTopSelectionPixel(III)I
    .locals 1
    .parameter "childrenTop"
    .parameter "fadingEdgeLength"
    .parameter "selectedPosition"

    .prologue
    .line 907
    move v0, p1

    .line 908
    .local v0, topSelectionPixel:I
    if-lez p3, :cond_0

    .line 909
    add-int/2addr v0, p2

    .line 911
    :cond_0
    return v0
.end method

.method private handleNewSelectionChange(Landroid/view/View;IIZ)V
    .locals 10
    .parameter "selectedView"
    .parameter "direction"
    .parameter "newSelectedPosition"
    .parameter "newFocusAssigned"

    .prologue
    .line 2304
    const/4 v8, -0x1

    if-ne p3, v8, :cond_0

    .line 2305
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "newSelectedPosition needs to be valid"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 2315
    :cond_0
    const/4 v5, 0x0

    .line 2316
    .local v5, topSelected:Z
    iget v8, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mSelectedPosition:I

    iget v9, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mFirstPosition:I

    sub-int v4, v8, v9

    .line 2317
    .local v4, selectedIndex:I
    iget v8, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mFirstPosition:I

    sub-int v2, p3, v8

    .line 2318
    .local v2, nextSelectedIndex:I
    const/16 v8, 0x11

    if-ne p2, v8, :cond_3

    .line 2319
    move v7, v2

    .line 2320
    .local v7, topViewIndex:I
    move v1, v4

    .line 2321
    .local v1, bottomViewIndex:I
    invoke-virtual {p0, v7}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2322
    .local v6, topView:Landroid/view/View;
    move-object v0, p1

    .line 2323
    .local v0, bottomView:Landroid/view/View;
    const/4 v5, 0x1

    .line 2331
    :goto_0
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getChildCount()I

    move-result v3

    .line 2334
    .local v3, numChildren:I
    if-eqz v6, :cond_1

    .line 2335
    if-nez p4, :cond_4

    if-eqz v5, :cond_4

    const/4 v8, 0x1

    :goto_1
    invoke-virtual {v6, v8}, Landroid/view/View;->setSelected(Z)V

    .line 2336
    invoke-direct {p0, v6, v7, v3}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->measureAndAdjustDown(Landroid/view/View;II)V

    .line 2340
    :cond_1
    if-eqz v0, :cond_2

    .line 2341
    if-nez p4, :cond_5

    if-nez v5, :cond_5

    const/4 v8, 0x1

    :goto_2
    invoke-virtual {v0, v8}, Landroid/view/View;->setSelected(Z)V

    .line 2342
    invoke-direct {p0, v0, v1, v3}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->measureAndAdjustDown(Landroid/view/View;II)V

    .line 2344
    :cond_2
    return-void

    .line 2325
    .end local v0           #bottomView:Landroid/view/View;
    .end local v1           #bottomViewIndex:I
    .end local v3           #numChildren:I
    .end local v6           #topView:Landroid/view/View;
    .end local v7           #topViewIndex:I
    :cond_3
    move v7, v4

    .line 2326
    .restart local v7       #topViewIndex:I
    move v1, v2

    .line 2327
    .restart local v1       #bottomViewIndex:I
    move-object v6, p1

    .line 2328
    .restart local v6       #topView:Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .restart local v0       #bottomView:Landroid/view/View;
    goto :goto_0

    .line 2335
    .restart local v3       #numChildren:I
    :cond_4
    const/4 v8, 0x0

    goto :goto_1

    .line 2341
    :cond_5
    const/4 v8, 0x0

    goto :goto_2
.end method

.method private handleVerticalFocusWithinListItem(I)Z
    .locals 7
    .parameter "direction"

    .prologue
    .line 2151
    const/16 v5, 0x21

    if-eq p1, v5, :cond_0

    const/16 v5, 0x82

    if-eq p1, v5, :cond_0

    .line 2152
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "direction must be one of {View.FOCUS_UP, View.FOCUS_DOWN}"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2156
    :cond_0
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getChildCount()I

    move-result v3

    .line 2157
    .local v3, numChildren:I
    iget-boolean v5, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mItemsCanFocus:Z

    if-eqz v5, :cond_2

    if-lez v3, :cond_2

    iget v5, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mSelectedPosition:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 2158
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getSelectedView()Landroid/view/View;

    move-result-object v4

    .line 2159
    .local v4, selectedView:Landroid/view/View;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/view/View;->hasFocus()Z

    move-result v5

    if-eqz v5, :cond_2

    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_2

    .line 2162
    invoke-virtual {v4}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 2163
    .local v0, currentFocus:Landroid/view/View;
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v5

    check-cast v4, Landroid/view/ViewGroup;

    .end local v4           #selectedView:Landroid/view/View;
    invoke-virtual {v5, v4, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 2165
    .local v2, nextFocus:Landroid/view/View;
    if-eqz v2, :cond_1

    .line 2167
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v5}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 2168
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v5}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2169
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2, v5}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2170
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, v5}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2171
    const/4 v5, 0x1

    .line 2185
    .end local v0           #currentFocus:Landroid/view/View;
    .end local v2           #nextFocus:Landroid/view/View;
    :goto_0
    return v5

    .line 2178
    .restart local v0       #currentFocus:Landroid/view/View;
    .restart local v2       #nextFocus:Landroid/view/View;
    :cond_1
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getRootView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v6, v5, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 2180
    .local v1, globalNextFocus:Landroid/view/View;
    if-eqz v1, :cond_2

    .line 2181
    invoke-direct {p0, v1, p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v5

    goto :goto_0

    .line 2185
    .end local v0           #currentFocus:Landroid/view/View;
    .end local v1           #globalNextFocus:Landroid/view/View;
    .end local v2           #nextFocus:Landroid/view/View;
    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private isDirectChildHeaderOrFooter(Landroid/view/View;)Z
    .locals 7
    .parameter "child"

    .prologue
    const/4 v6, 0x1

    .line 1664
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 1665
    .local v1, headers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/nemustech/tiffany/widget/TFHorizontalListView$FixedViewInfo;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1666
    .local v4, numHeaders:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 1667
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nemustech/tiffany/widget/TFHorizontalListView$FixedViewInfo;

    iget-object v5, v5, Lcom/nemustech/tiffany/widget/TFHorizontalListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne p1, v5, :cond_0

    move v5, v6

    .line 1678
    .end local p0
    :goto_1
    return v5

    .line 1666
    .restart local p0
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1671
    :cond_1
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 1672
    .local v0, footers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/nemustech/tiffany/widget/TFHorizontalListView$FixedViewInfo;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1673
    .local v3, numFooters:I
    const/4 v2, 0x0

    .end local p0
    :goto_2
    if-ge v2, v3, :cond_3

    .line 1674
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView$FixedViewInfo;

    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne p1, v5, :cond_2

    move v5, v6

    .line 1675
    goto :goto_1

    .line 1673
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1678
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

    .line 2669
    if-ne p1, p2, :cond_0

    move v1, v2

    .line 2674
    :goto_0
    return v1

    .line 2673
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2674
    .local v0, theParent:Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/view/View;

    .end local v0           #theParent:Landroid/view/ViewParent;
    invoke-direct {p0, v0, p2}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

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

    .line 2532
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mFirstPosition:I

    .line 2533
    .local v1, firstPosition:I
    const/16 v6, 0x42

    if-ne p1, v6, :cond_4

    .line 2534
    iget v6, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mSelectedPosition:I

    if-eq v6, v7, :cond_0

    iget v6, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mSelectedPosition:I

    add-int/lit8 v6, v6, 0x1

    move v5, v6

    .line 2537
    .local v5, startPos:I
    :goto_0
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    if-lt v5, v6, :cond_1

    move v6, v7

    .line 2572
    :goto_1
    return v6

    .end local v5           #startPos:I
    :cond_0
    move v5, v1

    .line 2534
    goto :goto_0

    .line 2540
    .restart local v5       #startPos:I
    :cond_1
    if-ge v5, v1, :cond_2

    .line 2541
    move v5, v1

    .line 2544
    :cond_2
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getLastVisiblePosition()I

    move-result v3

    .line 2545
    .local v3, lastVisiblePos:I
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 2546
    .local v0, adapter:Landroid/widget/ListAdapter;
    move v4, v5

    .local v4, pos:I
    :goto_2
    if-gt v4, v3, :cond_9

    .line 2547
    invoke-interface {v0, v4}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_3

    sub-int v6, v4, v1

    invoke-virtual {p0, v6}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_3

    move v6, v4

    .line 2549
    goto :goto_1

    .line 2546
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 2553
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    .end local v3           #lastVisiblePos:I
    .end local v4           #pos:I
    .end local v5           #startPos:I
    :cond_4
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getChildCount()I

    move-result v6

    add-int/2addr v6, v1

    sub-int v2, v6, v8

    .line 2554
    .local v2, last:I
    iget v6, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mSelectedPosition:I

    if-eq v6, v7, :cond_5

    iget v6, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mSelectedPosition:I

    sub-int/2addr v6, v8

    move v5, v6

    .line 2557
    .restart local v5       #startPos:I
    :goto_3
    if-gez v5, :cond_6

    move v6, v7

    .line 2558
    goto :goto_1

    .line 2554
    .end local v5           #startPos:I
    :cond_5
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getChildCount()I

    move-result v6

    add-int/2addr v6, v1

    sub-int/2addr v6, v8

    move v5, v6

    goto :goto_3

    .line 2560
    .restart local v5       #startPos:I
    :cond_6
    if-le v5, v2, :cond_7

    .line 2561
    move v5, v2

    .line 2564
    :cond_7
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 2565
    .restart local v0       #adapter:Landroid/widget/ListAdapter;
    move v4, v5

    .restart local v4       #pos:I
    :goto_4
    if-lt v4, v1, :cond_9

    .line 2566
    invoke-interface {v0, v4}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_8

    sub-int v6, v4, v1

    invoke-virtual {p0, v6}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_8

    move v6, v4

    .line 2568
    goto :goto_1

    .line 2565
    :cond_8
    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    .end local v2           #last:I
    :cond_9
    move v6, v7

    .line 2572
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
    .line 1699
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mDataChanged:Z

    if-nez v0, :cond_0

    .line 1701
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecycleBin;

    invoke-virtual {v0, p1}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecycleBin;->getActiveView(I)Landroid/view/View;

    move-result-object v1

    .line 1702
    .local v1, child:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 1710
    const/4 v7, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->setupChild(Landroid/view/View;IIZIZZ)V

    move-object v8, v1

    .line 1722
    .end local v1           #child:Landroid/view/View;
    .local v8, child:Landroid/view/View;
    :goto_0
    return-object v8

    .line 1717
    .end local v8           #child:Landroid/view/View;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->obtainView(I)Landroid/view/View;

    move-result-object v1

    .line 1720
    .restart local v1       #child:Landroid/view/View;
    const/4 v7, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->setupChild(Landroid/view/View;IIZIZZ)V

    move-object v8, v1

    .line 1722
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
    .line 2354
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 2355
    .local v1, oldWidth:I
    invoke-direct {p0, p1}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->measureItem(Landroid/view/View;)V

    .line 2356
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    if-eq v3, v1, :cond_0

    .line 2358
    invoke-direct {p0, p1}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->relayoutMeasuredItem(Landroid/view/View;)V

    .line 2361
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int v2, v3, v1

    .line 2362
    .local v2, widthDelta:I
    add-int/lit8 v0, p2, 0x1

    .local v0, i:I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 2363
    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 2362
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2366
    .end local v0           #i:I
    .end local v2           #widthDelta:I
    :cond_0
    return-void
.end method

.method private measureItem(Landroid/view/View;)V
    .locals 8
    .parameter "child"

    .prologue
    const/4 v7, 0x0

    .line 2374
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 2375
    .local v3, p:Landroid/view/ViewGroup$LayoutParams;
    if-nez v3, :cond_0

    .line 2376
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .end local v3           #p:Landroid/view/ViewGroup$LayoutParams;
    const/4 v4, -0x2

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 2381
    .restart local v3       #p:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    iget v4, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mHeightMeasureSpec:I

    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    iget v6, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v4, v5, v6}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    .line 2383
    .local v0, childHeightSpec:I
    iget v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2385
    .local v2, lpWidth:I
    if-lez v2, :cond_1

    .line 2386
    const/high16 v4, 0x4000

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 2390
    .local v1, childWidthSpec:I
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 2391
    return-void

    .line 2388
    .end local v1           #childWidthSpec:I
    :cond_1
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .restart local v1       #childWidthSpec:I
    goto :goto_0
.end method

.method private measureScrapChild(Landroid/view/View;II)V
    .locals 7
    .parameter "child"
    .parameter "position"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v6, 0x0

    .line 1131
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$LayoutParams;

    .line 1132
    .local v3, p:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$LayoutParams;
    if-nez v3, :cond_0

    .line 1133
    new-instance v3, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$LayoutParams;

    .end local v3           #p:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$LayoutParams;
    const/4 v4, -0x2

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5, v6}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$LayoutParams;-><init>(III)V

    .line 1135
    .restart local v3       #p:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$LayoutParams;
    invoke-virtual {p1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1137
    :cond_0
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, p2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v4

    iput v4, v3, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$LayoutParams;->viewType:I

    .line 1139
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    iget v5, v3, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$LayoutParams;->height:I

    invoke-static {p3, v4, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    .line 1142
    .local v0, childHeightSpec:I
    iget v2, v3, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$LayoutParams;->width:I

    .line 1144
    .local v2, lpWidth:I
    if-lez v2, :cond_1

    .line 1145
    const/high16 v4, 0x4000

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1149
    .local v1, childWidthSpec:I
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1150
    return-void

    .line 1147
    .end local v1           #childWidthSpec:I
    :cond_1
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .restart local v1       #childWidthSpec:I
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
    .line 934
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getVerticalFadingEdgeLength()I

    move-result v12

    .line 935
    .local v12, fadingEdgeLength:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mSelectedPosition:I

    move/from16 v17, v0

    .line 939
    .local v17, selectedPosition:I
    move-object/from16 v0, p0

    move/from16 v1, p4

    move v2, v12

    move/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getTopSelectionPixel(III)I

    move-result v20

    .line 941
    .local v20, topSelectionPixel:I
    move-object/from16 v0, p0

    move/from16 v1, p4

    move v2, v12

    move/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getBottomSelectionPixel(III)I

    move-result v10

    .line 944
    .local v10, bottomSelectionPixel:I
    if-lez p3, :cond_2

    .line 966
    const/4 v4, 0x1

    sub-int v5, v17, v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v6

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object v4, v0

    iget v8, v4, Landroid/graphics/Rect;->top:I

    const/4 v9, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object p1

    .line 969
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mDividerHeight:I

    move v11, v0

    .line 972
    .local v11, dividerHeight:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRight()I

    move-result v4

    add-int v6, v4, v11

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object v4, v0

    iget v8, v4, Landroid/graphics/Rect;->top:I

    const/4 v9, 0x1

    move-object/from16 v4, p0

    move/from16 v5, v17

    invoke-direct/range {v4 .. v9}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v16

    .line 976
    .local v16, sel:Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getRight()I

    move-result v4

    if-le v4, v10, :cond_0

    .line 979
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int v18, v4, v20

    .line 982
    .local v18, spaceAbove:I
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getRight()I

    move-result v4

    sub-int v19, v4, v10

    .line 985
    .local v19, spaceBelow:I
    sub-int v4, p5, p4

    div-int/lit8 v13, v4, 0x2

    .line 986
    .local v13, halfVerticalSpace:I
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 987
    .local v15, offset:I
    invoke-static {v15, v13}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 990
    neg-int v4, v15

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 992
    neg-int v4, v15

    move-object/from16 v0, v16

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 996
    .end local v13           #halfVerticalSpace:I
    .end local v15           #offset:I
    .end local v18           #spaceAbove:I
    .end local v19           #spaceBelow:I
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mStackFromBottom:Z

    move v4, v0

    if-nez v4, :cond_1

    .line 997
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mSelectedPosition:I

    move v4, v0

    const/4 v5, 0x2

    sub-int/2addr v4, v5

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int/2addr v5, v11

    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->fillUp(II)Landroid/view/View;

    .line 998
    invoke-direct/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->adjustViewsUpOrDown()V

    .line 999
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mSelectedPosition:I

    move v4, v0

    add-int/lit8 v4, v4, 0x1

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getRight()I

    move-result v5

    add-int/2addr v5, v11

    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->fillDown(II)Landroid/view/View;

    .line 1080
    .end local v11           #dividerHeight:I
    :goto_0
    return-object v16

    .line 1001
    .restart local v11       #dividerHeight:I
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mSelectedPosition:I

    move v4, v0

    add-int/lit8 v4, v4, 0x1

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getRight()I

    move-result v5

    add-int/2addr v5, v11

    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->fillDown(II)Landroid/view/View;

    .line 1002
    invoke-direct/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->adjustViewsUpOrDown()V

    .line 1003
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mSelectedPosition:I

    move v4, v0

    const/4 v5, 0x2

    sub-int/2addr v4, v5

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int/2addr v5, v11

    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->fillUp(II)Landroid/view/View;

    goto :goto_0

    .line 1005
    .end local v11           #dividerHeight:I
    .end local v16           #sel:Landroid/view/View;
    :cond_2
    if-gez p3, :cond_5

    .line 1026
    if-eqz p2, :cond_4

    .line 1028
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v6

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object v4, v0

    iget v8, v4, Landroid/graphics/Rect;->top:I

    const/4 v9, 0x1

    move-object/from16 v4, p0

    move/from16 v5, v17

    invoke-direct/range {v4 .. v9}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v16

    .line 1038
    .restart local v16       #sel:Landroid/view/View;
    :goto_1
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    move-result v4

    move v0, v4

    move/from16 v1, v20

    if-ge v0, v1, :cond_3

    .line 1040
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int v18, v20, v4

    .line 1043
    .restart local v18       #spaceAbove:I
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getRight()I

    move-result v4

    sub-int v19, v10, v4

    .line 1046
    .restart local v19       #spaceBelow:I
    sub-int v4, p5, p4

    div-int/lit8 v13, v4, 0x2

    .line 1047
    .restart local v13       #halfVerticalSpace:I
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 1048
    .restart local v15       #offset:I
    invoke-static {v15, v13}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 1051
    move-object/from16 v0, v16

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1055
    .end local v13           #halfVerticalSpace:I
    .end local v15           #offset:I
    .end local v18           #spaceAbove:I
    .end local v19           #spaceBelow:I
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->fillAboveAndBelow(Landroid/view/View;I)V

    goto :goto_0

    .line 1033
    .end local v16           #sel:Landroid/view/View;
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v6

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object v4, v0

    iget v8, v4, Landroid/graphics/Rect;->top:I

    const/4 v9, 0x1

    move-object/from16 v4, p0

    move/from16 v5, v17

    invoke-direct/range {v4 .. v9}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v16

    .restart local v16       #sel:Landroid/view/View;
    goto :goto_1

    .line 1058
    .end local v16           #sel:Landroid/view/View;
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v6

    .line 1063
    .local v6, oldTop:I
    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object v4, v0

    iget v8, v4, Landroid/graphics/Rect;->top:I

    const/4 v9, 0x1

    move-object/from16 v4, p0

    move/from16 v5, v17

    invoke-direct/range {v4 .. v9}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v16

    .line 1066
    .restart local v16       #sel:Landroid/view/View;
    move v0, v6

    move/from16 v1, p4

    if-ge v0, v1, :cond_6

    .line 1069
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getRight()I

    move-result v14

    .line 1070
    .local v14, newBottom:I
    add-int/lit8 v4, p4, 0x14

    if-ge v14, v4, :cond_6

    .line 1072
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int v4, p4, v4

    move-object/from16 v0, v16

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1077
    .end local v14           #newBottom:I
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->fillAboveAndBelow(Landroid/view/View;I)V

    goto/16 :goto_0
.end method

.method private positionOfNewFocus(Landroid/view/View;)I
    .locals 5
    .parameter "newFocus"

    .prologue
    .line 2654
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getChildCount()I

    move-result v2

    .line 2655
    .local v2, numChildren:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 2656
    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2657
    .local v0, child:Landroid/view/View;
    invoke-direct {p0, p1, v0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2658
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mFirstPosition:I

    add-int/2addr v3, v1

    return v3

    .line 2655
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2661
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
    .line 2399
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 2400
    .local v5, w:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 2401
    .local v4, h:I
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 2402
    .local v1, childLeft:I
    add-int v2, v1, v5

    .line 2403
    .local v2, childRight:I
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v6, Landroid/graphics/Rect;->top:I

    .line 2404
    .local v3, childTop:I
    add-int v0, v3, v4

    .line 2405
    .local v0, childBottom:I
    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/view/View;->layout(IIII)V

    .line 2406
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
            "Lcom/nemustech/tiffany/widget/TFHorizontalListView$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 391
    .local p2, where:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/nemustech/tiffany/widget/TFHorizontalListView$FixedViewInfo;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 392
    .local v2, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 393
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nemustech/tiffany/widget/TFHorizontalListView$FixedViewInfo;

    .line 394
    .local v1, info:Lcom/nemustech/tiffany/widget/TFHorizontalListView$FixedViewInfo;
    iget-object v3, v1, Lcom/nemustech/tiffany/widget/TFHorizontalListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne v3, p1, :cond_1

    .line 395
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 399
    .end local v1           #info:Lcom/nemustech/tiffany/widget/TFHorizontalListView$FixedViewInfo;
    :cond_0
    return-void

    .line 392
    .restart local v1       #info:Lcom/nemustech/tiffany/widget/TFHorizontalListView$FixedViewInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private scrollListItemsBy(I)V
    .locals 12
    .parameter "amount"

    .prologue
    .line 2736
    invoke-virtual {p0, p1}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->offsetChildrenLeftAndRight(I)V

    .line 2738
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getWidth()I

    move-result v9

    iget-object v10, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    sub-int v5, v9, v10

    .line 2739
    .local v5, listBottom:I
    iget-object v9, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v9, Landroid/graphics/Rect;->left:I

    .line 2740
    .local v6, listTop:I
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecycleBin;

    .line 2742
    .local v8, recycleBin:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecycleBin;
    if-gez p1, :cond_3

    .line 2746
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getChildCount()I

    move-result v7

    .line 2747
    .local v7, numChildren:I
    const/4 v9, 0x1

    sub-int v9, v7, v9

    invoke-virtual {p0, v9}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2748
    .local v1, last:Landroid/view/View;
    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v9

    if-ge v9, v5, :cond_0

    .line 2749
    iget v9, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mFirstPosition:I

    add-int/2addr v9, v7

    const/4 v10, 0x1

    sub-int v3, v9, v10

    .line 2750
    .local v3, lastVisiblePosition:I
    iget v9, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mItemCount:I

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    if-ge v3, v9, :cond_0

    .line 2751
    invoke-direct {p0, v1, v3}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->addViewBelow(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 2752
    add-int/lit8 v7, v7, 0x1

    .line 2756
    goto :goto_0

    .line 2761
    .end local v3           #lastVisiblePosition:I
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v9

    if-ge v9, v5, :cond_1

    .line 2762
    const-string v9, "rhoon"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "scrollListItemsBy("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "), offset:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v11

    sub-int v11, v5, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2763
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v9

    sub-int v9, v5, v9

    invoke-virtual {p0, v9}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->offsetChildrenLeftAndRight(I)V

    .line 2767
    :cond_1
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2768
    .local v0, first:Landroid/view/View;
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v9, v6, :cond_7

    .line 2769
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$LayoutParams;

    .line 2770
    .local v4, layoutParams:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$LayoutParams;
    iget v9, v4, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$LayoutParams;->viewType:I

    invoke-virtual {v8, v9}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 2771
    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->removeViewInLayout(Landroid/view/View;)V

    .line 2772
    invoke-virtual {v8, v0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 2776
    :goto_2
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2777
    iget v9, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mFirstPosition:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mFirstPosition:I

    goto :goto_1

    .line 2774
    :cond_2
    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->detachViewFromParent(Landroid/view/View;)V

    goto :goto_2

    .line 2781
    .end local v0           #first:Landroid/view/View;
    .end local v1           #last:Landroid/view/View;
    .end local v4           #layoutParams:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$LayoutParams;
    .end local v7           #numChildren:I
    :cond_3
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2784
    .restart local v0       #first:Landroid/view/View;
    :goto_3
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v9

    if-le v9, v6, :cond_4

    iget v9, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mFirstPosition:I

    if-lez v9, :cond_4

    .line 2785
    iget v9, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mFirstPosition:I

    invoke-direct {p0, v0, v9}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->addViewAbove(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 2786
    iget v9, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mFirstPosition:I

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    iput v9, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mFirstPosition:I

    goto :goto_3

    .line 2791
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v9

    if-le v9, v6, :cond_5

    .line 2792
    const-string v9, "rhoon"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "scrollListItemsBy("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "), offset:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v11

    sub-int v11, v6, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2793
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v9

    sub-int v9, v6, v9

    invoke-virtual {p0, v9}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->offsetChildrenLeftAndRight(I)V

    .line 2796
    :cond_5
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getChildCount()I

    move-result v9

    const/4 v10, 0x1

    sub-int v2, v9, v10

    .line 2797
    .local v2, lastIndex:I
    invoke-virtual {p0, v2}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2800
    .restart local v1       #last:Landroid/view/View;
    :goto_4
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v9

    if-le v9, v5, :cond_7

    .line 2801
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$LayoutParams;

    .line 2802
    .restart local v4       #layoutParams:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$LayoutParams;
    iget v9, v4, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$LayoutParams;->viewType:I

    invoke-virtual {v8, v9}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 2803
    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->removeViewInLayout(Landroid/view/View;)V

    .line 2804
    invoke-virtual {v8, v1}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 2808
    :goto_5
    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2809
    goto :goto_4

    .line 2806
    :cond_6
    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->detachViewFromParent(Landroid/view/View;)V

    goto :goto_5

    .line 2811
    .end local v2           #lastIndex:I
    .end local v4           #layoutParams:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$LayoutParams;
    :cond_7
    return-void
.end method

.method private setupChild(Landroid/view/View;IIZIZZ)V
    .locals 20
    .parameter "child"
    .parameter "position"
    .parameter "x"
    .parameter "flowDown"
    .parameter "childrenTop"
    .parameter "selected"
    .parameter "recycled"

    .prologue
    .line 1741
    if-eqz p6, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->shouldShowSelector()Z

    move-result v17

    if-eqz v17, :cond_6

    const/16 v17, 0x1

    move/from16 v11, v17

    .line 1742
    .local v11, isSelected:Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isSelected()Z

    move-result v17

    move v0, v11

    move/from16 v1, v17

    if-eq v0, v1, :cond_7

    const/16 v17, 0x1

    move/from16 v15, v17

    .line 1743
    .local v15, updateChildSelected:Z
    :goto_1
    if-eqz p7, :cond_0

    if-nez v15, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v17

    if-eqz v17, :cond_8

    :cond_0
    const/16 v17, 0x1

    move/from16 v13, v17

    .line 1747
    .local v13, needToMeasure:Z
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$LayoutParams;

    .line 1748
    .local v14, p:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$LayoutParams;
    if-nez v14, :cond_1

    .line 1749
    new-instance v14, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$LayoutParams;

    .end local v14           #p:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$LayoutParams;
    const/16 v17, -0x2

    const/16 v18, -0x1

    const/16 v19, 0x0

    move-object v0, v14

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$LayoutParams;-><init>(III)V

    .line 1752
    .restart local v14       #p:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$LayoutParams;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v17

    move/from16 v0, v17

    move-object v1, v14

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$LayoutParams;->viewType:I

    .line 1754
    if-nez p7, :cond_2

    move-object v0, v14

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$LayoutParams;->recycledHeaderFooter:Z

    move/from16 v17, v0

    if-eqz v17, :cond_a

    move-object v0, v14

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$LayoutParams;->viewType:I

    move/from16 v17, v0

    const/16 v18, -0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_a

    .line 1756
    :cond_2
    if-eqz p4, :cond_9

    const/16 v17, -0x1

    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    move-object v3, v14

    invoke-virtual {v0, v1, v2, v3}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1764
    :goto_4
    if-eqz v15, :cond_3

    .line 1765
    move-object/from16 v0, p1

    move v1, v11

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 1768
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mChoiceMode:I

    move/from16 v17, v0

    if-eqz v17, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v17, v0

    if-eqz v17, :cond_4

    .line 1769
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/Checkable;

    move/from16 v17, v0

    if-eqz v17, :cond_4

    .line 1770
    move-object/from16 v0, p1

    check-cast v0, Landroid/widget/Checkable;

    move-object/from16 p6, v0

    .end local p6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v17

    move-object/from16 v0, p6

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 1774
    :cond_4
    if-eqz v13, :cond_e

    .line 1775
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mHeightMeasureSpec:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move-object v0, v14

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$LayoutParams;->height:I

    move/from16 v19, v0

    invoke-static/range {v17 .. v19}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v6

    .line 1777
    .local v6, childHeightSpec:I
    iget v12, v14, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$LayoutParams;->width:I

    .line 1779
    .local v12, lpWidth:I
    if-lez v12, :cond_d

    .line 1780
    const/high16 v17, 0x4000

    move v0, v12

    move/from16 v1, v17

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 1784
    .local v9, childWidthSpec:I
    :goto_5
    move-object/from16 v0, p1

    move v1, v9

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 1789
    .end local v6           #childHeightSpec:I
    .end local v9           #childWidthSpec:I
    .end local v12           #lpWidth:I
    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    .line 1790
    .local v16, w:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 1791
    .local v10, h:I
    if-eqz p4, :cond_f

    move/from16 v7, p3

    .line 1793
    .local v7, childLeft:I
    :goto_7
    if-eqz v13, :cond_10

    .line 1794
    add-int v5, p5, v10

    .line 1795
    .local v5, childBottom:I
    add-int v8, v7, v16

    .line 1796
    .local v8, childRight:I
    move-object/from16 v0, p1

    move v1, v7

    move/from16 v2, p5

    move v3, v8

    move v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 1802
    .end local v5           #childBottom:I
    .end local v8           #childRight:I
    :goto_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mCachingStarted:Z

    move/from16 v17, v0

    if-eqz v17, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v17

    if-nez v17, :cond_5

    .line 1803
    const/16 v17, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 1805
    :cond_5
    return-void

    .line 1741
    .end local v7           #childLeft:I
    .end local v10           #h:I
    .end local v11           #isSelected:Z
    .end local v13           #needToMeasure:Z
    .end local v14           #p:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$LayoutParams;
    .end local v15           #updateChildSelected:Z
    .end local v16           #w:I
    .restart local p6
    :cond_6
    const/16 v17, 0x0

    move/from16 v11, v17

    goto/16 :goto_0

    .line 1742
    .restart local v11       #isSelected:Z
    :cond_7
    const/16 v17, 0x0

    move/from16 v15, v17

    goto/16 :goto_1

    .line 1743
    .restart local v15       #updateChildSelected:Z
    :cond_8
    const/16 v17, 0x0

    move/from16 v13, v17

    goto/16 :goto_2

    .line 1756
    .restart local v13       #needToMeasure:Z
    .restart local v14       #p:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$LayoutParams;
    :cond_9
    const/16 v17, 0x0

    goto/16 :goto_3

    .line 1758
    :cond_a
    move-object v0, v14

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$LayoutParams;->viewType:I

    move/from16 v17, v0

    const/16 v18, -0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    .line 1759
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object v1, v14

    iput-boolean v0, v1, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$LayoutParams;->recycledHeaderFooter:Z

    .line 1761
    :cond_b
    if-eqz p4, :cond_c

    const/16 v17, -0x1

    :goto_9
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    move-object v3, v14

    move/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    goto/16 :goto_4

    :cond_c
    const/16 v17, 0x0

    goto :goto_9

    .line 1782
    .end local p6
    .restart local v6       #childHeightSpec:I
    .restart local v12       #lpWidth:I
    :cond_d
    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .restart local v9       #childWidthSpec:I
    goto/16 :goto_5

    .line 1786
    .end local v6           #childHeightSpec:I
    .end local v9           #childWidthSpec:I
    .end local v12           #lpWidth:I
    :cond_e
    invoke-virtual/range {p0 .. p1}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->cleanupLayoutState(Landroid/view/View;)V

    goto/16 :goto_6

    .line 1791
    .restart local v10       #h:I
    .restart local v16       #w:I
    :cond_f
    sub-int v17, p3, v16

    move/from16 v7, v17

    goto :goto_7

    .line 1798
    .restart local v7       #childLeft:I
    :cond_10
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v17

    sub-int v17, v7, v17

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1799
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v17

    sub-int v17, p5, v17

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto/16 :goto_8
.end method

.method private showingBottomFadingEdge()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 572
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getChildCount()I

    move-result v1

    .line 573
    .local v1, childCount:I
    sub-int v4, v1, v6

    invoke-virtual {p0, v4}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v0

    .line 574
    .local v0, bottomOfBottomChild:I
    iget v4, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mFirstPosition:I

    add-int/2addr v4, v1

    sub-int v2, v4, v6

    .line 576
    .local v2, lastVisiblePosition:I
    iget v4, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mScrollX:I

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int v3, v4, v5

    .line 578
    .local v3, listBottom:I
    iget v4, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mItemCount:I

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

    .line 564
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mScrollX:I

    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int v0, v1, v2

    .line 565
    .local v0, listTop:I
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mFirstPosition:I

    if-gtz v1, :cond_0

    invoke-virtual {p0, v3}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

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
    .line 439
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 440
    return-void
.end method

.method public addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 2
    .parameter "v"
    .parameter "data"
    .parameter "isSelectable"

    .prologue
    .line 415
    new-instance v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView$FixedViewInfo;

    invoke-direct {v0, p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView$FixedViewInfo;-><init>(Lcom/nemustech/tiffany/widget/TFHorizontalListView;)V

    .line 416
    .local v0, info:Lcom/nemustech/tiffany/widget/TFHorizontalListView$FixedViewInfo;
    iput-object p1, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView$FixedViewInfo;->view:Landroid/view/View;

    .line 417
    iput-object p2, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView$FixedViewInfo;->data:Ljava/lang/Object;

    .line 418
    iput-boolean p3, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView$FixedViewInfo;->isSelectable:Z

    .line 419
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 423
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mDataSetObserver:Lcom/nemustech/tiffany/widget/TFAdapterView$AdapterDataSetObserver;

    if-eqz v1, :cond_0

    .line 424
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mDataSetObserver:Lcom/nemustech/tiffany/widget/TFAdapterView$AdapterDataSetObserver;

    invoke-virtual {v1}, Lcom/nemustech/tiffany/widget/TFAdapterView$AdapterDataSetObserver;->onChanged()V

    .line 426
    :cond_0
    return-void
.end method

.method public addHeaderView(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 362
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 363
    return-void
.end method

.method public addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 3
    .parameter "v"
    .parameter "data"
    .parameter "isSelectable"

    .prologue
    .line 338
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    .line 339
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot add header view to list -- setAdapter has already been called."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 343
    :cond_0
    new-instance v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView$FixedViewInfo;

    invoke-direct {v0, p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView$FixedViewInfo;-><init>(Lcom/nemustech/tiffany/widget/TFHorizontalListView;)V

    .line 344
    .local v0, info:Lcom/nemustech/tiffany/widget/TFHorizontalListView$FixedViewInfo;
    iput-object p1, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView$FixedViewInfo;->view:Landroid/view/View;

    .line 345
    iput-object p2, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView$FixedViewInfo;->data:Ljava/lang/Object;

    .line 346
    iput-boolean p3, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView$FixedViewInfo;->isSelectable:Z

    .line 347
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    return-void
.end method

.method arrowScroll(I)Z
    .locals 3
    .parameter "direction"

    .prologue
    const/4 v2, 0x0

    .line 2197
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mInLayout:Z

    .line 2198
    invoke-direct {p0, p1}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->arrowScrollImpl(I)Z

    move-result v0

    .line 2199
    .local v0, handled:Z
    if-eqz v0, :cond_0

    .line 2200
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->playSoundEffect(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2204
    :cond_0
    iput-boolean v2, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mInLayout:Z

    return v0

    .end local v0           #handled:Z
    :catchall_0
    move-exception v1

    iput-boolean v2, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mInLayout:Z

    throw v1
.end method

.method protected canAnimate()Z
    .locals 1

    .prologue
    .line 1809
    invoke-super {p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->canAnimate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mItemCount:I

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
    .line 3795
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    .line 3796
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 3798
    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 22
    .parameter "canvas"

    .prologue
    .line 2855
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mExcessScroll:I

    move/from16 v20, v0

    if-eqz v20, :cond_0

    .line 2856
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mExcessScrollEffect:I

    move/from16 v20, v0

    packed-switch v20, :pswitch_data_0

    .line 2867
    invoke-virtual/range {p0 .. p1}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->dispatchDrawWithExcessScroll_Default(Landroid/graphics/Canvas;)V

    .line 2943
    :goto_0
    return-void

    .line 2858
    :pswitch_0
    invoke-virtual/range {p0 .. p1}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->dispatchDrawWithExcessScroll_FlashFrame(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 2861
    :pswitch_1
    invoke-virtual/range {p0 .. p1}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->dispatchDrawWithExcessScroll_Tremble(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 2864
    :pswitch_2
    invoke-virtual/range {p0 .. p1}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->dispatchDrawWithExcessScroll_ItemSpring(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 2874
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mDividerHeight:I

    move v9, v0

    .line 2876
    .local v9, dividerHeight:I
    if-lez v9, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v20, v0

    if-eqz v20, :cond_a

    .line 2878
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    move-object v6, v0

    .line 2879
    .local v6, bounds:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mPaddingTop:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object v1, v6

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 2880
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mBottom:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mTop:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mPaddingBottom:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move/from16 v0, v20

    move-object v1, v6

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 2882
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getChildCount()I

    move-result v8

    .line 2883
    .local v8, count:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 2884
    .local v13, headerCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mItemCount:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    sub-int v20, v20, v21

    const/16 v21, 0x1

    sub-int v12, v20, v21

    .line 2885
    .local v12, footerLimit:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mHeaderDividersEnabled:Z

    move v14, v0

    .line 2886
    .local v14, headerDividers:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mFooterDividersEnabled:Z

    move v11, v0

    .line 2887
    .local v11, footerDividers:Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mFirstPosition:I

    move v10, v0

    .line 2888
    .local v10, first:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mAreAllItemsSelectable:Z

    move v5, v0

    .line 2889
    .local v5, areAllItemsSelectable:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object v4, v0

    .line 2891
    .local v4, adapter:Landroid/widget/ListAdapter;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mStackFromBottom:Z

    move/from16 v20, v0

    if-nez v20, :cond_5

    .line 2893
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mRight:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mLeft:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    sub-int v18, v20, v21

    .line 2895
    .local v18, listRight:I
    const/4 v15, 0x0

    .local v15, i:I
    :goto_1
    if-ge v15, v8, :cond_a

    .line 2896
    if-nez v14, :cond_1

    add-int v20, v10, v15

    move/from16 v0, v20

    move v1, v13

    if-lt v0, v1, :cond_4

    :cond_1
    if-nez v11, :cond_2

    add-int v20, v10, v15

    move/from16 v0, v20

    move v1, v12

    if-ge v0, v1, :cond_4

    .line 2898
    :cond_2
    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 2899
    .local v7, child:Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v19

    .line 2901
    .local v19, right:I
    move/from16 v0, v19

    move/from16 v1, v18

    if-ge v0, v1, :cond_4

    if-nez v5, :cond_3

    add-int v20, v10, v15

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_4

    add-int v20, v10, v15

    move-object v0, v4

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v20

    if-eqz v20, :cond_4

    const/16 v20, 0x1

    sub-int v20, v8, v20

    move v0, v15

    move/from16 v1, v20

    if-eq v0, v1, :cond_3

    add-int v20, v10, v15

    add-int/lit8 v20, v20, 0x1

    move-object v0, v4

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 2905
    :cond_3
    move/from16 v0, v19

    move-object v1, v6

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 2906
    add-int v20, v19, v9

    move/from16 v0, v20

    move-object v1, v6

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 2907
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v6

    move v3, v15

    invoke-virtual {v0, v1, v2, v3}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 2895
    .end local v7           #child:Landroid/view/View;
    .end local v19           #right:I
    :cond_4
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 2913
    .end local v15           #i:I
    .end local v18           #listRight:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    .line 2915
    .local v17, listLeft:I
    const/4 v15, 0x0

    .restart local v15       #i:I
    :goto_2
    if-ge v15, v8, :cond_a

    .line 2916
    if-nez v14, :cond_6

    add-int v20, v10, v15

    move/from16 v0, v20

    move v1, v13

    if-lt v0, v1, :cond_9

    :cond_6
    if-nez v11, :cond_7

    add-int v20, v10, v15

    move/from16 v0, v20

    move v1, v12

    if-ge v0, v1, :cond_9

    .line 2918
    :cond_7
    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 2919
    .restart local v7       #child:Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v16

    .line 2921
    .local v16, left:I
    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_9

    if-nez v5, :cond_8

    add-int v20, v10, v15

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_9

    add-int v20, v10, v15

    move-object v0, v4

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v20

    if-eqz v20, :cond_9

    add-int v20, v10, v15

    if-eqz v20, :cond_8

    add-int v20, v10, v15

    const/16 v21, 0x1

    sub-int v20, v20, v21

    move-object v0, v4

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v20

    if-eqz v20, :cond_9

    .line 2928
    :cond_8
    sub-int v20, v16, v9

    move/from16 v0, v20

    move-object v1, v6

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 2929
    move/from16 v0, v16

    move-object v1, v6

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 2934
    const/16 v20, 0x1

    sub-int v20, v15, v20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v6

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 2915
    .end local v7           #child:Landroid/view/View;
    .end local v16           #left:I
    :cond_9
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 2942
    .end local v4           #adapter:Landroid/widget/ListAdapter;
    .end local v5           #areAllItemsSelectable:Z
    .end local v6           #bounds:Landroid/graphics/Rect;
    .end local v8           #count:I
    .end local v10           #first:I
    .end local v11           #footerDividers:Z
    .end local v12           #footerLimit:I
    .end local v13           #headerCount:I
    .end local v14           #headerDividers:Z
    .end local v15           #i:I
    .end local v17           #listLeft:I
    :cond_a
    invoke-super/range {p0 .. p1}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    .line 2856
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected dispatchDrawWithExcessScroll_Default(Landroid/graphics/Canvas;)V
    .locals 29
    .parameter "canvas"

    .prologue
    .line 2950
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mExcessScrollDrawInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v27, v0

    if-nez v27, :cond_0

    .line 2951
    new-instance v27, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct/range {v27 .. v27}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mExcessScrollDrawInterpolator:Landroid/view/animation/Interpolator;

    .line 2954
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getWidth()I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v26, v0

    .line 2955
    .local v26, width:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mExcessScrollDrawInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mExcessScroll:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Math;->abs(I)I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    div-float v28, v28, v26

    invoke-interface/range {v27 .. v28}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v27

    mul-float v27, v27, v26

    const/high16 v28, 0x4000

    div-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v25, v0

    .line 2958
    .local v25, shift:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mExcessScroll:I

    move/from16 v27, v0

    if-gez v27, :cond_1

    .line 2959
    mul-int/lit8 v25, v25, -0x1

    .line 2962
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v24

    .line 2963
    .local v24, save1:I
    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2965
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getChildCount()I

    move-result v9

    .line 2968
    .local v9, childCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mDividerHeight:I

    move v11, v0

    .line 2970
    .local v11, dividerHeight:I
    if-lez v11, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v27, v0

    if-eqz v27, :cond_b

    .line 2972
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    move-object v7, v0

    .line 2973
    .local v7, bounds:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mPaddingTop:I

    move/from16 v27, v0

    move/from16 v0, v27

    move-object v1, v7

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 2974
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mBottom:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mTop:I

    move/from16 v28, v0

    sub-int v27, v27, v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mPaddingBottom:I

    move/from16 v28, v0

    sub-int v27, v27, v28

    move/from16 v0, v27

    move-object v1, v7

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 2976
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getChildCount()I

    move-result v10

    .line 2977
    .local v10, count:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 2978
    .local v17, headerCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mItemCount:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v28

    sub-int v27, v27, v28

    const/16 v28, 0x1

    sub-int v16, v27, v28

    .line 2979
    .local v16, footerLimit:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mHeaderDividersEnabled:Z

    move/from16 v18, v0

    .line 2980
    .local v18, headerDividers:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mFooterDividersEnabled:Z

    move v15, v0

    .line 2981
    .local v15, footerDividers:Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mFirstPosition:I

    move v14, v0

    .line 2982
    .local v14, first:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mAreAllItemsSelectable:Z

    move v6, v0

    .line 2983
    .local v6, areAllItemsSelectable:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object v5, v0

    .line 2985
    .local v5, adapter:Landroid/widget/ListAdapter;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mStackFromBottom:Z

    move/from16 v27, v0

    if-nez v27, :cond_6

    .line 2987
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mRight:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mLeft:I

    move/from16 v28, v0

    sub-int v27, v27, v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v28, v0

    sub-int v22, v27, v28

    .line 2989
    .local v22, listRight:I
    const/16 v19, 0x0

    .local v19, i:I
    :goto_0
    move/from16 v0, v19

    move v1, v10

    if-ge v0, v1, :cond_b

    .line 2990
    if-nez v18, :cond_2

    add-int v27, v14, v19

    move/from16 v0, v27

    move/from16 v1, v17

    if-lt v0, v1, :cond_5

    :cond_2
    if-nez v15, :cond_3

    add-int v27, v14, v19

    move/from16 v0, v27

    move/from16 v1, v16

    if-ge v0, v1, :cond_5

    .line 2992
    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 2993
    .local v8, child:Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v23

    .line 2995
    .local v23, right:I
    move/from16 v0, v23

    move/from16 v1, v22

    if-ge v0, v1, :cond_5

    if-nez v6, :cond_4

    add-int v27, v14, v19

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v28

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_5

    add-int v27, v14, v19

    move-object v0, v5

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v27

    if-eqz v27, :cond_5

    const/16 v27, 0x1

    sub-int v27, v10, v27

    move/from16 v0, v19

    move/from16 v1, v27

    if-eq v0, v1, :cond_4

    add-int v27, v14, v19

    add-int/lit8 v27, v27, 0x1

    move-object v0, v5

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v27

    if-eqz v27, :cond_5

    .line 2999
    :cond_4
    move/from16 v0, v23

    move-object v1, v7

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 3000
    add-int v27, v23, v11

    move/from16 v0, v27

    move-object v1, v7

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 3001
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v7

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 2989
    .end local v8           #child:Landroid/view/View;
    .end local v23           #right:I
    :cond_5
    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    .line 3007
    .end local v19           #i:I
    .end local v22           #listRight:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    .line 3009
    .local v21, listLeft:I
    const/16 v19, 0x0

    .restart local v19       #i:I
    :goto_1
    move/from16 v0, v19

    move v1, v10

    if-ge v0, v1, :cond_b

    .line 3010
    if-nez v18, :cond_7

    add-int v27, v14, v19

    move/from16 v0, v27

    move/from16 v1, v17

    if-lt v0, v1, :cond_a

    :cond_7
    if-nez v15, :cond_8

    add-int v27, v14, v19

    move/from16 v0, v27

    move/from16 v1, v16

    if-ge v0, v1, :cond_a

    .line 3012
    :cond_8
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 3013
    .restart local v8       #child:Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v20

    .line 3015
    .local v20, left:I
    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_a

    if-nez v6, :cond_9

    add-int v27, v14, v19

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v28

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_a

    add-int v27, v14, v19

    move-object v0, v5

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v27

    if-eqz v27, :cond_a

    add-int v27, v14, v19

    if-eqz v27, :cond_9

    add-int v27, v14, v19

    const/16 v28, 0x1

    sub-int v27, v27, v28

    move-object v0, v5

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v27

    if-eqz v27, :cond_a

    .line 3022
    :cond_9
    sub-int v27, v20, v11

    move/from16 v0, v27

    move-object v1, v7

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 3023
    move/from16 v0, v20

    move-object v1, v7

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 3028
    const/16 v27, 0x1

    sub-int v27, v19, v27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v7

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 3009
    .end local v8           #child:Landroid/view/View;
    .end local v20           #left:I
    :cond_a
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 3036
    .end local v5           #adapter:Landroid/widget/ListAdapter;
    .end local v6           #areAllItemsSelectable:Z
    .end local v7           #bounds:Landroid/graphics/Rect;
    .end local v10           #count:I
    .end local v14           #first:I
    .end local v15           #footerDividers:Z
    .end local v16           #footerLimit:I
    .end local v17           #headerCount:I
    .end local v18           #headerDividers:Z
    .end local v19           #i:I
    .end local v21           #listLeft:I
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getDrawingTime()J

    move-result-wide v12

    .line 3038
    .local v12, drawingTime:J
    const/16 v19, 0x0

    .restart local v19       #i:I
    :goto_2
    move/from16 v0, v19

    move v1, v9

    if-ge v0, v1, :cond_d

    .line 3039
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 3040
    .restart local v8       #child:Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v27

    if-nez v27, :cond_c

    .line 3041
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v8

    move-wide v3, v12

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 3038
    :cond_c
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    .line 3045
    .end local v8           #child:Landroid/view/View;
    :cond_d
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3046
    return-void
.end method

.method protected dispatchDrawWithExcessScroll_FlashFrame(Landroid/graphics/Canvas;)V
    .locals 31
    .parameter "canvas"

    .prologue
    .line 3294
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v30

    .line 3296
    .local v30, save1:I
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getChildCount()I

    move-result v15

    .line 3299
    .local v15, childCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mDividerHeight:I

    move/from16 v17, v0

    .line 3301
    .local v17, dividerHeight:I
    if-lez v17, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object v5, v0

    if-eqz v5, :cond_9

    .line 3303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    move-object v13, v0

    .line 3304
    .local v13, bounds:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mPaddingTop:I

    move v5, v0

    iput v5, v13, Landroid/graphics/Rect;->top:I

    .line 3305
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mBottom:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mTop:I

    move v6, v0

    sub-int/2addr v5, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mPaddingBottom:I

    move v6, v0

    sub-int/2addr v5, v6

    iput v5, v13, Landroid/graphics/Rect;->bottom:I

    .line 3307
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getChildCount()I

    move-result v16

    .line 3308
    .local v16, count:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v23

    .line 3309
    .local v23, headerCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mItemCount:I

    move v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v5, v6

    const/4 v6, 0x1

    sub-int v22, v5, v6

    .line 3310
    .local v22, footerLimit:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mHeaderDividersEnabled:Z

    move/from16 v24, v0

    .line 3311
    .local v24, headerDividers:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mFooterDividersEnabled:Z

    move/from16 v21, v0

    .line 3312
    .local v21, footerDividers:Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mFirstPosition:I

    move/from16 v20, v0

    .line 3313
    .local v20, first:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mAreAllItemsSelectable:Z

    move v12, v0

    .line 3314
    .local v12, areAllItemsSelectable:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object v11, v0

    .line 3316
    .local v11, adapter:Landroid/widget/ListAdapter;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mStackFromBottom:Z

    move v5, v0

    if-nez v5, :cond_4

    .line 3318
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mRight:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mLeft:I

    move v6, v0

    sub-int/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object v6, v0

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int v28, v5, v6

    .line 3320
    .local v28, listRight:I
    const/16 v25, 0x0

    .local v25, i:I
    :goto_0
    move/from16 v0, v25

    move/from16 v1, v16

    if-ge v0, v1, :cond_9

    .line 3321
    if-nez v24, :cond_0

    add-int v5, v20, v25

    move v0, v5

    move/from16 v1, v23

    if-lt v0, v1, :cond_3

    :cond_0
    if-nez v21, :cond_1

    add-int v5, v20, v25

    move v0, v5

    move/from16 v1, v22

    if-ge v0, v1, :cond_3

    .line 3323
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 3324
    .local v14, child:Landroid/view/View;
    invoke-virtual {v14}, Landroid/view/View;->getRight()I

    move-result v29

    .line 3326
    .local v29, right:I
    move/from16 v0, v29

    move/from16 v1, v28

    if-ge v0, v1, :cond_3

    if-nez v12, :cond_2

    add-int v5, v20, v25

    invoke-interface {v11}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    if-ge v5, v6, :cond_3

    add-int v5, v20, v25

    invoke-interface {v11, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    sub-int v5, v16, v5

    move/from16 v0, v25

    move v1, v5

    if-eq v0, v1, :cond_2

    add-int v5, v20, v25

    add-int/lit8 v5, v5, 0x1

    invoke-interface {v11, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3330
    :cond_2
    move/from16 v0, v29

    move-object v1, v13

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 3331
    add-int v5, v29, v17

    iput v5, v13, Landroid/graphics/Rect;->right:I

    .line 3332
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v13

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 3320
    .end local v14           #child:Landroid/view/View;
    .end local v29           #right:I
    :cond_3
    add-int/lit8 v25, v25, 0x1

    goto :goto_0

    .line 3338
    .end local v25           #i:I
    .end local v28           #listRight:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object v5, v0

    move-object v0, v5

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v27, v0

    .line 3340
    .local v27, listLeft:I
    const/16 v25, 0x0

    .restart local v25       #i:I
    :goto_1
    move/from16 v0, v25

    move/from16 v1, v16

    if-ge v0, v1, :cond_9

    .line 3341
    if-nez v24, :cond_5

    add-int v5, v20, v25

    move v0, v5

    move/from16 v1, v23

    if-lt v0, v1, :cond_8

    :cond_5
    if-nez v21, :cond_6

    add-int v5, v20, v25

    move v0, v5

    move/from16 v1, v22

    if-ge v0, v1, :cond_8

    .line 3343
    :cond_6
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 3344
    .restart local v14       #child:Landroid/view/View;
    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v26

    .line 3346
    .local v26, left:I
    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_8

    if-nez v12, :cond_7

    add-int v5, v20, v25

    invoke-interface {v11}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    if-ge v5, v6, :cond_8

    add-int v5, v20, v25

    invoke-interface {v11, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_8

    add-int v5, v20, v25

    if-eqz v5, :cond_7

    add-int v5, v20, v25

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    invoke-interface {v11, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 3353
    :cond_7
    sub-int v5, v26, v17

    iput v5, v13, Landroid/graphics/Rect;->left:I

    .line 3354
    move/from16 v0, v26

    move-object v1, v13

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 3359
    const/4 v5, 0x1

    sub-int v5, v25, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v13

    move v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 3340
    .end local v14           #child:Landroid/view/View;
    .end local v26           #left:I
    :cond_8
    add-int/lit8 v25, v25, 0x1

    goto :goto_1

    .line 3367
    .end local v11           #adapter:Landroid/widget/ListAdapter;
    .end local v12           #areAllItemsSelectable:Z
    .end local v13           #bounds:Landroid/graphics/Rect;
    .end local v16           #count:I
    .end local v20           #first:I
    .end local v21           #footerDividers:Z
    .end local v22           #footerLimit:I
    .end local v23           #headerCount:I
    .end local v24           #headerDividers:Z
    .end local v25           #i:I
    .end local v27           #listLeft:I
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getDrawingTime()J

    move-result-wide v18

    .line 3369
    .local v18, drawingTime:J
    const/16 v25, 0x0

    .restart local v25       #i:I
    :goto_2
    move/from16 v0, v25

    move v1, v15

    if-ge v0, v1, :cond_b

    .line 3370
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 3371
    .restart local v14       #child:Landroid/view/View;
    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_a

    .line 3372
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v14

    move-wide/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 3369
    :cond_a
    add-int/lit8 v25, v25, 0x1

    goto :goto_2

    .line 3376
    .end local v14           #child:Landroid/view/View;
    :cond_b
    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3378
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getExcessScrollMode()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_c

    .line 3380
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mExcessScroll:I

    move v5, v0

    rem-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_c

    .line 3382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 3383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mTempPaint:Landroid/graphics/Paint;

    move-object v5, v0

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 3384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mTempPaint:Landroid/graphics/Paint;

    move-object v5, v0

    const/high16 v6, 0x4040

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 3385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    move-object v5, v0

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v6, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    move-object v5, v0

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v7, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    move-object v5, v0

    iget v5, v5, Landroid/graphics/Rect;->right:I

    int-to-float v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    move-object v5, v0

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v9, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mTempPaint:Landroid/graphics/Paint;

    move-object v10, v0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 3386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    move-object v5, v0

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v6, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    move-object v5, v0

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    move-object v5, v0

    iget v5, v5, Landroid/graphics/Rect;->right:I

    int-to-float v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    move-object v5, v0

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mTempPaint:Landroid/graphics/Paint;

    move-object v10, v0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 3387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    move-object v5, v0

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v6, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    move-object v5, v0

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v7, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    move-object v5, v0

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    move-object v5, v0

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mTempPaint:Landroid/graphics/Paint;

    move-object v10, v0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 3388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    move-object v5, v0

    iget v5, v5, Landroid/graphics/Rect;->right:I

    int-to-float v6, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    move-object v5, v0

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v7, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    move-object v5, v0

    iget v5, v5, Landroid/graphics/Rect;->right:I

    int-to-float v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    move-object v5, v0

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mTempPaint:Landroid/graphics/Paint;

    move-object v10, v0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 3391
    :cond_c
    return-void
.end method

.method protected dispatchDrawWithExcessScroll_ItemSpring(Landroid/graphics/Canvas;)V
    .locals 32
    .parameter "canvas"

    .prologue
    .line 3053
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mExcessScrollDrawInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v30, v0

    if-nez v30, :cond_0

    .line 3054
    new-instance v30, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct/range {v30 .. v30}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mExcessScrollDrawInterpolator:Landroid/view/animation/Interpolator;

    .line 3057
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getWidth()I

    move-result v30

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v29, v0

    .line 3058
    .local v29, width:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mExcessScrollDrawInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mExcessScroll:I

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Math;->abs(I)I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    div-float v31, v31, v29

    invoke-interface/range {v30 .. v31}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v30

    mul-float v30, v30, v29

    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getChildCount()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    div-float v30, v30, v31

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v27, v0

    .line 3061
    .local v27, shiftPerItem:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mExcessScroll:I

    move/from16 v30, v0

    if-gez v30, :cond_1

    .line 3062
    mul-int/lit8 v27, v27, -0x1

    .line 3064
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getChildCount()I

    move-result v9

    .line 3067
    .local v9, childCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mDividerHeight:I

    move v11, v0

    .line 3069
    .local v11, dividerHeight:I
    if-lez v11, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v30, v0

    if-eqz v30, :cond_13

    .line 3071
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    move-object v7, v0

    .line 3072
    .local v7, bounds:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mPaddingTop:I

    move/from16 v30, v0

    move/from16 v0, v30

    move-object v1, v7

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 3073
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mBottom:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mTop:I

    move/from16 v31, v0

    sub-int v30, v30, v31

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mPaddingBottom:I

    move/from16 v31, v0

    sub-int v30, v30, v31

    move/from16 v0, v30

    move-object v1, v7

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 3075
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getChildCount()I

    move-result v10

    .line 3076
    .local v10, count:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 3077
    .local v17, headerCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mItemCount:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v31

    sub-int v30, v30, v31

    const/16 v31, 0x1

    sub-int v16, v30, v31

    .line 3078
    .local v16, footerLimit:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mHeaderDividersEnabled:Z

    move/from16 v18, v0

    .line 3079
    .local v18, headerDividers:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mFooterDividersEnabled:Z

    move v15, v0

    .line 3080
    .local v15, footerDividers:Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mFirstPosition:I

    move v14, v0

    .line 3081
    .local v14, first:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mAreAllItemsSelectable:Z

    move v6, v0

    .line 3082
    .local v6, areAllItemsSelectable:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object v5, v0

    .line 3084
    .local v5, adapter:Landroid/widget/ListAdapter;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mStackFromBottom:Z

    move/from16 v30, v0

    if-nez v30, :cond_a

    .line 3086
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mRight:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mLeft:I

    move/from16 v31, v0

    sub-int v30, v30, v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v31, v0

    sub-int v22, v30, v31

    .line 3088
    .local v22, listRight:I
    const/16 v19, 0x0

    .local v19, i:I
    :goto_0
    move/from16 v0, v19

    move v1, v10

    if-ge v0, v1, :cond_13

    .line 3089
    if-nez v18, :cond_2

    add-int v30, v14, v19

    move/from16 v0, v30

    move/from16 v1, v17

    if-lt v0, v1, :cond_7

    :cond_2
    if-nez v15, :cond_3

    add-int v30, v14, v19

    move/from16 v0, v30

    move/from16 v1, v16

    if-ge v0, v1, :cond_7

    .line 3091
    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 3092
    .local v8, child:Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v23

    .line 3094
    .local v23, right:I
    move/from16 v0, v23

    move/from16 v1, v22

    if-ge v0, v1, :cond_7

    if-nez v6, :cond_4

    add-int v30, v14, v19

    move-object v0, v5

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v30

    if-eqz v30, :cond_7

    const/16 v30, 0x1

    sub-int v30, v10, v30

    move/from16 v0, v19

    move/from16 v1, v30

    if-eq v0, v1, :cond_4

    add-int v30, v14, v19

    add-int/lit8 v30, v30, 0x1

    move-object v0, v5

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v30

    if-eqz v30, :cond_7

    :cond_4
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v30

    if-nez v30, :cond_7

    const/16 v30, 0x1

    sub-int v30, v10, v30

    move/from16 v0, v19

    move/from16 v1, v30

    if-ge v0, v1, :cond_5

    add-int/lit8 v30, v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v30

    if-nez v30, :cond_7

    .line 3102
    :cond_5
    move/from16 v0, v23

    move-object v1, v7

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 3103
    add-int v30, v23, v11

    move/from16 v0, v30

    move-object v1, v7

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 3105
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mExcessScroll:I

    move/from16 v30, v0

    if-lez v30, :cond_8

    mul-int v30, v27, v19

    move/from16 v25, v30

    .line 3107
    .local v25, shift:I
    :goto_1
    const/16 v30, 0x1

    sub-int v30, v10, v30

    move/from16 v0, v19

    move/from16 v1, v30

    if-eq v0, v1, :cond_6

    .line 3108
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mExcessScroll:I

    move/from16 v30, v0

    if-lez v30, :cond_9

    add-int/lit8 v30, v19, 0x1

    mul-int v30, v30, v27

    move/from16 v26, v30

    .line 3109
    .local v26, shiftNext:I
    :goto_2
    add-int v30, v25, v26

    div-int/lit8 v25, v30, 0x2

    .line 3111
    .end local v26           #shiftNext:I
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v24

    .line 3112
    .local v24, save:I
    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3113
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v7

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 3114
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3088
    .end local v8           #child:Landroid/view/View;
    .end local v23           #right:I
    .end local v24           #save:I
    .end local v25           #shift:I
    :cond_7
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_0

    .line 3105
    .restart local v8       #child:Landroid/view/View;
    .restart local v23       #right:I
    :cond_8
    const/16 v30, 0x1

    sub-int v30, v9, v30

    sub-int v30, v30, v19

    mul-int v30, v30, v27

    move/from16 v25, v30

    goto :goto_1

    .line 3108
    .restart local v25       #shift:I
    :cond_9
    const/16 v30, 0x1

    sub-int v30, v9, v30

    add-int/lit8 v31, v19, 0x1

    sub-int v30, v30, v31

    mul-int v30, v30, v27

    move/from16 v26, v30

    goto :goto_2

    .line 3120
    .end local v8           #child:Landroid/view/View;
    .end local v19           #i:I
    .end local v22           #listRight:I
    .end local v23           #right:I
    .end local v25           #shift:I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    .line 3122
    .local v21, listLeft:I
    const/16 v19, 0x0

    .restart local v19       #i:I
    :goto_3
    move/from16 v0, v19

    move v1, v10

    if-ge v0, v1, :cond_13

    .line 3123
    if-nez v18, :cond_b

    add-int v30, v14, v19

    move/from16 v0, v30

    move/from16 v1, v17

    if-lt v0, v1, :cond_10

    :cond_b
    if-nez v15, :cond_c

    add-int v30, v14, v19

    move/from16 v0, v30

    move/from16 v1, v16

    if-ge v0, v1, :cond_10

    .line 3125
    :cond_c
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 3126
    .restart local v8       #child:Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v20

    .line 3128
    .local v20, left:I
    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_10

    if-nez v6, :cond_d

    add-int v30, v14, v19

    move-object v0, v5

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v30

    if-eqz v30, :cond_10

    add-int v30, v14, v19

    if-eqz v30, :cond_d

    add-int v30, v14, v19

    const/16 v31, 0x1

    sub-int v30, v30, v31

    move-object v0, v5

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v30

    if-eqz v30, :cond_10

    :cond_d
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v30

    if-nez v30, :cond_10

    if-lez v19, :cond_e

    const/16 v30, 0x1

    sub-int v30, v19, v30

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v30

    if-nez v30, :cond_10

    .line 3139
    :cond_e
    sub-int v30, v20, v11

    move/from16 v0, v30

    move-object v1, v7

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 3140
    move/from16 v0, v20

    move-object v1, v7

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 3146
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mExcessScroll:I

    move/from16 v30, v0

    if-lez v30, :cond_11

    mul-int v30, v27, v19

    move/from16 v25, v30

    .line 3148
    .restart local v25       #shift:I
    :goto_4
    if-eqz v19, :cond_f

    .line 3149
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mExcessScroll:I

    move/from16 v30, v0

    if-lez v30, :cond_12

    const/16 v30, 0x1

    sub-int v30, v19, v30

    mul-int v30, v30, v27

    move/from16 v28, v30

    .line 3150
    .local v28, shiftPrev:I
    :goto_5
    add-int v30, v25, v28

    div-int/lit8 v25, v30, 0x2

    .line 3152
    .end local v28           #shiftPrev:I
    :cond_f
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v24

    .line 3153
    .restart local v24       #save:I
    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3154
    const/16 v30, 0x1

    sub-int v30, v19, v30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v7

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 3155
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3122
    .end local v8           #child:Landroid/view/View;
    .end local v20           #left:I
    .end local v24           #save:I
    .end local v25           #shift:I
    :cond_10
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_3

    .line 3146
    .restart local v8       #child:Landroid/view/View;
    .restart local v20       #left:I
    :cond_11
    const/16 v30, 0x1

    sub-int v30, v9, v30

    sub-int v30, v30, v19

    mul-int v30, v30, v27

    move/from16 v25, v30

    goto :goto_4

    .line 3149
    .restart local v25       #shift:I
    :cond_12
    const/16 v30, 0x1

    sub-int v30, v9, v30

    const/16 v31, 0x1

    sub-int v31, v19, v31

    sub-int v30, v30, v31

    mul-int v30, v30, v27

    move/from16 v28, v30

    goto :goto_5

    .line 3163
    .end local v5           #adapter:Landroid/widget/ListAdapter;
    .end local v6           #areAllItemsSelectable:Z
    .end local v7           #bounds:Landroid/graphics/Rect;
    .end local v8           #child:Landroid/view/View;
    .end local v10           #count:I
    .end local v14           #first:I
    .end local v15           #footerDividers:Z
    .end local v16           #footerLimit:I
    .end local v17           #headerCount:I
    .end local v18           #headerDividers:Z
    .end local v19           #i:I
    .end local v20           #left:I
    .end local v21           #listLeft:I
    .end local v25           #shift:I
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getDrawingTime()J

    move-result-wide v12

    .line 3165
    .local v12, drawingTime:J
    const/16 v19, 0x0

    .restart local v19       #i:I
    :goto_6
    move/from16 v0, v19

    move v1, v9

    if-ge v0, v1, :cond_16

    .line 3166
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 3167
    .restart local v8       #child:Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v30

    if-nez v30, :cond_14

    .line 3168
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mExcessScroll:I

    move/from16 v30, v0

    if-lez v30, :cond_15

    mul-int v30, v27, v19

    move/from16 v25, v30

    .line 3170
    .restart local v25       #shift:I
    :goto_7
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v24

    .line 3171
    .restart local v24       #save:I
    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3172
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v8

    move-wide v3, v12

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 3173
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3165
    .end local v24           #save:I
    .end local v25           #shift:I
    :cond_14
    add-int/lit8 v19, v19, 0x1

    goto :goto_6

    .line 3168
    :cond_15
    const/16 v30, 0x1

    sub-int v30, v9, v30

    sub-int v30, v30, v19

    mul-int v30, v30, v27

    move/from16 v25, v30

    goto :goto_7

    .line 3176
    .end local v8           #child:Landroid/view/View;
    :cond_16
    return-void
.end method

.method protected dispatchDrawWithExcessScroll_Tremble(Landroid/graphics/Canvas;)V
    .locals 32
    .parameter "canvas"

    .prologue
    .line 3183
    const/16 v26, 0x0

    .line 3185
    .local v26, shift:I
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getExcessScrollMode()I

    move-result v30

    const/16 v31, 0x2

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_1

    .line 3187
    const/16 v5, 0x9

    .line 3188
    .local v5, TREMBLE_HEIGHT:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mDensityScale:F

    move/from16 v30, v0

    const/high16 v31, 0x4110

    mul-float v30, v30, v31

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v29, v0

    .line 3190
    .local v29, tremble_height:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mExcessScroll:I

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/Math;->abs(I)I

    move-result v30

    rem-int v27, v30, v29

    .line 3191
    .local v27, temp:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mExcessScroll:I

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/Math;->abs(I)I

    move-result v30

    mul-int/lit8 v31, v29, 0x2

    rem-int v28, v30, v31

    .line 3193
    .local v28, temp2:I
    move/from16 v26, v28

    .line 3194
    move/from16 v0, v28

    move/from16 v1, v27

    if-eq v0, v1, :cond_0

    .line 3195
    sub-int v26, v29, v27

    .line 3198
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mExcessScroll:I

    move/from16 v30, v0

    if-gez v30, :cond_1

    .line 3199
    mul-int/lit8 v26, v26, -0x1

    .line 3203
    .end local v5           #TREMBLE_HEIGHT:I
    .end local v27           #temp:I
    .end local v28           #temp2:I
    .end local v29           #tremble_height:I
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v25

    .line 3204
    .local v25, save1:I
    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3206
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getChildCount()I

    move-result v10

    .line 3209
    .local v10, childCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mDividerHeight:I

    move v12, v0

    .line 3211
    .local v12, dividerHeight:I
    if-lez v12, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v30, v0

    if-eqz v30, :cond_b

    .line 3213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    move-object v8, v0

    .line 3214
    .local v8, bounds:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mPaddingTop:I

    move/from16 v30, v0

    move/from16 v0, v30

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 3215
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mBottom:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mTop:I

    move/from16 v31, v0

    sub-int v30, v30, v31

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mPaddingBottom:I

    move/from16 v31, v0

    sub-int v30, v30, v31

    move/from16 v0, v30

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 3217
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getChildCount()I

    move-result v11

    .line 3218
    .local v11, count:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v18

    .line 3219
    .local v18, headerCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mItemCount:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v31

    sub-int v30, v30, v31

    const/16 v31, 0x1

    sub-int v17, v30, v31

    .line 3220
    .local v17, footerLimit:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mHeaderDividersEnabled:Z

    move/from16 v19, v0

    .line 3221
    .local v19, headerDividers:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mFooterDividersEnabled:Z

    move/from16 v16, v0

    .line 3222
    .local v16, footerDividers:Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mFirstPosition:I

    move v15, v0

    .line 3223
    .local v15, first:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mAreAllItemsSelectable:Z

    move v7, v0

    .line 3224
    .local v7, areAllItemsSelectable:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object v6, v0

    .line 3226
    .local v6, adapter:Landroid/widget/ListAdapter;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mStackFromBottom:Z

    move/from16 v30, v0

    if-nez v30, :cond_6

    .line 3228
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mRight:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mLeft:I

    move/from16 v31, v0

    sub-int v30, v30, v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v31, v0

    sub-int v23, v30, v31

    .line 3230
    .local v23, listRight:I
    const/16 v20, 0x0

    .local v20, i:I
    :goto_0
    move/from16 v0, v20

    move v1, v11

    if-ge v0, v1, :cond_b

    .line 3231
    if-nez v19, :cond_2

    add-int v30, v15, v20

    move/from16 v0, v30

    move/from16 v1, v18

    if-lt v0, v1, :cond_5

    :cond_2
    if-nez v16, :cond_3

    add-int v30, v15, v20

    move/from16 v0, v30

    move/from16 v1, v17

    if-ge v0, v1, :cond_5

    .line 3233
    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 3234
    .local v9, child:Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v24

    .line 3236
    .local v24, right:I
    move/from16 v0, v24

    move/from16 v1, v23

    if-ge v0, v1, :cond_5

    if-nez v7, :cond_4

    add-int v30, v15, v20

    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v31

    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_5

    add-int v30, v15, v20

    move-object v0, v6

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v30

    if-eqz v30, :cond_5

    const/16 v30, 0x1

    sub-int v30, v11, v30

    move/from16 v0, v20

    move/from16 v1, v30

    if-eq v0, v1, :cond_4

    add-int v30, v15, v20

    add-int/lit8 v30, v30, 0x1

    move-object v0, v6

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v30

    if-eqz v30, :cond_5

    .line 3240
    :cond_4
    move/from16 v0, v24

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 3241
    add-int v30, v24, v12

    move/from16 v0, v30

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 3242
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v8

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 3230
    .end local v9           #child:Landroid/view/View;
    .end local v24           #right:I
    :cond_5
    add-int/lit8 v20, v20, 0x1

    goto :goto_0

    .line 3248
    .end local v20           #i:I
    .end local v23           #listRight:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    .line 3250
    .local v22, listLeft:I
    const/16 v20, 0x0

    .restart local v20       #i:I
    :goto_1
    move/from16 v0, v20

    move v1, v11

    if-ge v0, v1, :cond_b

    .line 3251
    if-nez v19, :cond_7

    add-int v30, v15, v20

    move/from16 v0, v30

    move/from16 v1, v18

    if-lt v0, v1, :cond_a

    :cond_7
    if-nez v16, :cond_8

    add-int v30, v15, v20

    move/from16 v0, v30

    move/from16 v1, v17

    if-ge v0, v1, :cond_a

    .line 3253
    :cond_8
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 3254
    .restart local v9       #child:Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v21

    .line 3256
    .local v21, left:I
    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_a

    if-nez v7, :cond_9

    add-int v30, v15, v20

    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v31

    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_a

    add-int v30, v15, v20

    move-object v0, v6

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v30

    if-eqz v30, :cond_a

    add-int v30, v15, v20

    if-eqz v30, :cond_9

    add-int v30, v15, v20

    const/16 v31, 0x1

    sub-int v30, v30, v31

    move-object v0, v6

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v30

    if-eqz v30, :cond_a

    .line 3263
    :cond_9
    sub-int v30, v21, v12

    move/from16 v0, v30

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 3264
    move/from16 v0, v21

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 3269
    const/16 v30, 0x1

    sub-int v30, v20, v30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v8

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 3250
    .end local v9           #child:Landroid/view/View;
    .end local v21           #left:I
    :cond_a
    add-int/lit8 v20, v20, 0x1

    goto :goto_1

    .line 3277
    .end local v6           #adapter:Landroid/widget/ListAdapter;
    .end local v7           #areAllItemsSelectable:Z
    .end local v8           #bounds:Landroid/graphics/Rect;
    .end local v11           #count:I
    .end local v15           #first:I
    .end local v16           #footerDividers:Z
    .end local v17           #footerLimit:I
    .end local v18           #headerCount:I
    .end local v19           #headerDividers:Z
    .end local v20           #i:I
    .end local v22           #listLeft:I
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getDrawingTime()J

    move-result-wide v13

    .line 3279
    .local v13, drawingTime:J
    const/16 v20, 0x0

    .restart local v20       #i:I
    :goto_2
    move/from16 v0, v20

    move v1, v10

    if-ge v0, v1, :cond_d

    .line 3280
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 3281
    .restart local v9       #child:Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v30

    if-nez v30, :cond_c

    .line 3282
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v9

    move-wide v3, v13

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 3279
    :cond_c
    add-int/lit8 v20, v20, 0x1

    goto :goto_2

    .line 3286
    .end local v9           #child:Landroid/view/View;
    :cond_d
    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3287
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 1935
    invoke-super {p0, p1}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    .line 1936
    .local v1, handled:Z
    if-nez v1, :cond_0

    .line 1938
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 1939
    .local v0, focused:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    .line 1942
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {p0, v2, p1}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 1945
    .end local v0           #focused:Landroid/view/View;
    :cond_0
    return v1
.end method

.method drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .locals 2
    .parameter "canvas"
    .parameter "bounds"
    .parameter "childIndex"

    .prologue
    .line 3404
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 3405
    .local v1, divider:Landroid/graphics/drawable/Drawable;
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mClipDivider:Z

    .line 3407
    .local v0, clipDivider:Z
    if-nez v0, :cond_1

    .line 3408
    invoke-virtual {v1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3414
    :goto_0
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3416
    if-eqz v0, :cond_0

    .line 3417
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 3419
    :cond_0
    return-void

    .line 3410
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3411
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    goto :goto_0
.end method

.method fillGap(Z)V
    .locals 5
    .parameter "down"

    .prologue
    const/4 v4, 0x1

    .line 667
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getChildCount()I

    move-result v0

    .line 668
    .local v0, count:I
    if-eqz p1, :cond_1

    .line 669
    if-lez v0, :cond_0

    sub-int v2, v0, v4

    invoke-virtual {p0, v2}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mDividerHeight:I

    add-int/2addr v2, v3

    move v1, v2

    .line 671
    .local v1, startOffset:I
    :goto_0
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mFirstPosition:I

    add-int/2addr v2, v0

    invoke-direct {p0, v2, v1}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->fillDown(II)Landroid/view/View;

    .line 672
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getChildCount()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->correctTooHigh(I)V

    .line 679
    :goto_1
    return-void

    .line 669
    .end local v1           #startOffset:I
    :cond_0
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getListPaddingLeft()I

    move-result v2

    move v1, v2

    goto :goto_0

    .line 674
    :cond_1
    if-lez v0, :cond_2

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mDividerHeight:I

    sub-int/2addr v2, v3

    move v1, v2

    .line 676
    .restart local v1       #startOffset:I
    :goto_2
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mFirstPosition:I

    sub-int/2addr v2, v4

    invoke-direct {p0, v2, v1}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->fillUp(II)Landroid/view/View;

    .line 677
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getChildCount()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->correctTooLow(I)V

    goto :goto_1

    .line 674
    .end local v1           #startOffset:I
    :cond_2
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getListPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    move v1, v2

    goto :goto_2
.end method

.method findMotionRow(I)I
    .locals 5
    .parameter "y"

    .prologue
    .line 1250
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getChildCount()I

    move-result v0

    .line 1251
    .local v0, childCount:I
    if-lez v0, :cond_2

    .line 1252
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1253
    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1254
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v3

    if-gt p1, v3, :cond_0

    .line 1255
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mFirstPosition:I

    add-int/2addr v3, v1

    .line 1260
    .end local v1           #i:I
    .end local v2           #v:Landroid/view/View;
    :goto_1
    return v3

    .line 1252
    .restart local v1       #i:I
    .restart local v2       #v:Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1258
    .end local v2           #v:Landroid/view/View;
    :cond_1
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mFirstPosition:I

    add-int/2addr v3, v0

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    goto :goto_1

    .line 1260
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
            "Lcom/nemustech/tiffany/widget/TFHorizontalListView$FixedViewInfo;",
            ">;I)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 3579
    .local p1, where:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/nemustech/tiffany/widget/TFHorizontalListView$FixedViewInfo;>;"
    if-eqz p1, :cond_1

    .line 3580
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3583
    .local v1, len:I
    const/4 v0, 0x0

    .end local p0
    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 3584
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView$FixedViewInfo;

    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView$FixedViewInfo;->view:Landroid/view/View;

    .line 3586
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3587
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 3589
    if-eqz v2, :cond_0

    move-object v3, v2

    .line 3595
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #v:Landroid/view/View;
    :goto_1
    return-object v3

    .line 3583
    .restart local v0       #i:I
    .restart local v1       #len:I
    .restart local v2       #v:Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3595
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
            "Lcom/nemustech/tiffany/widget/TFHorizontalListView$FixedViewInfo;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 3625
    .local p1, where:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/nemustech/tiffany/widget/TFHorizontalListView$FixedViewInfo;>;"
    if-eqz p1, :cond_1

    .line 3626
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3629
    .local v1, len:I
    const/4 v0, 0x0

    .end local p0
    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 3630
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView$FixedViewInfo;

    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView$FixedViewInfo;->view:Landroid/view/View;

    .line 3632
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3633
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    .line 3635
    if-eqz v2, :cond_0

    move-object v3, v2

    .line 3641
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #v:Landroid/view/View;
    :goto_1
    return-object v3

    .line 3629
    .restart local v0       #i:I
    .restart local v1       #len:I
    .restart local v2       #v:Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3641
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
    .line 3560
    invoke-super {p0, p1}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->findViewTraversal(I)Landroid/view/View;

    move-result-object v0

    .line 3561
    .local v0, v:Landroid/view/View;
    if-nez v0, :cond_1

    .line 3562
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v0

    .line 3563
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 3571
    .end local v0           #v:Landroid/view/View;
    .local v1, v:Landroid/view/View;
    :goto_0
    return-object v1

    .line 3566
    .end local v1           #v:Landroid/view/View;
    .restart local v0       #v:Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v0

    .line 3567
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 3568
    .end local v0           #v:Landroid/view/View;
    .restart local v1       #v:Landroid/view/View;
    goto :goto_0

    .end local v1           #v:Landroid/view/View;
    .restart local v0       #v:Landroid/view/View;
    :cond_1
    move-object v1, v0

    .line 3571
    .end local v0           #v:Landroid/view/View;
    .restart local v1       #v:Landroid/view/View;
    goto :goto_0
.end method

.method protected findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;
    .locals 3
    .parameter "tag"

    .prologue
    .line 3605
    invoke-super {p0, p1}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 3606
    .local v0, v:Landroid/view/View;
    if-nez v0, :cond_1

    .line 3607
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->findViewTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 3608
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 3617
    .end local v0           #v:Landroid/view/View;
    .local v1, v:Landroid/view/View;
    :goto_0
    return-object v1

    .line 3612
    .end local v1           #v:Landroid/view/View;
    .restart local v0       #v:Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->findViewTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 3613
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 3614
    .end local v0           #v:Landroid/view/View;
    .restart local v1       #v:Landroid/view/View;
    goto :goto_0

    .end local v1           #v:Landroid/view/View;
    .restart local v0       #v:Landroid/view/View;
    :cond_1
    move-object v1, v0

    .line 3617
    .end local v0           #v:Landroid/view/View;
    .restart local v1       #v:Landroid/view/View;
    goto :goto_0
.end method

.method fullScroll(I)Z
    .locals 5
    .parameter "direction"

    .prologue
    const/4 v4, 0x1

    .line 2113
    const/4 v0, 0x0

    .line 2114
    .local v0, moved:Z
    const/16 v2, 0x11

    if-ne p1, v2, :cond_3

    .line 2115
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mSelectedPosition:I

    if-eqz v2, :cond_1

    .line 2116
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v4}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->lookForSelectablePosition(IZ)I

    move-result v1

    .line 2117
    .local v1, position:I
    if-ltz v1, :cond_0

    .line 2118
    iput v4, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mLayoutMode:I

    .line 2119
    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->setSelectionInt(I)V

    .line 2120
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->invokeOnItemScrollListener()V

    .line 2122
    :cond_0
    const/4 v0, 0x1

    .line 2136
    .end local v1           #position:I
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 2137
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->invalidate()V

    .line 2140
    :cond_2
    return v0

    .line 2124
    :cond_3
    const/16 v2, 0x42

    if-ne p1, v2, :cond_1

    .line 2125
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mSelectedPosition:I

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mItemCount:I

    sub-int/2addr v3, v4

    if-ge v2, v3, :cond_1

    .line 2126
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mItemCount:I

    sub-int/2addr v2, v4

    invoke-virtual {p0, v2, v4}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->lookForSelectablePosition(IZ)I

    move-result v1

    .line 2127
    .restart local v1       #position:I
    if-ltz v1, :cond_4

    .line 2128
    const/4 v2, 0x3

    iput v2, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mLayoutMode:I

    .line 2129
    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->setSelectionInt(I)V

    .line 2130
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->invokeOnItemScrollListener()V

    .line 2132
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getCheckedItemPosition()I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 3768
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mChoiceMode:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 3769
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    .line 3772
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getCheckedItemPositions()Landroid/util/SparseBooleanArray;
    .locals 1

    .prologue
    .line 3785
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    .line 3786
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 3788
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChoiceMode()I
    .locals 1

    .prologue
    .line 3661
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mChoiceMode:I

    return v0
.end method

.method public getDivider()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 3427
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDividerHeight()I
    .locals 1

    .prologue
    .line 3452
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mDividerHeight:I

    return v0
.end method

.method public getExcessScrollEffect()I
    .locals 1

    .prologue
    .line 205
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mExcessScrollEffect:I

    return v0
.end method

.method public getFooterViewsCount()I
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getHeaderViewsCount()I
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemsCanFocus()Z
    .locals 1

    .prologue
    .line 2847
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mItemsCanFocus:Z

    return v0
.end method

.method public getMaxScrollAmount()I
    .locals 3

    .prologue
    .line 273
    const v0, 0x3ea8f5c3

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mRight:I

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mLeft:I

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
    .line 3751
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    .line 3752
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    .line 3755
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected layoutChildren()V
    .locals 25

    .prologue
    .line 1415
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mBlockLayoutRequests:Z

    move v10, v0

    .line 1416
    .local v10, blockLayoutRequests:Z
    if-nez v10, :cond_0

    .line 1417
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mBlockLayoutRequests:Z

    .line 1423
    :try_start_0
    invoke-super/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->layoutChildren()V

    .line 1425
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->invalidate()V

    .line 1427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object v4, v0

    if-nez v4, :cond_1

    .line 1428
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->resetList()V

    .line 1429
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->invokeOnItemScrollListener()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1652
    if-nez v10, :cond_0

    .line 1653
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mBlockLayoutRequests:Z

    .line 1656
    :cond_0
    :goto_0
    return-void

    .line 1433
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object v4, v0

    iget v8, v4, Landroid/graphics/Rect;->left:I

    .line 1434
    .local v8, childrenTop:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mRight:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mLeft:I

    move v5, v0

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object v5, v0

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int v9, v4, v5

    .line 1436
    .local v9, childrenBottom:I
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getChildCount()I

    move-result v11

    .line 1438
    .local v11, childCount:I
    const/4 v7, 0x0

    .line 1441
    .local v7, delta:I
    const/4 v5, 0x0

    .line 1442
    .local v5, oldSel:Landroid/view/View;
    const/16 v21, 0x0

    .line 1443
    .local v21, oldFirst:Landroid/view/View;
    const/4 v6, 0x0

    .line 1445
    .local v6, newSel:Landroid/view/View;
    const/4 v15, 0x0

    .line 1448
    .local v15, focusLayoutRestoreView:Landroid/view/View;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mLayoutMode:I

    move v4, v0

    packed-switch v4, :pswitch_data_0

    .line 1463
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mSelectedPosition:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mFirstPosition:I

    move v6, v0

    .end local v6           #newSel:Landroid/view/View;
    sub-int v20, v4, v6

    .line 1464
    .local v20, index:I
    if-ltz v20, :cond_2

    move/from16 v0, v20

    move v1, v11

    if-ge v0, v1, :cond_2

    .line 1465
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1469
    :cond_2
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    .line 1471
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mNextSelectedPosition:I

    move v4, v0

    if-ltz v4, :cond_3

    .line 1472
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mNextSelectedPosition:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mSelectedPosition:I

    move v6, v0

    sub-int v7, v4, v6

    .line 1476
    :cond_3
    add-int v4, v20, v7

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1480
    .end local v20           #index:I
    .restart local v6       #newSel:Landroid/view/View;
    :cond_4
    :goto_1
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mDataChanged:Z

    move v12, v0

    .line 1481
    .local v12, dataChanged:Z
    if-eqz v12, :cond_5

    .line 1482
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->handleDataChanged()V

    .line 1487
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mItemCount:I

    move v4, v0

    if-nez v4, :cond_6

    .line 1488
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->resetList()V

    .line 1489
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->invokeOnItemScrollListener()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1652
    if-nez v10, :cond_0

    .line 1653
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mBlockLayoutRequests:Z

    goto/16 :goto_0

    .line 1450
    .end local v12           #dataChanged:Z
    :pswitch_1
    :try_start_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mNextSelectedPosition:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mFirstPosition:I

    move v12, v0

    sub-int v20, v4, v12

    .line 1451
    .restart local v20       #index:I
    if-ltz v20, :cond_4

    move/from16 v0, v20

    move v1, v11

    if-ge v0, v1, :cond_4

    .line 1452
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    goto :goto_1

    .line 1493
    .end local v20           #index:I
    .restart local v12       #dataChanged:Z
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mNextSelectedPosition:I

    move v4, v0

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->setSelectedPositionInt(I)V

    .line 1497
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mFirstPosition:I

    move v13, v0

    .line 1498
    .local v13, firstPosition:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecycleBin;

    move-object/from16 v23, v0

    .line 1501
    .local v23, recycleBin:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecycleBin;
    const/4 v14, 0x0

    .line 1506
    .local v14, focusLayoutRestoreDirectChild:Landroid/view/View;
    if-eqz v12, :cond_7

    .line 1507
    const/16 v19, 0x0

    .local v19, i:I
    :goto_2
    move/from16 v0, v19

    move v1, v11

    if-ge v0, v1, :cond_8

    .line 1508
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, v23

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 1507
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    .line 1515
    .end local v19           #i:I
    :cond_7
    move-object/from16 v0, v23

    move v1, v11

    move v2, v13

    invoke-virtual {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecycleBin;->fillActiveViews(II)V

    .line 1522
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getFocusedChild()Landroid/view/View;

    move-result-object v18

    .line 1523
    .local v18, focusedChild:Landroid/view/View;
    if-eqz v18, :cond_b

    .line 1528
    if-eqz v12, :cond_9

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->isDirectChildHeaderOrFooter(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1529
    :cond_9
    move-object/from16 v14, v18

    .line 1531
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->findFocus()Landroid/view/View;

    move-result-object v15

    .line 1532
    if-eqz v15, :cond_a

    .line 1534
    invoke-virtual {v15}, Landroid/view/View;->onStartTemporaryDetach()V

    .line 1537
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->requestFocus()Z

    .line 1542
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->detachAllViewsFromParent()V

    .line 1544
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mLayoutMode:I

    move v4, v0

    packed-switch v4, :pswitch_data_1

    .line 1571
    if-nez v11, :cond_15

    .line 1572
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mStackFromBottom:Z

    move v4, v0

    if-nez v4, :cond_14

    .line 1573
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->lookForSelectablePosition(IZ)I

    .end local v5           #oldSel:Landroid/view/View;
    move-result v22

    .line 1574
    .local v22, position:I
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->setSelectedPositionInt(I)V

    .line 1575
    move-object/from16 v0, p0

    move v1, v8

    invoke-direct {v0, v1}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->fillFromTop(I)Landroid/view/View;

    move-result-object v24

    .line 1596
    .end local v6           #newSel:Landroid/view/View;
    .end local v22           #position:I
    .local v24, sel:Landroid/view/View;
    :goto_3
    invoke-virtual/range {v23 .. v23}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecycleBin;->scrapActiveViews()V

    .line 1598
    if-eqz v24, :cond_1d

    .line 1601
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mItemsCanFocus:Z

    move v4, v0

    if-eqz v4, :cond_1c

    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_1c

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->hasFocus()Z

    move-result v4

    if-nez v4, :cond_1c

    .line 1602
    move-object/from16 v0, v24

    move-object v1, v14

    if-ne v0, v1, :cond_c

    invoke-virtual {v15}, Landroid/view/View;->requestFocus()Z

    move-result v4

    if-nez v4, :cond_d

    :cond_c
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->requestFocus()Z

    move-result v4

    if-eqz v4, :cond_1a

    :cond_d
    const/4 v4, 0x1

    move/from16 v16, v4

    .line 1604
    .local v16, focusWasTaken:Z
    :goto_4
    if-nez v16, :cond_1b

    .line 1608
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getFocusedChild()Landroid/view/View;

    move-result-object v17

    .line 1609
    .local v17, focused:Landroid/view/View;
    if-eqz v17, :cond_e

    .line 1610
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->clearFocus()V

    .line 1612
    :cond_e
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->positionSelector(Landroid/view/View;)V

    .line 1620
    .end local v16           #focusWasTaken:Z
    .end local v17           #focused:Landroid/view/View;
    :goto_5
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getLeft()I

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mSelectedTop:I

    .line 1634
    :cond_f
    :goto_6
    if-eqz v15, :cond_10

    invoke-virtual {v15}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    if-eqz v4, :cond_10

    .line 1636
    invoke-virtual {v15}, Landroid/view/View;->onFinishTemporaryDetach()V

    .line 1639
    :cond_10
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mLayoutMode:I

    .line 1640
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mDataChanged:Z

    .line 1641
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mNeedSync:Z

    .line 1642
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mSelectedPosition:I

    move v4, v0

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->setNextSelectedPositionInt(I)V

    .line 1644
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->updateScrollIndicators()V

    .line 1646
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mItemCount:I

    move v4, v0

    if-lez v4, :cond_11

    .line 1647
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->checkSelectionChanged()V

    .line 1650
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->invokeOnItemScrollListener()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1652
    if-nez v10, :cond_0

    .line 1653
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mBlockLayoutRequests:Z

    goto/16 :goto_0

    .line 1546
    .end local v24           #sel:Landroid/view/View;
    .restart local v5       #oldSel:Landroid/view/View;
    .restart local v6       #newSel:Landroid/view/View;
    :pswitch_2
    if-eqz v6, :cond_12

    .line 1547
    :try_start_3
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v4

    move-object/from16 v0, p0

    move v1, v4

    move v2, v8

    move v3, v9

    invoke-direct {v0, v1, v2, v3}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->fillFromSelection(III)Landroid/view/View;

    move-result-object v24

    .restart local v24       #sel:Landroid/view/View;
    goto/16 :goto_3

    .line 1549
    .end local v24           #sel:Landroid/view/View;
    :cond_12
    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    invoke-direct {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->fillFromMiddle(II)Landroid/view/View;

    move-result-object v24

    .line 1551
    .restart local v24       #sel:Landroid/view/View;
    goto/16 :goto_3

    .line 1553
    .end local v24           #sel:Landroid/view/View;
    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mSyncPosition:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mSpecificTop:I

    move v5, v0

    .end local v5           #oldSel:Landroid/view/View;
    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v24

    .line 1554
    .restart local v24       #sel:Landroid/view/View;
    goto/16 :goto_3

    .line 1556
    .end local v24           #sel:Landroid/view/View;
    .restart local v5       #oldSel:Landroid/view/View;
    :pswitch_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mItemCount:I

    move v4, v0

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    move v1, v4

    move v2, v9

    invoke-direct {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->fillUp(II)Landroid/view/View;

    .end local v5           #oldSel:Landroid/view/View;
    move-result-object v24

    .line 1557
    .restart local v24       #sel:Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->adjustViewsUpOrDown()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_3

    .line 1652
    .end local v6           #newSel:Landroid/view/View;
    .end local v7           #delta:I
    .end local v8           #childrenTop:I
    .end local v9           #childrenBottom:I
    .end local v11           #childCount:I
    .end local v12           #dataChanged:Z
    .end local v13           #firstPosition:I
    .end local v14           #focusLayoutRestoreDirectChild:Landroid/view/View;
    .end local v15           #focusLayoutRestoreView:Landroid/view/View;
    .end local v18           #focusedChild:Landroid/view/View;
    .end local v21           #oldFirst:Landroid/view/View;
    .end local v23           #recycleBin:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecycleBin;
    .end local v24           #sel:Landroid/view/View;
    :catchall_0
    move-exception v4

    if-nez v10, :cond_13

    .line 1653
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mBlockLayoutRequests:Z

    :cond_13
    throw v4

    .line 1560
    .restart local v5       #oldSel:Landroid/view/View;
    .restart local v6       #newSel:Landroid/view/View;
    .restart local v7       #delta:I
    .restart local v8       #childrenTop:I
    .restart local v9       #childrenBottom:I
    .restart local v11       #childCount:I
    .restart local v12       #dataChanged:Z
    .restart local v13       #firstPosition:I
    .restart local v14       #focusLayoutRestoreDirectChild:Landroid/view/View;
    .restart local v15       #focusLayoutRestoreView:Landroid/view/View;
    .restart local v18       #focusedChild:Landroid/view/View;
    .restart local v21       #oldFirst:Landroid/view/View;
    .restart local v23       #recycleBin:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecycleBin;
    :pswitch_5
    const/4 v4, 0x0

    :try_start_4
    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mFirstPosition:I

    .line 1561
    move-object/from16 v0, p0

    move v1, v8

    invoke-direct {v0, v1}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->fillFromTop(I)Landroid/view/View;

    move-result-object v24

    .line 1562
    .restart local v24       #sel:Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->adjustViewsUpOrDown()V

    goto/16 :goto_3

    .line 1565
    .end local v24           #sel:Landroid/view/View;
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->reconcileSelectedPosition()I

    move-result v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mSpecificTop:I

    move v5, v0

    .end local v5           #oldSel:Landroid/view/View;
    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v24

    .line 1566
    .restart local v24       #sel:Landroid/view/View;
    goto/16 :goto_3

    .end local v24           #sel:Landroid/view/View;
    .restart local v5       #oldSel:Landroid/view/View;
    :pswitch_7
    move-object/from16 v4, p0

    .line 1568
    invoke-direct/range {v4 .. v9}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->moveSelection(Landroid/view/View;Landroid/view/View;III)Landroid/view/View;

    move-result-object v24

    .line 1569
    .restart local v24       #sel:Landroid/view/View;
    goto/16 :goto_3

    .line 1577
    .end local v24           #sel:Landroid/view/View;
    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mItemCount:I

    move v4, v0

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->lookForSelectablePosition(IZ)I

    .end local v5           #oldSel:Landroid/view/View;
    move-result v22

    .line 1578
    .restart local v22       #position:I
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->setSelectedPositionInt(I)V

    .line 1579
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mItemCount:I

    move v4, v0

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    move v1, v4

    move v2, v9

    invoke-direct {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->fillUp(II)Landroid/view/View;

    move-result-object v24

    .line 1580
    .restart local v24       #sel:Landroid/view/View;
    goto/16 :goto_3

    .line 1582
    .end local v22           #position:I
    .end local v24           #sel:Landroid/view/View;
    .restart local v5       #oldSel:Landroid/view/View;
    :cond_15
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mSelectedPosition:I

    move v4, v0

    if-ltz v4, :cond_17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mSelectedPosition:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mItemCount:I

    move v6, v0

    .end local v6           #newSel:Landroid/view/View;
    if-ge v4, v6, :cond_17

    .line 1583
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mSelectedPosition:I

    move v4, v0

    if-nez v5, :cond_16

    move v5, v8

    .end local v5           #oldSel:Landroid/view/View;
    :goto_7
    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v24

    .restart local v24       #sel:Landroid/view/View;
    goto/16 :goto_3

    .end local v24           #sel:Landroid/view/View;
    .restart local v5       #oldSel:Landroid/view/View;
    :cond_16
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    goto :goto_7

    .line 1585
    :cond_17
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mFirstPosition:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mItemCount:I

    move v5, v0

    .end local v5           #oldSel:Landroid/view/View;
    if-ge v4, v5, :cond_19

    .line 1586
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mFirstPosition:I

    move v4, v0

    if-nez v21, :cond_18

    move v5, v8

    :goto_8
    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v24

    .restart local v24       #sel:Landroid/view/View;
    goto/16 :goto_3

    .end local v24           #sel:Landroid/view/View;
    :cond_18
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getLeft()I

    move-result v5

    goto :goto_8

    .line 1589
    :cond_19
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v4

    move v2, v8

    invoke-direct {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v24

    .restart local v24       #sel:Landroid/view/View;
    goto/16 :goto_3

    .line 1602
    :cond_1a
    const/4 v4, 0x0

    move/from16 v16, v4

    goto/16 :goto_4

    .line 1614
    .restart local v16       #focusWasTaken:Z
    :cond_1b
    const/4 v4, 0x0

    move-object/from16 v0, v24

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 1615
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mSelectorRect:Landroid/graphics/Rect;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_5

    .line 1618
    .end local v16           #focusWasTaken:Z
    :cond_1c
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->positionSelector(Landroid/view/View;)V

    goto/16 :goto_5

    .line 1622
    :cond_1d
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mSelectedTop:I

    .line 1623
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mSelectorRect:Landroid/graphics/Rect;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    .line 1627
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_f

    if-eqz v15, :cond_f

    .line 1628
    invoke-virtual {v15}, Landroid/view/View;->requestFocus()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_6

    .line 1448
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 1544
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

    .line 1881
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 1882
    .local v0, adapter:Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v2, v3

    .line 1908
    :goto_0
    return v2

    .line 1886
    :cond_1
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 1887
    .local v1, count:I
    iget-boolean v2, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mAreAllItemsSelectable:Z

    if-nez v2, :cond_6

    .line 1888
    if-eqz p2, :cond_2

    .line 1889
    const/4 v2, 0x0

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1890
    :goto_1
    if-ge p1, v1, :cond_3

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1891
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 1894
    :cond_2
    const/4 v2, 0x1

    sub-int v2, v1, v2

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1895
    :goto_2
    if-ltz p1, :cond_3

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1896
    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    .line 1900
    :cond_3
    if-ltz p1, :cond_4

    if-lt p1, v1, :cond_5

    :cond_4
    move v2, v3

    .line 1901
    goto :goto_0

    :cond_5
    move v2, p1

    .line 1903
    goto :goto_0

    .line 1905
    :cond_6
    if-ltz p1, :cond_7

    if-lt p1, v1, :cond_8

    :cond_7
    move v2, v3

    .line 1906
    goto :goto_0

    :cond_8
    move v2, p1

    .line 1908
    goto :goto_0
.end method

.method final measureWidthOfChildren(IIIII)I
    .locals 10
    .parameter "heightMeasureSpec"
    .parameter "startPosition"
    .parameter "endPosition"
    .parameter "maxWidth"
    .parameter "disallowPartialChildPosition"

    .prologue
    .line 1191
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 1192
    .local v0, adapter:Landroid/widget/ListAdapter;
    if-nez v0, :cond_0

    .line 1193
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget-object v9, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v9

    .line 1245
    :goto_0
    return v8

    .line 1197
    :cond_0
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget-object v9, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int v7, v8, v9

    .line 1198
    .local v7, returnedWidth:I
    iget v8, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mDividerHeight:I

    if-lez v8, :cond_4

    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_4

    iget v8, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mDividerHeight:I

    move v2, v8

    .line 1201
    .local v2, dividerHeight:I
    :goto_1
    const/4 v4, 0x0

    .line 1206
    .local v4, prevWidthWithoutPartialChild:I
    const/4 v8, -0x1

    if-ne p3, v8, :cond_1

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v8

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    move p3, v8

    .line 1207
    :cond_1
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecycleBin;

    .line 1208
    .local v5, recycleBin:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecycleBin;
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->recycleOnMeasure()Z

    move-result v6

    .line 1210
    .local v6, recyle:Z
    move v3, p2

    .local v3, i:I
    :goto_2
    if-gt v3, p3, :cond_8

    .line 1211
    invoke-virtual {p0, v3}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->obtainView(I)Landroid/view/View;

    move-result-object v1

    .line 1213
    .local v1, child:Landroid/view/View;
    invoke-direct {p0, v1, v3, p1}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->measureScrapChild(Landroid/view/View;II)V

    .line 1215
    if-lez v3, :cond_2

    .line 1217
    add-int/2addr v7, v2

    .line 1221
    :cond_2
    if-eqz v6, :cond_3

    .line 1222
    invoke-virtual {v5, v1}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 1225
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v7, v8

    .line 1227
    if-lt v7, p4, :cond_6

    .line 1230
    if-ltz p5, :cond_5

    if-le v3, p5, :cond_5

    if-lez v4, :cond_5

    if-eq v7, p4, :cond_5

    move v8, v4

    goto :goto_0

    .line 1198
    .end local v1           #child:Landroid/view/View;
    .end local v2           #dividerHeight:I
    .end local v3           #i:I
    .end local v4           #prevWidthWithoutPartialChild:I
    .end local v5           #recycleBin:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecycleBin;
    .end local v6           #recyle:Z
    :cond_4
    const/4 v8, 0x0

    move v2, v8

    goto :goto_1

    .restart local v1       #child:Landroid/view/View;
    .restart local v2       #dividerHeight:I
    .restart local v3       #i:I
    .restart local v4       #prevWidthWithoutPartialChild:I
    .restart local v5       #recycleBin:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecycleBin;
    .restart local v6       #recyle:Z
    :cond_5
    move v8, p4

    .line 1230
    goto :goto_0

    .line 1238
    :cond_6
    if-ltz p5, :cond_7

    if-lt v3, p5, :cond_7

    .line 1239
    move v4, v7

    .line 1210
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .end local v1           #child:Landroid/view/View;
    :cond_8
    move v8, v7

    .line 1245
    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 3542
    invoke-super {p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->onFinishInflate()V

    .line 3544
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getChildCount()I

    move-result v0

    .line 3545
    .local v0, count:I
    if-lez v0, :cond_1

    .line 3546
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 3547
    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->addHeaderView(Landroid/view/View;)V

    .line 3546
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3549
    :cond_0
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->removeAllViews()V

    .line 3551
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
    .line 3494
    invoke-super {p0, p1, p2, p3}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 3496
    const/4 v2, -0x1

    .line 3497
    .local v2, closetChildIndex:I
    if-eqz p1, :cond_2

    if-eqz p3, :cond_2

    .line 3498
    iget v9, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mScrollX:I

    iget v10, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mScrollY:I

    invoke-virtual {p3, v9, v10}, Landroid/graphics/Rect;->offset(II)V

    .line 3502
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    .line 3503
    .local v8, otherRect:Landroid/graphics/Rect;
    const v6, 0x7fffffff

    .line 3504
    .local v6, minDistance:I
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getChildCount()I

    move-result v1

    .line 3505
    .local v1, childCount:I
    iget v4, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mFirstPosition:I

    .line 3506
    .local v4, firstPosition:I
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 3508
    .local v0, adapter:Landroid/widget/ListAdapter;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v1, :cond_2

    .line 3510
    add-int v9, v4, v5

    invoke-interface {v0, v9}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v9

    if-nez v9, :cond_1

    .line 3508
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 3514
    :cond_1
    invoke-virtual {p0, v5}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 3515
    .local v7, other:Landroid/view/View;
    invoke-virtual {v7, v8}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 3516
    invoke-virtual {p0, v7, v8}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3517
    invoke-static {p3, v8, p2}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result v3

    .line 3519
    .local v3, distance:I
    if-ge v3, v6, :cond_0

    .line 3520
    move v6, v3

    .line 3521
    move v2, v5

    goto :goto_1

    .line 3526
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

    .line 3527
    iget v9, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mFirstPosition:I

    add-int/2addr v9, v2

    invoke-virtual {p0, v9}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->setSelection(I)V

    .line 3531
    :goto_2
    return-void

    .line 3529
    :cond_3
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->requestLayout()V

    goto :goto_2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1950
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "repeatCount"
    .parameter "event"

    .prologue
    .line 1955
    invoke-direct {p0, p1, p2, p3}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1960
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->commonKey(IILandroid/view/KeyEvent;)Z

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

    .line 1086
    invoke-super {p0, p1, p2}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->onMeasure(II)V

    .line 1088
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    .line 1089
    .local v11, widthMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    .line 1090
    .local v9, heightMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 1091
    .local v4, widthSize:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    .line 1093
    .local v10, heightSize:I
    const/4 v8, 0x0

    .line 1094
    .local v8, childWidth:I
    const/4 v7, 0x0

    .line 1096
    .local v7, childHeight:I
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_5

    move v0, v2

    :goto_0
    iput v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mItemCount:I

    .line 1097
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mItemCount:I

    if-lez v0, :cond_1

    if-eqz v9, :cond_0

    if-nez v11, :cond_1

    .line 1099
    :cond_0
    invoke-virtual {p0, v2}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->obtainView(I)Landroid/view/View;

    move-result-object v6

    .line 1101
    .local v6, child:Landroid/view/View;
    invoke-direct {p0, v6, v2, p2}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->measureScrapChild(Landroid/view/View;II)V

    .line 1103
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 1104
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 1106
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->recycleOnMeasure()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1107
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecycleBin;

    invoke-virtual {v0, v6}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 1111
    .end local v6           #child:Landroid/view/View;
    :cond_1
    if-nez v9, :cond_2

    .line 1112
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    add-int/2addr v0, v7

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getHorizontalScrollbarHeight()I

    move-result v1

    add-int v10, v0, v1

    .line 1116
    :cond_2
    if-nez v11, :cond_3

    .line 1117
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    add-int/2addr v0, v8

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getHorizontalFadingEdgeLength()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int v4, v0, v1

    .line 1121
    :cond_3
    const/high16 v0, -0x8000

    if-ne v11, v0, :cond_4

    move-object v0, p0

    move v1, p2

    move v5, v3

    .line 1123
    invoke-virtual/range {v0 .. v5}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->measureWidthOfChildren(IIIII)I

    move-result v4

    .line 1126
    :cond_4
    invoke-virtual {p0, v4, v10}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->setMeasuredDimension(II)V

    .line 1127
    iput p2, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mHeightMeasureSpec:I

    .line 1128
    return-void

    .line 1096
    :cond_5
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 3852
    move-object v0, p1

    check-cast v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView$SavedState;

    move-object v1, v0

    .line 3854
    .local v1, ss:Lcom/nemustech/tiffany/widget/TFHorizontalListView$SavedState;
    invoke-virtual {v1}, Lcom/nemustech/tiffany/widget/TFHorizontalListView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 3856
    iget-object v2, v1, Lcom/nemustech/tiffany/widget/TFHorizontalListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    if-eqz v2, :cond_0

    .line 3857
    iget-object v2, v1, Lcom/nemustech/tiffany/widget/TFHorizontalListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    iput-object v2, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 3860
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 3846
    invoke-super {p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 3847
    .local v0, superState:Landroid/os/Parcelable;
    new-instance v1, Lcom/nemustech/tiffany/widget/TFHorizontalListView$SavedState;

    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-direct {v1, v0, v2}, Lcom/nemustech/tiffany/widget/TFHorizontalListView$SavedState;-><init>(Landroid/os/Parcelable;Landroid/util/SparseBooleanArray;)V

    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 3646
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mItemsCanFocus:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    if-eqz v0, :cond_0

    .line 3649
    const/4 v0, 0x0

    .line 3652
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method pageScroll(I)Z
    .locals 8
    .parameter "direction"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2069
    const/4 v1, -0x1

    .line 2070
    .local v1, nextPage:I
    const/4 v0, 0x0

    .line 2072
    .local v0, down:Z
    const/16 v3, 0x11

    if-ne p1, v3, :cond_3

    .line 2073
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mSelectedPosition:I

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getChildCount()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr v3, v6

    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2079
    :cond_0
    :goto_0
    if-ltz v1, :cond_4

    .line 2080
    invoke-virtual {p0, v1, v0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->lookForSelectablePosition(IZ)I

    move-result v2

    .line 2081
    .local v2, position:I
    if-ltz v2, :cond_4

    .line 2082
    const/4 v3, 0x4

    iput v3, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mLayoutMode:I

    .line 2083
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mPaddingLeft:I

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getHorizontalFadingEdgeLength()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mSpecificTop:I

    .line 2085
    if-eqz v0, :cond_1

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mItemCount:I

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getChildCount()I

    move-result v4

    sub-int/2addr v3, v4

    if-le v2, v3, :cond_1

    .line 2086
    const/4 v3, 0x3

    iput v3, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mLayoutMode:I

    .line 2089
    :cond_1
    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 2090
    iput v6, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mLayoutMode:I

    .line 2093
    :cond_2
    invoke-virtual {p0, v2}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->setSelectionInt(I)V

    .line 2094
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->invokeOnItemScrollListener()V

    .line 2095
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->invalidate()V

    move v3, v6

    .line 2101
    .end local v2           #position:I
    :goto_1
    return v3

    .line 2074
    :cond_3
    const/16 v3, 0x42

    if-ne p1, v3, :cond_0

    .line 2075
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mItemCount:I

    sub-int/2addr v3, v6

    iget v4, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mSelectedPosition:I

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getChildCount()I

    move-result v5

    add-int/2addr v4, v5

    sub-int/2addr v4, v6

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2076
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    move v3, v7

    .line 2101
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

    .line 3682
    const/4 v0, 0x0

    .line 3684
    .local v0, handled:Z
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mChoiceMode:I

    if-eqz v2, :cond_1

    .line 3685
    const/4 v0, 0x1

    .line 3687
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mChoiceMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 3688
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p2, v4}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    .line 3689
    .local v1, oldValue:Z
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-nez v1, :cond_2

    move v3, v5

    :goto_0
    invoke-virtual {v2, p2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 3698
    :cond_0
    :goto_1
    iput-boolean v5, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mDataChanged:Z

    .line 3699
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->rememberSyncState()V

    .line 3700
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->requestLayout()V

    .line 3703
    .end local v1           #oldValue:Z
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v2

    or-int/2addr v0, v2

    .line 3705
    return v0

    .restart local v1       #oldValue:Z
    :cond_2
    move v3, v4

    .line 3689
    goto :goto_0

    .line 3691
    .end local v1           #oldValue:Z
    :cond_3
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p2, v4}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    .line 3692
    .restart local v1       #oldValue:Z
    if-nez v1, :cond_0

    .line 3693
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 3694
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p2, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_1
.end method

.method protected recycleOnMeasure()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1159
    const/4 v0, 0x1

    return v0
.end method

.method public removeFooterView(Landroid/view/View;)Z
    .locals 2
    .parameter "v"

    .prologue
    .line 455
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 456
    const/4 v0, 0x0

    .line 457
    .local v0, result:Z
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Lcom/nemustech/tiffany/widget/TFHeaderViewHorizontalListAdapter;

    invoke-virtual {v1, p1}, Lcom/nemustech/tiffany/widget/TFHeaderViewHorizontalListAdapter;->removeFooter(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 458
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mDataSetObserver:Lcom/nemustech/tiffany/widget/TFAdapterView$AdapterDataSetObserver;

    invoke-virtual {v1}, Lcom/nemustech/tiffany/widget/TFAdapterView$AdapterDataSetObserver;->onChanged()V

    .line 459
    const/4 v0, 0x1

    .line 461
    :cond_0
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    move v1, v0

    .line 464
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
    .line 378
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 379
    const/4 v0, 0x0

    .line 380
    .local v0, result:Z
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Lcom/nemustech/tiffany/widget/TFHeaderViewHorizontalListAdapter;

    invoke-virtual {v1, p1}, Lcom/nemustech/tiffany/widget/TFHeaderViewHorizontalListAdapter;->removeHeader(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 381
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mDataSetObserver:Lcom/nemustech/tiffany/widget/TFAdapterView$AdapterDataSetObserver;

    invoke-virtual {v1}, Lcom/nemustech/tiffany/widget/TFAdapterView$AdapterDataSetObserver;->onChanged()V

    .line 382
    const/4 v0, 0x1

    .line 384
    :cond_0
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    move v1, v0

    .line 387
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
    .line 586
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v10, v0

    .line 589
    .local v10, rectTopWithinChild:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v16

    move-object/from16 v0, p2

    move v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 590
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

    .line 592
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getWidth()I

    move-result v14

    .line 593
    .local v14, width:I
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getScrollX()I

    move-result v8

    .line 594
    .local v8, listUnfadedLeft:I
    add-int v9, v8, v14

    .line 595
    .local v9, listUnfadedRight:I
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getHorizontalFadingEdgeLength()I

    move-result v6

    .line 597
    .local v6, fadingEdge:I
    invoke-direct/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->showingTopFadingEdge()Z

    move-result v15

    if-eqz v15, :cond_1

    .line 599
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mSelectedPosition:I

    move v15, v0

    if-gtz v15, :cond_0

    if-le v10, v6, :cond_1

    .line 600
    :cond_0
    add-int/2addr v8, v6

    .line 604
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getChildCount()I

    move-result v3

    .line 605
    .local v3, childCount:I
    const/4 v15, 0x1

    sub-int v15, v3, v15

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getRight()I

    move-result v11

    .line 607
    .local v11, rightOfRightChild:I
    invoke-direct/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->showingBottomFadingEdge()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 609
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mSelectedPosition:I

    move v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mItemCount:I

    move/from16 v16, v0

    const/16 v17, 0x1

    sub-int v16, v16, v17

    move v0, v15

    move/from16 v1, v16

    if-lt v0, v1, :cond_2

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v15, v0

    sub-int v16, v11, v6

    move v0, v15

    move/from16 v1, v16

    if-ge v0, v1, :cond_3

    .line 611
    :cond_2
    sub-int/2addr v9, v6

    .line 615
    :cond_3
    const/4 v13, 0x0

    .line 617
    .local v13, scrollXDelta:I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v15, v0

    if-le v15, v9, :cond_7

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v15, v0

    if-le v15, v8, :cond_7

    .line 622
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v15

    if-le v15, v14, :cond_6

    .line 624
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v15, v0

    sub-int/2addr v15, v8

    add-int/2addr v13, v15

    .line 631
    :goto_0
    sub-int v5, v11, v9

    .line 632
    .local v5, distanceToRight:I
    invoke-static {v13, v5}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 652
    .end local v5           #distanceToRight:I
    :cond_4
    :goto_1
    if-eqz v13, :cond_9

    const/4 v15, 0x1

    move v12, v15

    .line 653
    .local v12, scroll:Z
    :goto_2
    if-eqz v12, :cond_5

    .line 654
    neg-int v15, v13

    move-object/from16 v0, p0

    move v1, v15

    invoke-direct {v0, v1}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->scrollListItemsBy(I)V

    .line 655
    invoke-virtual/range {p0 .. p1}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->positionSelector(Landroid/view/View;)V

    .line 656
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v15

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mSelectedTop:I

    .line 657
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->invalidate()V

    .line 659
    :cond_5
    return v12

    .line 627
    .end local v12           #scroll:Z
    :cond_6
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v15, v0

    sub-int/2addr v15, v9

    add-int/2addr v13, v15

    goto :goto_0

    .line 633
    :cond_7
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v15, v0

    if-ge v15, v8, :cond_4

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v15, v0

    if-ge v15, v9, :cond_4

    .line 638
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v15

    if-le v15, v14, :cond_8

    .line 640
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v15, v0

    sub-int v15, v9, v15

    sub-int/2addr v13, v15

    .line 647
    :goto_3
    const/4 v15, 0x0

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getLeft()I

    move-result v7

    .line 648
    .local v7, left:I
    sub-int v4, v7, v8

    .line 649
    .local v4, deltaToLeft:I
    invoke-static {v13, v4}, Ljava/lang/Math;->max(II)I

    move-result v13

    goto :goto_1

    .line 643
    .end local v4           #deltaToLeft:I
    .end local v7           #left:I
    :cond_8
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v15, v0

    sub-int v15, v8, v15

    sub-int/2addr v13, v15

    goto :goto_3

    .line 652
    :cond_9
    const/4 v15, 0x0

    move v12, v15

    goto :goto_2
.end method

.method resetList()V
    .locals 1

    .prologue
    .line 556
    invoke-super {p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->resetList()V

    .line 557
    const/4 v0, 0x0

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mLayoutMode:I

    .line 558
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 6
    .parameter "adapter"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 496
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    .line 497
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mDataSetObserver:Lcom/nemustech/tiffany/widget/TFAdapterView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 500
    :cond_0
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->resetList()V

    .line 501
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecycleBin;

    invoke-virtual {v1}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecycleBin;->clear()V

    .line 503
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_1

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 504
    :cond_1
    new-instance v1, Lcom/nemustech/tiffany/widget/TFHeaderViewHorizontalListAdapter;

    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3, p1}, Lcom/nemustech/tiffany/widget/TFHeaderViewHorizontalListAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    iput-object v1, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 509
    :goto_0
    const/4 v1, -0x1

    iput v1, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mOldSelectedPosition:I

    .line 510
    const-wide/high16 v1, -0x8000

    iput-wide v1, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mOldSelectedRowId:J

    .line 511
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_6

    .line 512
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mAreAllItemsSelectable:Z

    .line 513
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mItemCount:I

    iput v1, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mOldItemCount:I

    .line 514
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    iput v1, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mItemCount:I

    .line 515
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->checkFocus()V

    .line 517
    new-instance v1, Lcom/nemustech/tiffany/widget/TFAdapterView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Lcom/nemustech/tiffany/widget/TFAdapterView$AdapterDataSetObserver;-><init>(Lcom/nemustech/tiffany/widget/TFAdapterView;)V

    iput-object v1, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mDataSetObserver:Lcom/nemustech/tiffany/widget/TFAdapterView$AdapterDataSetObserver;

    .line 518
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mDataSetObserver:Lcom/nemustech/tiffany/widget/TFAdapterView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 520
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecycleBin;

    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$RecycleBin;->setViewTypeCount(I)V

    .line 523
    iget-boolean v1, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mStackFromBottom:Z

    if-eqz v1, :cond_5

    .line 524
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mItemCount:I

    sub-int/2addr v1, v4

    invoke-virtual {p0, v1, v5}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->lookForSelectablePosition(IZ)I

    move-result v0

    .line 528
    .local v0, position:I
    :goto_1
    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->setSelectedPositionInt(I)V

    .line 529
    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->setNextSelectedPositionInt(I)V

    .line 531
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mItemCount:I

    if-nez v1, :cond_2

    .line 533
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->checkSelectionChanged()V

    .line 543
    .end local v0           #position:I
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v1, :cond_3

    .line 544
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 547
    :cond_3
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->requestLayout()V

    .line 548
    return-void

    .line 506
    :cond_4
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    goto :goto_0

    .line 526
    :cond_5
    invoke-virtual {p0, v5, v4}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->lookForSelectablePosition(IZ)I

    move-result v0

    .restart local v0       #position:I
    goto :goto_1

    .line 537
    .end local v0           #position:I
    :cond_6
    iput-boolean v4, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mAreAllItemsSelectable:Z

    .line 538
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->checkFocus()V

    .line 540
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->checkSelectionChanged()V

    goto :goto_2
.end method

.method public setChoiceMode(I)V
    .locals 1
    .parameter "choiceMode"

    .prologue
    .line 3674
    iput p1, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mChoiceMode:I

    .line 3675
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_0

    .line 3676
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 3678
    :cond_0
    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "divider"

    .prologue
    const/4 v0, 0x0

    .line 3437
    if-eqz p1, :cond_0

    .line 3438
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mDividerHeight:I

    .line 3439
    instance-of v0, p1, Landroid/graphics/drawable/ColorDrawable;

    iput-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mClipDivider:Z

    .line 3444
    :goto_0
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 3445
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->requestLayoutIfNecessary()V

    .line 3446
    return-void

    .line 3441
    :cond_0
    iput v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mDividerHeight:I

    .line 3442
    iput-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mClipDivider:Z

    goto :goto_0
.end method

.method public setDividerHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 3462
    iput p1, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mDividerHeight:I

    .line 3463
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->requestLayoutIfNecessary()V

    .line 3464
    return-void
.end method

.method public setExcessScrollEffect(I)V
    .locals 1
    .parameter "effect"

    .prologue
    .line 194
    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    .line 196
    iput p1, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mExcessScrollEffect:I

    .line 198
    :cond_0
    return-void
.end method

.method public setFooterDividersEnabled(Z)V
    .locals 0
    .parameter "footerDividersEnabled"

    .prologue
    .line 3488
    iput-boolean p1, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mFooterDividersEnabled:Z

    .line 3489
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->invalidate()V

    .line 3490
    return-void
.end method

.method public setHeaderDividersEnabled(Z)V
    .locals 0
    .parameter "headerDividersEnabled"

    .prologue
    .line 3475
    iput-boolean p1, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mHeaderDividersEnabled:Z

    .line 3476
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->invalidate()V

    .line 3477
    return-void
.end method

.method public setItemChecked(IZ)V
    .locals 4
    .parameter "position"
    .parameter "value"

    .prologue
    const/4 v3, 0x1

    .line 3717
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mChoiceMode:I

    if-nez v1, :cond_1

    .line 3737
    :cond_0
    :goto_0
    return-void

    .line 3721
    :cond_1
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mChoiceMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 3722
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 3732
    :cond_2
    :goto_1
    iget-boolean v1, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mInLayout:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mBlockLayoutRequests:Z

    if-nez v1, :cond_0

    .line 3733
    iput-boolean v3, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mDataChanged:Z

    .line 3734
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->rememberSyncState()V

    .line 3735
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->requestLayout()V

    goto :goto_0

    .line 3724
    :cond_3
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    .line 3725
    .local v0, oldValue:Z
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 3726
    if-nez v0, :cond_2

    .line 3727
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_1
.end method

.method public setItemsCanFocus(Z)V
    .locals 1
    .parameter "itemsCanFocus"

    .prologue
    .line 2836
    iput-boolean p1, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mItemsCanFocus:Z

    .line 2837
    if-nez p1, :cond_0

    .line 2838
    const/high16 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->setDescendantFocusability(I)V

    .line 2840
    :cond_0
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 1821
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->setSelectionFromTop(II)V

    .line 1822
    return-void
.end method

.method public setSelectionAfterHeaderView()V
    .locals 2

    .prologue
    .line 1917
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1918
    .local v0, count:I
    if-lez v0, :cond_0

    .line 1919
    const/4 v1, 0x0

    iput v1, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mNextSelectedPosition:I

    .line 1930
    :goto_0
    return-void

    .line 1923
    :cond_0
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    .line 1924
    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->setSelection(I)V

    goto :goto_0

    .line 1926
    :cond_1
    iput v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mNextSelectedPosition:I

    .line 1927
    const/4 v1, 0x2

    iput v1, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mLayoutMode:I

    goto :goto_0
.end method

.method public setSelectionFromTop(II)V
    .locals 2
    .parameter "position"
    .parameter "y"

    .prologue
    .line 1834
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_1

    .line 1858
    :cond_0
    :goto_0
    return-void

    .line 1838
    :cond_1
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1839
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->lookForSelectablePosition(IZ)I

    move-result p1

    .line 1840
    if-ltz p1, :cond_2

    .line 1841
    invoke-virtual {p0, p1}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->setNextSelectedPositionInt(I)V

    .line 1847
    :cond_2
    :goto_1
    if-ltz p1, :cond_0

    .line 1848
    const/4 v0, 0x4

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mLayoutMode:I

    .line 1849
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mSpecificTop:I

    .line 1851
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mNeedSync:Z

    if-eqz v0, :cond_3

    .line 1852
    iput p1, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mSyncPosition:I

    .line 1853
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mSyncRowId:J

    .line 1856
    :cond_3
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->requestLayout()V

    goto :goto_0

    .line 1844
    :cond_4
    iput p1, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->mResurrectToPosition:I

    goto :goto_1
.end method

.method setSelectionInt(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 1867
    invoke-virtual {p0, p1}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->setNextSelectedPositionInt(I)V

    .line 1868
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView;->layoutChildren()V

    .line 1869
    return-void
.end method
