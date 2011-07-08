.class public Landroid/widget/ListView;
.super Landroid/widget/AbsListView;
.source "ListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ListView$SavedState;,
        Landroid/widget/ListView$ArrowScrollFocusResult;,
        Landroid/widget/ListView$FocusSelector;,
        Landroid/widget/ListView$FixedViewInfo;
    }
.end annotation


# static fields
.field public static final CHOICE_MODE_MULTIPLE:I = 0x2

.field public static final CHOICE_MODE_NONE:I = 0x0

.field public static final CHOICE_MODE_SINGLE:I = 0x1

.field public static final EXCESS_SCROLL_RECOVER_EFFECT_DEFAULT:I = 0x0

.field public static final EXCESS_SCROLL_RECOVER_EFFECT_ITEM_SPRING:I = 0x1

.field private static final EXCESS_SCROLL_TENSION:F = 0.5f

.field private static final MAX_SCROLL_FACTOR:F = 0.33f

.field private static final MIN_SCROLL_PREVIEW_PIXELS:I = 0x2

.field static final NO_POSITION:I = -0x1


# instance fields
.field private mAreAllItemsSelectable:Z

.field private final mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

.field private mCheckStates:Landroid/util/SparseBooleanArray;

.field private mCheckedIdStates:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mChoiceMode:I

.field private mClipDivider:Z

.field mDivider:Landroid/graphics/drawable/Drawable;

.field mDividerHeight:I

.field private mDividerIsOpaque:Z

.field private mDividerPaint:Landroid/graphics/Paint;

.field private mExcessScrollDrawInterpolator:Landroid/view/animation/Interpolator;

.field private mExcessScrollRecoverEffect:I

.field private mFocusSelector:Landroid/widget/ListView$FocusSelector;

.field private mFooterDividersEnabled:Z

.field private mFooterViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
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
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIsCacheColorOpaque:Z

.field private mItemsCanFocus:Z

.field private final mTempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 215
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 216
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 219
    const v0, 0x1010074

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 220
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 223
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 144
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 145
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 157
    iput-boolean v7, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    .line 159
    iput-boolean v6, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    .line 161
    iput v6, p0, Landroid/widget/ListView;->mChoiceMode:I

    .line 167
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    .line 172
    new-instance v4, Landroid/widget/ListView$ArrowScrollFocusResult;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Landroid/widget/ListView$ArrowScrollFocusResult;-><init>(Landroid/widget/ListView$1;)V

    iput-object v4, p0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    .line 177
    new-instance v4, Landroid/widget/ListView$1;

    invoke-direct {v4, p0}, Landroid/widget/ListView$1;-><init>(Landroid/widget/ListView;)V

    iput-object v4, p0, Landroid/widget/ListView;->mExcessScrollDrawInterpolator:Landroid/view/animation/Interpolator;

    .line 196
    iput v6, p0, Landroid/widget/ListView;->mExcessScrollRecoverEffect:I

    .line 225
    iput-boolean v7, p0, Landroid/widget/ListView;->mExcessScrollEnabled:Z

    .line 227
    sget-object v4, Lcom/android/internal/R$styleable;->ListView:[I

    invoke-virtual {p1, p2, v4, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 230
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    .line 232
    .local v3, entries:[Ljava/lang/CharSequence;
    if-eqz v3, :cond_0

    .line 233
    new-instance v4, Landroid/widget/ArrayAdapter;

    const v5, 0x1090003

    invoke-direct {v4, p1, v5, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 237
    :cond_0
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 238
    .local v1, d:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    .line 240
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 244
    :cond_1
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 246
    .local v2, dividerHeight:I
    if-eqz v2, :cond_2

    .line 247
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 250
    :cond_2
    const/4 v4, 0x3

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 252
    const/4 v4, 0x4

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Landroid/widget/ListView;->mHeaderDividersEnabled:Z

    .line 253
    const/4 v4, 0x5

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Landroid/widget/ListView;->mFooterDividersEnabled:Z

    .line 259
    invoke-virtual {p0, v6}, Landroid/widget/ListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 262
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 263
    return-void
.end method

.method private addViewAbove(Landroid/view/View;I)Landroid/view/View;
    .locals 8
    .parameter "theView"
    .parameter "position"

    .prologue
    const/4 v4, 0x0

    .line 2961
    const/4 v0, 0x1

    sub-int v2, p2, v0

    .line 2962
    .local v2, abovePosition:I
    iget-object v0, p0, Landroid/widget/ListView;->mIsScrap:[Z

    invoke-virtual {p0, v2, v0}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .line 2963
    .local v1, view:Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iget v5, p0, Landroid/widget/ListView;->mDividerHeight:I

    sub-int v3, v0, v5

    .line 2964
    .local v3, edgeOfNewChild:I
    iget-object v0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Landroid/widget/ListView;->mIsScrap:[Z

    aget-boolean v7, v0, v4

    move-object v0, p0

    move v6, v4

    invoke-direct/range {v0 .. v7}, Landroid/widget/ListView;->setupChild(Landroid/view/View;IIZIZZ)V

    .line 2966
    return-object v1
.end method

.method private addViewBelow(Landroid/view/View;I)Landroid/view/View;
    .locals 8
    .parameter "theView"
    .parameter "position"

    .prologue
    const/4 v6, 0x0

    .line 2970
    add-int/lit8 v2, p2, 0x1

    .line 2971
    .local v2, belowPosition:I
    iget-object v0, p0, Landroid/widget/ListView;->mIsScrap:[Z

    invoke-virtual {p0, v2, v0}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .line 2972
    .local v1, view:Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v4, p0, Landroid/widget/ListView;->mDividerHeight:I

    add-int v3, v0, v4

    .line 2973
    .local v3, edgeOfNewChild:I
    const/4 v4, 0x1

    iget-object v0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Landroid/widget/ListView;->mIsScrap:[Z

    aget-boolean v7, v0, v6

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Landroid/widget/ListView;->setupChild(Landroid/view/View;IIZIZZ)V

    .line 2975
    return-object v1
.end method

.method private adjustViewsUpOrDown()V
    .locals 6

    .prologue
    .line 278
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    .line 281
    .local v1, childCount:I
    if-lez v1, :cond_2

    .line 284
    iget-boolean v3, p0, Landroid/widget/ListView;->mStackFromBottom:Z

    if-nez v3, :cond_3

    .line 287
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 288
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int v2, v3, v4

    .line 289
    .local v2, delta:I
    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-eqz v3, :cond_0

    .line 292
    iget v3, p0, Landroid/widget/ListView;->mDividerHeight:I

    sub-int/2addr v2, v3

    .line 294
    :cond_0
    if-gez v2, :cond_1

    .line 296
    const/4 v2, 0x0

    .line 314
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 315
    neg-int v3, v2

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    .line 318
    .end local v0           #child:Landroid/view/View;
    .end local v2           #delta:I
    :cond_2
    return-void

    .line 300
    :cond_3
    const/4 v3, 0x1

    sub-int v3, v1, v3

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 301
    .restart local v0       #child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v4

    iget-object v5, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    sub-int v2, v3, v4

    .line 303
    .restart local v2       #delta:I
    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v3, v1

    iget v4, p0, Landroid/widget/ListView;->mItemCount:I

    if-ge v3, v4, :cond_4

    .line 306
    iget v3, p0, Landroid/widget/ListView;->mDividerHeight:I

    add-int/2addr v2, v3

    .line 309
    :cond_4
    if-lez v2, :cond_1

    .line 310
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private amountToScroll(II)I
    .locals 12
    .parameter "direction"
    .parameter "nextSelectedPosition"

    .prologue
    .line 2576
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v10

    iget-object v11, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v10, v11

    .line 2577
    .local v4, listBottom:I
    iget-object v10, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v10, Landroid/graphics/Rect;->top:I

    .line 2579
    .local v5, listTop:I
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v7

    .line 2581
    .local v7, numChildren:I
    const/16 v10, 0x82

    if-ne p1, v10, :cond_5

    .line 2582
    const/4 v10, 0x1

    sub-int v3, v7, v10

    .line 2583
    .local v3, indexToMakeVisible:I
    const/4 v10, -0x1

    if-eq p2, v10, :cond_0

    .line 2584
    iget v10, p0, Landroid/widget/ListView;->mFirstPosition:I

    sub-int v3, p2, v10

    .line 2587
    :cond_0
    iget v10, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int v8, v10, v3

    .line 2588
    .local v8, positionToMakeVisible:I
    invoke-virtual {p0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 2590
    .local v9, viewToMakeVisible:Landroid/view/View;
    move v1, v4

    .line 2591
    .local v1, goalBottom:I
    iget v10, p0, Landroid/widget/ListView;->mItemCount:I

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    if-ge v8, v10, :cond_1

    .line 2592
    invoke-direct {p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v10

    sub-int/2addr v1, v10

    .line 2595
    :cond_1
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v10

    if-gt v10, v1, :cond_2

    .line 2597
    const/4 v10, 0x0

    .line 2643
    .end local v1           #goalBottom:I
    :goto_0
    return v10

    .line 2600
    .restart local v1       #goalBottom:I
    :cond_2
    const/4 v10, -0x1

    if-eq p2, v10, :cond_3

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v10

    sub-int v10, v1, v10

    invoke-virtual {p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

    move-result v11

    if-lt v10, v11, :cond_3

    .line 2603
    const/4 v10, 0x0

    goto :goto_0

    .line 2606
    :cond_3
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v10

    sub-int v0, v10, v1

    .line 2608
    .local v0, amountToScroll:I
    iget v10, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v10, v7

    iget v11, p0, Landroid/widget/ListView;->mItemCount:I

    if-ne v10, v11, :cond_4

    .line 2610
    const/4 v10, 0x1

    sub-int v10, v7, v10

    invoke-virtual {p0, v10}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v10

    sub-int v6, v10, v4

    .line 2611
    .local v6, max:I
    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2614
    .end local v6           #max:I
    :cond_4
    invoke-virtual {p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

    move-result v10

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto :goto_0

    .line 2616
    .end local v0           #amountToScroll:I
    .end local v1           #goalBottom:I
    .end local v3           #indexToMakeVisible:I
    .end local v8           #positionToMakeVisible:I
    .end local v9           #viewToMakeVisible:Landroid/view/View;
    :cond_5
    const/4 v3, 0x0

    .line 2617
    .restart local v3       #indexToMakeVisible:I
    const/4 v10, -0x1

    if-eq p2, v10, :cond_6

    .line 2618
    iget v10, p0, Landroid/widget/ListView;->mFirstPosition:I

    sub-int v3, p2, v10

    .line 2620
    :cond_6
    iget v10, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int v8, v10, v3

    .line 2621
    .restart local v8       #positionToMakeVisible:I
    invoke-virtual {p0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 2622
    .restart local v9       #viewToMakeVisible:Landroid/view/View;
    move v2, v5

    .line 2623
    .local v2, goalTop:I
    if-lez v8, :cond_7

    .line 2624
    invoke-direct {p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v10

    add-int/2addr v2, v10

    .line 2626
    :cond_7
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v10

    if-lt v10, v2, :cond_8

    .line 2628
    const/4 v10, 0x0

    goto :goto_0

    .line 2631
    :cond_8
    const/4 v10, -0x1

    if-eq p2, v10, :cond_9

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v10

    sub-int/2addr v10, v2

    invoke-virtual {p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

    move-result v11

    if-lt v10, v11, :cond_9

    .line 2634
    const/4 v10, 0x0

    goto :goto_0

    .line 2637
    :cond_9
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v10

    sub-int v0, v2, v10

    .line 2638
    .restart local v0       #amountToScroll:I
    iget v10, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-nez v10, :cond_a

    .line 2640
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v10

    sub-int v6, v5, v10

    .line 2641
    .restart local v6       #max:I
    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2643
    .end local v6           #max:I
    :cond_a
    invoke-virtual {p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

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
    .line 2835
    const/4 v0, 0x0

    .line 2836
    .local v0, amountToScroll:I
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 2837
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v2}, Landroid/widget/ListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2838
    const/16 v2, 0x21

    if-ne p1, v2, :cond_1

    .line 2839
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-ge v2, v3, :cond_0

    .line 2840
    iget-object v2, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int v0, v2, v3

    .line 2841
    if-lez p3, :cond_0

    .line 2842
    invoke-direct {p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v2

    add-int/2addr v0, v2

    .line 2854
    :cond_0
    :goto_0
    return v0

    .line 2846
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v2

    iget-object v3, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v2, v3

    .line 2847
    .local v1, listBottom:I
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-le v2, v1, :cond_0

    .line 2848
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v2, v1

    .line 2849
    iget v2, p0, Landroid/widget/ListView;->mItemCount:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge p3, v2, :cond_0

    .line 2850
    invoke-direct {p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0
.end method

.method private arrowScrollFocused(I)Landroid/widget/ListView$ArrowScrollFocusResult;
    .locals 20
    .parameter "direction"

    .prologue
    .line 2733
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v14

    .line 2735
    .local v14, selectedView:Landroid/view/View;
    if-eqz v14, :cond_2

    invoke-virtual {v14}, Landroid/view/View;->hasFocus()Z

    move-result v17

    if-eqz v17, :cond_2

    .line 2736
    invoke-virtual {v14}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v11

    .line 2737
    .local v11, oldFocus:Landroid/view/View;
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object v2, v11

    move/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v10

    .line 2762
    .end local v11           #oldFocus:Landroid/view/View;
    .local v10, newFocus:Landroid/view/View;
    :goto_0
    if-eqz v10, :cond_c

    .line 2763
    move-object/from16 v0, p0

    move-object v1, v10

    invoke-direct {v0, v1}, Landroid/widget/ListView;->positionOfNewFocus(Landroid/view/View;)I

    move-result v12

    .line 2767
    .local v12, positionOfNewFocus:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mSelectedPosition:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mSelectedPosition:I

    move/from16 v17, v0

    move v0, v12

    move/from16 v1, v17

    if-eq v0, v1, :cond_a

    .line 2768
    invoke-direct/range {p0 .. p1}, Landroid/widget/ListView;->lookForSelectablePositionOnScreen(I)I

    move-result v13

    .line 2769
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

    .line 2772
    :cond_1
    const/16 v17, 0x0

    .line 2794
    .end local v12           #positionOfNewFocus:I
    .end local v13           #selectablePosition:I
    :goto_1
    return-object v17

    .line 2739
    .end local v10           #newFocus:Landroid/view/View;
    :cond_2
    const/16 v17, 0x82

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_6

    .line 2740
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mFirstPosition:I

    move/from16 v17, v0

    if-lez v17, :cond_3

    const/16 v17, 0x1

    move/from16 v15, v17

    .line 2741
    .local v15, topFadingEdgeShowing:Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    if-eqz v15, :cond_4

    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v18

    :goto_3
    add-int v8, v17, v18

    .line 2743
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

    .line 2747
    .local v16, ySearchPoint:I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v16

    move/from16 v3, v19

    move/from16 v4, v16

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2759
    .end local v8           #listTop:I
    .end local v15           #topFadingEdgeShowing:Z
    :goto_5
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    move/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v10

    .restart local v10       #newFocus:Landroid/view/View;
    goto/16 :goto_0

    .line 2740
    .end local v10           #newFocus:Landroid/view/View;
    .end local v16           #ySearchPoint:I
    :cond_3
    const/16 v17, 0x0

    move/from16 v15, v17

    goto :goto_2

    .line 2741
    .restart local v15       #topFadingEdgeShowing:Z
    :cond_4
    const/16 v18, 0x0

    goto :goto_3

    .restart local v8       #listTop:I
    :cond_5
    move/from16 v16, v8

    .line 2743
    goto :goto_4

    .line 2749
    .end local v8           #listTop:I
    .end local v15           #topFadingEdgeShowing:Z
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mFirstPosition:I

    move/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v18

    add-int v17, v17, v18

    const/16 v18, 0x1

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mItemCount:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_7

    const/16 v17, 0x1

    move/from16 v5, v17

    .line 2751
    .local v5, bottomFadingEdgeShowing:Z
    :goto_6
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getHeight()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    if-eqz v5, :cond_8

    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v18

    :goto_7
    sub-int v7, v17, v18

    .line 2753
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

    .line 2757
    .restart local v16       #ySearchPoint:I
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

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

    .line 2749
    .end local v5           #bottomFadingEdgeShowing:Z
    .end local v7           #listBottom:I
    .end local v16           #ySearchPoint:I
    :cond_7
    const/16 v17, 0x0

    move/from16 v5, v17

    goto :goto_6

    .line 2751
    .restart local v5       #bottomFadingEdgeShowing:Z
    :cond_8
    const/16 v18, 0x0

    goto :goto_7

    .restart local v7       #listBottom:I
    :cond_9
    move/from16 v16, v7

    .line 2753
    goto :goto_8

    .line 2776
    .end local v5           #bottomFadingEdgeShowing:Z
    .end local v7           #listBottom:I
    .restart local v10       #newFocus:Landroid/view/View;
    .restart local v12       #positionOfNewFocus:I
    :cond_a
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object v2, v10

    move v3, v12

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ListView;->amountToScrollToNewFocus(ILandroid/view/View;I)I

    move-result v6

    .line 2778
    .local v6, focusScroll:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

    move-result v9

    .line 2779
    .local v9, maxScrollAmount:I
    if-ge v6, v9, :cond_b

    .line 2781
    move-object v0, v10

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->requestFocus(I)Z

    .line 2782
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move v1, v12

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView$ArrowScrollFocusResult;->populate(II)V

    .line 2783
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    move-object/from16 v17, v0

    goto/16 :goto_1

    .line 2784
    :cond_b
    move-object/from16 v0, p0

    move-object v1, v10

    invoke-direct {v0, v1}, Landroid/widget/ListView;->distanceToView(Landroid/view/View;)I

    move-result v17

    move/from16 v0, v17

    move v1, v9

    if-ge v0, v1, :cond_c

    .line 2789
    move-object v0, v10

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->requestFocus(I)Z

    .line 2790
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move v1, v12

    move v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView$ArrowScrollFocusResult;->populate(II)V

    .line 2791
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    move-object/from16 v17, v0

    goto/16 :goto_1

    .line 2794
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

    .line 2362
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v6

    if-gtz v6, :cond_0

    move v6, v7

    .line 2434
    :goto_0
    return v6

    .line 2366
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v5

    .line 2368
    .local v5, selectedView:Landroid/view/View;
    invoke-direct {p0, p1}, Landroid/widget/ListView;->lookForSelectablePositionOnScreen(I)I

    move-result v4

    .line 2369
    .local v4, nextSelectedPosition:I
    invoke-direct {p0, p1, v4}, Landroid/widget/ListView;->amountToScroll(II)I

    move-result v0

    .line 2372
    .local v0, amountToScroll:I
    iget-boolean v6, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    if-eqz v6, :cond_9

    invoke-direct {p0, p1}, Landroid/widget/ListView;->arrowScrollFocused(I)Landroid/widget/ListView$ArrowScrollFocusResult;

    move-result-object v6

    move-object v1, v6

    .line 2373
    .local v1, focusResult:Landroid/widget/ListView$ArrowScrollFocusResult;
    :goto_1
    if-eqz v1, :cond_1

    .line 2374
    invoke-virtual {v1}, Landroid/widget/ListView$ArrowScrollFocusResult;->getSelectedPosition()I

    move-result v4

    .line 2375
    invoke-virtual {v1}, Landroid/widget/ListView$ArrowScrollFocusResult;->getAmountToScroll()I

    move-result v0

    .line 2378
    :cond_1
    if-eqz v1, :cond_a

    move v3, v9

    .line 2379
    .local v3, needToRedraw:Z
    :goto_2
    if-eq v4, v8, :cond_3

    .line 2380
    if-eqz v1, :cond_b

    move v6, v9

    :goto_3
    invoke-direct {p0, v5, p1, v4, v6}, Landroid/widget/ListView;->handleNewSelectionChange(Landroid/view/View;IIZ)V

    .line 2381
    invoke-virtual {p0, v4}, Landroid/widget/ListView;->setSelectedPositionInt(I)V

    .line 2382
    invoke-virtual {p0, v4}, Landroid/widget/ListView;->setNextSelectedPositionInt(I)V

    .line 2383
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v5

    .line 2384
    iget-boolean v6, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    if-eqz v6, :cond_2

    if-nez v1, :cond_2

    .line 2387
    invoke-virtual {p0}, Landroid/widget/ListView;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    .line 2388
    .local v2, focused:Landroid/view/View;
    if-eqz v2, :cond_2

    .line 2389
    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    .line 2392
    .end local v2           #focused:Landroid/view/View;
    :cond_2
    const/4 v3, 0x1

    .line 2393
    invoke-virtual {p0}, Landroid/widget/ListView;->checkSelectionChanged()V

    .line 2396
    :cond_3
    if-lez v0, :cond_4

    .line 2397
    const/16 v6, 0x21

    if-ne p1, v6, :cond_c

    move v6, v0

    :goto_4
    invoke-direct {p0, v6}, Landroid/widget/ListView;->scrollListItemsBy(I)V

    .line 2398
    const/4 v3, 0x1

    .line 2403
    :cond_4
    iget-boolean v6, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    if-eqz v6, :cond_5

    if-nez v1, :cond_5

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Landroid/view/View;->hasFocus()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2405
    invoke-virtual {v5}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v2

    .line 2406
    .restart local v2       #focused:Landroid/view/View;
    invoke-direct {p0, v2}, Landroid/widget/ListView;->distanceToView(Landroid/view/View;)I

    move-result v6

    if-lez v6, :cond_5

    .line 2407
    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    .line 2412
    .end local v2           #focused:Landroid/view/View;
    :cond_5
    if-ne v4, v8, :cond_6

    if-eqz v5, :cond_6

    invoke-direct {p0, v5, p0}, Landroid/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 2414
    const/4 v5, 0x0

    .line 2415
    invoke-virtual {p0}, Landroid/widget/ListView;->hideSelector()V

    .line 2419
    iput v8, p0, Landroid/widget/ListView;->mResurrectToPosition:I

    .line 2422
    :cond_6
    if-eqz v3, :cond_d

    .line 2423
    if-eqz v5, :cond_7

    .line 2424
    invoke-virtual {p0, v5}, Landroid/widget/ListView;->positionSelector(Landroid/view/View;)V

    .line 2425
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v6

    iput v6, p0, Landroid/widget/ListView;->mSelectedTop:I

    .line 2427
    :cond_7
    invoke-virtual {p0}, Landroid/widget/ListView;->awakenScrollBars()Z

    move-result v6

    if-nez v6, :cond_8

    .line 2428
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 2430
    :cond_8
    invoke-virtual {p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V

    move v6, v9

    .line 2431
    goto/16 :goto_0

    .line 2372
    .end local v1           #focusResult:Landroid/widget/ListView$ArrowScrollFocusResult;
    .end local v3           #needToRedraw:Z
    :cond_9
    const/4 v6, 0x0

    move-object v1, v6

    goto/16 :goto_1

    .restart local v1       #focusResult:Landroid/widget/ListView$ArrowScrollFocusResult;
    :cond_a
    move v3, v7

    .line 2378
    goto :goto_2

    .restart local v3       #needToRedraw:Z
    :cond_b
    move v6, v7

    .line 2380
    goto :goto_3

    .line 2397
    :cond_c
    neg-int v6, v0

    goto :goto_4

    :cond_d
    move v6, v7

    .line 2434
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
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 574
    .local p1, infos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    if-eqz p1, :cond_1

    .line 575
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 577
    .local v1, count:I
    const/4 v2, 0x0

    .end local p0
    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 578
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/ListView$FixedViewInfo;

    iget-object v0, p0, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 579
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsListView$LayoutParams;

    .line 580
    .local v3, p:Landroid/widget/AbsListView$LayoutParams;
    if-eqz v3, :cond_0

    .line 581
    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/widget/AbsListView$LayoutParams;->recycledHeaderFooter:Z

    .line 577
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 585
    .end local v0           #child:Landroid/view/View;
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v3           #p:Landroid/widget/AbsListView$LayoutParams;
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

    .line 2107
    iget-object v2, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v2, :cond_0

    move v2, v6

    .line 2200
    :goto_0
    return v2

    .line 2111
    :cond_0
    iget-boolean v2, p0, Landroid/widget/ListView;->mDataChanged:Z

    if-eqz v2, :cond_1

    .line 2112
    invoke-virtual {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 2115
    :cond_1
    const/4 v1, 0x0

    .line 2116
    .local v1, handled:Z
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 2118
    .local v0, action:I
    if-eq v0, v3, :cond_3

    .line 2119
    iget v2, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-gez v2, :cond_2

    .line 2120
    sparse-switch p1, :sswitch_data_0

    .line 2131
    :cond_2
    sparse-switch p1, :sswitch_data_1

    .line 2182
    :cond_3
    :goto_1
    if-nez v1, :cond_4

    .line 2183
    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/ListView;->sendToTextFilter(IILandroid/view/KeyEvent;)Z

    move-result v1

    .line 2186
    :cond_4
    if-eqz v1, :cond_a

    move v2, v3

    .line 2187
    goto :goto_0

    .line 2126
    :sswitch_0
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelection()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    .line 2127
    goto :goto_0

    .line 2133
    :sswitch_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v2

    if-nez v2, :cond_5

    .line 2134
    :goto_2
    if-lez p2, :cond_3

    .line 2135
    invoke-virtual {p0, v4}, Landroid/widget/ListView;->arrowScroll(I)Z

    move-result v1

    .line 2136
    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    .line 2139
    :cond_5
    invoke-virtual {p0, v4}, Landroid/widget/ListView;->fullScroll(I)Z

    move-result v1

    .line 2141
    goto :goto_1

    .line 2144
    :sswitch_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v2

    if-nez v2, :cond_6

    .line 2145
    :goto_3
    if-lez p2, :cond_3

    .line 2146
    invoke-virtual {p0, v5}, Landroid/widget/ListView;->arrowScroll(I)Z

    move-result v1

    .line 2147
    add-int/lit8 p2, p2, -0x1

    goto :goto_3

    .line 2150
    :cond_6
    invoke-virtual {p0, v5}, Landroid/widget/ListView;->fullScroll(I)Z

    move-result v1

    .line 2152
    goto :goto_1

    .line 2155
    :sswitch_3
    const/16 v2, 0x11

    invoke-direct {p0, v2}, Landroid/widget/ListView;->handleHorizontalFocusWithinListItem(I)Z

    move-result v1

    .line 2156
    goto :goto_1

    .line 2158
    :sswitch_4
    const/16 v2, 0x42

    invoke-direct {p0, v2}, Landroid/widget/ListView;->handleHorizontalFocusWithinListItem(I)Z

    move-result v1

    .line 2159
    goto :goto_1

    .line 2163
    :sswitch_5
    iget v2, p0, Landroid/widget/ListView;->mItemCount:I

    if-lez v2, :cond_7

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_7

    .line 2164
    invoke-virtual {p0}, Landroid/widget/ListView;->keyPressed()V

    .line 2166
    :cond_7
    const/4 v1, 0x1

    .line 2167
    goto :goto_1

    .line 2170
    :sswitch_6
    iget-object v2, p0, Landroid/widget/ListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_8

    iget-object v2, p0, Landroid/widget/ListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2171
    :cond_8
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v2

    if-nez v2, :cond_9

    .line 2172
    invoke-virtual {p0, v5}, Landroid/widget/ListView;->pageScroll(I)Z

    .line 2176
    :goto_4
    const/4 v1, 0x1

    goto :goto_1

    .line 2174
    :cond_9
    invoke-virtual {p0, v4}, Landroid/widget/ListView;->pageScroll(I)Z

    goto :goto_4

    .line 2189
    :cond_a
    packed-switch v0, :pswitch_data_0

    move v2, v6

    .line 2200
    goto/16 :goto_0

    .line 2191
    :pswitch_0
    invoke-super {p0, p1, p3}, Landroid/widget/AbsListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    .line 2194
    :pswitch_1
    invoke-super {p0, p1, p3}, Landroid/widget/AbsListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    .line 2197
    :pswitch_2
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsListView;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    .line 2120
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x17 -> :sswitch_0
        0x3e -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch

    .line 2131
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

    .line 2189
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

    .line 1394
    iget v7, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v7, p1

    sub-int v6, v7, v9

    .line 1395
    .local v6, lastPosition:I
    iget v7, p0, Landroid/widget/ListView;->mItemCount:I

    sub-int/2addr v7, v9

    if-ne v6, v7, :cond_2

    if-lez p1, :cond_2

    .line 1398
    sub-int v7, p1, v9

    invoke-virtual {p0, v7}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1401
    .local v5, lastChild:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 1404
    .local v4, lastBottom:I
    iget v7, p0, Landroid/widget/ListView;->mBottom:I

    iget v8, p0, Landroid/widget/ListView;->mTop:I

    sub-int/2addr v7, v8

    iget-object v8, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v7, v8

    .line 1408
    .local v1, end:I
    sub-int v0, v1, v4

    .line 1409
    .local v0, bottomOffset:I
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1410
    .local v2, firstChild:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    .line 1414
    .local v3, firstTop:I
    if-lez v0, :cond_2

    iget v7, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-gtz v7, :cond_0

    iget-object v7, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    if-ge v3, v7, :cond_2

    .line 1415
    :cond_0
    iget v7, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-nez v7, :cond_1

    .line 1417
    iget-object v7, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v3

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1420
    :cond_1
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    .line 1421
    iget v7, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-lez v7, :cond_2

    .line 1424
    iget v7, p0, Landroid/widget/ListView;->mFirstPosition:I

    sub-int/2addr v7, v9

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v8

    iget v9, p0, Landroid/widget/ListView;->mDividerHeight:I

    sub-int/2addr v8, v9

    invoke-direct {p0, v7, v8}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    .line 1426
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1431
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

    .line 1443
    iget v8, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-nez v8, :cond_2

    if-lez p1, :cond_2

    .line 1446
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1449
    .local v1, firstChild:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    .line 1452
    .local v2, firstTop:I
    iget-object v8, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v8, Landroid/graphics/Rect;->top:I

    .line 1455
    .local v6, start:I
    iget v8, p0, Landroid/widget/ListView;->mBottom:I

    iget v9, p0, Landroid/widget/ListView;->mTop:I

    sub-int/2addr v8, v9

    iget-object v9, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v8, v9

    .line 1459
    .local v0, end:I
    sub-int v7, v2, v6

    .line 1460
    .local v7, topOffset:I
    sub-int v8, p1, v10

    invoke-virtual {p0, v8}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1461
    .local v4, lastChild:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 1462
    .local v3, lastBottom:I
    iget v8, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v8, p1

    sub-int v5, v8, v10

    .line 1466
    .local v5, lastPosition:I
    if-lez v7, :cond_2

    .line 1467
    iget v8, p0, Landroid/widget/ListView;->mItemCount:I

    sub-int/2addr v8, v10

    if-lt v5, v8, :cond_0

    if-le v3, v0, :cond_3

    .line 1468
    :cond_0
    iget v8, p0, Landroid/widget/ListView;->mItemCount:I

    sub-int/2addr v8, v10

    if-ne v5, v8, :cond_1

    .line 1470
    sub-int v8, v3, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 1473
    :cond_1
    neg-int v8, v7

    invoke-virtual {p0, v8}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    .line 1474
    iget v8, p0, Landroid/widget/ListView;->mItemCount:I

    sub-int/2addr v8, v10

    if-ge v5, v8, :cond_2

    .line 1477
    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v9

    iget v10, p0, Landroid/widget/ListView;->mDividerHeight:I

    add-int/2addr v9, v10

    invoke-direct {p0, v8, v9}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    .line 1479
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1486
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

    .line 1481
    .restart local v0       #end:I
    .restart local v1       #firstChild:Landroid/view/View;
    .restart local v2       #firstTop:I
    .restart local v3       #lastBottom:I
    .restart local v4       #lastChild:Landroid/view/View;
    .restart local v5       #lastPosition:I
    .restart local v6       #start:I
    .restart local v7       #topOffset:I
    :cond_3
    iget v8, p0, Landroid/widget/ListView;->mItemCount:I

    sub-int/2addr v8, v10

    if-ne v5, v8, :cond_2

    .line 1482
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    goto :goto_0
.end method

.method private distanceToView(Landroid/view/View;)I
    .locals 4
    .parameter "descendant"

    .prologue
    .line 2865
    const/4 v0, 0x0

    .line 2866
    .local v0, distance:I
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 2867
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v2}, Landroid/widget/ListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2868
    iget v2, p0, Landroid/widget/ListView;->mBottom:I

    iget v3, p0, Landroid/widget/ListView;->mTop:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v2, v3

    .line 2869
    .local v1, listBottom:I
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-ge v2, v3, :cond_1

    .line 2870
    iget-object v2, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v2, v3

    .line 2874
    :cond_0
    :goto_0
    return v0

    .line 2871
    :cond_1
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-le v2, v1, :cond_0

    .line 2872
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

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

    .line 831
    iget v0, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 832
    .local v0, dividerHeight:I
    iget-boolean v1, p0, Landroid/widget/ListView;->mStackFromBottom:Z

    if-nez v1, :cond_0

    .line 833
    sub-int v1, p2, v3

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    .line 834
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 835
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    .line 841
    :goto_0
    return-void

    .line 837
    :cond_0
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    .line 838
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 839
    sub-int v1, p2, v3

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    goto :goto_0
.end method

.method private fillDown(II)Landroid/view/View;
    .locals 9
    .parameter "pos"
    .parameter "nextTop"

    .prologue
    const/4 v3, 0x1

    .line 720
    const/4 v8, 0x0

    .line 722
    .local v8, selectedView:Landroid/view/View;
    iget v0, p0, Landroid/widget/ListView;->mBottom:I

    iget v1, p0, Landroid/widget/ListView;->mTop:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v7, v0, v1

    .line 724
    .local v7, end:I
    :goto_0
    if-ge p2, v7, :cond_2

    iget v0, p0, Landroid/widget/ListView;->mItemCount:I

    if-ge p1, v0, :cond_2

    .line 726
    iget v0, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-ne p1, v0, :cond_1

    move v5, v3

    .line 727
    .local v5, selected:Z
    :goto_1
    iget-object v0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v6

    .line 729
    .local v6, child:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v1, p0, Landroid/widget/ListView;->mDividerHeight:I

    add-int p2, v0, v1

    .line 730
    if-eqz v5, :cond_0

    .line 731
    move-object v8, v6

    .line 733
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 734
    goto :goto_0

    .line 726
    .end local v5           #selected:Z
    .end local v6           #child:Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    move v5, v0

    goto :goto_1

    .line 736
    :cond_2
    return-object v8
.end method

.method private fillFromMiddle(II)Landroid/view/View;
    .locals 9
    .parameter "childrenTop"
    .parameter "childrenBottom"

    .prologue
    const/4 v3, 0x1

    .line 799
    sub-int v6, p2, p1

    .line 801
    .local v6, height:I
    invoke-virtual {p0}, Landroid/widget/ListView;->reconcileSelectedPosition()I

    move-result v1

    .line 803
    .local v1, position:I
    iget-object v0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v2, p1

    move v5, v3

    invoke-direct/range {v0 .. v5}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v7

    .line 805
    .local v7, sel:Landroid/view/View;
    iput v1, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 807
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 808
    .local v8, selHeight:I
    if-gt v8, v6, :cond_0

    .line 809
    sub-int v0, v6, v8

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v7, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 812
    :cond_0
    invoke-direct {p0, v7, v1}, Landroid/widget/ListView;->fillAboveAndBelow(Landroid/view/View;I)V

    .line 814
    iget-boolean v0, p0, Landroid/widget/ListView;->mStackFromBottom:Z

    if-nez v0, :cond_1

    .line 815
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/ListView;->correctTooHigh(I)V

    .line 820
    :goto_0
    return-object v7

    .line 817
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/ListView;->correctTooLow(I)V

    goto :goto_0
.end method

.method private fillFromSelection(III)Landroid/view/View;
    .locals 17
    .parameter "selectedTop"
    .parameter "childrenTop"
    .parameter "childrenBottom"

    .prologue
    .line 855
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getVerticalFadingEdgeLength()I

    move-result v11

    .line 856
    .local v11, fadingEdgeLength:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mSelectedPosition:I

    move v5, v0

    .line 860
    .local v5, selectedPosition:I
    move-object/from16 v0, p0

    move/from16 v1, p2

    move v2, v11

    move v3, v5

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ListView;->getTopSelectionPixel(III)I

    move-result v16

    .line 862
    .local v16, topSelectionPixel:I
    move-object/from16 v0, p0

    move/from16 v1, p3

    move v2, v11

    move v3, v5

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ListView;->getBottomSelectionPixel(III)I

    move-result v10

    .line 865
    .local v10, bottomSelectionPixel:I
    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    move-object v4, v0

    iget v8, v4, Landroid/graphics/Rect;->left:I

    const/4 v9, 0x1

    move-object/from16 v4, p0

    move/from16 v6, p1

    invoke-direct/range {v4 .. v9}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v13

    .line 869
    .local v13, sel:Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v4

    if-le v4, v10, :cond_1

    .line 872
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int v14, v4, v16

    .line 876
    .local v14, spaceAbove:I
    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v4

    sub-int v15, v4, v10

    .line 877
    .local v15, spaceBelow:I
    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 880
    .local v12, offset:I
    neg-int v4, v12

    invoke-virtual {v13, v4}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 896
    .end local v12           #offset:I
    .end local v14           #spaceAbove:I
    .end local v15           #spaceBelow:I
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    move-object v1, v13

    move v2, v5

    invoke-direct {v0, v1, v2}, Landroid/widget/ListView;->fillAboveAndBelow(Landroid/view/View;I)V

    .line 898
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->mStackFromBottom:Z

    move v4, v0

    if-nez v4, :cond_2

    .line 899
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v4

    move-object/from16 v0, p0

    move v1, v4

    invoke-direct {v0, v1}, Landroid/widget/ListView;->correctTooHigh(I)V

    .line 904
    :goto_1
    return-object v13

    .line 881
    :cond_1
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v4

    move v0, v4

    move/from16 v1, v16

    if-ge v0, v1, :cond_0

    .line 884
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int v14, v16, v4

    .line 888
    .restart local v14       #spaceAbove:I
    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v4

    sub-int v15, v10, v4

    .line 889
    .restart local v15       #spaceBelow:I
    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 892
    .restart local v12       #offset:I
    invoke-virtual {v13, v12}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_0

    .line 901
    .end local v12           #offset:I
    .end local v14           #spaceAbove:I
    .end local v15           #spaceBelow:I
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v4

    move-object/from16 v0, p0

    move v1, v4

    invoke-direct {v0, v1}, Landroid/widget/ListView;->correctTooLow(I)V

    goto :goto_1
.end method

.method private fillFromTop(I)Landroid/view/View;
    .locals 3
    .parameter "nextTop"

    .prologue
    .line 779
    iget v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/ListView;->mSelectedPosition:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 780
    iget v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/ListView;->mItemCount:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 781
    iget v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-gez v0, :cond_0

    .line 782
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 784
    :cond_0
    iget v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    invoke-direct {p0, v0, p1}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private fillSpecific(II)Landroid/view/View;
    .locals 11
    .parameter "position"
    .parameter "top"

    .prologue
    const/4 v3, 0x1

    .line 1346
    iget v0, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-ne p1, v0, :cond_1

    move v5, v3

    .line 1347
    .local v5, tempIsSelected:Z
    :goto_0
    iget-object v0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v10

    .line 1349
    .local v10, temp:Landroid/view/View;
    iput p1, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 1354
    iget v9, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 1355
    .local v9, dividerHeight:I
    iget-boolean v0, p0, Landroid/widget/ListView;->mStackFromBottom:Z

    if-nez v0, :cond_2

    .line 1356
    sub-int v0, p1, v3

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v1, v9

    invoke-direct {p0, v0, v1}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    move-result-object v6

    .line 1358
    .local v6, above:Landroid/view/View;
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1359
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v1

    add-int/2addr v1, v9

    invoke-direct {p0, v0, v1}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    move-result-object v7

    .line 1360
    .local v7, below:Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v8

    .line 1361
    .local v8, childCount:I
    if-lez v8, :cond_0

    .line 1362
    invoke-direct {p0, v8}, Landroid/widget/ListView;->correctTooHigh(I)V

    .line 1375
    :cond_0
    :goto_1
    if-eqz v5, :cond_3

    move-object v0, v10

    .line 1380
    :goto_2
    return-object v0

    .line 1346
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

    .line 1365
    .restart local v5       #tempIsSelected:Z
    .restart local v9       #dividerHeight:I
    .restart local v10       #temp:Landroid/view/View;
    :cond_2
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v1

    add-int/2addr v1, v9

    invoke-direct {p0, v0, v1}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    move-result-object v7

    .line 1367
    .restart local v7       #below:Landroid/view/View;
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1368
    sub-int v0, p1, v3

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v1, v9

    invoke-direct {p0, v0, v1}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    move-result-object v6

    .line 1369
    .restart local v6       #above:Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v8

    .line 1370
    .restart local v8       #childCount:I
    if-lez v8, :cond_0

    .line 1371
    invoke-direct {p0, v8}, Landroid/widget/ListView;->correctTooLow(I)V

    goto :goto_1

    .line 1377
    :cond_3
    if-eqz v6, :cond_4

    move-object v0, v6

    .line 1378
    goto :goto_2

    :cond_4
    move-object v0, v7

    .line 1380
    goto :goto_2
.end method

.method private fillUp(II)Landroid/view/View;
    .locals 9
    .parameter "pos"
    .parameter "nextBottom"

    .prologue
    const/4 v3, 0x0

    .line 750
    const/4 v8, 0x0

    .line 752
    .local v8, selectedView:Landroid/view/View;
    iget-object v0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v0, Landroid/graphics/Rect;->top:I

    .line 754
    .local v7, end:I
    :goto_0
    if-le p2, v7, :cond_2

    if-ltz p1, :cond_2

    .line 756
    iget v0, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    move v5, v0

    .line 757
    .local v5, selected:Z
    :goto_1
    iget-object v0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v6

    .line 758
    .local v6, child:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v0

    iget v1, p0, Landroid/widget/ListView;->mDividerHeight:I

    sub-int p2, v0, v1

    .line 759
    if-eqz v5, :cond_0

    .line 760
    move-object v8, v6

    .line 762
    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 763
    goto :goto_0

    .end local v5           #selected:Z
    .end local v6           #child:Landroid/view/View;
    :cond_1
    move v5, v3

    .line 756
    goto :goto_1

    .line 765
    :cond_2
    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 767
    return-object v8
.end method

.method private getArrowScrollPreviewLength()I
    .locals 2

    .prologue
    .line 2560
    const/4 v0, 0x2

    invoke-virtual {p0}, Landroid/widget/ListView;->getVerticalFadingEdgeLength()I

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
    .line 917
    move v0, p1

    .line 918
    .local v0, bottomSelectionPixel:I
    iget v1, p0, Landroid/widget/ListView;->mItemCount:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-eq p3, v1, :cond_0

    .line 919
    sub-int/2addr v0, p2

    .line 921
    :cond_0
    return v0
.end method

.method private getTopSelectionPixel(III)I
    .locals 1
    .parameter "childrenTop"
    .parameter "fadingEdgeLength"
    .parameter "selectedPosition"

    .prologue
    .line 934
    move v0, p1

    .line 935
    .local v0, topSelectionPixel:I
    if-lez p3, :cond_0

    .line 936
    add-int/2addr v0, p2

    .line 938
    :cond_0
    return v0
.end method

.method private handleHorizontalFocusWithinListItem(I)Z
    .locals 7
    .parameter "direction"

    .prologue
    .line 2297
    const/16 v5, 0x11

    if-eq p1, v5, :cond_0

    const/16 v5, 0x42

    if-eq p1, v5, :cond_0

    .line 2298
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "direction must be one of {View.FOCUS_LEFT, View.FOCUS_RIGHT}"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2302
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    .line 2303
    .local v3, numChildren:I
    iget-boolean v5, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    if-eqz v5, :cond_2

    if-lez v3, :cond_2

    iget v5, p0, Landroid/widget/ListView;->mSelectedPosition:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 2304
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v4

    .line 2305
    .local v4, selectedView:Landroid/view/View;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/view/View;->hasFocus()Z

    move-result v5

    if-eqz v5, :cond_2

    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_2

    .line 2308
    invoke-virtual {v4}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 2309
    .local v0, currentFocus:Landroid/view/View;
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v5

    check-cast v4, Landroid/view/ViewGroup;

    .end local v4           #selectedView:Landroid/view/View;
    invoke-virtual {v5, v4, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 2311
    .local v2, nextFocus:Landroid/view/View;
    if-eqz v2, :cond_1

    .line 2313
    iget-object v5, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v5}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 2314
    iget-object v5, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v5}, Landroid/widget/ListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2315
    iget-object v5, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2, v5}, Landroid/widget/ListView;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2316
    iget-object v5, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, v5}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2317
    const/4 v5, 0x1

    .line 2331
    .end local v0           #currentFocus:Landroid/view/View;
    .end local v2           #nextFocus:Landroid/view/View;
    :goto_0
    return v5

    .line 2324
    .restart local v0       #currentFocus:Landroid/view/View;
    .restart local v2       #nextFocus:Landroid/view/View;
    :cond_1
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v6

    invoke-virtual {p0}, Landroid/widget/ListView;->getRootView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v6, v5, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 2326
    .local v1, globalNextFocus:Landroid/view/View;
    if-eqz v1, :cond_2

    .line 2327
    invoke-direct {p0, v1, p0}, Landroid/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v5

    goto :goto_0

    .line 2331
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
    .line 2452
    const/4 v8, -0x1

    if-ne p3, v8, :cond_0

    .line 2453
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "newSelectedPosition needs to be valid"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 2463
    :cond_0
    const/4 v5, 0x0

    .line 2464
    .local v5, topSelected:Z
    iget v8, p0, Landroid/widget/ListView;->mSelectedPosition:I

    iget v9, p0, Landroid/widget/ListView;->mFirstPosition:I

    sub-int v4, v8, v9

    .line 2465
    .local v4, selectedIndex:I
    iget v8, p0, Landroid/widget/ListView;->mFirstPosition:I

    sub-int v2, p3, v8

    .line 2466
    .local v2, nextSelectedIndex:I
    const/16 v8, 0x21

    if-ne p2, v8, :cond_3

    .line 2467
    move v7, v2

    .line 2468
    .local v7, topViewIndex:I
    move v1, v4

    .line 2469
    .local v1, bottomViewIndex:I
    invoke-virtual {p0, v7}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2470
    .local v6, topView:Landroid/view/View;
    move-object v0, p1

    .line 2471
    .local v0, bottomView:Landroid/view/View;
    const/4 v5, 0x1

    .line 2479
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    .line 2482
    .local v3, numChildren:I
    if-eqz v6, :cond_1

    .line 2483
    if-nez p4, :cond_4

    if-eqz v5, :cond_4

    const/4 v8, 0x1

    :goto_1
    invoke-virtual {v6, v8}, Landroid/view/View;->setSelected(Z)V

    .line 2484
    invoke-direct {p0, v6, v7, v3}, Landroid/widget/ListView;->measureAndAdjustDown(Landroid/view/View;II)V

    .line 2488
    :cond_1
    if-eqz v0, :cond_2

    .line 2489
    if-nez p4, :cond_5

    if-nez v5, :cond_5

    const/4 v8, 0x1

    :goto_2
    invoke-virtual {v0, v8}, Landroid/view/View;->setSelected(Z)V

    .line 2490
    invoke-direct {p0, v0, v1, v3}, Landroid/widget/ListView;->measureAndAdjustDown(Landroid/view/View;II)V

    .line 2492
    :cond_2
    return-void

    .line 2473
    .end local v0           #bottomView:Landroid/view/View;
    .end local v1           #bottomViewIndex:I
    .end local v3           #numChildren:I
    .end local v6           #topView:Landroid/view/View;
    .end local v7           #topViewIndex:I
    :cond_3
    move v7, v4

    .line 2474
    .restart local v7       #topViewIndex:I
    move v1, v2

    .line 2475
    .restart local v1       #bottomViewIndex:I
    move-object v6, p1

    .line 2476
    .restart local v6       #topView:Landroid/view/View;
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .restart local v0       #bottomView:Landroid/view/View;
    goto :goto_0

    .line 2483
    .restart local v3       #numChildren:I
    :cond_4
    const/4 v8, 0x0

    goto :goto_1

    .line 2489
    :cond_5
    const/4 v8, 0x0

    goto :goto_2
.end method

.method private isDirectChildHeaderOrFooter(Landroid/view/View;)Z
    .locals 7
    .parameter "child"

    .prologue
    const/4 v6, 0x1

    .line 1749
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 1750
    .local v1, headers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1751
    .local v4, numHeaders:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 1752
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView$FixedViewInfo;

    iget-object v5, v5, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne p1, v5, :cond_0

    move v5, v6

    .line 1763
    .end local p0
    :goto_1
    return v5

    .line 1751
    .restart local p0
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1756
    :cond_1
    iget-object v0, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 1757
    .local v0, footers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1758
    .local v3, numFooters:I
    const/4 v2, 0x0

    .end local p0
    :goto_2
    if-ge v2, v3, :cond_3

    .line 1759
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/ListView$FixedViewInfo;

    iget-object v5, p0, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne p1, v5, :cond_2

    move v5, v6

    .line 1760
    goto :goto_1

    .line 1758
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1763
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

    .line 2817
    if-ne p1, p2, :cond_0

    move v1, v2

    .line 2822
    :goto_0
    return v1

    .line 2821
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2822
    .local v0, theParent:Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/view/View;

    .end local v0           #theParent:Landroid/view/ViewParent;
    invoke-direct {p0, v0, p2}, Landroid/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

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

    .line 2680
    iget v1, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 2681
    .local v1, firstPosition:I
    const/16 v6, 0x82

    if-ne p1, v6, :cond_4

    .line 2682
    iget v6, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-eq v6, v7, :cond_0

    iget v6, p0, Landroid/widget/ListView;->mSelectedPosition:I

    add-int/lit8 v6, v6, 0x1

    move v5, v6

    .line 2685
    .local v5, startPos:I
    :goto_0
    iget-object v6, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    if-lt v5, v6, :cond_1

    move v6, v7

    .line 2720
    :goto_1
    return v6

    .end local v5           #startPos:I
    :cond_0
    move v5, v1

    .line 2682
    goto :goto_0

    .line 2688
    .restart local v5       #startPos:I
    :cond_1
    if-ge v5, v1, :cond_2

    .line 2689
    move v5, v1

    .line 2692
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v3

    .line 2693
    .local v3, lastVisiblePos:I
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 2694
    .local v0, adapter:Landroid/widget/ListAdapter;
    move v4, v5

    .local v4, pos:I
    :goto_2
    if-gt v4, v3, :cond_9

    .line 2695
    invoke-interface {v0, v4}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_3

    sub-int v6, v4, v1

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_3

    move v6, v4

    .line 2697
    goto :goto_1

    .line 2694
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 2701
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    .end local v3           #lastVisiblePos:I
    .end local v4           #pos:I
    .end local v5           #startPos:I
    :cond_4
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v6

    add-int/2addr v6, v1

    sub-int v2, v6, v8

    .line 2702
    .local v2, last:I
    iget v6, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-eq v6, v7, :cond_5

    iget v6, p0, Landroid/widget/ListView;->mSelectedPosition:I

    sub-int/2addr v6, v8

    move v5, v6

    .line 2705
    .restart local v5       #startPos:I
    :goto_3
    if-gez v5, :cond_6

    move v6, v7

    .line 2706
    goto :goto_1

    .line 2702
    .end local v5           #startPos:I
    :cond_5
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v6

    add-int/2addr v6, v1

    sub-int/2addr v6, v8

    move v5, v6

    goto :goto_3

    .line 2708
    .restart local v5       #startPos:I
    :cond_6
    if-le v5, v2, :cond_7

    .line 2709
    move v5, v2

    .line 2712
    :cond_7
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 2713
    .restart local v0       #adapter:Landroid/widget/ListAdapter;
    move v4, v5

    .restart local v4       #pos:I
    :goto_4
    if-lt v4, v1, :cond_9

    .line 2714
    invoke-interface {v0, v4}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_8

    sub-int v6, v4, v1

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_8

    move v6, v4

    .line 2716
    goto :goto_1

    .line 2713
    :cond_8
    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    .end local v2           #last:I
    :cond_9
    move v6, v7

    .line 2720
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
    .line 1784
    iget-boolean v0, p0, Landroid/widget/ListView;->mDataChanged:Z

    if-nez v0, :cond_0

    .line 1786
    iget-object v0, p0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$RecycleBin;->getActiveView(I)Landroid/view/View;

    move-result-object v1

    .line 1787
    .local v1, child:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 1795
    const/4 v7, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v7}, Landroid/widget/ListView;->setupChild(Landroid/view/View;IIZIZZ)V

    move-object v8, v1

    .line 1807
    .end local v1           #child:Landroid/view/View;
    .local v8, child:Landroid/view/View;
    :goto_0
    return-object v8

    .line 1802
    .end local v8           #child:Landroid/view/View;
    :cond_0
    iget-object v0, p0, Landroid/widget/ListView;->mIsScrap:[Z

    invoke-virtual {p0, p1, v0}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .line 1805
    .restart local v1       #child:Landroid/view/View;
    iget-object v0, p0, Landroid/widget/ListView;->mIsScrap:[Z

    const/4 v2, 0x0

    aget-boolean v7, v0, v2

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v7}, Landroid/widget/ListView;->setupChild(Landroid/view/View;IIZIZZ)V

    move-object v8, v1

    .line 1807
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
    .line 2502
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 2503
    .local v2, oldHeight:I
    invoke-direct {p0, p1}, Landroid/widget/ListView;->measureItem(Landroid/view/View;)V

    .line 2504
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    if-eq v3, v2, :cond_0

    .line 2506
    invoke-direct {p0, p1}, Landroid/widget/ListView;->relayoutMeasuredItem(Landroid/view/View;)V

    .line 2509
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int v0, v3, v2

    .line 2510
    .local v0, heightDelta:I
    add-int/lit8 v1, p2, 0x1

    .local v1, i:I
    :goto_0
    if-ge v1, p3, :cond_0

    .line 2511
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 2510
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2514
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

    .line 2522
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 2523
    .local v3, p:Landroid/view/ViewGroup$LayoutParams;
    if-nez v3, :cond_0

    .line 2524
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .end local v3           #p:Landroid/view/ViewGroup$LayoutParams;
    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 2529
    .restart local v3       #p:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    iget v4, p0, Landroid/widget/ListView;->mWidthMeasureSpec:I

    iget-object v5, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    iget v6, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v4, v5, v6}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 2531
    .local v1, childWidthSpec:I
    iget v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2533
    .local v2, lpHeight:I
    if-lez v2, :cond_1

    .line 2534
    const/high16 v4, 0x4000

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 2538
    .local v0, childHeightSpec:I
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 2539
    return-void

    .line 2536
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

    .line 1192
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsListView$LayoutParams;

    .line 1193
    .local v3, p:Landroid/widget/AbsListView$LayoutParams;
    if-nez v3, :cond_0

    .line 1194
    new-instance v3, Landroid/widget/AbsListView$LayoutParams;

    .end local v3           #p:Landroid/widget/AbsListView$LayoutParams;
    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/AbsListView$LayoutParams;-><init>(III)V

    .line 1196
    .restart local v3       #p:Landroid/widget/AbsListView$LayoutParams;
    invoke-virtual {p1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1198
    :cond_0
    iget-object v4, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, p2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v4

    iput v4, v3, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 1199
    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    .line 1201
    iget-object v4, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iget v5, v3, Landroid/widget/AbsListView$LayoutParams;->width:I

    invoke-static {p3, v4, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 1203
    .local v1, childWidthSpec:I
    iget v2, v3, Landroid/widget/AbsListView$LayoutParams;->height:I

    .line 1205
    .local v2, lpHeight:I
    if-lez v2, :cond_1

    .line 1206
    const/high16 v4, 0x4000

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1210
    .local v0, childHeightSpec:I
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1211
    return-void

    .line 1208
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
    .line 961
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getVerticalFadingEdgeLength()I

    move-result v12

    .line 962
    .local v12, fadingEdgeLength:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mSelectedPosition:I

    move/from16 v17, v0

    .line 966
    .local v17, selectedPosition:I
    move-object/from16 v0, p0

    move/from16 v1, p4

    move v2, v12

    move/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ListView;->getTopSelectionPixel(III)I

    move-result v20

    .line 968
    .local v20, topSelectionPixel:I
    move-object/from16 v0, p0

    move/from16 v1, p4

    move v2, v12

    move/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ListView;->getBottomSelectionPixel(III)I

    move-result v10

    .line 971
    .local v10, bottomSelectionPixel:I
    if-lez p3, :cond_2

    .line 993
    const/4 v4, 0x1

    sub-int v5, v17, v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v6

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    move-object v4, v0

    iget v8, v4, Landroid/graphics/Rect;->left:I

    const/4 v9, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object p1

    .line 996
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mDividerHeight:I

    move v11, v0

    .line 999
    .local v11, dividerHeight:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v4

    add-int v6, v4, v11

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    move-object v4, v0

    iget v8, v4, Landroid/graphics/Rect;->left:I

    const/4 v9, 0x1

    move-object/from16 v4, p0

    move/from16 v5, v17

    invoke-direct/range {v4 .. v9}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v16

    .line 1003
    .local v16, sel:Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getBottom()I

    move-result v4

    if-le v4, v10, :cond_0

    .line 1006
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int v18, v4, v20

    .line 1009
    .local v18, spaceAbove:I
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getBottom()I

    move-result v4

    sub-int v19, v4, v10

    .line 1012
    .local v19, spaceBelow:I
    sub-int v4, p5, p4

    div-int/lit8 v13, v4, 0x2

    .line 1013
    .local v13, halfVerticalSpace:I
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 1014
    .local v15, offset:I
    invoke-static {v15, v13}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 1017
    neg-int v4, v15

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1019
    neg-int v4, v15

    move-object/from16 v0, v16

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1023
    .end local v13           #halfVerticalSpace:I
    .end local v15           #offset:I
    .end local v18           #spaceAbove:I
    .end local v19           #spaceBelow:I
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->mStackFromBottom:Z

    move v4, v0

    if-nez v4, :cond_1

    .line 1024
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mSelectedPosition:I

    move v4, v0

    const/4 v5, 0x2

    sub-int/2addr v4, v5

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int/2addr v5, v11

    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    invoke-direct {v0, v1, v2}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    .line 1025
    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1026
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mSelectedPosition:I

    move v4, v0

    add-int/lit8 v4, v4, 0x1

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getBottom()I

    move-result v5

    add-int/2addr v5, v11

    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    invoke-direct {v0, v1, v2}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    .line 1107
    .end local v11           #dividerHeight:I
    :goto_0
    return-object v16

    .line 1028
    .restart local v11       #dividerHeight:I
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mSelectedPosition:I

    move v4, v0

    add-int/lit8 v4, v4, 0x1

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getBottom()I

    move-result v5

    add-int/2addr v5, v11

    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    invoke-direct {v0, v1, v2}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    .line 1029
    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1030
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mSelectedPosition:I

    move v4, v0

    const/4 v5, 0x2

    sub-int/2addr v4, v5

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int/2addr v5, v11

    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    invoke-direct {v0, v1, v2}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    goto :goto_0

    .line 1032
    .end local v11           #dividerHeight:I
    .end local v16           #sel:Landroid/view/View;
    :cond_2
    if-gez p3, :cond_5

    .line 1053
    if-eqz p2, :cond_4

    .line 1055
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v6

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    move-object v4, v0

    iget v8, v4, Landroid/graphics/Rect;->left:I

    const/4 v9, 0x1

    move-object/from16 v4, p0

    move/from16 v5, v17

    invoke-direct/range {v4 .. v9}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v16

    .line 1065
    .restart local v16       #sel:Landroid/view/View;
    :goto_1
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v4

    move v0, v4

    move/from16 v1, v20

    if-ge v0, v1, :cond_3

    .line 1067
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int v18, v20, v4

    .line 1070
    .restart local v18       #spaceAbove:I
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getBottom()I

    move-result v4

    sub-int v19, v10, v4

    .line 1073
    .restart local v19       #spaceBelow:I
    sub-int v4, p5, p4

    div-int/lit8 v13, v4, 0x2

    .line 1074
    .restart local v13       #halfVerticalSpace:I
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 1075
    .restart local v15       #offset:I
    invoke-static {v15, v13}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 1078
    move-object/from16 v0, v16

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1082
    .end local v13           #halfVerticalSpace:I
    .end local v15           #offset:I
    .end local v18           #spaceAbove:I
    .end local v19           #spaceBelow:I
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/widget/ListView;->fillAboveAndBelow(Landroid/view/View;I)V

    goto :goto_0

    .line 1060
    .end local v16           #sel:Landroid/view/View;
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v6

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    move-object v4, v0

    iget v8, v4, Landroid/graphics/Rect;->left:I

    const/4 v9, 0x1

    move-object/from16 v4, p0

    move/from16 v5, v17

    invoke-direct/range {v4 .. v9}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v16

    .restart local v16       #sel:Landroid/view/View;
    goto :goto_1

    .line 1085
    .end local v16           #sel:Landroid/view/View;
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v6

    .line 1090
    .local v6, oldTop:I
    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    move-object v4, v0

    iget v8, v4, Landroid/graphics/Rect;->left:I

    const/4 v9, 0x1

    move-object/from16 v4, p0

    move/from16 v5, v17

    invoke-direct/range {v4 .. v9}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v16

    .line 1093
    .restart local v16       #sel:Landroid/view/View;
    move v0, v6

    move/from16 v1, p4

    if-ge v0, v1, :cond_6

    .line 1096
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getBottom()I

    move-result v14

    .line 1097
    .local v14, newBottom:I
    add-int/lit8 v4, p4, 0x14

    if-ge v14, v4, :cond_6

    .line 1099
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int v4, p4, v4

    move-object/from16 v0, v16

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1104
    .end local v14           #newBottom:I
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/widget/ListView;->fillAboveAndBelow(Landroid/view/View;I)V

    goto/16 :goto_0
.end method

.method private positionOfNewFocus(Landroid/view/View;)I
    .locals 5
    .parameter "newFocus"

    .prologue
    .line 2802
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    .line 2803
    .local v2, numChildren:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 2804
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2805
    .local v0, child:Landroid/view/View;
    invoke-direct {p0, p1, v0}, Landroid/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2806
    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v3, v1

    return v3

    .line 2803
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2809
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
    .line 2547
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 2548
    .local v5, w:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 2549
    .local v4, h:I
    iget-object v6, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v6, Landroid/graphics/Rect;->left:I

    .line 2550
    .local v1, childLeft:I
    add-int v2, v1, v5

    .line 2551
    .local v2, childRight:I
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    .line 2552
    .local v3, childTop:I
    add-int v0, v3, v4

    .line 2553
    .local v0, childBottom:I
    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/view/View;->layout(IIII)V

    .line 2554
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
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 388
    .local p2, where:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 389
    .local v2, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 390
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView$FixedViewInfo;

    .line 391
    .local v1, info:Landroid/widget/ListView$FixedViewInfo;
    iget-object v3, v1, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne v3, p1, :cond_1

    .line 392
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 396
    .end local v1           #info:Landroid/widget/ListView$FixedViewInfo;
    :cond_0
    return-void

    .line 389
    .restart local v1       #info:Landroid/widget/ListView$FixedViewInfo;
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

    .line 2885
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    .line 2887
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v9

    iget-object v10, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    sub-int v5, v9, v10

    .line 2888
    .local v5, listBottom:I
    iget-object v9, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v9, Landroid/graphics/Rect;->top:I

    .line 2889
    .local v6, listTop:I
    iget-object v8, p0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 2891
    .local v8, recycleBin:Landroid/widget/AbsListView$RecycleBin;
    if-gez p1, :cond_3

    .line 2895
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v7

    .line 2896
    .local v7, numChildren:I
    sub-int v9, v7, v11

    invoke-virtual {p0, v9}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2897
    .local v1, last:Landroid/view/View;
    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v9, v5, :cond_0

    .line 2898
    iget v9, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v9, v7

    sub-int v3, v9, v11

    .line 2899
    .local v3, lastVisiblePosition:I
    iget v9, p0, Landroid/widget/ListView;->mItemCount:I

    sub-int/2addr v9, v11

    if-ge v3, v9, :cond_0

    .line 2900
    invoke-direct {p0, v1, v3}, Landroid/widget/ListView;->addViewBelow(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 2901
    add-int/lit8 v7, v7, 0x1

    .line 2905
    goto :goto_0

    .line 2910
    .end local v3           #lastVisiblePosition:I
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v9, v5, :cond_1

    .line 2911
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v9

    sub-int v9, v5, v9

    invoke-virtual {p0, v9}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    .line 2915
    :cond_1
    invoke-virtual {p0, v12}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2916
    .local v0, first:Landroid/view/View;
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v9, v6, :cond_7

    .line 2917
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/AbsListView$LayoutParams;

    .line 2918
    .local v4, layoutParams:Landroid/widget/AbsListView$LayoutParams;
    iget v9, v4, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v8, v9}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 2919
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->detachViewFromParent(Landroid/view/View;)V

    .line 2920
    invoke-virtual {v8, v0}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 2924
    :goto_2
    invoke-virtual {p0, v12}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2925
    iget v9, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Landroid/widget/ListView;->mFirstPosition:I

    goto :goto_1

    .line 2922
    :cond_2
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->removeViewInLayout(Landroid/view/View;)V

    goto :goto_2

    .line 2929
    .end local v0           #first:Landroid/view/View;
    .end local v1           #last:Landroid/view/View;
    .end local v4           #layoutParams:Landroid/widget/AbsListView$LayoutParams;
    .end local v7           #numChildren:I
    :cond_3
    invoke-virtual {p0, v12}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2932
    .restart local v0       #first:Landroid/view/View;
    :goto_3
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v9

    if-le v9, v6, :cond_4

    iget v9, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-lez v9, :cond_4

    .line 2933
    iget v9, p0, Landroid/widget/ListView;->mFirstPosition:I

    invoke-direct {p0, v0, v9}, Landroid/widget/ListView;->addViewAbove(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 2934
    iget v9, p0, Landroid/widget/ListView;->mFirstPosition:I

    sub-int/2addr v9, v11

    iput v9, p0, Landroid/widget/ListView;->mFirstPosition:I

    goto :goto_3

    .line 2939
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v9

    if-le v9, v6, :cond_5

    .line 2940
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v9

    sub-int v9, v6, v9

    invoke-virtual {p0, v9}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    .line 2943
    :cond_5
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v9

    sub-int v2, v9, v11

    .line 2944
    .local v2, lastIndex:I
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2947
    .restart local v1       #last:Landroid/view/View;
    :goto_4
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v9

    if-le v9, v5, :cond_7

    .line 2948
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/AbsListView$LayoutParams;

    .line 2949
    .restart local v4       #layoutParams:Landroid/widget/AbsListView$LayoutParams;
    iget v9, v4, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v8, v9}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 2950
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->detachViewFromParent(Landroid/view/View;)V

    .line 2951
    invoke-virtual {v8, v1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 2955
    :goto_5
    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2956
    goto :goto_4

    .line 2953
    :cond_6
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->removeViewInLayout(Landroid/view/View;)V

    goto :goto_5

    .line 2958
    .end local v2           #lastIndex:I
    .end local v4           #layoutParams:Landroid/widget/AbsListView$LayoutParams;
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
    .line 1826
    if-eqz p6, :cond_8

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->shouldShowSelector()Z

    move-result v20

    if-eqz v20, :cond_8

    const/16 v20, 0x1

    move/from16 v12, v20

    .line 1827
    .local v12, isSelected:Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isSelected()Z

    move-result v20

    move v0, v12

    move/from16 v1, v20

    if-eq v0, v1, :cond_9

    const/16 v20, 0x1

    move/from16 v18, v20

    .line 1828
    .local v18, updateChildSelected:Z
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mTouchMode:I

    move v14, v0

    .line 1829
    .local v14, mode:I
    if-lez v14, :cond_a

    const/16 v20, 0x3

    move v0, v14

    move/from16 v1, v20

    if-ge v0, v1, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mMotionPosition:I

    move/from16 v20, v0

    move/from16 v0, v20

    move/from16 v1, p2

    if-ne v0, v1, :cond_a

    const/16 v20, 0x1

    move/from16 v11, v20

    .line 1831
    .local v11, isPressed:Z
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isPressed()Z

    move-result v20

    move v0, v11

    move/from16 v1, v20

    if-eq v0, v1, :cond_b

    const/16 v20, 0x1

    move/from16 v17, v20

    .line 1832
    .local v17, updateChildPressed:Z
    :goto_3
    if-eqz p7, :cond_0

    if-nez v18, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v20

    if-eqz v20, :cond_c

    :cond_0
    const/16 v20, 0x1

    move/from16 v15, v20

    .line 1836
    .local v15, needToMeasure:Z
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Landroid/widget/AbsListView$LayoutParams;

    .line 1837
    .local v16, p:Landroid/widget/AbsListView$LayoutParams;
    if-nez v16, :cond_1

    .line 1838
    new-instance v16, Landroid/widget/AbsListView$LayoutParams;

    .end local v16           #p:Landroid/widget/AbsListView$LayoutParams;
    const/16 v20, -0x1

    const/16 v21, -0x2

    const/16 v22, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(III)V

    .line 1841
    .restart local v16       #p:Landroid/widget/AbsListView$LayoutParams;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, v16

    iput v0, v1, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 1843
    if-eqz p7, :cond_2

    move-object/from16 v0, v16

    iget-boolean v0, v0, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    move/from16 v20, v0

    if-eqz v20, :cond_3

    :cond_2
    move-object/from16 v0, v16

    iget-boolean v0, v0, Landroid/widget/AbsListView$LayoutParams;->recycledHeaderFooter:Z

    move/from16 v20, v0

    if-eqz v20, :cond_e

    move-object/from16 v0, v16

    iget v0, v0, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    move/from16 v20, v0

    const/16 v21, -0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_e

    .line 1845
    :cond_3
    if-eqz p4, :cond_d

    const/16 v20, -0x1

    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    move-object/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1854
    :goto_6
    if-eqz v18, :cond_4

    .line 1855
    move-object/from16 v0, p1

    move v1, v12

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 1858
    :cond_4
    if-eqz v17, :cond_5

    .line 1859
    move-object/from16 v0, p1

    move v1, v11

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 1862
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mChoiceMode:I

    move/from16 v20, v0

    if-eqz v20, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v20, v0

    if-eqz v20, :cond_6

    .line 1863
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/Checkable;

    move/from16 v20, v0

    if-eqz v20, :cond_6

    .line 1864
    move-object/from16 v0, p1

    check-cast v0, Landroid/widget/Checkable;

    move-object/from16 p6, v0

    .end local p6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v20

    move-object/from16 v0, p6

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 1868
    :cond_6
    if-eqz v15, :cond_12

    .line 1869
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mWidthMeasureSpec:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    add-int v21, v21, v22

    move-object/from16 v0, v16

    iget v0, v0, Landroid/widget/AbsListView$LayoutParams;->width:I

    move/from16 v22, v0

    invoke-static/range {v20 .. v22}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v9

    .line 1871
    .local v9, childWidthSpec:I
    move-object/from16 v0, v16

    iget v0, v0, Landroid/widget/AbsListView$LayoutParams;->height:I

    move v13, v0

    .line 1873
    .local v13, lpHeight:I
    if-lez v13, :cond_11

    .line 1874
    const/high16 v20, 0x4000

    move v0, v13

    move/from16 v1, v20

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 1878
    .local v6, childHeightSpec:I
    :goto_7
    move-object/from16 v0, p1

    move v1, v9

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 1883
    .end local v6           #childHeightSpec:I
    .end local v9           #childWidthSpec:I
    .end local v13           #lpHeight:I
    :goto_8
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v19

    .line 1884
    .local v19, w:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 1885
    .local v10, h:I
    if-eqz p4, :cond_13

    move/from16 v8, p3

    .line 1887
    .local v8, childTop:I
    :goto_9
    if-eqz v15, :cond_14

    .line 1888
    add-int v7, p5, v19

    .line 1889
    .local v7, childRight:I
    add-int v5, v8, v10

    .line 1890
    .local v5, childBottom:I
    move-object/from16 v0, p1

    move/from16 v1, p5

    move v2, v8

    move v3, v7

    move v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 1896
    .end local v5           #childBottom:I
    .end local v7           #childRight:I
    :goto_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->mCachingStarted:Z

    move/from16 v20, v0

    if-eqz v20, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v20

    if-nez v20, :cond_7

    .line 1897
    const/16 v20, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 1899
    :cond_7
    return-void

    .line 1826
    .end local v8           #childTop:I
    .end local v10           #h:I
    .end local v11           #isPressed:Z
    .end local v12           #isSelected:Z
    .end local v14           #mode:I
    .end local v15           #needToMeasure:Z
    .end local v16           #p:Landroid/widget/AbsListView$LayoutParams;
    .end local v17           #updateChildPressed:Z
    .end local v18           #updateChildSelected:Z
    .end local v19           #w:I
    .restart local p6
    :cond_8
    const/16 v20, 0x0

    move/from16 v12, v20

    goto/16 :goto_0

    .line 1827
    .restart local v12       #isSelected:Z
    :cond_9
    const/16 v20, 0x0

    move/from16 v18, v20

    goto/16 :goto_1

    .line 1829
    .restart local v14       #mode:I
    .restart local v18       #updateChildSelected:Z
    :cond_a
    const/16 v20, 0x0

    move/from16 v11, v20

    goto/16 :goto_2

    .line 1831
    .restart local v11       #isPressed:Z
    :cond_b
    const/16 v20, 0x0

    move/from16 v17, v20

    goto/16 :goto_3

    .line 1832
    .restart local v17       #updateChildPressed:Z
    :cond_c
    const/16 v20, 0x0

    move/from16 v15, v20

    goto/16 :goto_4

    .line 1845
    .restart local v15       #needToMeasure:Z
    .restart local v16       #p:Landroid/widget/AbsListView$LayoutParams;
    :cond_d
    const/16 v20, 0x0

    goto/16 :goto_5

    .line 1847
    :cond_e
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v16

    iput-boolean v0, v1, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    .line 1848
    move-object/from16 v0, v16

    iget v0, v0, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    move/from16 v20, v0

    const/16 v21, -0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_f

    .line 1849
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, v16

    iput-boolean v0, v1, Landroid/widget/AbsListView$LayoutParams;->recycledHeaderFooter:Z

    .line 1851
    :cond_f
    if-eqz p4, :cond_10

    const/16 v20, -0x1

    :goto_b
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    move-object/from16 v3, v16

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ListView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    goto/16 :goto_6

    :cond_10
    const/16 v20, 0x0

    goto :goto_b

    .line 1876
    .end local p6
    .restart local v9       #childWidthSpec:I
    .restart local v13       #lpHeight:I
    :cond_11
    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .restart local v6       #childHeightSpec:I
    goto/16 :goto_7

    .line 1880
    .end local v6           #childHeightSpec:I
    .end local v9           #childWidthSpec:I
    .end local v13           #lpHeight:I
    :cond_12
    invoke-virtual/range {p0 .. p1}, Landroid/widget/ListView;->cleanupLayoutState(Landroid/view/View;)V

    goto/16 :goto_8

    .line 1885
    .restart local v10       #h:I
    .restart local v19       #w:I
    :cond_13
    sub-int v20, p3, v10

    move/from16 v8, v20

    goto/16 :goto_9

    .line 1892
    .restart local v8       #childTop:I
    :cond_14
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v20

    sub-int v20, p5, v20

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1893
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

    .line 599
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    .line 600
    .local v1, childCount:I
    sub-int v4, v1, v6

    invoke-virtual {p0, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 601
    .local v0, bottomOfBottomChild:I
    iget v4, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v4, v1

    sub-int v2, v4, v6

    .line 603
    .local v2, lastVisiblePosition:I
    iget v4, p0, Landroid/widget/ListView;->mScrollY:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int v3, v4, v5

    .line 605
    .local v3, listBottom:I
    iget v4, p0, Landroid/widget/ListView;->mItemCount:I

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

    .line 591
    iget v1, p0, Landroid/widget/ListView;->mScrollY:I

    iget-object v2, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int v0, v1, v2

    .line 592
    .local v0, listTop:I
    iget v1, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-gtz v1, :cond_0

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

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
    .line 436
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 437
    return-void
.end method

.method public addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 2
    .parameter "v"
    .parameter "data"
    .parameter "isSelectable"

    .prologue
    .line 412
    new-instance v0, Landroid/widget/ListView$FixedViewInfo;

    invoke-direct {v0, p0}, Landroid/widget/ListView$FixedViewInfo;-><init>(Landroid/widget/ListView;)V

    .line 413
    .local v0, info:Landroid/widget/ListView$FixedViewInfo;
    iput-object p1, v0, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 414
    iput-object p2, v0, Landroid/widget/ListView$FixedViewInfo;->data:Ljava/lang/Object;

    .line 415
    iput-boolean p3, v0, Landroid/widget/ListView$FixedViewInfo;->isSelectable:Z

    .line 416
    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 420
    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AdapterView$AdapterDataSetObserver;

    if-eqz v1, :cond_0

    .line 421
    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AdapterView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/AdapterView$AdapterDataSetObserver;->onChanged()V

    .line 423
    :cond_0
    return-void
.end method

.method public addHeaderView(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 359
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 360
    return-void
.end method

.method public addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 3
    .parameter "v"
    .parameter "data"
    .parameter "isSelectable"

    .prologue
    .line 335
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    .line 336
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot add header view to list -- setAdapter has already been called."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 340
    :cond_0
    new-instance v0, Landroid/widget/ListView$FixedViewInfo;

    invoke-direct {v0, p0}, Landroid/widget/ListView$FixedViewInfo;-><init>(Landroid/widget/ListView;)V

    .line 341
    .local v0, info:Landroid/widget/ListView$FixedViewInfo;
    iput-object p1, v0, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 342
    iput-object p2, v0, Landroid/widget/ListView$FixedViewInfo;->data:Ljava/lang/Object;

    .line 343
    iput-boolean p3, v0, Landroid/widget/ListView$FixedViewInfo;->isSelectable:Z

    .line 344
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    return-void
.end method

.method arrowScroll(I)Z
    .locals 3
    .parameter "direction"

    .prologue
    const/4 v2, 0x0

    .line 2343
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroid/widget/ListView;->mInLayout:Z

    .line 2344
    invoke-direct {p0, p1}, Landroid/widget/ListView;->arrowScrollImpl(I)Z

    move-result v0

    .line 2345
    .local v0, handled:Z
    if-eqz v0, :cond_0

    .line 2346
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->playSoundEffect(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2350
    :cond_0
    iput-boolean v2, p0, Landroid/widget/ListView;->mInLayout:Z

    .line 2348
    return v0

    .line 2350
    .end local v0           #handled:Z
    :catchall_0
    move-exception v1

    iput-boolean v2, p0, Landroid/widget/ListView;->mInLayout:Z

    throw v1
.end method

.method protected canAnimate()Z
    .locals 1

    .prologue
    .line 1903
    invoke-super {p0}, Landroid/widget/AbsListView;->canAnimate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/ListView;->mItemCount:I

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
    .line 3851
    iget-object v0, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    .line 3852
    iget-object v0, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 3854
    :cond_0
    iget-object v0, p0, Landroid/widget/ListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_1

    .line 3855
    iget-object v0, p0, Landroid/widget/ListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 3857
    :cond_1
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 30
    .parameter "canvas"

    .prologue
    .line 3025
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mExcessScroll:I

    move/from16 v27, v0

    if-eqz v27, :cond_1

    .line 3026
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mExcessScrollRecoverEffect:I

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_0

    .line 3027
    invoke-virtual/range {p0 .. p1}, Landroid/widget/ListView;->dispatchDrawWithExcessScroll_ItemSpring(Landroid/graphics/Canvas;)V

    .line 3145
    :goto_0
    return-void

    .line 3029
    :cond_0
    invoke-virtual/range {p0 .. p1}, Landroid/widget/ListView;->dispatchDrawWithExcessScroll_Default(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 3034
    :cond_1
    const/4 v9, 0x0

    .line 3035
    .local v9, clipSaved:Z
    const/16 v24, 0x0

    .line 3036
    .local v24, saveClip:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v27

    if-lez v27, :cond_2

    .line 3037
    const/4 v9, 0x1

    .line 3038
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getPaddingLeft()I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 3039
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v28

    const/16 v29, 0x1

    sub-int v28, v28, v29

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 3040
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getWidth()I

    move-result v28

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getPaddingRight()I

    move-result v29

    sub-int v28, v28, v29

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 3041
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getHeight()I

    move-result v28

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result v29

    sub-int v28, v28, v29

    add-int/lit8 v28, v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 3042
    const/16 v27, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->save(I)I

    move-result v24

    .line 3043
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 3047
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mDividerHeight:I

    move v11, v0

    .line 3048
    .local v11, dividerHeight:I
    if-lez v11, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v27, v0

    if-eqz v27, :cond_8

    const/16 v27, 0x1

    move/from16 v12, v27

    .line 3050
    .local v12, drawDividers:Z
    :goto_1
    if-eqz v12, :cond_12

    .line 3052
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    move-object v7, v0

    .line 3053
    .local v7, bounds:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mPaddingLeft:I

    move/from16 v27, v0

    move/from16 v0, v27

    move-object v1, v7

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 3054
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mRight:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mLeft:I

    move/from16 v28, v0

    sub-int v27, v27, v28

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mPaddingRight:I

    move/from16 v28, v0

    sub-int v27, v27, v28

    move/from16 v0, v27

    move-object v1, v7

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 3056
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v10

    .line 3057
    .local v10, count:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 3058
    .local v17, headerCount:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mItemCount:I

    move/from16 v20, v0

    .line 3059
    .local v20, itemCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    sub-int v27, v20, v27

    const/16 v28, 0x1

    sub-int v16, v27, v28

    .line 3060
    .local v16, footerLimit:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->mHeaderDividersEnabled:Z

    move/from16 v18, v0

    .line 3061
    .local v18, headerDividers:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->mFooterDividersEnabled:Z

    move v15, v0

    .line 3062
    .local v15, footerDividers:Z
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mFirstPosition:I

    move v14, v0

    .line 3063
    .local v14, first:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    move v5, v0

    .line 3064
    .local v5, areAllItemsSelectable:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object v4, v0

    .line 3069
    .local v4, adapter:Landroid/widget/ListAdapter;
    if-eqz v12, :cond_9

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->isOpaque()Z

    move-result v27

    if-eqz v27, :cond_9

    invoke-super/range {p0 .. p0}, Landroid/widget/AbsListView;->isOpaque()Z

    move-result v27

    if-nez v27, :cond_9

    const/16 v27, 0x1

    move/from16 v13, v27

    .line 3071
    .local v13, fillForMissingDividers:Z
    :goto_2
    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v27, v0

    if-nez v27, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->mIsCacheColorOpaque:Z

    move/from16 v27, v0

    if-eqz v27, :cond_3

    .line 3072
    new-instance v27, Landroid/graphics/Paint;

    invoke-direct/range {v27 .. v27}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    .line 3073
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getCacheColorHint()I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Landroid/graphics/Paint;->setColor(I)V

    .line 3075
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    .line 3077
    .local v23, paint:Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mBottom:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mTop:I

    move/from16 v28, v0

    sub-int v27, v27, v28

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v28, v0

    sub-int v27, v27, v28

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mScrollY:I

    move/from16 v28, v0

    add-int v21, v27, v28

    .line 3078
    .local v21, listBottom:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->mStackFromBottom:Z

    move/from16 v27, v0

    if-nez v27, :cond_b

    .line 3079
    const/4 v6, 0x0

    .line 3081
    .local v6, bottom:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mScrollY:I

    move/from16 v25, v0

    .line 3082
    .local v25, scrollY:I
    const/16 v19, 0x0

    .local v19, i:I
    :goto_3
    move/from16 v0, v19

    move v1, v10

    if-ge v0, v1, :cond_12

    .line 3083
    if-nez v18, :cond_4

    add-int v27, v14, v19

    move/from16 v0, v27

    move/from16 v1, v17

    if-lt v0, v1, :cond_7

    :cond_4
    if-nez v15, :cond_5

    add-int v27, v14, v19

    move/from16 v0, v27

    move/from16 v1, v16

    if-ge v0, v1, :cond_7

    .line 3085
    :cond_5
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 3086
    .local v8, child:Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v6

    .line 3088
    if-eqz v12, :cond_7

    .line 3089
    if-nez v5, :cond_6

    add-int v27, v14, v19

    move-object v0, v4

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v27

    if-eqz v27, :cond_a

    const/16 v27, 0x1

    sub-int v27, v10, v27

    move/from16 v0, v19

    move/from16 v1, v27

    if-eq v0, v1, :cond_6

    add-int v27, v14, v19

    add-int/lit8 v27, v27, 0x1

    move-object v0, v4

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v27

    if-eqz v27, :cond_a

    .line 3092
    :cond_6
    iput v6, v7, Landroid/graphics/Rect;->top:I

    .line 3093
    add-int v27, v6, v11

    move/from16 v0, v27

    move-object v1, v7

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 3094
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v7

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 3082
    .end local v8           #child:Landroid/view/View;
    :cond_7
    :goto_4
    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    .line 3048
    .end local v4           #adapter:Landroid/widget/ListAdapter;
    .end local v5           #areAllItemsSelectable:Z
    .end local v6           #bottom:I
    .end local v7           #bounds:Landroid/graphics/Rect;
    .end local v10           #count:I
    .end local v12           #drawDividers:Z
    .end local v13           #fillForMissingDividers:Z
    .end local v14           #first:I
    .end local v15           #footerDividers:Z
    .end local v16           #footerLimit:I
    .end local v17           #headerCount:I
    .end local v18           #headerDividers:Z
    .end local v19           #i:I
    .end local v20           #itemCount:I
    .end local v21           #listBottom:I
    .end local v23           #paint:Landroid/graphics/Paint;
    .end local v25           #scrollY:I
    :cond_8
    const/16 v27, 0x0

    move/from16 v12, v27

    goto/16 :goto_1

    .line 3069
    .restart local v4       #adapter:Landroid/widget/ListAdapter;
    .restart local v5       #areAllItemsSelectable:Z
    .restart local v7       #bounds:Landroid/graphics/Rect;
    .restart local v10       #count:I
    .restart local v12       #drawDividers:Z
    .restart local v14       #first:I
    .restart local v15       #footerDividers:Z
    .restart local v16       #footerLimit:I
    .restart local v17       #headerCount:I
    .restart local v18       #headerDividers:Z
    .restart local v20       #itemCount:I
    :cond_9
    const/16 v27, 0x0

    move/from16 v13, v27

    goto/16 :goto_2

    .line 3095
    .restart local v6       #bottom:I
    .restart local v8       #child:Landroid/view/View;
    .restart local v13       #fillForMissingDividers:Z
    .restart local v19       #i:I
    .restart local v21       #listBottom:I
    .restart local v23       #paint:Landroid/graphics/Paint;
    .restart local v25       #scrollY:I
    :cond_a
    if-eqz v13, :cond_7

    .line 3096
    iput v6, v7, Landroid/graphics/Rect;->top:I

    .line 3097
    add-int v27, v6, v11

    move/from16 v0, v27

    move-object v1, v7

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 3098
    move-object/from16 v0, p1

    move-object v1, v7

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_4

    .line 3105
    .end local v6           #bottom:I
    .end local v8           #child:Landroid/view/View;
    .end local v19           #i:I
    .end local v25           #scrollY:I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    .line 3107
    .local v22, listTop:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mScrollY:I

    move/from16 v25, v0

    .line 3109
    .restart local v25       #scrollY:I
    const/16 v19, 0x0

    .restart local v19       #i:I
    :goto_5
    move/from16 v0, v19

    move v1, v10

    if-ge v0, v1, :cond_11

    .line 3110
    if-nez v18, :cond_c

    add-int v27, v14, v19

    move/from16 v0, v27

    move/from16 v1, v17

    if-lt v0, v1, :cond_f

    :cond_c
    if-nez v15, :cond_d

    add-int v27, v14, v19

    move/from16 v0, v27

    move/from16 v1, v16

    if-ge v0, v1, :cond_f

    .line 3112
    :cond_d
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 3113
    .restart local v8       #child:Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v26

    .line 3115
    .local v26, top:I
    if-eqz v12, :cond_f

    move/from16 v0, v26

    move/from16 v1, v22

    if-le v0, v1, :cond_f

    .line 3116
    if-nez v5, :cond_e

    add-int v27, v14, v19

    move-object v0, v4

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v27

    if-eqz v27, :cond_10

    const/16 v27, 0x1

    sub-int v27, v10, v27

    move/from16 v0, v19

    move/from16 v1, v27

    if-eq v0, v1, :cond_e

    add-int v27, v14, v19

    add-int/lit8 v27, v27, 0x1

    move-object v0, v4

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v27

    if-eqz v27, :cond_10

    .line 3119
    :cond_e
    sub-int v27, v26, v11

    move/from16 v0, v27

    move-object v1, v7

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 3120
    move/from16 v0, v26

    move-object v1, v7

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 3125
    const/16 v27, 0x1

    sub-int v27, v19, v27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v7

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 3109
    .end local v8           #child:Landroid/view/View;
    .end local v26           #top:I
    :cond_f
    :goto_6
    add-int/lit8 v19, v19, 0x1

    goto :goto_5

    .line 3126
    .restart local v8       #child:Landroid/view/View;
    .restart local v26       #top:I
    :cond_10
    if-eqz v13, :cond_f

    .line 3127
    sub-int v27, v26, v11

    move/from16 v0, v27

    move-object v1, v7

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 3128
    move/from16 v0, v26

    move-object v1, v7

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 3129
    move-object/from16 v0, p1

    move-object v1, v7

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_6

    .line 3135
    .end local v8           #child:Landroid/view/View;
    .end local v26           #top:I
    :cond_11
    if-lez v10, :cond_12

    if-lez v25, :cond_12

    if-eqz v12, :cond_12

    .line 3136
    move/from16 v0, v21

    move-object v1, v7

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 3137
    add-int v27, v21, v11

    move/from16 v0, v27

    move-object v1, v7

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 3138
    const/16 v27, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v7

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 3144
    .end local v4           #adapter:Landroid/widget/ListAdapter;
    .end local v5           #areAllItemsSelectable:Z
    .end local v7           #bounds:Landroid/graphics/Rect;
    .end local v10           #count:I
    .end local v13           #fillForMissingDividers:Z
    .end local v14           #first:I
    .end local v15           #footerDividers:Z
    .end local v16           #footerLimit:I
    .end local v17           #headerCount:I
    .end local v18           #headerDividers:Z
    .end local v19           #i:I
    .end local v20           #itemCount:I
    .end local v21           #listBottom:I
    .end local v22           #listTop:I
    .end local v23           #paint:Landroid/graphics/Paint;
    .end local v25           #scrollY:I
    :cond_12
    invoke-super/range {p0 .. p1}, Landroid/widget/AbsListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0
.end method

.method protected dispatchDrawWithExcessScroll_Default(Landroid/graphics/Canvas;)V
    .locals 31
    .parameter "canvas"

    .prologue
    .line 3173
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getHeight()I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v20, v0

    .line 3174
    .local v20, height:F
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getExcessScrollDrawInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v28

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mExcessScroll:I

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

    .line 3177
    .local v26, shift:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mExcessScroll:I

    move/from16 v28, v0

    if-gez v28, :cond_0

    .line 3178
    mul-int/lit8 v26, v26, -0x1

    .line 3181
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getPaddingLeft()I

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 3182
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 3183
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getWidth()I

    move-result v29

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getPaddingRight()I

    move-result v30

    sub-int v29, v29, v30

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 3184
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getHeight()I

    move-result v29

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result v30

    sub-int v29, v29, v30

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 3185
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 3187
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v25

    .line 3188
    .local v25, save1:I
    const/16 v28, 0x0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p1

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3190
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v10

    .line 3193
    .local v10, childCount:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mDividerHeight:I

    move v12, v0

    .line 3195
    .local v12, dividerHeight:I
    if-lez v12, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v28, v0

    if-eqz v28, :cond_a

    .line 3197
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    move-object v8, v0

    .line 3198
    .local v8, bounds:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mPaddingLeft:I

    move/from16 v28, v0

    move/from16 v0, v28

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 3199
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mRight:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mLeft:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mPaddingRight:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move/from16 v0, v28

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 3201
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v11

    .line 3202
    .local v11, count:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v18

    .line 3203
    .local v18, headerCount:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mItemCount:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v29

    sub-int v28, v28, v29

    const/16 v29, 0x1

    sub-int v17, v28, v29

    .line 3204
    .local v17, footerLimit:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->mHeaderDividersEnabled:Z

    move/from16 v19, v0

    .line 3205
    .local v19, headerDividers:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->mFooterDividersEnabled:Z

    move/from16 v16, v0

    .line 3206
    .local v16, footerDividers:Z
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mFirstPosition:I

    move v15, v0

    .line 3207
    .local v15, first:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    move v6, v0

    .line 3208
    .local v6, areAllItemsSelectable:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object v5, v0

    .line 3210
    .local v5, adapter:Landroid/widget/ListAdapter;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->mStackFromBottom:Z

    move/from16 v28, v0

    if-nez v28, :cond_5

    .line 3212
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mBottom:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mTop:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v29, v0

    sub-int v23, v28, v29

    .line 3214
    .local v23, listBottom:I
    const/16 v21, 0x0

    .local v21, i:I
    :goto_0
    move/from16 v0, v21

    move v1, v11

    if-ge v0, v1, :cond_a

    .line 3215
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

    .line 3217
    :cond_2
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 3218
    .local v9, child:Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v7

    .line 3220
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

    .line 3224
    :cond_3
    iput v7, v8, Landroid/graphics/Rect;->top:I

    .line 3225
    add-int v28, v7, v12

    move/from16 v0, v28

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 3226
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v8

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 3214
    .end local v7           #bottom:I
    .end local v9           #child:Landroid/view/View;
    :cond_4
    add-int/lit8 v21, v21, 0x1

    goto :goto_0

    .line 3232
    .end local v21           #i:I
    .end local v23           #listBottom:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    .line 3234
    .local v24, listTop:I
    const/16 v21, 0x0

    .restart local v21       #i:I
    :goto_1
    move/from16 v0, v21

    move v1, v11

    if-ge v0, v1, :cond_a

    .line 3235
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

    .line 3237
    :cond_7
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 3238
    .restart local v9       #child:Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v27

    .line 3240
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

    .line 3246
    :cond_8
    sub-int v28, v27, v12

    move/from16 v0, v28

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 3247
    move/from16 v0, v27

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 3252
    const/16 v28, 0x1

    sub-int v28, v21, v28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v8

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 3234
    .end local v9           #child:Landroid/view/View;
    .end local v27           #top:I
    :cond_9
    add-int/lit8 v21, v21, 0x1

    goto :goto_1

    .line 3260
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
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getDrawingTime()J

    move-result-wide v13

    .line 3262
    .local v13, drawingTime:J
    const/16 v21, 0x0

    .restart local v21       #i:I
    :goto_2
    move/from16 v0, v21

    move v1, v10

    if-ge v0, v1, :cond_c

    .line 3263
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 3264
    .restart local v9       #child:Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v28

    if-nez v28, :cond_b

    .line 3265
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v9

    move-wide v3, v13

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 3262
    :cond_b
    add-int/lit8 v21, v21, 0x1

    goto :goto_2

    .line 3269
    .end local v9           #child:Landroid/view/View;
    :cond_c
    if-lez v12, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v28, v0

    if-eqz v28, :cond_e

    .line 3271
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    move-object v8, v0

    .line 3272
    .restart local v8       #bounds:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mPaddingLeft:I

    move/from16 v28, v0

    move/from16 v0, v28

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 3273
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mRight:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mLeft:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mPaddingRight:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move/from16 v0, v28

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 3275
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v11

    .line 3276
    .restart local v11       #count:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object v5, v0

    .line 3277
    .restart local v5       #adapter:Landroid/widget/ListAdapter;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mFirstPosition:I

    move v15, v0

    .line 3279
    .restart local v15       #first:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->mStackFromBottom:Z

    move/from16 v28, v0

    if-nez v28, :cond_f

    .line 3282
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mExcessScroll:I

    move/from16 v28, v0

    if-lez v28, :cond_d

    if-lez v11, :cond_d

    const/16 v28, 0x0

    move-object v0, v5

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v28

    if-eqz v28, :cond_d

    .line 3283
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v28

    const/16 v29, 0x1

    sub-int v28, v28, v29

    move/from16 v0, v28

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 3284
    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v28, v0

    add-int v28, v28, v12

    move/from16 v0, v28

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 3285
    const/16 v28, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v8

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 3288
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mExcessScroll:I

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

    .line 3290
    const/16 v28, 0x1

    sub-int v28, v11, v28

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getBottom()I

    move-result v22

    .line 3292
    .local v22, itemBottom:I
    move/from16 v0, v22

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 3293
    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v28, v0

    add-int v28, v28, v12

    move/from16 v0, v28

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 3294
    const/16 v28, 0x1

    sub-int v28, v11, v28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v8

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 3316
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

    .line 3317
    return-void

    .line 3299
    .restart local v5       #adapter:Landroid/widget/ListAdapter;
    .restart local v8       #bounds:Landroid/graphics/Rect;
    .restart local v11       #count:I
    .restart local v15       #first:I
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mExcessScroll:I

    move/from16 v28, v0

    if-lez v28, :cond_10

    if-lez v11, :cond_10

    const/16 v28, 0x0

    move-object v0, v5

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v28

    if-eqz v28, :cond_10

    .line 3300
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getTop()I

    move-result v28

    const/16 v29, 0x1

    sub-int v28, v28, v29

    move/from16 v0, v28

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 3301
    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v28, v0

    add-int v28, v28, v12

    move/from16 v0, v28

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 3302
    const/16 v28, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v8

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 3305
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mExcessScroll:I

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

    .line 3307
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mBottom:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mTop:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v29, v0

    sub-int v23, v28, v29

    .line 3309
    .restart local v23       #listBottom:I
    move/from16 v0, v23

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 3310
    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v28, v0

    add-int v28, v28, v12

    move/from16 v0, v28

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 3311
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v8

    move v3, v11

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto/16 :goto_3
.end method

.method protected dispatchDrawWithExcessScroll_ItemSpring(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 3323
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 2078
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    .line 2079
    .local v1, handled:Z
    if-nez v1, :cond_0

    .line 2081
    invoke-virtual {p0}, Landroid/widget/ListView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 2082
    .local v0, focused:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    .line 2085
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {p0, v2, p1}, Landroid/widget/ListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 2088
    .end local v0           #focused:Landroid/view/View;
    :cond_0
    return v1
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    .line 2024
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v5

    .line 2028
    .local v5, populated:Z
    if-nez v5, :cond_4

    .line 2029
    const/4 v4, 0x0

    .line 2030
    .local v4, itemCount:I
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v2

    .line 2032
    .local v2, currentItemIndex:I
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 2033
    .local v0, adapter:Landroid/widget/ListAdapter;
    if-eqz v0, :cond_3

    .line 2034
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 2035
    .local v1, count:I
    const/16 v6, 0xf

    if-ge v1, v6, :cond_2

    .line 2036
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_3

    .line 2037
    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2038
    add-int/lit8 v4, v4, 0x1

    .line 2036
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2039
    :cond_1
    if-gt v3, v2, :cond_0

    .line 2040
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 2044
    .end local v3           #i:I
    :cond_2
    move v4, v1

    .line 2048
    .end local v1           #count:I
    :cond_3
    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 2049
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    .line 2052
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
    .line 3337
    iget-object v1, p0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 3338
    .local v1, divider:Landroid/graphics/drawable/Drawable;
    iget-boolean v0, p0, Landroid/widget/ListView;->mClipDivider:Z

    .line 3340
    .local v0, clipDivider:Z
    if-nez v0, :cond_1

    .line 3341
    invoke-virtual {v1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3347
    :goto_0
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3349
    if-eqz v0, :cond_0

    .line 3350
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 3352
    :cond_0
    return-void

    .line 3343
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3344
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    goto :goto_0
.end method

.method fillGap(Z)V
    .locals 5
    .parameter "down"

    .prologue
    const/4 v4, 0x1

    .line 694
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 695
    .local v0, count:I
    if-eqz p1, :cond_1

    .line 696
    if-lez v0, :cond_0

    sub-int v2, v0, v4

    invoke-virtual {p0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    iget v3, p0, Landroid/widget/ListView;->mDividerHeight:I

    add-int/2addr v2, v3

    move v1, v2

    .line 698
    .local v1, startOffset:I
    :goto_0
    iget v2, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v2, v0

    invoke-direct {p0, v2, v1}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    .line 699
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/widget/ListView;->correctTooHigh(I)V

    .line 706
    :goto_1
    return-void

    .line 696
    .end local v1           #startOffset:I
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getListPaddingTop()I

    move-result v2

    move v1, v2

    goto :goto_0

    .line 701
    :cond_1
    if-lez v0, :cond_2

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget v3, p0, Landroid/widget/ListView;->mDividerHeight:I

    sub-int/2addr v2, v3

    move v1, v2

    .line 703
    .restart local v1       #startOffset:I
    :goto_2
    iget v2, p0, Landroid/widget/ListView;->mFirstPosition:I

    sub-int/2addr v2, v4

    invoke-direct {p0, v2, v1}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    .line 704
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/widget/ListView;->correctTooLow(I)V

    goto :goto_1

    .line 701
    .end local v1           #startOffset:I
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/ListView;->getListPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    move v1, v2

    goto :goto_2
.end method

.method findMotionRow(I)I
    .locals 4
    .parameter "y"

    .prologue
    .line 1313
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 1314
    .local v0, childCount:I
    if-lez v0, :cond_3

    .line 1315
    iget-boolean v3, p0, Landroid/widget/ListView;->mStackFromBottom:Z

    if-nez v3, :cond_1

    .line 1316
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 1317
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1318
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    if-gt p1, v3, :cond_0

    .line 1319
    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v3, v1

    .line 1331
    .end local v1           #i:I
    .end local v2           #v:Landroid/view/View;
    :goto_1
    return v3

    .line 1316
    .restart local v1       #i:I
    .restart local v2       #v:Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1323
    .end local v1           #i:I
    .end local v2           #v:Landroid/view/View;
    :cond_1
    const/4 v3, 0x1

    sub-int v1, v0, v3

    .restart local v1       #i:I
    :goto_2
    if-ltz v1, :cond_3

    .line 1324
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1325
    .restart local v2       #v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p1, v3, :cond_2

    .line 1326
    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v3, v1

    goto :goto_1

    .line 1323
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 1331
    .end local v1           #i:I
    .end local v2           #v:Landroid/view/View;
    :cond_3
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
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;I)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 3533
    .local p1, where:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    if-eqz p1, :cond_1

    .line 3534
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3537
    .local v1, len:I
    const/4 v0, 0x0

    .end local p0
    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 3538
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/ListView$FixedViewInfo;

    iget-object v2, p0, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 3540
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3541
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 3543
    if-eqz v2, :cond_0

    move-object v3, v2

    .line 3549
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #v:Landroid/view/View;
    :goto_1
    return-object v3

    .line 3537
    .restart local v0       #i:I
    .restart local v1       #len:I
    .restart local v2       #v:Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3549
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
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 3579
    .local p1, where:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
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

    check-cast p0, Landroid/widget/ListView$FixedViewInfo;

    iget-object v2, p0, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 3586
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3587
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

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

.method protected findViewTraversal(I)Landroid/view/View;
    .locals 3
    .parameter "id"

    .prologue
    .line 3514
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->findViewTraversal(I)Landroid/view/View;

    move-result-object v0

    .line 3515
    .local v0, v:Landroid/view/View;
    if-nez v0, :cond_1

    .line 3516
    iget-object v2, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Landroid/widget/ListView;->findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v0

    .line 3517
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 3525
    .end local v0           #v:Landroid/view/View;
    .local v1, v:Landroid/view/View;
    :goto_0
    return-object v1

    .line 3520
    .end local v1           #v:Landroid/view/View;
    .restart local v0       #v:Landroid/view/View;
    :cond_0
    iget-object v2, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Landroid/widget/ListView;->findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v0

    .line 3521
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 3522
    .end local v0           #v:Landroid/view/View;
    .restart local v1       #v:Landroid/view/View;
    goto :goto_0

    .end local v1           #v:Landroid/view/View;
    .restart local v0       #v:Landroid/view/View;
    :cond_1
    move-object v1, v0

    .line 3525
    .end local v0           #v:Landroid/view/View;
    .restart local v1       #v:Landroid/view/View;
    goto :goto_0
.end method

.method protected findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;
    .locals 3
    .parameter "tag"

    .prologue
    .line 3559
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 3560
    .local v0, v:Landroid/view/View;
    if-nez v0, :cond_1

    .line 3561
    iget-object v2, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Landroid/widget/ListView;->findViewTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 3562
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
    iget-object v2, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Landroid/widget/ListView;->findViewTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;

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

.method fullScroll(I)Z
    .locals 5
    .parameter "direction"

    .prologue
    const/4 v4, 0x1

    .line 2258
    const/4 v0, 0x0

    .line 2259
    .local v0, moved:Z
    const/16 v2, 0x21

    if-ne p1, v2, :cond_3

    .line 2260
    iget v2, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-eqz v2, :cond_1

    .line 2261
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v4}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v1

    .line 2262
    .local v1, position:I
    if-ltz v1, :cond_0

    .line 2263
    iput v4, p0, Landroid/widget/ListView;->mLayoutMode:I

    .line 2264
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->setSelectionInt(I)V

    .line 2265
    invoke-virtual {p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V

    .line 2267
    :cond_0
    const/4 v0, 0x1

    .line 2281
    .end local v1           #position:I
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/ListView;->awakenScrollBars()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2282
    invoke-virtual {p0}, Landroid/widget/ListView;->awakenScrollBars()Z

    .line 2283
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 2286
    :cond_2
    return v0

    .line 2269
    :cond_3
    const/16 v2, 0x82

    if-ne p1, v2, :cond_1

    .line 2270
    iget v2, p0, Landroid/widget/ListView;->mSelectedPosition:I

    iget v3, p0, Landroid/widget/ListView;->mItemCount:I

    sub-int/2addr v3, v4

    if-ge v2, v3, :cond_1

    .line 2271
    iget v2, p0, Landroid/widget/ListView;->mItemCount:I

    sub-int/2addr v2, v4

    invoke-virtual {p0, v2, v4}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v1

    .line 2272
    .restart local v1       #position:I
    if-ltz v1, :cond_4

    .line 2273
    const/4 v2, 0x3

    iput v2, p0, Landroid/widget/ListView;->mLayoutMode:I

    .line 2274
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->setSelectionInt(I)V

    .line 2275
    invoke-virtual {p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V

    .line 2277
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getCheckItemIds()[J
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 3790
    iget-object v8, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v8, :cond_0

    iget-object v8, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v8}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 3791
    invoke-virtual {p0}, Landroid/widget/ListView;->getCheckedItemIds()[J

    move-result-object v8

    .line 3820
    :goto_0
    return-object v8

    .line 3796
    :cond_0
    iget v8, p0, Landroid/widget/ListView;->mChoiceMode:I

    if-eqz v8, :cond_3

    iget-object v8, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v8, :cond_3

    iget-object v8, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v8, :cond_3

    .line 3797
    iget-object v7, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 3798
    .local v7, states:Landroid/util/SparseBooleanArray;
    invoke-virtual {v7}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    .line 3799
    .local v3, count:I
    new-array v5, v3, [J

    .line 3800
    .local v5, ids:[J
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 3802
    .local v0, adapter:Landroid/widget/ListAdapter;
    const/4 v1, 0x0

    .line 3803
    .local v1, checkedCount:I
    const/4 v4, 0x0

    .local v4, i:I
    move v2, v1

    .end local v1           #checkedCount:I
    .local v2, checkedCount:I
    :goto_1
    if-ge v4, v3, :cond_1

    .line 3804
    invoke-virtual {v7, v4}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 3805
    add-int/lit8 v1, v2, 0x1

    .end local v2           #checkedCount:I
    .restart local v1       #checkedCount:I
    invoke-virtual {v7, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v8

    aput-wide v8, v5, v2

    .line 3803
    :goto_2
    add-int/lit8 v4, v4, 0x1

    move v2, v1

    .end local v1           #checkedCount:I
    .restart local v2       #checkedCount:I
    goto :goto_1

    .line 3811
    :cond_1
    if-ne v2, v3, :cond_2

    move-object v8, v5

    .line 3812
    goto :goto_0

    .line 3814
    :cond_2
    new-array v6, v2, [J

    .line 3815
    .local v6, result:[J
    invoke-static {v5, v10, v6, v10, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v8, v6

    .line 3817
    goto :goto_0

    .line 3820
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    .end local v2           #checkedCount:I
    .end local v3           #count:I
    .end local v4           #i:I
    .end local v5           #ids:[J
    .end local v6           #result:[J
    .end local v7           #states:Landroid/util/SparseBooleanArray;
    :cond_3
    new-array v8, v10, [J

    goto :goto_0

    .restart local v0       #adapter:Landroid/widget/ListAdapter;
    .restart local v2       #checkedCount:I
    .restart local v3       #count:I
    .restart local v4       #i:I
    .restart local v5       #ids:[J
    .restart local v7       #states:Landroid/util/SparseBooleanArray;
    :cond_4
    move v1, v2

    .end local v2           #checkedCount:I
    .restart local v1       #checkedCount:I
    goto :goto_2
.end method

.method public getCheckedItemIds()[J
    .locals 6

    .prologue
    .line 3832
    iget v4, p0, Landroid/widget/ListView;->mChoiceMode:I

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/ListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v4, :cond_1

    .line 3833
    :cond_0
    const/4 v4, 0x0

    new-array v4, v4, [J

    .line 3844
    :goto_0
    return-object v4

    .line 3836
    :cond_1
    iget-object v2, p0, Landroid/widget/ListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 3837
    .local v2, idStates:Landroid/util/LongSparseArray;,"Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .line 3838
    .local v0, count:I
    new-array v3, v0, [J

    .line 3840
    .local v3, ids:[J
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 3841
    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    aput-wide v4, v3, v1

    .line 3840
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move-object v4, v3

    .line 3844
    goto :goto_0
.end method

.method public getCheckedItemPosition()I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 3756
    iget v0, p0, Landroid/widget/ListView;->mChoiceMode:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 3757
    iget-object v0, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    .line 3760
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getCheckedItemPositions()Landroid/util/SparseBooleanArray;
    .locals 1

    .prologue
    .line 3773
    iget v0, p0, Landroid/widget/ListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    .line 3774
    iget-object v0, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 3776
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChoiceMode()I
    .locals 1

    .prologue
    .line 3614
    iget v0, p0, Landroid/widget/ListView;->mChoiceMode:I

    return v0
.end method

.method public getDivider()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 3360
    iget-object v0, p0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDividerHeight()I
    .locals 1

    .prologue
    .line 3386
    iget v0, p0, Landroid/widget/ListView;->mDividerHeight:I

    return v0
.end method

.method protected getExcessScrollDrawInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Landroid/widget/ListView;->mExcessScrollDrawInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method protected getExcessScrollDrawShift(I)I
    .locals 4
    .parameter "childIndex"

    .prologue
    .line 3152
    iget-boolean v2, p0, Landroid/widget/ListView;->mExcessScrollEnabled:Z

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/widget/ListView;->mExcessScroll:I

    if-eqz v2, :cond_1

    .line 3153
    iget v2, p0, Landroid/widget/ListView;->mExcessScrollRecoverEffect:I

    if-nez v2, :cond_1

    .line 3154
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v2

    int-to-float v0, v2

    .line 3155
    .local v0, height:F
    invoke-virtual {p0}, Landroid/widget/ListView;->getExcessScrollDrawInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v2

    iget v3, p0, Landroid/widget/ListView;->mExcessScroll:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v0

    invoke-interface {v2, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    mul-float/2addr v2, v0

    float-to-int v1, v2

    .line 3158
    .local v1, shift:I
    iget v2, p0, Landroid/widget/ListView;->mExcessScroll:I

    if-gez v2, :cond_0

    .line 3159
    mul-int/lit8 v1, v1, -0x1

    :cond_0
    move v2, v1

    .line 3165
    .end local v0           #height:F
    .end local v1           #shift:I
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getExcessScrollRecoverEffect()I
    .locals 1

    .prologue
    .line 209
    iget v0, p0, Landroid/widget/ListView;->mExcessScrollRecoverEffect:I

    return v0
.end method

.method public getFooterViewsCount()I
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getHeaderViewsCount()I
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemsCanFocus()Z
    .locals 1

    .prologue
    .line 2996
    iget-boolean v0, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    return v0
.end method

.method public getMaxScrollAmount()I
    .locals 3

    .prologue
    .line 270
    const v0, 0x3ea8f5c3

    iget v1, p0, Landroid/widget/ListView;->mBottom:I

    iget v2, p0, Landroid/widget/ListView;->mTop:I

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
    .line 3739
    iget v0, p0, Landroid/widget/ListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    .line 3740
    iget-object v0, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    .line 3743
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOpaque()Z
    .locals 1

    .prologue
    .line 3004
    iget-boolean v0, p0, Landroid/widget/ListView;->mCachingStarted:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/ListView;->mIsCacheColorOpaque:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/ListView;->mDividerIsOpaque:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ListView;->hasOpaqueScrollbars()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Landroid/widget/AbsListView;->isOpaque()Z

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
    .line 1490
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->mBlockLayoutRequests:Z

    move v10, v0

    .line 1491
    .local v10, blockLayoutRequests:Z
    if-nez v10, :cond_0

    .line 1492
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/ListView;->mBlockLayoutRequests:Z

    .line 1498
    :try_start_0
    invoke-super/range {p0 .. p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 1500
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->invalidate()V

    .line 1502
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object v4, v0

    if-nez v4, :cond_1

    .line 1503
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->resetList()V

    .line 1504
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1737
    if-nez v10, :cond_0

    .line 1738
    :goto_0
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/ListView;->mBlockLayoutRequests:Z

    .line 1741
    :cond_0
    return-void

    .line 1508
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    move-object v4, v0

    iget v8, v4, Landroid/graphics/Rect;->top:I

    .line 1509
    .local v8, childrenTop:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mBottom:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mTop:I

    move v5, v0

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    move-object v5, v0

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int v9, v4, v5

    .line 1511
    .local v9, childrenBottom:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v12

    .line 1512
    .local v12, childCount:I
    const/16 v21, 0x0

    .line 1513
    .local v21, index:I
    const/4 v7, 0x0

    .line 1516
    .local v7, delta:I
    const/4 v5, 0x0

    .line 1517
    .local v5, oldSel:Landroid/view/View;
    const/16 v22, 0x0

    .line 1518
    .local v22, oldFirst:Landroid/view/View;
    const/4 v6, 0x0

    .line 1520
    .local v6, newSel:Landroid/view/View;
    const/16 v16, 0x0

    .line 1523
    .local v16, focusLayoutRestoreView:Landroid/view/View;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mLayoutMode:I

    move v4, v0

    packed-switch v4, :pswitch_data_0

    .line 1538
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mSelectedPosition:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mFirstPosition:I

    move v6, v0

    .end local v6           #newSel:Landroid/view/View;
    sub-int v21, v4, v6

    .line 1539
    if-ltz v21, :cond_2

    move/from16 v0, v21

    move v1, v12

    if-ge v0, v1, :cond_2

    .line 1540
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1544
    :cond_2
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    .line 1546
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mNextSelectedPosition:I

    move v4, v0

    if-ltz v4, :cond_3

    .line 1547
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mNextSelectedPosition:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mSelectedPosition:I

    move v6, v0

    sub-int v7, v4, v6

    .line 1551
    :cond_3
    add-int v4, v21, v7

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1555
    .restart local v6       #newSel:Landroid/view/View;
    :cond_4
    :goto_1
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->mDataChanged:Z

    move v13, v0

    .line 1556
    .local v13, dataChanged:Z
    if-eqz v13, :cond_5

    .line 1557
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->handleDataChanged()V

    .line 1562
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mItemCount:I

    move v4, v0

    if-nez v4, :cond_6

    .line 1563
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->resetList()V

    .line 1564
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V

    .line 1737
    if-nez v10, :cond_0

    goto/16 :goto_0

    .line 1525
    .end local v13           #dataChanged:Z
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mNextSelectedPosition:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mFirstPosition:I

    move v11, v0

    sub-int v21, v4, v11

    .line 1526
    if-ltz v21, :cond_4

    move/from16 v0, v21

    move v1, v12

    if-ge v0, v1, :cond_4

    .line 1527
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    goto :goto_1

    .line 1566
    .restart local v13       #dataChanged:Z
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mItemCount:I

    move v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object v11, v0

    invoke-interface {v11}, Landroid/widget/ListAdapter;->getCount()I

    move-result v11

    if-eq v4, v11, :cond_8

    .line 1567
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    .end local v5           #oldSel:Landroid/view/View;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The content of the adapter has changed but ListView did not receive a notification. Make sure the content of your adapter is not modified from a background thread, but only from the UI thread. [in ListView("

    .end local v6           #newSel:Landroid/view/View;
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getId()I

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

    iget-object v0, v0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

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
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1737
    .end local v7           #delta:I
    .end local v8           #childrenTop:I
    .end local v9           #childrenBottom:I
    .end local v12           #childCount:I
    .end local v13           #dataChanged:Z
    .end local v16           #focusLayoutRestoreView:Landroid/view/View;
    .end local v21           #index:I
    .end local v22           #oldFirst:Landroid/view/View;
    :catchall_0
    move-exception v4

    if-nez v10, :cond_7

    .line 1738
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/ListView;->mBlockLayoutRequests:Z

    .line 1737
    :cond_7
    throw v4

    .line 1574
    .restart local v5       #oldSel:Landroid/view/View;
    .restart local v6       #newSel:Landroid/view/View;
    .restart local v7       #delta:I
    .restart local v8       #childrenTop:I
    .restart local v9       #childrenBottom:I
    .restart local v12       #childCount:I
    .restart local v13       #dataChanged:Z
    .restart local v16       #focusLayoutRestoreView:Landroid/view/View;
    .restart local v21       #index:I
    .restart local v22       #oldFirst:Landroid/view/View;
    :cond_8
    :try_start_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mNextSelectedPosition:I

    move v4, v0

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelectedPositionInt(I)V

    .line 1578
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mFirstPosition:I

    move v14, v0

    .line 1579
    .local v14, firstPosition:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    move-object/from16 v24, v0

    .line 1582
    .local v24, recycleBin:Landroid/widget/AbsListView$RecycleBin;
    const/4 v15, 0x0

    .line 1587
    .local v15, focusLayoutRestoreDirectChild:Landroid/view/View;
    if-eqz v13, :cond_9

    .line 1588
    const/16 v20, 0x0

    .local v20, i:I
    :goto_2
    move/from16 v0, v20

    move v1, v12

    if-ge v0, v1, :cond_a

    .line 1589
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, v24

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 1588
    add-int/lit8 v20, v20, 0x1

    goto :goto_2

    .line 1596
    .end local v20           #i:I
    :cond_9
    move-object/from16 v0, v24

    move v1, v12

    move v2, v14

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView$RecycleBin;->fillActiveViews(II)V

    .line 1603
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getFocusedChild()Landroid/view/View;

    move-result-object v19

    .line 1604
    .local v19, focusedChild:Landroid/view/View;
    if-eqz v19, :cond_d

    .line 1609
    if-eqz v13, :cond_b

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/widget/ListView;->isDirectChildHeaderOrFooter(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1610
    :cond_b
    move-object/from16 v15, v19

    .line 1612
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->findFocus()Landroid/view/View;

    move-result-object v16

    .line 1613
    if-eqz v16, :cond_c

    .line 1615
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->onStartTemporaryDetach()V

    .line 1618
    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->requestFocus()Z

    .line 1622
    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->detachAllViewsFromParent()V

    .line 1624
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mLayoutMode:I

    move v4, v0

    packed-switch v4, :pswitch_data_1

    .line 1651
    if-nez v12, :cond_16

    .line 1652
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->mStackFromBottom:Z

    move v4, v0

    if-nez v4, :cond_15

    .line 1653
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    .end local v5           #oldSel:Landroid/view/View;
    move-result v23

    .line 1654
    .local v23, position:I
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelectedPositionInt(I)V

    .line 1655
    move-object/from16 v0, p0

    move v1, v8

    invoke-direct {v0, v1}, Landroid/widget/ListView;->fillFromTop(I)Landroid/view/View;

    move-result-object v25

    .line 1676
    .end local v6           #newSel:Landroid/view/View;
    .end local v23           #position:I
    .local v25, sel:Landroid/view/View;
    :goto_3
    invoke-virtual/range {v24 .. v24}, Landroid/widget/AbsListView$RecycleBin;->scrapActiveViews()V

    .line 1678
    if-eqz v25, :cond_1e

    .line 1681
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->mItemsCanFocus:Z

    move v4, v0

    if-eqz v4, :cond_1d

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_1d

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->hasFocus()Z

    move-result v4

    if-nez v4, :cond_1d

    .line 1682
    move-object/from16 v0, v25

    move-object v1, v15

    if-ne v0, v1, :cond_e

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->requestFocus()Z

    move-result v4

    if-nez v4, :cond_f

    :cond_e
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->requestFocus()Z

    move-result v4

    if-eqz v4, :cond_1b

    :cond_f
    const/4 v4, 0x1

    move/from16 v17, v4

    .line 1684
    .local v17, focusWasTaken:Z
    :goto_4
    if-nez v17, :cond_1c

    .line 1688
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getFocusedChild()Landroid/view/View;

    move-result-object v18

    .line 1689
    .local v18, focused:Landroid/view/View;
    if-eqz v18, :cond_10

    .line 1690
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->clearFocus()V

    .line 1692
    :cond_10
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->positionSelector(Landroid/view/View;)V

    .line 1700
    .end local v17           #focusWasTaken:Z
    .end local v18           #focused:Landroid/view/View;
    :goto_5
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getTop()I

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/ListView;->mSelectedTop:I

    .line 1719
    :cond_11
    :goto_6
    if-eqz v16, :cond_12

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    if-eqz v4, :cond_12

    .line 1721
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->onFinishTemporaryDetach()V

    .line 1724
    :cond_12
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/ListView;->mLayoutMode:I

    .line 1725
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/ListView;->mDataChanged:Z

    .line 1726
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/ListView;->mNeedSync:Z

    .line 1727
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mSelectedPosition:I

    move v4, v0

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setNextSelectedPositionInt(I)V

    .line 1729
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->updateScrollIndicators()V

    .line 1731
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mItemCount:I

    move v4, v0

    if-lez v4, :cond_13

    .line 1732
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->checkSelectionChanged()V

    .line 1735
    :cond_13
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V

    .line 1737
    if-nez v10, :cond_0

    goto/16 :goto_0

    .line 1626
    .end local v25           #sel:Landroid/view/View;
    .restart local v5       #oldSel:Landroid/view/View;
    .restart local v6       #newSel:Landroid/view/View;
    :pswitch_2
    if-eqz v6, :cond_14

    .line 1627
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v4

    move-object/from16 v0, p0

    move v1, v4

    move v2, v8

    move v3, v9

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ListView;->fillFromSelection(III)Landroid/view/View;

    move-result-object v25

    .restart local v25       #sel:Landroid/view/View;
    goto/16 :goto_3

    .line 1629
    .end local v25           #sel:Landroid/view/View;
    :cond_14
    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    invoke-direct {v0, v1, v2}, Landroid/widget/ListView;->fillFromMiddle(II)Landroid/view/View;

    move-result-object v25

    .line 1631
    .restart local v25       #sel:Landroid/view/View;
    goto/16 :goto_3

    .line 1633
    .end local v25           #sel:Landroid/view/View;
    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mSyncPosition:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mSpecificTop:I

    move v5, v0

    .end local v5           #oldSel:Landroid/view/View;
    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    invoke-direct {v0, v1, v2}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v25

    .line 1634
    .restart local v25       #sel:Landroid/view/View;
    goto/16 :goto_3

    .line 1636
    .end local v25           #sel:Landroid/view/View;
    .restart local v5       #oldSel:Landroid/view/View;
    :pswitch_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mItemCount:I

    move v4, v0

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    move v1, v4

    move v2, v9

    invoke-direct {v0, v1, v2}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    .end local v5           #oldSel:Landroid/view/View;
    move-result-object v25

    .line 1637
    .restart local v25       #sel:Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    goto/16 :goto_3

    .line 1640
    .end local v25           #sel:Landroid/view/View;
    .restart local v5       #oldSel:Landroid/view/View;
    :pswitch_5
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/ListView;->mFirstPosition:I

    .line 1641
    move-object/from16 v0, p0

    move v1, v8

    invoke-direct {v0, v1}, Landroid/widget/ListView;->fillFromTop(I)Landroid/view/View;

    move-result-object v25

    .line 1642
    .restart local v25       #sel:Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    goto/16 :goto_3

    .line 1645
    .end local v25           #sel:Landroid/view/View;
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->reconcileSelectedPosition()I

    move-result v4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mSpecificTop:I

    move v5, v0

    .end local v5           #oldSel:Landroid/view/View;
    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    invoke-direct {v0, v1, v2}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v25

    .line 1646
    .restart local v25       #sel:Landroid/view/View;
    goto/16 :goto_3

    .end local v25           #sel:Landroid/view/View;
    .restart local v5       #oldSel:Landroid/view/View;
    :pswitch_7
    move-object/from16 v4, p0

    .line 1648
    invoke-direct/range {v4 .. v9}, Landroid/widget/ListView;->moveSelection(Landroid/view/View;Landroid/view/View;III)Landroid/view/View;

    move-result-object v25

    .line 1649
    .restart local v25       #sel:Landroid/view/View;
    goto/16 :goto_3

    .line 1657
    .end local v25           #sel:Landroid/view/View;
    :cond_15
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mItemCount:I

    move v4, v0

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    .end local v5           #oldSel:Landroid/view/View;
    move-result v23

    .line 1658
    .restart local v23       #position:I
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelectedPositionInt(I)V

    .line 1659
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mItemCount:I

    move v4, v0

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    move v1, v4

    move v2, v9

    invoke-direct {v0, v1, v2}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    move-result-object v25

    .line 1660
    .restart local v25       #sel:Landroid/view/View;
    goto/16 :goto_3

    .line 1662
    .end local v23           #position:I
    .end local v25           #sel:Landroid/view/View;
    .restart local v5       #oldSel:Landroid/view/View;
    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mSelectedPosition:I

    move v4, v0

    if-ltz v4, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mSelectedPosition:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mItemCount:I

    move v6, v0

    .end local v6           #newSel:Landroid/view/View;
    if-ge v4, v6, :cond_18

    .line 1663
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mSelectedPosition:I

    move v4, v0

    if-nez v5, :cond_17

    move v5, v8

    .end local v5           #oldSel:Landroid/view/View;
    :goto_7
    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    invoke-direct {v0, v1, v2}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v25

    .restart local v25       #sel:Landroid/view/View;
    goto/16 :goto_3

    .end local v25           #sel:Landroid/view/View;
    .restart local v5       #oldSel:Landroid/view/View;
    :cond_17
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    goto :goto_7

    .line 1665
    :cond_18
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mFirstPosition:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mItemCount:I

    move v5, v0

    .end local v5           #oldSel:Landroid/view/View;
    if-ge v4, v5, :cond_1a

    .line 1666
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mFirstPosition:I

    move v4, v0

    if-nez v22, :cond_19

    move v5, v8

    :goto_8
    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    invoke-direct {v0, v1, v2}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v25

    .restart local v25       #sel:Landroid/view/View;
    goto/16 :goto_3

    .end local v25           #sel:Landroid/view/View;
    :cond_19
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getTop()I

    move-result v5

    goto :goto_8

    .line 1669
    :cond_1a
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v4

    move v2, v8

    invoke-direct {v0, v1, v2}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v25

    .restart local v25       #sel:Landroid/view/View;
    goto/16 :goto_3

    .line 1682
    :cond_1b
    const/4 v4, 0x0

    move/from16 v17, v4

    goto/16 :goto_4

    .line 1694
    .restart local v17       #focusWasTaken:Z
    :cond_1c
    const/4 v4, 0x0

    move-object/from16 v0, v25

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 1695
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mSelectorRect:Landroid/graphics/Rect;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_5

    .line 1698
    .end local v17           #focusWasTaken:Z
    :cond_1d
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->positionSelector(Landroid/view/View;)V

    goto/16 :goto_5

    .line 1702
    :cond_1e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mTouchMode:I

    move v4, v0

    if-lez v4, :cond_20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mTouchMode:I

    move v4, v0

    const/4 v5, 0x3

    if-ge v4, v5, :cond_20

    .line 1703
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mMotionPosition:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mFirstPosition:I

    move v5, v0

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 1704
    .local v11, child:Landroid/view/View;
    if-eqz v11, :cond_1f

    move-object/from16 v0, p0

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->positionSelector(Landroid/view/View;)V

    .line 1712
    .end local v11           #child:Landroid/view/View;
    :cond_1f
    :goto_9
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_11

    if-eqz v16, :cond_11

    .line 1713
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_6

    .line 1706
    :cond_20
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/ListView;->mSelectedTop:I

    .line 1707
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mSelectorRect:Landroid/graphics/Rect;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_9

    .line 1523
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 1624
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

    .line 1991
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 1992
    .local v0, adapter:Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ListView;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v2, v3

    .line 2018
    :goto_0
    return v2

    .line 1996
    :cond_1
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 1997
    .local v1, count:I
    iget-boolean v2, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    if-nez v2, :cond_6

    .line 1998
    if-eqz p2, :cond_2

    .line 1999
    const/4 v2, 0x0

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2000
    :goto_1
    if-ge p1, v1, :cond_3

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2001
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 2004
    :cond_2
    const/4 v2, 0x1

    sub-int v2, v1, v2

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 2005
    :goto_2
    if-ltz p1, :cond_3

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2006
    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    .line 2010
    :cond_3
    if-ltz p1, :cond_4

    if-lt p1, v1, :cond_5

    :cond_4
    move v2, v3

    .line 2011
    goto :goto_0

    :cond_5
    move v2, p1

    .line 2013
    goto :goto_0

    .line 2015
    :cond_6
    if-ltz p1, :cond_7

    if-lt p1, v1, :cond_8

    :cond_7
    move v2, v3

    .line 2016
    goto :goto_0

    :cond_8
    move v2, p1

    .line 2018
    goto :goto_0
.end method

.method final measureHeightOfChildren(IIIII)I
    .locals 13
    .parameter "widthMeasureSpec"
    .parameter "startPosition"
    .parameter "endPosition"
    .parameter "maxHeight"
    .parameter "disallowPartialChildPosition"

    .prologue
    .line 1252
    iget-object v2, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 1253
    .local v2, adapter:Landroid/widget/ListAdapter;
    if-nez v2, :cond_0

    .line 1254
    iget-object v11, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    iget-object v12, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v11, v12

    .line 1308
    .end local p2
    :goto_0
    return v11

    .line 1258
    .restart local p2
    :cond_0
    iget-object v11, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    iget-object v12, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    add-int v10, v11, v12

    .line 1259
    .local v10, returnedHeight:I
    iget v11, p0, Landroid/widget/ListView;->mDividerHeight:I

    if-lez v11, :cond_4

    iget-object v11, p0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v11, :cond_4

    iget v11, p0, Landroid/widget/ListView;->mDividerHeight:I

    move v4, v11

    .line 1262
    .local v4, dividerHeight:I
    :goto_1
    const/4 v7, 0x0

    .line 1267
    .local v7, prevHeightWithoutPartialChild:I
    const/4 v11, -0x1

    move/from16 v0, p3

    move v1, v11

    if-ne v0, v1, :cond_1

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v11

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    move/from16 p3, v11

    .line 1268
    :cond_1
    iget-object v8, p0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 1269
    .local v8, recycleBin:Landroid/widget/AbsListView$RecycleBin;
    invoke-virtual {p0}, Landroid/widget/ListView;->recycleOnMeasure()Z

    move-result v9

    .line 1270
    .local v9, recyle:Z
    iget-object v6, p0, Landroid/widget/ListView;->mIsScrap:[Z

    .line 1272
    .local v6, isScrap:[Z
    move v5, p2

    .end local p2
    .local v5, i:I
    :goto_2
    move v0, v5

    move/from16 v1, p3

    if-gt v0, v1, :cond_8

    .line 1273
    invoke-virtual {p0, v5, v6}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v3

    .line 1275
    .local v3, child:Landroid/view/View;
    invoke-direct {p0, v3, v5, p1}, Landroid/widget/ListView;->measureScrapChild(Landroid/view/View;II)V

    .line 1277
    if-lez v5, :cond_2

    .line 1279
    add-int/2addr v10, v4

    .line 1283
    :cond_2
    if-eqz v9, :cond_3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/AbsListView$LayoutParams;

    iget v11, p2, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v8, v11}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1285
    invoke-virtual {v8, v3}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 1288
    :cond_3
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    add-int/2addr v10, v11

    .line 1290
    move v0, v10

    move/from16 v1, p4

    if-lt v0, v1, :cond_6

    .line 1293
    if-ltz p5, :cond_5

    move v0, v5

    move/from16 v1, p5

    if-le v0, v1, :cond_5

    if-lez v7, :cond_5

    move v0, v10

    move/from16 v1, p4

    if-eq v0, v1, :cond_5

    move v11, v7

    goto :goto_0

    .line 1259
    .end local v3           #child:Landroid/view/View;
    .end local v4           #dividerHeight:I
    .end local v5           #i:I
    .end local v6           #isScrap:[Z
    .end local v7           #prevHeightWithoutPartialChild:I
    .end local v8           #recycleBin:Landroid/widget/AbsListView$RecycleBin;
    .end local v9           #recyle:Z
    .restart local p2
    :cond_4
    const/4 v11, 0x0

    move v4, v11

    goto :goto_1

    .end local p2
    .restart local v3       #child:Landroid/view/View;
    .restart local v4       #dividerHeight:I
    .restart local v5       #i:I
    .restart local v6       #isScrap:[Z
    .restart local v7       #prevHeightWithoutPartialChild:I
    .restart local v8       #recycleBin:Landroid/widget/AbsListView$RecycleBin;
    .restart local v9       #recyle:Z
    :cond_5
    move/from16 v11, p4

    .line 1293
    goto :goto_0

    .line 1301
    :cond_6
    if-ltz p5, :cond_7

    move v0, v5

    move/from16 v1, p5

    if-lt v0, v1, :cond_7

    .line 1302
    move v7, v10

    .line 1272
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .end local v3           #child:Landroid/view/View;
    :cond_8
    move v11, v10

    .line 1308
    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 3496
    invoke-super {p0}, Landroid/widget/AbsListView;->onFinishInflate()V

    .line 3498
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 3499
    .local v0, count:I
    if-lez v0, :cond_1

    .line 3500
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 3501
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 3500
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3503
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->removeAllViews()V

    .line 3505
    .end local v1           #i:I
    :cond_1
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 12
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 3428
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsListView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 3430
    const/4 v2, -0x1

    .line 3431
    .local v2, closetChildIndex:I
    if-eqz p1, :cond_4

    if-eqz p3, :cond_4

    .line 3432
    iget v9, p0, Landroid/widget/ListView;->mScrollX:I

    iget v10, p0, Landroid/widget/ListView;->mScrollY:I

    invoke-virtual {p3, v9, v10}, Landroid/graphics/Rect;->offset(II)V

    .line 3434
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 3443
    .local v0, adapter:Landroid/widget/ListAdapter;
    if-nez v0, :cond_0

    .line 3444
    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    .line 3485
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    :goto_0
    return-void

    .line 3450
    .restart local v0       #adapter:Landroid/widget/ListAdapter;
    :cond_0
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v9

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v10

    iget v11, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v10, v11

    if-ge v9, v10, :cond_1

    .line 3451
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/ListView;->mLayoutMode:I

    .line 3452
    invoke-virtual {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 3457
    :cond_1
    iget-object v8, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    .line 3458
    .local v8, otherRect:Landroid/graphics/Rect;
    const v6, 0x7fffffff

    .line 3459
    .local v6, minDistance:I
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    .line 3460
    .local v1, childCount:I
    iget v4, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 3462
    .local v4, firstPosition:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v1, :cond_4

    .line 3464
    add-int v9, v4, v5

    invoke-interface {v0, v9}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v9

    if-nez v9, :cond_3

    .line 3462
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 3468
    :cond_3
    invoke-virtual {p0, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 3469
    .local v7, other:Landroid/view/View;
    invoke-virtual {v7, v8}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 3470
    invoke-virtual {p0, v7, v8}, Landroid/widget/ListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3471
    invoke-static {p3, v8, p2}, Landroid/widget/ListView;->getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result v3

    .line 3473
    .local v3, distance:I
    if-ge v3, v6, :cond_2

    .line 3474
    move v6, v3

    .line 3475
    move v2, v5

    goto :goto_2

    .line 3480
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    .end local v1           #childCount:I
    .end local v3           #distance:I
    .end local v4           #firstPosition:I
    .end local v5           #i:I
    .end local v6           #minDistance:I
    .end local v7           #other:Landroid/view/View;
    .end local v8           #otherRect:Landroid/graphics/Rect;
    :cond_4
    if-ltz v2, :cond_5

    .line 3481
    iget v9, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v9, v2

    invoke-virtual {p0, v9}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0

    .line 3483
    :cond_5
    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 2093
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "repeatCount"
    .parameter "event"

    .prologue
    .line 2098
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 2103
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ListView;->commonKey(IILandroid/view/KeyEvent;)Z

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

    .line 1146
    invoke-super {p0, p1, p2}, Landroid/widget/AbsListView;->onMeasure(II)V

    .line 1148
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    .line 1149
    .local v10, widthMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    .line 1150
    .local v9, heightMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    .line 1151
    .local v11, widthSize:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 1153
    .local v4, heightSize:I
    const/4 v8, 0x0

    .line 1154
    .local v8, childWidth:I
    const/4 v7, 0x0

    .line 1156
    .local v7, childHeight:I
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_5

    move v0, v2

    :goto_0
    iput v0, p0, Landroid/widget/ListView;->mItemCount:I

    .line 1157
    iget v0, p0, Landroid/widget/ListView;->mItemCount:I

    if-lez v0, :cond_1

    if-eqz v10, :cond_0

    if-nez v9, :cond_1

    .line 1159
    :cond_0
    iget-object v0, p0, Landroid/widget/ListView;->mIsScrap:[Z

    invoke-virtual {p0, v2, v0}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v6

    .line 1161
    .local v6, child:Landroid/view/View;
    invoke-direct {p0, v6, v2, p1}, Landroid/widget/ListView;->measureScrapChild(Landroid/view/View;II)V

    .line 1163
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 1164
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 1166
    invoke-virtual {p0}, Landroid/widget/ListView;->recycleOnMeasure()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView$LayoutParams;

    iget v0, v0, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v1, v0}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1168
    iget-object v0, p0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v0, v6}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 1172
    .end local v6           #child:Landroid/view/View;
    :cond_1
    if-nez v10, :cond_2

    .line 1173
    iget-object v0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    add-int/2addr v0, v8

    invoke-virtual {p0}, Landroid/widget/ListView;->getVerticalScrollbarWidth()I

    move-result v1

    add-int v11, v0, v1

    .line 1177
    :cond_2
    if-nez v9, :cond_3

    .line 1178
    iget-object v0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    add-int/2addr v0, v7

    invoke-virtual {p0}, Landroid/widget/ListView;->getVerticalFadingEdgeLength()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int v4, v0, v1

    .line 1182
    :cond_3
    const/high16 v0, -0x8000

    if-ne v9, v0, :cond_4

    move-object v0, p0

    move v1, p1

    move v5, v3

    .line 1184
    invoke-virtual/range {v0 .. v5}, Landroid/widget/ListView;->measureHeightOfChildren(IIIII)I

    move-result v4

    .line 1187
    :cond_4
    invoke-virtual {p0, v11, v4}, Landroid/widget/ListView;->setMeasuredDimension(II)V

    .line 1188
    iput p1, p0, Landroid/widget/ListView;->mWidthMeasureSpec:I

    .line 1189
    return-void

    .line 1156
    :cond_5
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 3921
    move-object v0, p1

    check-cast v0, Landroid/widget/ListView$SavedState;

    move-object v1, v0

    .line 3923
    .local v1, ss:Landroid/widget/ListView$SavedState;
    invoke-virtual {v1}, Landroid/widget/ListView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/widget/AbsListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 3925
    iget-object v2, v1, Landroid/widget/ListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    if-eqz v2, :cond_0

    .line 3926
    iget-object v2, v1, Landroid/widget/ListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    iput-object v2, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 3929
    :cond_0
    iget-object v2, v1, Landroid/widget/ListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    if-eqz v2, :cond_1

    .line 3930
    iget-object v2, v1, Landroid/widget/ListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    iput-object v2, p0, Landroid/widget/ListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 3932
    :cond_1
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 3915
    invoke-super {p0}, Landroid/widget/AbsListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 3916
    .local v0, superState:Landroid/os/Parcelable;
    new-instance v1, Landroid/widget/ListView$SavedState;

    iget-object v2, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    iget-object v3, p0, Landroid/widget/ListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-direct {v1, v0, v2, v3}, Landroid/widget/ListView$SavedState;-><init>(Landroid/os/Parcelable;Landroid/util/SparseBooleanArray;Landroid/util/LongSparseArray;)V

    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 7
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 1127
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v5

    if-lez v5, :cond_1

    .line 1128
    invoke-virtual {p0}, Landroid/widget/ListView;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    .line 1129
    .local v2, focusedChild:Landroid/view/View;
    if-eqz v2, :cond_1

    .line 1130
    iget v5, p0, Landroid/widget/ListView;->mFirstPosition:I

    invoke-virtual {p0, v2}, Landroid/widget/ListView;->indexOfChild(Landroid/view/View;)I

    move-result v6

    add-int v1, v5, v6

    .line 1131
    .local v1, childPosition:I
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 1132
    .local v0, childBottom:I
    const/4 v5, 0x0

    iget v6, p0, Landroid/widget/ListView;->mPaddingTop:I

    sub-int v6, p2, v6

    sub-int v6, v0, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1133
    .local v3, offset:I
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int v4, v5, v3

    .line 1134
    .local v4, top:I
    iget-object v5, p0, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    if-nez v5, :cond_0

    .line 1135
    new-instance v5, Landroid/widget/ListView$FocusSelector;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Landroid/widget/ListView$FocusSelector;-><init>(Landroid/widget/ListView;Landroid/widget/ListView$1;)V

    iput-object v5, p0, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    .line 1137
    :cond_0
    iget-object v5, p0, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    invoke-virtual {v5, v1, v4}, Landroid/widget/ListView$FocusSelector;->setup(II)Landroid/widget/ListView$FocusSelector;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 1140
    .end local v0           #childBottom:I
    .end local v1           #childPosition:I
    .end local v2           #focusedChild:Landroid/view/View;
    .end local v3           #offset:I
    .end local v4           #top:I
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;->onSizeChanged(IIII)V

    .line 1141
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 3600
    iget-boolean v0, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    if-eqz v0, :cond_0

    .line 3603
    const/4 v0, 0x0

    .line 3605
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method pageScroll(I)Z
    .locals 8
    .parameter "direction"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2212
    const/4 v1, -0x1

    .line 2213
    .local v1, nextPage:I
    const/4 v0, 0x0

    .line 2215
    .local v0, down:Z
    const/16 v3, 0x21

    if-ne p1, v3, :cond_4

    .line 2216
    iget v3, p0, Landroid/widget/ListView;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr v3, v6

    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2222
    :cond_0
    :goto_0
    if-ltz v1, :cond_5

    .line 2223
    invoke-virtual {p0, v1, v0}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v2

    .line 2224
    .local v2, position:I
    if-ltz v2, :cond_5

    .line 2225
    const/4 v3, 0x4

    iput v3, p0, Landroid/widget/ListView;->mLayoutMode:I

    .line 2226
    iget v3, p0, Landroid/widget/ListView;->mPaddingTop:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getVerticalFadingEdgeLength()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Landroid/widget/ListView;->mSpecificTop:I

    .line 2228
    if-eqz v0, :cond_1

    iget v3, p0, Landroid/widget/ListView;->mItemCount:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v4

    sub-int/2addr v3, v4

    if-le v2, v3, :cond_1

    .line 2229
    const/4 v3, 0x3

    iput v3, p0, Landroid/widget/ListView;->mLayoutMode:I

    .line 2232
    :cond_1
    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 2233
    iput v6, p0, Landroid/widget/ListView;->mLayoutMode:I

    .line 2236
    :cond_2
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->setSelectionInt(I)V

    .line 2237
    invoke-virtual {p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V

    .line 2238
    invoke-virtual {p0}, Landroid/widget/ListView;->awakenScrollBars()Z

    move-result v3

    if-nez v3, :cond_3

    .line 2239
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    :cond_3
    move v3, v6

    .line 2246
    .end local v2           #position:I
    :goto_1
    return v3

    .line 2217
    :cond_4
    const/16 v3, 0x82

    if-ne p1, v3, :cond_0

    .line 2218
    iget v3, p0, Landroid/widget/ListView;->mItemCount:I

    sub-int/2addr v3, v6

    iget v4, p0, Landroid/widget/ListView;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v5

    add-int/2addr v4, v5

    sub-int/2addr v4, v6

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2219
    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    move v3, v7

    .line 2246
    goto :goto_1
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 7
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 3640
    const/4 v0, 0x0

    .line 3642
    .local v0, handled:Z
    iget v2, p0, Landroid/widget/ListView;->mChoiceMode:I

    if-eqz v2, :cond_1

    .line 3643
    const/4 v0, 0x1

    .line 3645
    iget v2, p0, Landroid/widget/ListView;->mChoiceMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 3646
    iget-object v2, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p2, v4}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v2

    if-nez v2, :cond_2

    move v1, v6

    .line 3647
    .local v1, newValue:Z
    :goto_0
    iget-object v2, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p2, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 3648
    iget-object v2, p0, Landroid/widget/ListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3649
    if-eqz v1, :cond_3

    .line 3650
    iget-object v2, p0, Landroid/widget/ListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v3, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v3

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 3667
    :cond_0
    :goto_1
    iput-boolean v6, p0, Landroid/widget/ListView;->mDataChanged:Z

    .line 3668
    invoke-virtual {p0}, Landroid/widget/ListView;->rememberSyncState()V

    .line 3669
    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    .line 3672
    .end local v1           #newValue:Z
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v2

    or-int/2addr v0, v2

    .line 3674
    return v0

    :cond_2
    move v1, v4

    .line 3646
    goto :goto_0

    .line 3652
    .restart local v1       #newValue:Z
    :cond_3
    iget-object v2, p0, Landroid/widget/ListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v3, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_1

    .line 3656
    .end local v1           #newValue:Z
    :cond_4
    iget-object v2, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p2, v4}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v2

    if-nez v2, :cond_5

    move v1, v6

    .line 3657
    .restart local v1       #newValue:Z
    :goto_2
    if-eqz v1, :cond_0

    .line 3658
    iget-object v2, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 3659
    iget-object v2, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p2, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 3660
    iget-object v2, p0, Landroid/widget/ListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3661
    iget-object v2, p0, Landroid/widget/ListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->clear()V

    .line 3662
    iget-object v2, p0, Landroid/widget/ListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v3, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v3

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_1

    .end local v1           #newValue:Z
    :cond_5
    move v1, v4

    .line 3656
    goto :goto_2
.end method

.method protected recycleOnMeasure()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1220
    const/4 v0, 0x1

    return v0
.end method

.method public removeFooterView(Landroid/view/View;)Z
    .locals 2
    .parameter "v"

    .prologue
    .line 452
    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 453
    const/4 v0, 0x0

    .line 454
    .local v0, result:Z
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v1, p1}, Landroid/widget/HeaderViewListAdapter;->removeFooter(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 455
    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AdapterView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/AdapterView$AdapterDataSetObserver;->onChanged()V

    .line 456
    const/4 v0, 0x1

    .line 458
    :cond_0
    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, Landroid/widget/ListView;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    move v1, v0

    .line 461
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
    .line 375
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 376
    const/4 v0, 0x0

    .line 377
    .local v0, result:Z
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v1, p1}, Landroid/widget/HeaderViewListAdapter;->removeHeader(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 378
    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AdapterView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/AdapterView$AdapterDataSetObserver;->onChanged()V

    .line 379
    const/4 v0, 0x1

    .line 381
    :cond_0
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, Landroid/widget/ListView;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    move v1, v0

    .line 384
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
    .line 613
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v11, v0

    .line 616
    .local v11, rectTopWithinChild:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v16

    move-object/from16 v0, p2

    move v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 617
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

    .line 619
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getHeight()I

    move-result v8

    .line 620
    .local v8, height:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getScrollY()I

    move-result v10

    .line 621
    .local v10, listUnfadedTop:I
    add-int v9, v10, v8

    .line 622
    .local v9, listUnfadedBottom:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getVerticalFadingEdgeLength()I

    move-result v7

    .line 624
    .local v7, fadingEdge:I
    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->showingTopFadingEdge()Z

    move-result v15

    if-eqz v15, :cond_1

    .line 626
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mSelectedPosition:I

    move v15, v0

    if-gtz v15, :cond_0

    if-le v11, v7, :cond_1

    .line 627
    :cond_0
    add-int/2addr v10, v7

    .line 631
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v4

    .line 632
    .local v4, childCount:I
    const/4 v15, 0x1

    sub-int v15, v4, v15

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 634
    .local v3, bottomOfBottomChild:I
    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->showingBottomFadingEdge()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 636
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mSelectedPosition:I

    move v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mItemCount:I

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

    .line 638
    :cond_2
    sub-int/2addr v9, v7

    .line 642
    :cond_3
    const/4 v13, 0x0

    .line 644
    .local v13, scrollYDelta:I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v15, v0

    if-le v15, v9, :cond_7

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v15, v0

    if-le v15, v10, :cond_7

    .line 649
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v15

    if-le v15, v8, :cond_6

    .line 651
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v15, v0

    sub-int/2addr v15, v10

    add-int/2addr v13, v15

    .line 658
    :goto_0
    sub-int v6, v3, v9

    .line 659
    .local v6, distanceToBottom:I
    invoke-static {v13, v6}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 679
    .end local v6           #distanceToBottom:I
    :cond_4
    :goto_1
    if-eqz v13, :cond_9

    const/4 v15, 0x1

    move v12, v15

    .line 680
    .local v12, scroll:Z
    :goto_2
    if-eqz v12, :cond_5

    .line 681
    neg-int v15, v13

    move-object/from16 v0, p0

    move v1, v15

    invoke-direct {v0, v1}, Landroid/widget/ListView;->scrollListItemsBy(I)V

    .line 682
    invoke-virtual/range {p0 .. p1}, Landroid/widget/ListView;->positionSelector(Landroid/view/View;)V

    .line 683
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v15

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/ListView;->mSelectedTop:I

    .line 684
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->invalidate()V

    .line 686
    :cond_5
    return v12

    .line 654
    .end local v12           #scroll:Z
    :cond_6
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v15, v0

    sub-int/2addr v15, v9

    add-int/2addr v13, v15

    goto :goto_0

    .line 660
    :cond_7
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v15, v0

    if-ge v15, v10, :cond_4

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v15, v0

    if-ge v15, v9, :cond_4

    .line 665
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v15

    if-le v15, v8, :cond_8

    .line 667
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v15, v0

    sub-int v15, v9, v15

    sub-int/2addr v13, v15

    .line 674
    :goto_3
    const/4 v15, 0x0

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getTop()I

    move-result v14

    .line 675
    .local v14, top:I
    sub-int v5, v14, v10

    .line 676
    .local v5, deltaToTop:I
    invoke-static {v13, v5}, Ljava/lang/Math;->max(II)I

    move-result v13

    goto :goto_1

    .line 670
    .end local v5           #deltaToTop:I
    .end local v14           #top:I
    :cond_8
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v15, v0

    sub-int v15, v10, v15

    sub-int/2addr v13, v15

    goto :goto_3

    .line 679
    :cond_9
    const/4 v15, 0x0

    move v12, v15

    goto :goto_2
.end method

.method resetList()V
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Landroid/widget/ListView;->clearRecycledState(Ljava/util/ArrayList;)V

    .line 566
    iget-object v0, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Landroid/widget/ListView;->clearRecycledState(Ljava/util/ArrayList;)V

    .line 568
    invoke-super {p0}, Landroid/widget/AbsListView;->resetList()V

    .line 570
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/ListView;->mLayoutMode:I

    .line 571
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 6
    .parameter "adapter"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 493
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    .line 494
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AdapterView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 497
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->resetList()V

    .line 498
    iget-object v1, p0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v1}, Landroid/widget/AbsListView$RecycleBin;->clear()V

    .line 500
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_1

    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 501
    :cond_1
    new-instance v1, Landroid/widget/HeaderViewListAdapter;

    iget-object v2, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3, p1}, Landroid/widget/HeaderViewListAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    iput-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 506
    :goto_0
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/ListView;->mOldSelectedPosition:I

    .line 507
    const-wide/high16 v1, -0x8000

    iput-wide v1, p0, Landroid/widget/ListView;->mOldSelectedRowId:J

    .line 508
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_8

    .line 509
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v1

    iput-boolean v1, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    .line 510
    iget v1, p0, Landroid/widget/ListView;->mItemCount:I

    iput v1, p0, Landroid/widget/ListView;->mOldItemCount:I

    .line 511
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    iput v1, p0, Landroid/widget/ListView;->mItemCount:I

    .line 512
    invoke-virtual {p0}, Landroid/widget/ListView;->checkFocus()V

    .line 514
    new-instance v1, Landroid/widget/AdapterView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Landroid/widget/AdapterView$AdapterDataSetObserver;-><init>(Landroid/widget/AdapterView;)V

    iput-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AdapterView$AdapterDataSetObserver;

    .line 515
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AdapterView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 517
    iget-object v1, p0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    iget-object v2, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView$RecycleBin;->setViewTypeCount(I)V

    .line 520
    iget-boolean v1, p0, Landroid/widget/ListView;->mStackFromBottom:Z

    if-eqz v1, :cond_7

    .line 521
    iget v1, p0, Landroid/widget/ListView;->mItemCount:I

    sub-int/2addr v1, v4

    invoke-virtual {p0, v1, v5}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v0

    .line 525
    .local v0, position:I
    :goto_1
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setSelectedPositionInt(I)V

    .line 526
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setNextSelectedPositionInt(I)V

    .line 528
    iget v1, p0, Landroid/widget/ListView;->mItemCount:I

    if-nez v1, :cond_2

    .line 530
    invoke-virtual {p0}, Landroid/widget/ListView;->checkSelectionChanged()V

    .line 533
    :cond_2
    iget v1, p0, Landroid/widget/ListView;->mChoiceMode:I

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/widget/ListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez v1, :cond_3

    .line 536
    new-instance v1, Landroid/util/LongSparseArray;

    invoke-direct {v1}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v1, p0, Landroid/widget/ListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 546
    .end local v0           #position:I
    :cond_3
    :goto_2
    iget-object v1, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v1, :cond_4

    .line 547
    iget-object v1, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 550
    :cond_4
    iget-object v1, p0, Landroid/widget/ListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_5

    .line 551
    iget-object v1, p0, Landroid/widget/ListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->clear()V

    .line 554
    :cond_5
    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    .line 555
    return-void

    .line 503
    :cond_6
    iput-object p1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    goto/16 :goto_0

    .line 523
    :cond_7
    invoke-virtual {p0, v5, v4}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v0

    .restart local v0       #position:I
    goto :goto_1

    .line 540
    .end local v0           #position:I
    :cond_8
    iput-boolean v4, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    .line 541
    invoke-virtual {p0}, Landroid/widget/ListView;->checkFocus()V

    .line 543
    invoke-virtual {p0}, Landroid/widget/ListView;->checkSelectionChanged()V

    goto :goto_2
.end method

.method public setCacheColorHint(I)V
    .locals 3
    .parameter "color"

    .prologue
    .line 3010
    ushr-int/lit8 v1, p1, 0x18

    const/16 v2, 0xff

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    move v0, v1

    .line 3011
    .local v0, opaque:Z
    :goto_0
    iput-boolean v0, p0, Landroid/widget/ListView;->mIsCacheColorOpaque:Z

    .line 3012
    if-eqz v0, :cond_1

    .line 3013
    iget-object v1, p0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_0

    .line 3014
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    .line 3016
    :cond_0
    iget-object v1, p0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3018
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->setCacheColorHint(I)V

    .line 3019
    return-void

    .line 3010
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
    .line 3627
    iput p1, p0, Landroid/widget/ListView;->mChoiceMode:I

    .line 3628
    iget v0, p0, Landroid/widget/ListView;->mChoiceMode:I

    if-eqz v0, :cond_1

    .line 3629
    iget-object v0, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_0

    .line 3630
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 3632
    :cond_0
    iget-object v0, p0, Landroid/widget/ListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3633
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Landroid/widget/ListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 3636
    :cond_1
    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "divider"

    .prologue
    const/4 v2, 0x0

    .line 3370
    if-eqz p1, :cond_1

    .line 3371
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 3372
    instance-of v0, p1, Landroid/graphics/drawable/ColorDrawable;

    iput-boolean v0, p0, Landroid/widget/ListView;->mClipDivider:Z

    .line 3377
    :goto_0
    iput-object p1, p0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 3378
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Landroid/widget/ListView;->mDividerIsOpaque:Z

    .line 3379
    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayoutIfNecessary()V

    .line 3380
    return-void

    .line 3374
    :cond_1
    iput v2, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 3375
    iput-boolean v2, p0, Landroid/widget/ListView;->mClipDivider:Z

    goto :goto_0

    :cond_2
    move v0, v2

    .line 3378
    goto :goto_1
.end method

.method public setDividerHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 3396
    iput p1, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 3397
    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayoutIfNecessary()V

    .line 3398
    return-void
.end method

.method public setExcessScrollRecoverEffect(I)V
    .locals 1
    .parameter "effect"

    .prologue
    .line 201
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    .line 203
    iput p1, p0, Landroid/widget/ListView;->mExcessScrollRecoverEffect:I

    .line 205
    :cond_0
    return-void
.end method

.method public setFooterDividersEnabled(Z)V
    .locals 0
    .parameter "footerDividersEnabled"

    .prologue
    .line 3422
    iput-boolean p1, p0, Landroid/widget/ListView;->mFooterDividersEnabled:Z

    .line 3423
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 3424
    return-void
.end method

.method public setHeaderDividersEnabled(Z)V
    .locals 0
    .parameter "headerDividersEnabled"

    .prologue
    .line 3409
    iput-boolean p1, p0, Landroid/widget/ListView;->mHeaderDividersEnabled:Z

    .line 3410
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 3411
    return-void
.end method

.method public setItemChecked(IZ)V
    .locals 6
    .parameter "position"
    .parameter "value"

    .prologue
    const/4 v5, 0x1

    .line 3686
    iget v1, p0, Landroid/widget/ListView;->mChoiceMode:I

    if-nez v1, :cond_1

    .line 3725
    :cond_0
    :goto_0
    return-void

    .line 3690
    :cond_1
    iget v1, p0, Landroid/widget/ListView;->mChoiceMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 3691
    iget-object v1, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 3692
    iget-object v1, p0, Landroid/widget/ListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3693
    if-eqz p2, :cond_3

    .line 3694
    iget-object v1, p0, Landroid/widget/ListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 3720
    :cond_2
    :goto_1
    iget-boolean v1, p0, Landroid/widget/ListView;->mInLayout:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/widget/ListView;->mBlockLayoutRequests:Z

    if-nez v1, :cond_0

    .line 3721
    iput-boolean v5, p0, Landroid/widget/ListView;->mDataChanged:Z

    .line 3722
    invoke-virtual {p0}, Landroid/widget/ListView;->rememberSyncState()V

    .line 3723
    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    goto :goto_0

    .line 3696
    :cond_3
    iget-object v1, p0, Landroid/widget/ListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_1

    .line 3700
    :cond_4
    iget-object v1, p0, Landroid/widget/ListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_7

    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_7

    move v0, v5

    .line 3703
    .local v0, updateIds:Z
    :goto_2
    if-nez p2, :cond_5

    invoke-virtual {p0, p1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3704
    :cond_5
    iget-object v1, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 3705
    if-eqz v0, :cond_6

    .line 3706
    iget-object v1, p0, Landroid/widget/ListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->clear()V

    .line 3711
    :cond_6
    if-eqz p2, :cond_2

    .line 3712
    iget-object v1, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 3713
    if-eqz v0, :cond_2

    .line 3714
    iget-object v1, p0, Landroid/widget/ListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_1

    .line 3700
    .end local v0           #updateIds:Z
    :cond_7
    const/4 v1, 0x0

    move v0, v1

    goto :goto_2
.end method

.method public setItemsCanFocus(Z)V
    .locals 1
    .parameter "itemsCanFocus"

    .prologue
    .line 2985
    iput-boolean p1, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    .line 2986
    if-nez p1, :cond_0

    .line 2987
    const/high16 v0, 0x6

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setDescendantFocusability(I)V

    .line 2989
    :cond_0
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 1915
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 1916
    return-void
.end method

.method public setSelectionAfterHeaderView()V
    .locals 2

    .prologue
    .line 2060
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2061
    .local v0, count:I
    if-lez v0, :cond_0

    .line 2062
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/ListView;->mNextSelectedPosition:I

    .line 2073
    :goto_0
    return-void

    .line 2066
    :cond_0
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    .line 2067
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0

    .line 2069
    :cond_1
    iput v0, p0, Landroid/widget/ListView;->mNextSelectedPosition:I

    .line 2070
    const/4 v1, 0x2

    iput v1, p0, Landroid/widget/ListView;->mLayoutMode:I

    goto :goto_0
.end method

.method public setSelectionFromTop(II)V
    .locals 2
    .parameter "position"
    .parameter "y"

    .prologue
    .line 1928
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_1

    .line 1952
    :cond_0
    :goto_0
    return-void

    .line 1932
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ListView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1933
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result p1

    .line 1934
    if-ltz p1, :cond_2

    .line 1935
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setNextSelectedPositionInt(I)V

    .line 1941
    :cond_2
    :goto_1
    if-ltz p1, :cond_0

    .line 1942
    const/4 v0, 0x4

    iput v0, p0, Landroid/widget/ListView;->mLayoutMode:I

    .line 1943
    iget-object v0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/widget/ListView;->mSpecificTop:I

    .line 1945
    iget-boolean v0, p0, Landroid/widget/ListView;->mNeedSync:Z

    if-eqz v0, :cond_3

    .line 1946
    iput p1, p0, Landroid/widget/ListView;->mSyncPosition:I

    .line 1947
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/ListView;->mSyncRowId:J

    .line 1950
    :cond_3
    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    goto :goto_0

    .line 1938
    :cond_4
    iput p1, p0, Landroid/widget/ListView;->mResurrectToPosition:I

    goto :goto_1
.end method

.method setSelectionInt(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 1961
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setNextSelectedPositionInt(I)V

    .line 1962
    const/4 v0, 0x0

    .line 1964
    .local v0, awakeScrollbars:Z
    iget v1, p0, Landroid/widget/ListView;->mSelectedPosition:I

    .line 1966
    .local v1, selectedPosition:I
    if-ltz v1, :cond_0

    .line 1967
    const/4 v2, 0x1

    sub-int v2, v1, v2

    if-ne p1, v2, :cond_2

    .line 1968
    const/4 v0, 0x1

    .line 1974
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 1976
    if-eqz v0, :cond_1

    .line 1977
    invoke-virtual {p0}, Landroid/widget/ListView;->awakenScrollBars()Z

    .line 1979
    :cond_1
    return-void

    .line 1969
    :cond_2
    add-int/lit8 v2, v1, 0x1

    if-ne p1, v2, :cond_0

    .line 1970
    const/4 v0, 0x1

    goto :goto_0
.end method
