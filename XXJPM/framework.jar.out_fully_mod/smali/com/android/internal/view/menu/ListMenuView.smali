.class public final Lcom/android/internal/view/menu/ListMenuView;
.super Landroid/view/ViewGroup;
.source "ListMenuView.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuView;
.implements Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;


# static fields
.field private static final MAX_ITEM_NUM:I = 0x5


# instance fields
.field private mAnimations:I

.field private mBottomIndicator:Landroid/view/View;

.field private mInnerLinearLayout:Landroid/widget/LinearLayout;

.field private mInnerScrollView:Landroid/widget/ScrollView;

.field private mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private mOnScrollChangedListener:Landroid/widget/ScrollView$OnScrollChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 110
    new-instance v1, Lcom/android/internal/view/menu/ListMenuView$1;

    invoke-direct {v1, p0}, Lcom/android/internal/view/menu/ListMenuView$1;-><init>(Lcom/android/internal/view/menu/ListMenuView;)V

    iput-object v1, p0, Lcom/android/internal/view/menu/ListMenuView;->mOnScrollChangedListener:Landroid/widget/ScrollView$OnScrollChangedListener;

    .line 48
    sget-object v1, Lcom/android/internal/R$styleable;->MenuView:[I

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 49
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/view/menu/ListMenuView;->mAnimations:I

    .line 50
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/view/menu/ListMenuView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/internal/view/menu/ListMenuView;->setIndicatorVisibility(I)V

    return-void
.end method

.method private getMoreIndicator()Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, -0x2

    .line 128
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/view/menu/ListMenuView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 129
    .local v1, view:Landroid/widget/ImageView;
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 130
    .local v0, params:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v2, 0x11

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 131
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 133
    return-object v1
.end method

.method private setIndicatorVisibility(I)V
    .locals 2
    .parameter "scrollTop"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuView;->mInnerScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v0

    add-int/2addr v0, p1

    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuView;->mInnerLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 120
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuView;->mBottomIndicator:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 125
    :goto_0
    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuView;->mBottomIndicator:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 138
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/android/internal/view/menu/ListMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "p"

    .prologue
    .line 143
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getWindowAnimations()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/android/internal/view/menu/ListMenuView;->mAnimations:I

    return v0
.end method

.method public initialize(Lcom/android/internal/view/menu/MenuBuilder;I)V
    .locals 1
    .parameter "menu"
    .parameter "menuType"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/internal/view/menu/ListMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 69
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ListMenuView;->updateChildren(Z)V

    .line 71
    return-void
.end method

.method public invokeItem(Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 221
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 222
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuView;->mInnerScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1, v1}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 223
    return-void
.end method

.method public onFinishInflate()V
    .locals 2

    .prologue
    .line 55
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 56
    const v0, 0x10202c0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ListMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/android/internal/view/menu/ListMenuView;->mInnerScrollView:Landroid/widget/ScrollView;

    .line 57
    const v0, 0x10202c1

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ListMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/internal/view/menu/ListMenuView;->mInnerLinearLayout:Landroid/widget/LinearLayout;

    .line 58
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuView;->mInnerScrollView:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuView;->mOnScrollChangedListener:Landroid/widget/ScrollView$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setOnScrollChangedListener(Landroid/widget/ScrollView$OnScrollChangedListener;)V

    .line 60
    invoke-direct {p0}, Lcom/android/internal/view/menu/ListMenuView;->getMoreIndicator()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/view/menu/ListMenuView;->mBottomIndicator:Landroid/view/View;

    .line 61
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuView;->mBottomIndicator:Landroid/view/View;

    const v1, 0x1080537

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 63
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuView;->mBottomIndicator:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ListMenuView;->addView(Landroid/view/View;)V

    .line 64
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 199
    iget v6, p0, Lcom/android/internal/view/menu/ListMenuView;->mPaddingTop:I

    .line 200
    .local v6, startY:I
    sub-int v4, p4, p2

    .line 202
    .local v4, ownWidth:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ListMenuView;->getChildCount()I

    move-result v8

    if-ge v2, v8, :cond_0

    .line 203
    invoke-virtual {p0, v2}, Lcom/android/internal/view/menu/ListMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 205
    .local v0, childView:Landroid/view/View;
    move v5, v4

    .line 207
    .local v5, startX:I
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 208
    .local v3, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 209
    .local v7, width:I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 211
    .local v1, height:I
    sub-int v8, v4, v7

    div-int/lit8 v5, v8, 0x2

    .line 212
    iget v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v6, v8

    .line 213
    add-int v8, v5, v7

    add-int v9, v6, v1

    invoke-virtual {v0, v5, v6, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 215
    iget v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v8, v1

    add-int/2addr v6, v8

    .line 202
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 217
    .end local v0           #childView:Landroid/view/View;
    .end local v1           #height:I
    .end local v3           #lp:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v5           #startX:I
    .end local v7           #width:I
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 29
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 148
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v26

    .line 149
    .local v26, tempMeasureSpec:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v24

    .line 150
    .local v24, origWidthMode:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v25

    .line 151
    .local v25, origWidthSize:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v22

    .line 152
    .local v22, origHeightMode:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v23

    .line 154
    .local v23, origHeightSize:I
    const/16 v21, 0x0

    .line 155
    .local v21, maxScrollableHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/view/menu/ListMenuView;->mInnerLinearLayout:Landroid/widget/LinearLayout;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v14

    .line 158
    .local v14, childCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/view/menu/ListMenuView;->mInnerScrollView:Landroid/widget/ScrollView;

    move-object v3, v0

    move-object v0, v3

    move/from16 v1, v26

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/widget/ScrollView;->measure(II)V

    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/view/menu/ListMenuView;->mInnerScrollView:Landroid/widget/ScrollView;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/widget/ScrollView;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, v14

    div-float v19, v3, v4

    .line 162
    .local v19, itemHeight:F
    const/high16 v3, 0x40a0

    mul-float v3, v3, v19

    move v0, v3

    float-to-int v0, v0

    move/from16 v21, v0

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/view/menu/ListMenuView;->mInnerScrollView:Landroid/widget/ScrollView;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    check-cast v20, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 166
    .local v20, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ListMenuView;->mPaddingTop:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ListMenuView;->mPaddingBottom:I

    move v4, v0

    add-int/2addr v3, v4

    move-object/from16 v0, v20

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move v4, v0

    add-int/2addr v3, v4

    move-object/from16 v0, v20

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move v4, v0

    add-int/2addr v3, v4

    add-int v21, v21, v3

    .line 169
    const/high16 v27, 0x4000

    .line 170
    .local v27, widthMode:I
    move/from16 v28, v25

    .line 171
    .local v28, widthSize:I
    const/high16 v17, -0x8000

    .line 172
    .local v17, heightMode:I
    move/from16 v18, v21

    .line 175
    .local v18, heightSize:I
    move/from16 v0, v28

    move/from16 v1, v27

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 177
    .local v5, scrollViewWidthMeasureSpec:I
    move/from16 v0, v18

    move/from16 v1, v17

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 179
    .local v7, scrollViewHeightMeasureSpec:I
    const/4 v13, 0x0

    .line 182
    .local v13, heightUsed:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/view/menu/ListMenuView;->mInnerScrollView:Landroid/widget/ScrollView;

    move-object v4, v0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/view/menu/ListMenuView;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/view/menu/ListMenuView;->mInnerScrollView:Landroid/widget/ScrollView;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/widget/ScrollView;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v13, v3

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/view/menu/ListMenuView;->mBottomIndicator:Landroid/view/View;

    move-object v9, v0

    const/4 v11, 0x0

    move-object/from16 v8, p0

    move v10, v5

    move/from16 v12, p2

    invoke-virtual/range {v8 .. v13}, Lcom/android/internal/view/menu/ListMenuView;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/view/menu/ListMenuView;->mBottomIndicator:Landroid/view/View;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v13, v3

    .line 190
    move/from16 v16, v25

    .line 191
    .local v16, finalWidth:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ListMenuView;->mPaddingTop:I

    move v3, v0

    add-int/2addr v3, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ListMenuView;->mPaddingBottom:I

    move v4, v0

    add-int v15, v3, v4

    .line 193
    .local v15, finalHeight:I
    move/from16 v0, v16

    move/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/internal/view/menu/ListMenuView;->resolveSize(II)I

    move-result v3

    move v0, v15

    move/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/internal/view/menu/ListMenuView;->resolveSize(II)I

    move-result v4

    move-object/from16 v0, p0

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/view/menu/ListMenuView;->setMeasuredDimension(II)V

    .line 195
    return-void
.end method

.method public updateChildren(Z)V
    .locals 9
    .parameter "cleared"

    .prologue
    .line 75
    iget-object v7, p0, Lcom/android/internal/view/menu/ListMenuView;->mInnerLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 77
    new-instance v3, Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/internal/view/menu/ListMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v7}, Lcom/android/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 78
    .local v3, itemsToShow:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 81
    .local v4, itemsToShowSize:I
    const/4 v6, 0x0

    .line 83
    .local v6, visibleItemCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v4, :cond_2

    .line 84
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 85
    .local v1, itemData:Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    .line 86
    .local v5, title:Ljava/lang/CharSequence;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 83
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    :cond_1
    const/4 v7, 0x3

    iget-object v8, p0, Lcom/android/internal/view/menu/ListMenuView;->mInnerLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7, v8}, Lcom/android/internal/view/menu/MenuItemImpl;->getItemView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/view/menu/ListMenuItemView;

    .line 92
    .local v2, itemView:Lcom/android/internal/view/menu/ListMenuItemView;
    invoke-virtual {v2, p0}, Lcom/android/internal/view/menu/ListMenuItemView;->setItemInvoker(Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;)V

    .line 93
    iget-object v7, p0, Lcom/android/internal/view/menu/ListMenuView;->mInnerLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 94
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 97
    .end local v1           #itemData:Lcom/android/internal/view/menu/MenuItemImpl;
    .end local v2           #itemView:Lcom/android/internal/view/menu/ListMenuItemView;
    .end local v5           #title:Ljava/lang/CharSequence;
    :cond_2
    iget-object v7, p0, Lcom/android/internal/view/menu/ListMenuView;->mBottomIndicator:Landroid/view/View;

    const/4 v8, 0x5

    if-le v6, v8, :cond_3

    const/4 v8, 0x0

    :goto_2
    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 98
    return-void

    .line 97
    :cond_3
    const/4 v8, 0x4

    goto :goto_2
.end method
