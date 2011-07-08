.class public Lcom/nemustech/tiffany/widget/TFAnimatedListView;
.super Lcom/nemustech/tiffany/widget/TFListView;
.source "TFAnimatedListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nemustech/tiffany/widget/TFAnimatedListView$1;,
        Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;,
        Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;,
        Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationListener;,
        Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemDeleteDrawCallback;,
        Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemInsertDrawCallback;,
        Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemDeleteItemAnimation;,
        Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemInsertItemAnimation;,
        Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;,
        Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;
    }
.end annotation


# static fields
.field private static final ITEM_ANIMATION_DURATION:I = 0x12c

.field public static final ITEM_ANIMATION_FADE:I = 0x4

.field public static final ITEM_ANIMATION_HORIZONTAL_SLIDE:I = 0x1

.field public static final ITEM_ANIMATION_MAX:I = 0x5

.field public static final ITEM_ANIMATION_NONE:I = 0x0

.field public static final ITEM_ANIMATION_VERTICAL_DROPDOWN:I = 0x3

.field public static final ITEM_ANIMATION_VERTICAL_SLIDE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "TFAnimatedListView"

.field private static final TAG_ANI:Ljava/lang/String; = "TFAnimatedListView.ItemAnimation"


# instance fields
.field private DEBUG_ANIMATION:Z

.field private mAnimationDuration:I

.field private mAnimationMaxAlpha:I

.field private mAnimationMinAlpha:I

.field private mCurIds:[J

.field private mCustomItemDeleteDrawCallback:Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemDeleteDrawCallback;

.field private mCustomItemInsertDrawCallback:Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemInsertDrawCallback;

.field private mDefaultAnimationType:I

.field private mDeleteItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDrawDeleteViewFront:Z

.field private mDrawInsertViewFront:Z

.field private mFloatingViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mIdsOffset:[I

.field private mIsAnimating:Z

.field private mItemAnimationListener:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationListener;

.field protected mItemAnimator:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;

.field private mPrevFirstPosition:I

.field private mPrevIds:[J

.field private mTempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 903
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 904
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 907
    invoke-static {}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInstance()Lcom/nemustech/tiffany/widget/TFResourceBroker;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInt(I)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 908
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/16 v4, 0xff

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 911
    invoke-direct {p0, p1, p2, p3}, Lcom/nemustech/tiffany/widget/TFListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    iput-boolean v3, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->DEBUG_ANIMATION:Z

    .line 1058
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mFloatingViews:Ljava/util/ArrayList;

    .line 1071
    new-instance v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;

    invoke-direct {v0, p0}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;-><init>(Lcom/nemustech/tiffany/widget/TFAnimatedListView;)V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mItemAnimator:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;

    .line 1082
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mTempRect:Landroid/graphics/Rect;

    .line 1084
    iput-object v1, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mPrevIds:[J

    .line 1085
    iput-object v1, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mCurIds:[J

    .line 1086
    iput-object v1, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mIdsOffset:[I

    .line 1087
    iput-object v1, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mDeleteItems:Ljava/util/ArrayList;

    .line 1091
    iput-boolean v2, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mDrawDeleteViewFront:Z

    .line 1092
    iput-boolean v2, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mDrawInsertViewFront:Z

    .line 1093
    iput v3, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mDefaultAnimationType:I

    .line 1094
    iput v4, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mAnimationMinAlpha:I

    .line 1095
    iput v4, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mAnimationMaxAlpha:I

    .line 1096
    const/16 v0, 0x12c

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mAnimationDuration:I

    .line 912
    return-void
.end method

.method static synthetic access$000(Lcom/nemustech/tiffany/widget/TFAnimatedListView;)Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemInsertDrawCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mCustomItemInsertDrawCallback:Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemInsertDrawCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nemustech/tiffany/widget/TFAnimatedListView;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mTempRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$200(Lcom/nemustech/tiffany/widget/TFAnimatedListView;)Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemDeleteDrawCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mCustomItemDeleteDrawCallback:Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemDeleteDrawCallback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/nemustech/tiffany/widget/TFAnimatedListView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mIsAnimating:Z

    return v0
.end method

.method static synthetic access$302(Lcom/nemustech/tiffany/widget/TFAnimatedListView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mIsAnimating:Z

    return p1
.end method

.method static synthetic access$400(Lcom/nemustech/tiffany/widget/TFAnimatedListView;)Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mItemAnimationListener:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationListener;

    return-object v0
.end method

.method private calculateItemPositionOffset()V
    .locals 12

    .prologue
    const v11, 0x7fffffff

    const/4 v10, 0x1

    .line 1878
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mPrevIds:[J

    if-eqz v6, :cond_c

    .line 1879
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mCurIds:[J

    array-length v0, v6

    .line 1880
    .local v0, curLen:I
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mPrevIds:[J

    array-length v5, v6

    .line 1882
    .local v5, prevLen:I
    iget-boolean v6, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mStackFromBottom:Z

    if-eqz v6, :cond_3

    .line 1883
    new-array v6, v0, [I

    iput-object v6, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mIdsOffset:[I

    .line 1884
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_7

    .line 1885
    const/4 v4, 0x0

    .line 1886
    .local v4, match:Z
    const/4 v3, 0x0

    .local v3, j:I
    :goto_1
    if-ge v3, v5, :cond_0

    .line 1887
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mCurIds:[J

    sub-int v7, v0, v10

    sub-int/2addr v7, v2

    aget-wide v6, v6, v7

    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mPrevIds:[J

    sub-int v9, v5, v10

    sub-int/2addr v9, v3

    aget-wide v8, v8, v9

    cmp-long v6, v6, v8

    if-nez v6, :cond_2

    .line 1889
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mIdsOffset:[I

    sub-int v7, v0, v10

    sub-int/2addr v7, v2

    sub-int v8, v2, v3

    aput v8, v6, v7

    .line 1890
    const/4 v4, 0x1

    .line 1896
    :cond_0
    if-nez v4, :cond_1

    .line 1897
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mIdsOffset:[I

    sub-int v7, v0, v10

    sub-int/2addr v7, v2

    aput v11, v6, v7

    .line 1884
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1886
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1900
    .end local v2           #i:I
    .end local v3           #j:I
    .end local v4           #match:Z
    :cond_3
    new-array v6, v0, [I

    iput-object v6, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mIdsOffset:[I

    .line 1901
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_2
    if-ge v2, v0, :cond_7

    .line 1902
    const/4 v4, 0x0

    .line 1903
    .restart local v4       #match:Z
    const/4 v3, 0x0

    .restart local v3       #j:I
    :goto_3
    if-ge v3, v5, :cond_4

    .line 1904
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mCurIds:[J

    aget-wide v6, v6, v2

    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mPrevIds:[J

    aget-wide v8, v8, v3

    cmp-long v6, v6, v8

    if-nez v6, :cond_6

    .line 1906
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mIdsOffset:[I

    sub-int v7, v2, v3

    aput v7, v6, v2

    .line 1907
    const/4 v4, 0x1

    .line 1913
    :cond_4
    if-nez v4, :cond_5

    .line 1914
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mIdsOffset:[I

    aput v11, v6, v2

    .line 1901
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1903
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1919
    .end local v3           #j:I
    .end local v4           #match:Z
    :cond_7
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mDeleteItems:Ljava/util/ArrayList;

    if-nez v6, :cond_a

    .line 1920
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mDeleteItems:Ljava/util/ArrayList;

    .line 1924
    :goto_4
    const/4 v3, 0x0

    .restart local v3       #j:I
    :goto_5
    if-ge v3, v5, :cond_c

    .line 1925
    const/4 v1, 0x0

    .line 1926
    .local v1, exist:Z
    const/4 v2, 0x0

    :goto_6
    if-ge v2, v0, :cond_8

    .line 1927
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mPrevIds:[J

    aget-wide v6, v6, v3

    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mCurIds:[J

    aget-wide v8, v8, v2

    cmp-long v6, v6, v8

    if-nez v6, :cond_b

    .line 1928
    const/4 v1, 0x1

    .line 1933
    :cond_8
    if-nez v1, :cond_9

    .line 1934
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mDeleteItems:Ljava/util/ArrayList;

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1924
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1922
    .end local v1           #exist:Z
    .end local v3           #j:I
    :cond_a
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mDeleteItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    goto :goto_4

    .line 1926
    .restart local v1       #exist:Z
    .restart local v3       #j:I
    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1937
    .end local v0           #curLen:I
    .end local v1           #exist:Z
    .end local v2           #i:I
    .end local v3           #j:I
    .end local v5           #prevLen:I
    :cond_c
    return-void
.end method

.method private drawDeleteView(Landroid/graphics/Canvas;)V
    .locals 22
    .parameter "canvas"

    .prologue
    .line 1281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mDeleteItems:Ljava/util/ArrayList;

    move-object v5, v0

    if-eqz v5, :cond_2

    .line 1282
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mAnimationMaxAlpha:I

    move/from16 v18, v0

    .line 1283
    .local v18, maxAlpha:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mAnimationMinAlpha:I

    move/from16 v19, v0

    .line 1284
    .local v19, minAlpha:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mDeleteItems:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int v16, v5, v6

    .local v16, i:I
    :goto_0
    if-ltz v16, :cond_2

    .line 1285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mDeleteItems:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 1286
    .local v13, deletePos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mItemAnimator:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;

    move-object v5, v0

    invoke-virtual {v5, v13}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->getDeleteItemAnimation(I)Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;

    move-result-object v17

    .line 1287
    .local v17, ia:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;
    if-eqz v17, :cond_0

    .line 1288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;

    move-object v5, v0

    invoke-virtual {v5, v13}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->getShouldRetainView(I)Landroid/view/View;

    move-result-object v12

    .line 1289
    .local v12, child:Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->getDrawingTime()J

    move-result-wide v14

    .line 1290
    .local v14, drawingTime:J
    if-eqz v12, :cond_0

    .line 1291
    invoke-virtual/range {v17 .. v17}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;->getType()I

    move-result v5

    if-nez v5, :cond_1

    .line 1293
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v20

    .line 1295
    .local v20, save:I
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->getWidth()I

    move-result v5

    int-to-float v8, v5

    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->getHeight()I

    move-result v5

    int-to-float v9, v5

    sub-int v5, v18, v19

    int-to-float v5, v5

    move-object/from16 v0, v17

    check-cast v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->getProgress()F

    move-result v10

    mul-float/2addr v5, v10

    float-to-int v5, v5

    sub-int v10, v18, v5

    const/16 v11, 0x14

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 1299
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;->draw(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 1300
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v12

    move-wide v3, v14

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->onPostDrawChild(Landroid/graphics/Canvas;Landroid/view/View;J)V

    .line 1301
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1284
    .end local v12           #child:Landroid/view/View;
    .end local v14           #drawingTime:J
    .end local v20           #save:I
    :cond_0
    :goto_1
    add-int/lit8 v16, v16, -0x1

    goto :goto_0

    .line 1303
    .restart local v12       #child:Landroid/view/View;
    .restart local v14       #drawingTime:J
    :cond_1
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;->draw(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 1304
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v12

    move-wide v3, v14

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->onPostDrawChild(Landroid/graphics/Canvas;Landroid/view/View;J)V

    goto :goto_1

    .line 1310
    .end local v12           #child:Landroid/view/View;
    .end local v13           #deletePos:I
    .end local v14           #drawingTime:J
    .end local v16           #i:I
    .end local v17           #ia:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;
    .end local v18           #maxAlpha:I
    .end local v19           #minAlpha:I
    :cond_2
    return-void
.end method

.method private drawInsertView(Landroid/graphics/Canvas;)V
    .locals 23
    .parameter "canvas"

    .prologue
    .line 1246
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mFirstPosition:I

    move/from16 v16, v0

    .line 1247
    .local v16, first:I
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->getChildCount()I

    move-result v13

    .line 1248
    .local v13, childCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mAnimationMaxAlpha:I

    move/from16 v19, v0

    .line 1249
    .local v19, maxAlpha:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mAnimationMinAlpha:I

    move/from16 v20, v0

    .line 1250
    .local v20, minAlpha:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mIdsOffset:[I

    move-object v5, v0

    if-eqz v5, :cond_2

    .line 1251
    add-int v5, v16, v13

    const/4 v6, 0x1

    sub-int v17, v5, v6

    .local v17, i:I
    :goto_0
    move/from16 v0, v17

    move/from16 v1, v16

    if-lt v0, v1, :cond_2

    .line 1252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mIdsOffset:[I

    move-object v5, v0

    aget v5, v5, v17

    const v6, 0x7fffffff

    if-ne v5, v6, :cond_0

    .line 1253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mItemAnimator:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->getItemAnimation(I)Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;

    move-result-object v18

    .line 1254
    .local v18, ia:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;
    if-eqz v18, :cond_0

    .line 1255
    sub-int v5, v17, v16

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 1256
    .local v12, child:Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->getDrawingTime()J

    move-result-wide v14

    .line 1257
    .local v14, drawingTime:J
    if-eqz v12, :cond_0

    .line 1258
    invoke-virtual/range {v18 .. v18}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;->getType()I

    move-result v5

    if-nez v5, :cond_1

    .line 1260
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v21

    .line 1262
    .local v21, save:I
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->getWidth()I

    move-result v5

    int-to-float v8, v5

    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->getHeight()I

    move-result v5

    int-to-float v9, v5

    sub-int v5, v19, v20

    int-to-float v5, v5

    move-object/from16 v0, v18

    check-cast v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->getProgress()F

    move-result v10

    mul-float/2addr v5, v10

    float-to-int v5, v5

    add-int v10, v20, v5

    const/16 v11, 0x14

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 1266
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;->draw(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 1267
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v12

    move-wide v3, v14

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->onPostDrawChild(Landroid/graphics/Canvas;Landroid/view/View;J)V

    .line 1268
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1251
    .end local v12           #child:Landroid/view/View;
    .end local v14           #drawingTime:J
    .end local v18           #ia:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;
    .end local v21           #save:I
    :cond_0
    :goto_1
    add-int/lit8 v17, v17, -0x1

    goto :goto_0

    .line 1270
    .restart local v12       #child:Landroid/view/View;
    .restart local v14       #drawingTime:J
    .restart local v18       #ia:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;
    :cond_1
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;->draw(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 1271
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v12

    move-wide v3, v14

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->onPostDrawChild(Landroid/graphics/Canvas;Landroid/view/View;J)V

    goto :goto_1

    .line 1278
    .end local v12           #child:Landroid/view/View;
    .end local v14           #drawingTime:J
    .end local v17           #i:I
    .end local v18           #ia:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;
    :cond_2
    return-void
.end method

.method private drawRetainView(Landroid/graphics/Canvas;)V
    .locals 11
    .parameter "canvas"

    .prologue
    .line 1231
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->getDrawingTime()J

    move-result-wide v4

    .line 1232
    .local v4, drawingTime:J
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->getRetainViewPositions()[Ljava/lang/Object;

    move-result-object v10

    .line 1233
    .local v10, pos:[Ljava/lang/Object;
    if-eqz v10, :cond_1

    array-length v0, v10

    if-lez v0, :cond_1

    .line 1234
    move-object v6, v10

    .local v6, arr$:[Ljava/lang/Object;
    array-length v8, v6

    .local v8, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_0
    if-ge v7, v8, :cond_1

    aget-object v9, v6, v7

    .line 1235
    .local v9, obj:Ljava/lang/Object;
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1236
    .local v2, position:I
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;

    invoke-virtual {v0, v2}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->getShouldRetainView(I)Landroid/view/View;

    move-result-object v3

    .line 1238
    .local v3, retainView:Landroid/view/View;
    if-eqz v3, :cond_0

    move-object v0, p0

    move-object v1, p1

    .line 1239
    invoke-virtual/range {v0 .. v5}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->drawRetainChild(Landroid/graphics/Canvas;ILandroid/view/View;J)Z

    .line 1234
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1243
    .end local v2           #position:I
    .end local v3           #retainView:Landroid/view/View;
    .end local v6           #arr$:[Ljava/lang/Object;
    .end local v7           #i$:I
    .end local v8           #len$:I
    .end local v9           #obj:Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method private getCustomDeleteItemAnimation(ILcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;J)Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;
    .locals 6
    .parameter "position"
    .parameter "data"
    .parameter "startTime"

    .prologue
    const-wide/16 v4, 0x0

    .line 2204
    if-eqz p2, :cond_2

    .line 2205
    new-instance v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemDeleteItemAnimation;

    invoke-direct {v0, p0}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemDeleteItemAnimation;-><init>(Lcom/nemustech/tiffany/widget/TFAnimatedListView;)V

    .line 2206
    .local v0, ca:Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemDeleteItemAnimation;
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mCustomItemDeleteDrawCallback:Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemDeleteDrawCallback;

    invoke-interface {v3}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemDeleteDrawCallback;->getDeleteAnimationDuration()J

    move-result-wide v1

    .line 2208
    .local v1, duration:J
    cmp-long v3, v1, v4

    if-gtz v3, :cond_0

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mAnimationDuration:I

    int-to-long v1, v3

    .line 2210
    :cond_0
    cmp-long v3, p3, v4

    if-nez v3, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p3

    .line 2212
    :cond_1
    long-to-int v3, v1

    invoke-virtual {v0, p3, p4, p1, v3}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemDeleteItemAnimation;->start(JII)V

    move-object v3, v0

    .line 2216
    .end local v0           #ca:Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemDeleteItemAnimation;
    .end local v1           #duration:J
    :goto_0
    return-object v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private getCustomInsertItemAnimation(ILcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;J)Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;
    .locals 6
    .parameter "position"
    .parameter "data"
    .parameter "startTime"

    .prologue
    const-wide/16 v4, 0x0

    .line 2188
    if-eqz p2, :cond_2

    .line 2189
    new-instance v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemInsertItemAnimation;

    invoke-direct {v0, p0}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemInsertItemAnimation;-><init>(Lcom/nemustech/tiffany/widget/TFAnimatedListView;)V

    .line 2190
    .local v0, ca:Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemInsertItemAnimation;
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mCustomItemInsertDrawCallback:Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemInsertDrawCallback;

    invoke-interface {v3}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemInsertDrawCallback;->getInsertAnimationDuration()J

    move-result-wide v1

    .line 2192
    .local v1, duration:J
    cmp-long v3, v1, v4

    if-gtz v3, :cond_0

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mAnimationDuration:I

    int-to-long v1, v3

    .line 2194
    :cond_0
    cmp-long v3, p3, v4

    if-nez v3, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p3

    .line 2196
    :cond_1
    long-to-int v3, v1

    invoke-virtual {v0, p3, p4, p1, v3}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemInsertItemAnimation;->start(JII)V

    move-object v3, v0

    .line 2200
    .end local v0           #ca:Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemInsertItemAnimation;
    .end local v1           #duration:J
    :goto_0
    return-object v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private getDeleteAnimationData(I)Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;
    .locals 12
    .parameter "position"

    .prologue
    const/4 v11, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 2051
    const/4 v5, 0x0

    .line 2053
    .local v5, ret:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mCustomItemDeleteDrawCallback:Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemDeleteDrawCallback;

    if-eqz v8, :cond_0

    .line 2054
    new-instance v5, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;

    .end local v5           #ret:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;
    invoke-direct {v5, p0, v11}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;-><init>(Lcom/nemustech/tiffany/widget/TFAnimatedListView;Lcom/nemustech/tiffany/widget/TFAnimatedListView$1;)V

    .line 2055
    .restart local v5       #ret:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;
    iput v9, v5, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;->type:I

    .line 2154
    :goto_0
    return-object v5

    .line 2058
    :cond_0
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;

    invoke-virtual {v8, p1}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->getShouldRetainView(I)Landroid/view/View;

    move-result-object v6

    .line 2059
    .local v6, retainView:Landroid/view/View;
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->getWidth()I

    move-result v0

    .line 2060
    .local v0, HORIZONTAL_TRANSLATE_DISTANCE:I
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mFirstPosition:I

    .line 2062
    .local v3, first:I
    new-instance v5, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;

    .end local v5           #ret:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;
    invoke-direct {v5, p0, v11}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;-><init>(Lcom/nemustech/tiffany/widget/TFAnimatedListView;Lcom/nemustech/tiffany/widget/TFAnimatedListView$1;)V

    .line 2064
    .restart local v5       #ret:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;
    iget v8, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mDefaultAnimationType:I

    packed-switch v8, :pswitch_data_0

    goto :goto_0

    .line 2066
    :pswitch_0
    iput v10, v5, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;->type:I

    .line 2067
    iput v0, v5, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;->deltaX:I

    goto :goto_0

    .line 2071
    :pswitch_1
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;

    invoke-virtual {v8, p1}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->getShouldRetainView(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v7

    .line 2072
    .local v7, slideHeight:I
    sub-int v4, p1, v9

    .local v4, i:I
    :goto_1
    if-lt v4, v3, :cond_2

    .line 2073
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mDeleteItems:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2074
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;

    invoke-virtual {v8, v4}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->getShouldRetainView(I)Landroid/view/View;

    move-result-object v1

    .line 2075
    .local v1, delView:Landroid/view/View;
    if-eqz v1, :cond_2

    .line 2076
    iget v8, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mDividerHeight:I

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v7, v8

    .line 2072
    .end local v1           #delView:Landroid/view/View;
    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 2082
    :cond_2
    add-int/lit8 v4, p1, 0x1

    :goto_2
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mPrevIds:[J

    array-length v8, v8

    if-ge v4, v8, :cond_4

    .line 2083
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mDeleteItems:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2084
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;

    invoke-virtual {v8, v4}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->getShouldRetainView(I)Landroid/view/View;

    move-result-object v1

    .line 2085
    .restart local v1       #delView:Landroid/view/View;
    if-eqz v1, :cond_4

    .line 2086
    iget v8, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mDividerHeight:I

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v7, v8

    .line 2082
    .end local v1           #delView:Landroid/view/View;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 2092
    :cond_4
    iput v10, v5, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;->type:I

    .line 2093
    neg-int v8, v7

    iput v8, v5, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;->deltaY:I

    goto :goto_0

    .line 2130
    .end local v4           #i:I
    .end local v7           #slideHeight:I
    :pswitch_2
    const/4 v2, 0x0

    .line 2131
    .local v2, dropHeight:I
    if-eqz v6, :cond_6

    .line 2132
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 2133
    sub-int v4, p1, v9

    .restart local v4       #i:I
    :goto_3
    if-lt v4, v3, :cond_6

    .line 2134
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mDeleteItems:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 2135
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;

    invoke-virtual {v8, v4}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->getShouldRetainView(I)Landroid/view/View;

    move-result-object v1

    .line 2136
    .restart local v1       #delView:Landroid/view/View;
    if-eqz v1, :cond_6

    .line 2137
    iget v8, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mDividerHeight:I

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v2, v8

    .line 2133
    .end local v1           #delView:Landroid/view/View;
    :cond_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 2144
    .end local v4           #i:I
    :cond_6
    iput v10, v5, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;->type:I

    .line 2145
    neg-int v8, v2

    iput v8, v5, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;->deltaY:I

    goto/16 :goto_0

    .line 2149
    .end local v2           #dropHeight:I
    :pswitch_3
    iput v10, v5, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;->type:I

    goto/16 :goto_0

    .line 2064
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getInsertItemAnimationData(I)Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;
    .locals 12
    .parameter "position"

    .prologue
    const/4 v11, 0x0

    const v10, 0x7fffffff

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1940
    const/4 v5, 0x0

    .line 1942
    .local v5, ret:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;
    iget-object v7, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mCustomItemInsertDrawCallback:Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemInsertDrawCallback;

    if-eqz v7, :cond_0

    .line 1944
    new-instance v5, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;

    .end local v5           #ret:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;
    invoke-direct {v5, p0, v11}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;-><init>(Lcom/nemustech/tiffany/widget/TFAnimatedListView;Lcom/nemustech/tiffany/widget/TFAnimatedListView$1;)V

    .line 1945
    .restart local v5       #ret:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;
    iput v8, v5, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;->type:I

    .line 2032
    :goto_0
    return-object v5

    .line 1948
    :cond_0
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mFirstPosition:I

    .line 1949
    .local v3, first:I
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->getChildCount()I

    move-result v1

    .line 1950
    .local v1, childCount:I
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->getWidth()I

    move-result v0

    .line 1952
    .local v0, HORIZONTAL_TRANSLATE_DISTANCE:I
    new-instance v5, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;

    .end local v5           #ret:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;
    invoke-direct {v5, p0, v11}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;-><init>(Lcom/nemustech/tiffany/widget/TFAnimatedListView;Lcom/nemustech/tiffany/widget/TFAnimatedListView$1;)V

    .line 1954
    .restart local v5       #ret:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;
    iget v7, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mDefaultAnimationType:I

    packed-switch v7, :pswitch_data_0

    goto :goto_0

    .line 1956
    :pswitch_0
    iput v9, v5, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;->type:I

    .line 1957
    iput v0, v5, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;->startX:I

    .line 1958
    neg-int v7, v0

    iput v7, v5, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;->deltaX:I

    goto :goto_0

    .line 1962
    :pswitch_1
    sub-int v7, p1, v3

    invoke-virtual {p0, v7}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v6

    .line 1964
    .local v6, slideHeight:I
    sub-int v4, p1, v8

    .local v4, i:I
    :goto_1
    if-lt v4, v3, :cond_1

    .line 1965
    iget-object v7, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mIdsOffset:[I

    aget v7, v7, v4

    if-ne v7, v10, :cond_1

    .line 1966
    iget v7, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mDividerHeight:I

    sub-int v8, v4, v3

    invoke-virtual {p0, v8}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    add-int/2addr v6, v7

    .line 1964
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 1971
    :cond_1
    add-int/lit8 v4, p1, 0x1

    :goto_2
    add-int v7, v3, v1

    if-ge v4, v7, :cond_2

    .line 1972
    iget-object v7, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mIdsOffset:[I

    aget v7, v7, v4

    if-ne v7, v10, :cond_2

    .line 1973
    iget v7, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mDividerHeight:I

    sub-int v8, v4, v3

    invoke-virtual {p0, v8}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    add-int/2addr v6, v7

    .line 1971
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1978
    :cond_2
    iput v9, v5, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;->type:I

    .line 1979
    neg-int v7, v6

    iput v7, v5, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;->startY:I

    .line 1980
    iput v6, v5, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;->deltaY:I

    goto :goto_0

    .line 2012
    .end local v4           #i:I
    .end local v6           #slideHeight:I
    :pswitch_2
    sub-int v7, p1, v3

    invoke-virtual {p0, v7}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 2014
    .local v2, dropHeight:I
    sub-int v4, p1, v8

    .restart local v4       #i:I
    :goto_3
    if-lt v4, v3, :cond_3

    .line 2015
    iget-object v7, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mIdsOffset:[I

    aget v7, v7, v4

    if-ne v7, v10, :cond_3

    .line 2016
    iget v7, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mDividerHeight:I

    sub-int v8, v4, v3

    invoke-virtual {p0, v8}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    add-int/2addr v2, v7

    .line 2014
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 2021
    :cond_3
    iput v9, v5, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;->type:I

    .line 2022
    neg-int v7, v2

    iput v7, v5, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;->startY:I

    .line 2023
    iput v2, v5, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;->deltaY:I

    goto/16 :goto_0

    .line 2027
    .end local v2           #dropHeight:I
    .end local v4           #i:I
    :pswitch_3
    iput v9, v5, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;->type:I

    goto/16 :goto_0

    .line 1954
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getItemAnimationData(I)Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;
    .locals 2
    .parameter "height"

    .prologue
    .line 2158
    const/4 v0, 0x0

    .line 2160
    .local v0, ret:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;
    if-eqz p1, :cond_0

    .line 2161
    new-instance v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;

    .end local v0           #ret:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;
    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;-><init>(Lcom/nemustech/tiffany/widget/TFAnimatedListView;Lcom/nemustech/tiffany/widget/TFAnimatedListView$1;)V

    .line 2162
    .restart local v0       #ret:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;
    const/4 v1, 0x0

    iput v1, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;->type:I

    .line 2163
    neg-int v1, p1

    iput v1, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;->startY:I

    .line 2164
    iput p1, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;->deltaY:I

    .line 2167
    :cond_0
    return-object v0
.end method

.method private getRetainItemAnimationData(IIII)Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;
    .locals 2
    .parameter "startX"
    .parameter "deltaX"
    .parameter "startY"
    .parameter "deltaY"

    .prologue
    .line 2036
    const/4 v0, 0x0

    .line 2038
    .local v0, ret:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;
    if-nez p2, :cond_0

    if-eqz p4, :cond_1

    .line 2039
    :cond_0
    new-instance v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;

    .end local v0           #ret:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;
    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;-><init>(Lcom/nemustech/tiffany/widget/TFAnimatedListView;Lcom/nemustech/tiffany/widget/TFAnimatedListView$1;)V

    .line 2040
    .restart local v0       #ret:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;
    const/4 v1, 0x0

    iput v1, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;->type:I

    .line 2041
    neg-int v1, p1

    iput v1, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;->startX:I

    .line 2042
    iput p2, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;->deltaX:I

    .line 2043
    neg-int v1, p3

    iput v1, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;->startY:I

    .line 2044
    iput p4, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;->deltaY:I

    .line 2047
    :cond_1
    return-object v0
.end method

.method private getTranslateItemAnimation(Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;J)Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;
    .locals 5
    .parameter "data"
    .parameter "startTime"

    .prologue
    .line 2171
    if-eqz p1, :cond_1

    .line 2172
    new-instance v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;-><init>(Z)V

    .line 2173
    .local v0, ta:Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;
    iget v1, p1, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;->startX:I

    iget v2, p1, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;->deltaX:I

    iget v3, p1, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;->startY:I

    iget v4, p1, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;->deltaY:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->translate(IIII)V

    .line 2174
    iget v1, p1, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;->duration:I

    if-nez v1, :cond_0

    .line 2175
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mAnimationDuration:I

    invoke-virtual {v0, p2, p3, v1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->start(JI)V

    .line 2179
    :goto_0
    iget v1, p1, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;->anchorX:I

    iget v2, p1, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;->anchorDeltaX:I

    iget v3, p1, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;->anchorY:I

    iget v4, p1, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;->anchorDeltaY:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->move(IIII)V

    .line 2180
    iget v1, p1, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;->delay:I

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->delay(I)V

    move-object v1, v0

    .line 2184
    .end local v0           #ta:Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;
    :goto_1
    return-object v1

    .line 2177
    .restart local v0       #ta:Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;
    :cond_0
    iget v1, p1, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;->duration:I

    invoke-virtual {v0, p2, p3, v1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->start(JI)V

    goto :goto_0

    .line 2184
    .end local v0           #ta:Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected addFloatingView(Landroid/view/View;)V
    .locals 3
    .parameter "child"

    .prologue
    .line 2225
    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 2227
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mFloatingViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2228
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mFloatingViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2229
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 1210
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mShowAnimationOnDataChange:Z

    if-eqz v0, :cond_1

    .line 1211
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mDrawDeleteViewFront:Z

    if-nez v0, :cond_0

    .line 1212
    invoke-direct {p0, p1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->drawDeleteView(Landroid/graphics/Canvas;)V

    .line 1214
    :cond_0
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mDrawInsertViewFront:Z

    if-nez v0, :cond_1

    .line 1215
    invoke-direct {p0, p1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->drawInsertView(Landroid/graphics/Canvas;)V

    .line 1218
    :cond_1
    invoke-super {p0, p1}, Lcom/nemustech/tiffany/widget/TFListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1219
    invoke-direct {p0, p1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->drawRetainView(Landroid/graphics/Canvas;)V

    .line 1221
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mShowAnimationOnDataChange:Z

    if-eqz v0, :cond_3

    .line 1222
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mDrawDeleteViewFront:Z

    if-eqz v0, :cond_2

    .line 1223
    invoke-direct {p0, p1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->drawDeleteView(Landroid/graphics/Canvas;)V

    .line 1225
    :cond_2
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mDrawInsertViewFront:Z

    if-eqz v0, :cond_3

    .line 1226
    invoke-direct {p0, p1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->drawInsertView(Landroid/graphics/Canvas;)V

    .line 1228
    :cond_3
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 8
    .parameter "canvas"
    .parameter "child"
    .parameter "drawingTime"

    .prologue
    const/4 v7, 0x0

    .line 1103
    invoke-virtual {p0, p2}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 1104
    .local v1, index:I
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->getFirstVisiblePosition()I

    move-result v5

    add-int v2, v1, v5

    .line 1106
    .local v2, pos:I
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mItemAnimator:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;

    invoke-virtual {v5, v2}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->getItemAnimation(I)Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;

    move-result-object v0

    .line 1108
    .local v0, ia:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;
    if-eqz v0, :cond_2

    .line 1109
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mIdsOffset:[I

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mIdsOffset:[I

    aget v5, v5, v2

    const v6, 0x7fffffff

    if-ne v5, v6, :cond_0

    move v5, v7

    .line 1130
    :goto_0
    return v5

    .line 1113
    :cond_0
    invoke-virtual {v0}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;->getType()I

    move-result v5

    if-nez v5, :cond_1

    .line 1115
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 1118
    .local v4, save:I
    invoke-virtual {v0, p1, p2}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;->draw(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 1119
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->onPostDrawChild(Landroid/graphics/Canvas;Landroid/view/View;J)V

    .line 1120
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    move v5, v7

    .line 1121
    goto :goto_0

    .line 1123
    .end local v4           #save:I
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;->draw(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 1124
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->onPostDrawChild(Landroid/graphics/Canvas;Landroid/view/View;J)V

    move v5, v7

    .line 1125
    goto :goto_0

    .line 1128
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Lcom/nemustech/tiffany/widget/TFListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v3

    .line 1129
    .local v3, retVal:Z
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->onPostDrawChild(Landroid/graphics/Canvas;Landroid/view/View;J)V

    move v5, v3

    .line 1130
    goto :goto_0
.end method

.method protected drawRetainChild(Landroid/graphics/Canvas;ILandroid/view/View;J)Z
    .locals 4
    .parameter "canvas"
    .parameter "position"
    .parameter "child"
    .parameter "drawingTime"

    .prologue
    const/4 v3, 0x0

    .line 1136
    if-eqz p3, :cond_1

    .line 1137
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mItemAnimator:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;

    invoke-virtual {v2, p2}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->getRetainItemAnimation(I)Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;

    move-result-object v0

    .line 1139
    .local v0, ia:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;
    if-eqz v0, :cond_1

    .line 1140
    invoke-virtual {v0}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;->getType()I

    move-result v2

    if-nez v2, :cond_0

    .line 1142
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 1145
    .local v1, save:I
    invoke-virtual {v0, p1, p3}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;->draw(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 1146
    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->onPostDrawChild(Landroid/graphics/Canvas;Landroid/view/View;J)V

    .line 1147
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    move v2, v3

    .line 1158
    .end local v0           #ia:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;
    .end local v1           #save:I
    :goto_0
    return v2

    .line 1150
    .restart local v0       #ia:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;
    :cond_0
    invoke-virtual {v0, p1, p3}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;->draw(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 1151
    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->onPostDrawChild(Landroid/graphics/Canvas;Landroid/view/View;J)V

    move v2, v3

    .line 1152
    goto :goto_0

    .end local v0           #ia:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;
    :cond_1
    move v2, v3

    .line 1158
    goto :goto_0
.end method

.method public getCustomItemDeleteDrawCallback()Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemDeleteDrawCallback;
    .locals 1

    .prologue
    .line 572
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mCustomItemDeleteDrawCallback:Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemDeleteDrawCallback;

    return-object v0
.end method

.method public getCustomItemInsertDrawCallback()Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemInsertDrawCallback;
    .locals 1

    .prologue
    .line 534
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mCustomItemInsertDrawCallback:Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemInsertDrawCallback;

    return-object v0
.end method

.method protected getFloatingViewCount()I
    .locals 1

    .prologue
    .line 1057
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mFloatingViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemAnimationDuration()I
    .locals 1

    .prologue
    .line 1053
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mAnimationDuration:I

    return v0
.end method

.method public getItemAnimationListener()Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationListener;
    .locals 1

    .prologue
    .line 612
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mItemAnimationListener:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationListener;

    return-object v0
.end method

.method public getItemAnimationType()I
    .locals 1

    .prologue
    .line 986
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mDefaultAnimationType:I

    return v0
.end method

.method public isAnimationOnDataChangeEnabled()Z
    .locals 1

    .prologue
    .line 930
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mShowAnimationOnDataChange:Z

    return v0
.end method

.method public isDrawDeleteAnimationFront()Z
    .locals 1

    .prologue
    .line 948
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mDrawDeleteViewFront:Z

    return v0
.end method

.method public isDrawInsertAnimationFront()Z
    .locals 1

    .prologue
    .line 966
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mDrawInsertViewFront:Z

    return v0
.end method

.method protected layoutChildren()V
    .locals 59

    .prologue
    .line 1318
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mDataChanged:Z

    move v14, v0

    .line 1320
    .local v14, dataChanged:Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mFirstPosition:I

    move/from16 v55, v0

    move/from16 v0, v55

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mPrevFirstPosition:I

    .line 1322
    invoke-super/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->layoutChildren()V

    .line 1324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mCurIds:[J

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mPrevIds:[J

    .line 1326
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mShowAnimationOnDataChange:Z

    move/from16 v55, v0

    if-eqz v55, :cond_56

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v55, v0

    if-eqz v55, :cond_56

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v55, v0

    invoke-interface/range {v55 .. v55}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v55

    if-eqz v55, :cond_56

    .line 1327
    if-nez v14, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mCurIds:[J

    move-object/from16 v55, v0

    if-nez v55, :cond_1

    .line 1328
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v55, v0

    invoke-interface/range {v55 .. v55}, Landroid/widget/ListAdapter;->getCount()I

    move-result v15

    .line 1329
    .local v15, dataCount:I
    move v0, v15

    new-array v0, v0, [J

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mCurIds:[J

    .line 1331
    const/16 v27, 0x0

    .local v27, i:I
    :goto_0
    move/from16 v0, v27

    move v1, v15

    if-ge v0, v1, :cond_1

    .line 1332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mCurIds:[J

    move-object/from16 v55, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v56

    aput-wide v56, v55, v27

    .line 1331
    add-int/lit8 v27, v27, 0x1

    goto :goto_0

    .line 1336
    .end local v15           #dataCount:I
    .end local v27           #i:I
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->getFirstVisiblePosition()I

    move-result v24

    .line 1337
    .local v24, first:I
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->getChildCount()I

    move-result v10

    .line 1338
    .local v10, childCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mPrevFirstPosition:I

    move/from16 v43, v0

    .line 1340
    .local v43, prevFirst:I
    if-eqz v14, :cond_54

    .line 1341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mPrevIds:[J

    move-object/from16 v55, v0

    if-eqz v55, :cond_54

    .line 1342
    new-instance v8, Landroid/util/SparseArray;

    invoke-direct {v8}, Landroid/util/SparseArray;-><init>()V

    .line 1343
    .local v8, animation:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;>;"
    new-instance v45, Landroid/util/SparseArray;

    invoke-direct/range {v45 .. v45}, Landroid/util/SparseArray;-><init>()V

    .line 1344
    .local v45, retainAnimation:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;>;"
    new-instance v18, Landroid/util/SparseArray;

    invoke-direct/range {v18 .. v18}, Landroid/util/SparseArray;-><init>()V

    .line 1347
    .local v18, deleteAnimation:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;>;"
    invoke-direct/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->calculateItemPositionOffset()V

    .line 1350
    sub-int v25, v24, v43

    .line 1351
    .local v25, firstPositionOffset:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->DEBUG_ANIMATION:Z

    move/from16 v55, v0

    if-eqz v55, :cond_2

    .line 1352
    const-string v55, "TFAnimatedListView.ItemAnimation"

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string v57, "firstPositionOffset is "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-static/range {v55 .. v56}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1354
    :cond_2
    move/from16 v27, v24

    .restart local v27       #i:I
    :goto_1
    add-int v55, v24, v10

    move/from16 v0, v27

    move/from16 v1, v55

    if-ge v0, v1, :cond_13

    .line 1355
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mIdsOffset:[I

    move-object/from16 v55, v0

    aget v55, v55, v27

    const v56, 0x7fffffff

    move/from16 v0, v55

    move/from16 v1, v56

    if-ne v0, v1, :cond_4

    .line 1357
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->getInsertItemAnimationData(I)Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;

    move-result-object v55

    move-object v0, v8

    move/from16 v1, v27

    move-object/from16 v2, v55

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1359
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->DEBUG_ANIMATION:Z

    move/from16 v55, v0

    if-eqz v55, :cond_3

    .line 1360
    const-string v55, "TFAnimatedListView.ItemAnimation"

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string v57, "add insert animation at "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-static/range {v55 .. v56}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1354
    :cond_3
    :goto_2
    add-int/lit8 v27, v27, 0x1

    goto :goto_1

    .line 1363
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mIdsOffset:[I

    move-object/from16 v55, v0

    aget v55, v55, v27

    sub-int v37, v55, v25

    .line 1364
    .local v37, offset:I
    const/4 v5, 0x0

    .line 1365
    .local v5, HEIGHT:I
    if-lez v37, :cond_b

    .line 1367
    if-nez v25, :cond_7

    .line 1369
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mStackFromBottom:Z

    move/from16 v55, v0

    if-eqz v55, :cond_6

    .line 1370
    move/from16 v53, v27

    .local v53, x:I
    :goto_3
    add-int v55, v24, v10

    move/from16 v0, v53

    move/from16 v1, v55

    if-ge v0, v1, :cond_7

    .line 1371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mIdsOffset:[I

    move-object/from16 v55, v0

    aget v55, v55, v53

    const v56, 0x7fffffff

    move/from16 v0, v55

    move/from16 v1, v56

    if-ne v0, v1, :cond_5

    .line 1372
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mDividerHeight:I

    move/from16 v55, v0

    sub-int v56, v53, v24

    move-object/from16 v0, p0

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->getChildAt(I)Landroid/view/View;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Landroid/view/View;->getHeight()I

    move-result v56

    add-int v55, v55, v56

    sub-int v5, v5, v55

    .line 1370
    :cond_5
    add-int/lit8 v53, v53, 0x1

    goto :goto_3

    .line 1375
    .end local v53           #x:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;

    move-object/from16 v55, v0

    sub-int v56, v27, v37

    invoke-virtual/range {v55 .. v56}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->getShouldRetainView(I)Landroid/view/View;

    move-result-object v44

    .line 1376
    .local v44, prevView:Landroid/view/View;
    if-eqz v44, :cond_9

    .line 1377
    sub-int v55, v27, v24

    move-object/from16 v0, p0

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->getChildAt(I)Landroid/view/View;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Landroid/view/View;->getTop()I

    move-result v55

    invoke-virtual/range {v44 .. v44}, Landroid/view/View;->getTop()I

    move-result v56

    sub-int v55, v55, v56

    add-int v5, v5, v55

    .line 1430
    .end local v44           #prevView:Landroid/view/View;
    :cond_7
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->DEBUG_ANIMATION:Z

    move/from16 v55, v0

    if-eqz v55, :cond_8

    .line 1431
    const-string v55, "TFAnimatedListView.ItemAnimation"

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string v57, "Item at "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string v57, " has offset : "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string v57, ", HEIGHT : "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-static/range {v55 .. v56}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1433
    :cond_8
    move-object/from16 v0, p0

    move v1, v5

    invoke-direct {v0, v1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->getItemAnimationData(I)Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;

    move-result-object v55

    move-object v0, v8

    move/from16 v1, v27

    move-object/from16 v2, v55

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_2

    .line 1379
    .restart local v44       #prevView:Landroid/view/View;
    :cond_9
    move/from16 v53, v24

    .restart local v53       #x:I
    :goto_5
    move/from16 v0, v53

    move/from16 v1, v27

    if-ge v0, v1, :cond_7

    .line 1380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mIdsOffset:[I

    move-object/from16 v55, v0

    aget v55, v55, v53

    const v56, 0x7fffffff

    move/from16 v0, v55

    move/from16 v1, v56

    if-ne v0, v1, :cond_a

    .line 1381
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mDividerHeight:I

    move/from16 v55, v0

    sub-int v56, v53, v24

    move-object/from16 v0, p0

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->getChildAt(I)Landroid/view/View;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Landroid/view/View;->getHeight()I

    move-result v56

    add-int v55, v55, v56

    add-int v5, v5, v55

    .line 1379
    :cond_a
    add-int/lit8 v53, v53, 0x1

    goto :goto_5

    .line 1386
    .end local v44           #prevView:Landroid/view/View;
    .end local v53           #x:I
    :cond_b
    if-gez v37, :cond_7

    .line 1388
    if-nez v25, :cond_11

    .line 1390
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mStackFromBottom:Z

    move/from16 v55, v0

    if-eqz v55, :cond_d

    .line 1391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mDeleteItems:Ljava/util/ArrayList;

    move-object/from16 v55, v0

    invoke-virtual/range {v55 .. v55}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v28

    .local v28, i$:Ljava/util/Iterator;
    :cond_c
    :goto_6
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v55

    if-eqz v55, :cond_7

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Ljava/lang/Integer;

    .line 1392
    .local v41, position:Ljava/lang/Integer;
    invoke-virtual/range {v41 .. v41}, Ljava/lang/Integer;->intValue()I

    move-result v40

    .line 1393
    .local v40, pos:I
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->getLastVisiblePosition()I

    move-result v55

    move/from16 v0, v40

    move/from16 v1, v55

    if-gt v0, v1, :cond_c

    move/from16 v0, v40

    move/from16 v1, v27

    if-le v0, v1, :cond_c

    .line 1394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->getShouldRetainView(I)Landroid/view/View;

    move-result-object v47

    .line 1395
    .local v47, retainView:Landroid/view/View;
    if-eqz v47, :cond_c

    .line 1396
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mDividerHeight:I

    move/from16 v55, v0

    invoke-virtual/range {v47 .. v47}, Landroid/view/View;->getHeight()I

    move-result v56

    add-int v55, v55, v56

    add-int v5, v5, v55

    goto :goto_6

    .line 1400
    .end local v28           #i$:Ljava/util/Iterator;
    .end local v40           #pos:I
    .end local v41           #position:Ljava/lang/Integer;
    .end local v47           #retainView:Landroid/view/View;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;

    move-object/from16 v55, v0

    sub-int v56, v27, v37

    invoke-virtual/range {v55 .. v56}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->getShouldRetainView(I)Landroid/view/View;

    move-result-object v44

    .line 1401
    .restart local v44       #prevView:Landroid/view/View;
    if-eqz v44, :cond_e

    .line 1402
    sub-int v55, v27, v24

    move-object/from16 v0, p0

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->getChildAt(I)Landroid/view/View;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Landroid/view/View;->getTop()I

    move-result v55

    invoke-virtual/range {v44 .. v44}, Landroid/view/View;->getTop()I

    move-result v56

    sub-int v55, v55, v56

    add-int v5, v5, v55

    goto/16 :goto_4

    .line 1404
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mDeleteItems:Ljava/util/ArrayList;

    move-object/from16 v55, v0

    if-eqz v55, :cond_7

    .line 1405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->getShouldRetainView(I)Landroid/view/View;

    move-result-object v51

    .line 1406
    .local v51, v:Landroid/view/View;
    const/16 v55, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->getChildAt(I)Landroid/view/View;

    move-result-object v52

    .line 1407
    .local v52, v2:Landroid/view/View;
    if-eqz v51, :cond_f

    if-eqz v52, :cond_f

    .line 1408
    invoke-virtual/range {v52 .. v52}, Landroid/view/View;->getTop()I

    move-result v55

    invoke-virtual/range {v51 .. v51}, Landroid/view/View;->getTop()I

    move-result v56

    sub-int v55, v55, v56

    add-int v5, v5, v55

    .line 1410
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mDeleteItems:Ljava/util/ArrayList;

    move-object/from16 v55, v0

    invoke-virtual/range {v55 .. v55}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v28

    .restart local v28       #i$:Ljava/util/Iterator;
    :cond_10
    :goto_7
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v55

    if-eqz v55, :cond_7

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Ljava/lang/Integer;

    .line 1411
    .restart local v41       #position:Ljava/lang/Integer;
    invoke-virtual/range {v41 .. v41}, Ljava/lang/Integer;->intValue()I

    move-result v40

    .line 1412
    .restart local v40       #pos:I
    move/from16 v0, v40

    move/from16 v1, v24

    if-lt v0, v1, :cond_10

    sub-int v55, v27, v37

    move/from16 v0, v40

    move/from16 v1, v55

    if-ge v0, v1, :cond_10

    .line 1413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->getShouldRetainView(I)Landroid/view/View;

    move-result-object v47

    .line 1414
    .restart local v47       #retainView:Landroid/view/View;
    if-eqz v47, :cond_10

    .line 1415
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mDividerHeight:I

    move/from16 v55, v0

    invoke-virtual/range {v47 .. v47}, Landroid/view/View;->getHeight()I

    move-result v56

    add-int v55, v55, v56

    sub-int v5, v5, v55

    goto :goto_7

    .line 1423
    .end local v28           #i$:Ljava/util/Iterator;
    .end local v40           #pos:I
    .end local v41           #position:Ljava/lang/Integer;
    .end local v44           #prevView:Landroid/view/View;
    .end local v47           #retainView:Landroid/view/View;
    .end local v51           #v:Landroid/view/View;
    .end local v52           #v2:Landroid/view/View;
    :cond_11
    move/from16 v53, v27

    .restart local v53       #x:I
    :goto_8
    add-int v55, v24, v10

    move/from16 v0, v53

    move/from16 v1, v55

    if-ge v0, v1, :cond_7

    .line 1424
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mIdsOffset:[I

    move-object/from16 v55, v0

    aget v55, v55, v53

    const v56, 0x7fffffff

    move/from16 v0, v55

    move/from16 v1, v56

    if-ne v0, v1, :cond_12

    .line 1425
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mDividerHeight:I

    move/from16 v55, v0

    sub-int v56, v53, v24

    move-object/from16 v0, p0

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->getChildAt(I)Landroid/view/View;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Landroid/view/View;->getHeight()I

    move-result v56

    add-int v55, v55, v56

    sub-int v5, v5, v55

    .line 1423
    :cond_12
    add-int/lit8 v53, v53, 0x1

    goto :goto_8

    .line 1438
    .end local v5           #HEIGHT:I
    .end local v37           #offset:I
    .end local v53           #x:I
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;

    move-object/from16 v55, v0

    invoke-virtual/range {v55 .. v55}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->getRetainViewPositions()[Ljava/lang/Object;

    move-result-object v36

    .line 1439
    .local v36, list:[Ljava/lang/Object;
    if-eqz v36, :cond_21

    .line 1440
    move-object/from16 v9, v36

    .local v9, arr$:[Ljava/lang/Object;
    move-object v0, v9

    array-length v0, v0

    move/from16 v35, v0

    .local v35, len$:I
    const/16 v28, 0x0

    .local v28, i$:I
    :goto_9
    move/from16 v0, v28

    move/from16 v1, v35

    if-ge v0, v1, :cond_1a

    aget-object v31, v9, v28

    .line 1441
    .local v31, item:Ljava/lang/Object;
    invoke-virtual/range {v31 .. v31}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v55

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v46

    .line 1442
    .local v46, retainPos:I
    const/16 v27, 0x0

    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mCurIds:[J

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    array-length v0, v0

    move/from16 v55, v0

    move/from16 v0, v27

    move/from16 v1, v55

    if-ge v0, v1, :cond_18

    .line 1443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mPrevIds:[J

    move-object/from16 v55, v0

    aget-wide v55, v55, v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mCurIds:[J

    move-object/from16 v57, v0

    aget-wide v57, v57, v27

    cmp-long v55, v55, v57

    if-nez v55, :cond_19

    .line 1445
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->DEBUG_ANIMATION:Z

    move/from16 v55, v0

    if-eqz v55, :cond_14

    .line 1446
    const-string v55, "TFAnimatedListView.ItemAnimation"

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string v57, "retainView["

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string v57, "] == mCurIds["

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string v57, "] : "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mCurIds:[J

    move-object/from16 v57, v0

    aget-wide v57, v57, v27

    invoke-virtual/range {v56 .. v58}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string v57, " (current window => "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string v57, " to "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    add-int v57, v24, v10

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string v57, ")"

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-static/range {v55 .. v56}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1449
    :cond_14
    add-int v55, v24, v10

    move/from16 v0, v27

    move/from16 v1, v55

    if-lt v0, v1, :cond_18

    .line 1451
    const/4 v5, 0x0

    .line 1452
    .restart local v5       #HEIGHT:I
    move/from16 v32, v24

    .local v32, j:I
    :goto_b
    add-int v55, v24, v10

    move/from16 v0, v32

    move/from16 v1, v55

    if-ge v0, v1, :cond_16

    .line 1453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mIdsOffset:[I

    move-object/from16 v55, v0

    aget v55, v55, v32

    const v56, 0x7fffffff

    move/from16 v0, v55

    move/from16 v1, v56

    if-ne v0, v1, :cond_15

    .line 1454
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mDividerHeight:I

    move/from16 v55, v0

    sub-int v56, v32, v24

    move-object/from16 v0, p0

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->getChildAt(I)Landroid/view/View;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Landroid/view/View;->getHeight()I

    move-result v56

    add-int v55, v55, v56

    add-int v5, v5, v55

    .line 1452
    :cond_15
    add-int/lit8 v32, v32, 0x1

    goto :goto_b

    .line 1457
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->DEBUG_ANIMATION:Z

    move/from16 v55, v0

    if-eqz v55, :cond_17

    .line 1458
    const-string v55, "TFAnimatedListView.ItemAnimation"

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string v57, "retainPos : "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string v57, " item HEIGHT = "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-static/range {v55 .. v56}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1460
    :cond_17
    if-eqz v5, :cond_18

    .line 1461
    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v57, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v55

    move/from16 v2, v56

    move/from16 v3, v57

    move v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->getRetainItemAnimationData(IIII)Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;

    move-result-object v55

    move-object/from16 v0, v45

    move/from16 v1, v46

    move-object/from16 v2, v55

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1440
    .end local v5           #HEIGHT:I
    .end local v32           #j:I
    :cond_18
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_9

    .line 1442
    :cond_19
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_a

    .line 1468
    .end local v31           #item:Ljava/lang/Object;
    .end local v46           #retainPos:I
    :cond_1a
    if-eqz v25, :cond_21

    .line 1469
    move-object/from16 v9, v36

    move-object v0, v9

    array-length v0, v0

    move/from16 v35, v0

    const/16 v28, 0x0

    :goto_c
    move/from16 v0, v28

    move/from16 v1, v35

    if-ge v0, v1, :cond_21

    aget-object v31, v9, v28

    .line 1470
    .restart local v31       #item:Ljava/lang/Object;
    invoke-virtual/range {v31 .. v31}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v55

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v46

    .line 1471
    .restart local v46       #retainPos:I
    const/16 v22, 0x0

    .line 1474
    .local v22, exist:Z
    move/from16 v27, v24

    :goto_d
    add-int v55, v24, v10

    move/from16 v0, v27

    move/from16 v1, v55

    if-ge v0, v1, :cond_1b

    .line 1475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mPrevIds:[J

    move-object/from16 v55, v0

    aget-wide v55, v55, v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mCurIds:[J

    move-object/from16 v57, v0

    aget-wide v57, v57, v27

    cmp-long v55, v55, v57

    if-nez v55, :cond_1d

    .line 1476
    const/16 v22, 0x1

    .line 1481
    :cond_1b
    move/from16 v0, v46

    move/from16 v1, v24

    if-ge v0, v1, :cond_20

    if-nez v22, :cond_20

    .line 1482
    const/4 v5, 0x0

    .line 1483
    .restart local v5       #HEIGHT:I
    move/from16 v53, v46

    .restart local v53       #x:I
    :goto_e
    add-int v55, v24, v10

    move/from16 v0, v53

    move/from16 v1, v55

    if-ge v0, v1, :cond_1e

    .line 1484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mIdsOffset:[I

    move-object/from16 v55, v0

    aget v55, v55, v53

    const v56, 0x7fffffff

    move/from16 v0, v55

    move/from16 v1, v56

    if-ne v0, v1, :cond_1c

    .line 1485
    sub-int v55, v53, v24

    move-object/from16 v0, p0

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 1486
    .local v11, currentView:Landroid/view/View;
    if-eqz v11, :cond_1c

    .line 1487
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mDividerHeight:I

    move/from16 v55, v0

    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v56

    add-int v55, v55, v56

    sub-int v5, v5, v55

    .line 1483
    .end local v11           #currentView:Landroid/view/View;
    :cond_1c
    add-int/lit8 v53, v53, 0x1

    goto :goto_e

    .line 1474
    .end local v5           #HEIGHT:I
    .end local v53           #x:I
    :cond_1d
    add-int/lit8 v27, v27, 0x1

    goto :goto_d

    .line 1491
    .restart local v5       #HEIGHT:I
    .restart local v53       #x:I
    :cond_1e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->DEBUG_ANIMATION:Z

    move/from16 v55, v0

    if-eqz v55, :cond_1f

    .line 1492
    const-string v55, "TFAnimatedListView.ItemAnimation"

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string v57, "firstPositionOffset : "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string v57, " retainPos : "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string v57, " item HEIGHT = "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-static/range {v55 .. v56}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1495
    :cond_1f
    if-eqz v5, :cond_20

    .line 1496
    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v57, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v55

    move/from16 v2, v56

    move/from16 v3, v57

    move v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->getRetainItemAnimationData(IIII)Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;

    move-result-object v55

    move-object/from16 v0, v45

    move/from16 v1, v46

    move-object/from16 v2, v55

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1469
    .end local v5           #HEIGHT:I
    .end local v53           #x:I
    :cond_20
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_c

    .line 1503
    .end local v9           #arr$:[Ljava/lang/Object;
    .end local v22           #exist:Z
    .end local v28           #i$:I
    .end local v31           #item:Ljava/lang/Object;
    .end local v35           #len$:I
    .end local v46           #retainPos:I
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mDeleteItems:Ljava/util/ArrayList;

    move-object/from16 v55, v0

    if-eqz v55, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mDeleteItems:Ljava/util/ArrayList;

    move-object/from16 v55, v0

    invoke-virtual/range {v55 .. v55}, Ljava/util/ArrayList;->size()I

    move-result v55

    if-lez v55, :cond_23

    .line 1504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mDeleteItems:Ljava/util/ArrayList;

    move-object/from16 v55, v0

    invoke-virtual/range {v55 .. v55}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v28

    .local v28, i$:Ljava/util/Iterator;
    :cond_22
    :goto_f
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v55

    if-eqz v55, :cond_23

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Ljava/lang/Integer;

    .line 1505
    .restart local v41       #position:Ljava/lang/Integer;
    invoke-virtual/range {v41 .. v41}, Ljava/lang/Integer;->intValue()I

    move-result v40

    .line 1506
    .restart local v40       #pos:I
    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->getDeleteAnimationData(I)Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;

    move-result-object v55

    move-object/from16 v0, v18

    move/from16 v1, v40

    move-object/from16 v2, v55

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1508
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->DEBUG_ANIMATION:Z

    move/from16 v55, v0

    if-eqz v55, :cond_22

    .line 1509
    const-string v55, "TFAnimatedListView.ItemAnimation"

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string v57, "delete animation added at "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-static/range {v55 .. v56}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 1515
    .end local v28           #i$:Ljava/util/Iterator;
    .end local v40           #pos:I
    .end local v41           #position:Ljava/lang/Integer;
    :cond_23
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mStackFromBottom:Z

    move/from16 v55, v0

    if-eqz v55, :cond_27

    .line 1516
    if-nez v25, :cond_26

    .line 1517
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->DEBUG_ANIMATION:Z

    move/from16 v55, v0

    if-eqz v55, :cond_24

    .line 1518
    const-string v55, "TFAnimatedListView.ItemAnimation"

    const-string v56, "[stack bottom] no first position changed"

    invoke-static/range {v55 .. v56}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1802
    :cond_24
    :goto_10
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v49

    .line 1805
    .local v49, time:J
    const/16 v27, 0x0

    :goto_11
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v55

    move/from16 v0, v27

    move/from16 v1, v55

    if-ge v0, v1, :cond_4f

    .line 1806
    move-object v0, v8

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v34

    .line 1807
    .local v34, key:I
    const/16 v55, 0x0

    move-object v0, v8

    move/from16 v1, v34

    move-object/from16 v2, v55

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;

    .line 1808
    .local v13, data:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;
    if-eqz v13, :cond_25

    .line 1809
    move-object v0, v13

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;->type:I

    move/from16 v55, v0

    packed-switch v55, :pswitch_data_0

    .line 1805
    :cond_25
    :goto_12
    add-int/lit8 v27, v27, 0x1

    goto :goto_11

    .line 1520
    .end local v13           #data:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;
    .end local v34           #key:I
    .end local v49           #time:J
    :cond_26
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->DEBUG_ANIMATION:Z

    move/from16 v55, v0

    if-eqz v55, :cond_24

    .line 1521
    const-string v55, "TFAnimatedListView.ItemAnimation"

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string v57, "[stack bottom] first position changed as "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-static/range {v55 .. v56}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 1524
    :cond_27
    if-nez v25, :cond_2c

    .line 1525
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->getShouldRetainView(I)Landroid/view/View;

    move-result-object v51

    .line 1526
    .restart local v51       #v:Landroid/view/View;
    const/16 v55, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->getChildAt(I)Landroid/view/View;

    move-result-object v52

    .line 1527
    .restart local v52       #v2:Landroid/view/View;
    if-eqz v51, :cond_24

    if-eqz v52, :cond_24

    .line 1528
    invoke-virtual/range {v52 .. v52}, Landroid/view/View;->getTop()I

    move-result v55

    invoke-virtual/range {v51 .. v51}, Landroid/view/View;->getTop()I

    move-result v56

    sub-int v38, v55, v56

    .line 1529
    .local v38, offsetY:I
    if-eqz v38, :cond_24

    .line 1531
    move/from16 v33, v24

    .local v33, k:I
    :goto_13
    add-int v55, v24, v10

    move/from16 v0, v33

    move/from16 v1, v55

    if-ge v0, v1, :cond_2a

    .line 1532
    const/16 v55, 0x0

    move-object v0, v8

    move/from16 v1, v33

    move-object/from16 v2, v55

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;

    .line 1533
    .restart local v13       #data:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;
    if-nez v13, :cond_29

    .line 1534
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->DEBUG_ANIMATION:Z

    move/from16 v55, v0

    if-eqz v55, :cond_28

    .line 1535
    const-string v55, "TFAnimatedListView.ItemAnimation"

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string v57, "no first position changed but offset Y slide as "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string v57, " at "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-static/range {v55 .. v56}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1537
    :cond_28
    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->getItemAnimationData(I)Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;

    move-result-object v55

    move-object v0, v8

    move/from16 v1, v33

    move-object/from16 v2, v55

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1531
    :cond_29
    add-int/lit8 v33, v33, 0x1

    goto :goto_13

    .line 1546
    .end local v13           #data:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;
    :cond_2a
    const/16 v33, 0x0

    :goto_14
    invoke-virtual/range {v18 .. v18}, Landroid/util/SparseArray;->size()I

    move-result v55

    move/from16 v0, v33

    move/from16 v1, v55

    if-ge v0, v1, :cond_24

    .line 1547
    move-object/from16 v0, v18

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v17

    .line 1548
    .local v17, delPos:I
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;

    .line 1550
    .local v16, delData:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mDefaultAnimationType:I

    move/from16 v55, v0

    packed-switch v55, :pswitch_data_1

    .line 1546
    :goto_15
    add-int/lit8 v33, v33, 0x1

    goto :goto_14

    .line 1554
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->DEBUG_ANIMATION:Z

    move/from16 v55, v0

    if-eqz v55, :cond_2b

    .line 1555
    const-string v55, "TFAnimatedListView.ItemAnimation"

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string v57, "firstPositionOffset don\'t changed.\nanimation type ("

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mDefaultAnimationType:I

    move/from16 v57, v0

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string v57, ") "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string v57, "have anchor move Y as "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-static/range {v55 .. v56}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1559
    :cond_2b
    move/from16 v0, v38

    move-object/from16 v1, v16

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;->anchorDeltaY:I

    goto :goto_15

    .line 1566
    .end local v16           #delData:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;
    .end local v17           #delPos:I
    .end local v33           #k:I
    .end local v38           #offsetY:I
    .end local v51           #v:Landroid/view/View;
    .end local v52           #v2:Landroid/view/View;
    :cond_2c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->DEBUG_ANIMATION:Z

    move/from16 v55, v0

    if-eqz v55, :cond_2d

    .line 1567
    const-string v55, "TFAnimatedListView.ItemAnimation"

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string v57, "first position offset changed as "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-static/range {v55 .. v56}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1570
    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->getShouldRetainView(I)Landroid/view/View;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Landroid/view/View;->getTop()I

    move-result v55

    const/16 v56, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->getChildAt(I)Landroid/view/View;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Landroid/view/View;->getTop()I

    move-result v56

    sub-int v21, v55, v56

    .line 1572
    .local v21, distortion:I
    move/from16 v54, v24

    .local v54, z:I
    :goto_16
    add-int v55, v24, v10

    move/from16 v0, v54

    move/from16 v1, v55

    if-ge v0, v1, :cond_37

    .line 1573
    if-eqz v36, :cond_36

    .line 1574
    const/16 v26, 0x0

    .line 1577
    .local v26, found:Z
    move-object/from16 v9, v36

    .restart local v9       #arr$:[Ljava/lang/Object;
    move-object v0, v9

    array-length v0, v0

    move/from16 v35, v0

    .restart local v35       #len$:I
    const/16 v28, 0x0

    .local v28, i$:I
    :goto_17
    move/from16 v0, v28

    move/from16 v1, v35

    if-ge v0, v1, :cond_2f

    aget-object v31, v9, v28

    .line 1578
    .restart local v31       #item:Ljava/lang/Object;
    invoke-virtual/range {v31 .. v31}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v55

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v46

    .line 1579
    .restart local v46       #retainPos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mPrevIds:[J

    move-object/from16 v55, v0

    aget-wide v55, v55, v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mCurIds:[J

    move-object/from16 v57, v0

    aget-wide v57, v57, v54

    cmp-long v55, v55, v57

    if-nez v55, :cond_31

    .line 1580
    const/16 v26, 0x1

    .line 1582
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->getShouldRetainView(I)Landroid/view/View;

    move-result-object v47

    .line 1583
    .restart local v47       #retainView:Landroid/view/View;
    sub-int v55, v54, v24

    move-object/from16 v0, p0

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 1584
    .restart local v11       #currentView:Landroid/view/View;
    if-eqz v47, :cond_2f

    if-eqz v11, :cond_2f

    .line 1585
    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v55

    invoke-virtual/range {v47 .. v47}, Landroid/view/View;->getTop()I

    move-result v56

    sub-int v48, v55, v56

    .line 1587
    .local v48, slideOffsetY:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->DEBUG_ANIMATION:Z

    move/from16 v55, v0

    if-eqz v55, :cond_2e

    .line 1588
    const-string v55, "TFAnimatedListView.ItemAnimation"

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string v57, "Item "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string v57, " was on screen. slideOffsetY : "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-static/range {v55 .. v56}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1590
    :cond_2e
    if-eqz v48, :cond_2f

    .line 1591
    move-object/from16 v0, p0

    move/from16 v1, v48

    invoke-direct {v0, v1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->getItemAnimationData(I)Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;

    move-result-object v55

    move-object v0, v8

    move/from16 v1, v54

    move-object/from16 v2, v55

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1597
    .end local v11           #currentView:Landroid/view/View;
    .end local v31           #item:Ljava/lang/Object;
    .end local v46           #retainPos:I
    .end local v47           #retainView:Landroid/view/View;
    .end local v48           #slideOffsetY:I
    :cond_2f
    if-nez v26, :cond_36

    .line 1599
    const/16 v37, 0x0

    .line 1600
    .restart local v37       #offset:I
    const/16 v53, 0x0

    .restart local v53       #x:I
    :goto_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mPrevIds:[J

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    array-length v0, v0

    move/from16 v55, v0

    move/from16 v0, v53

    move/from16 v1, v55

    if-ge v0, v1, :cond_30

    .line 1601
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mPrevIds:[J

    move-object/from16 v55, v0

    aget-wide v55, v55, v53

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mCurIds:[J

    move-object/from16 v57, v0

    aget-wide v57, v57, v54

    cmp-long v55, v55, v57

    if-nez v55, :cond_32

    .line 1602
    sub-int v55, v54, v24

    sub-int v56, v53, v43

    sub-int v37, v55, v56

    .line 1607
    :cond_30
    if-eqz v37, :cond_36

    .line 1608
    move/from16 v0, v21

    neg-int v0, v0

    move v5, v0

    .line 1609
    .restart local v5       #HEIGHT:I
    if-lez v37, :cond_33

    .line 1610
    const/16 v33, 0x0

    .restart local v33       #k:I
    :goto_19
    move v0, v10

    move/from16 v1, v37

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v55

    move/from16 v0, v33

    move/from16 v1, v55

    if-ge v0, v1, :cond_34

    .line 1611
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mDividerHeight:I

    move/from16 v55, v0

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->getChildAt(I)Landroid/view/View;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Landroid/view/View;->getHeight()I

    move-result v56

    add-int v55, v55, v56

    add-int v5, v5, v55

    .line 1610
    add-int/lit8 v33, v33, 0x1

    goto :goto_19

    .line 1577
    .end local v5           #HEIGHT:I
    .end local v33           #k:I
    .end local v37           #offset:I
    .end local v53           #x:I
    .restart local v31       #item:Ljava/lang/Object;
    .restart local v46       #retainPos:I
    :cond_31
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_17

    .line 1600
    .end local v31           #item:Ljava/lang/Object;
    .end local v46           #retainPos:I
    .restart local v37       #offset:I
    .restart local v53       #x:I
    :cond_32
    add-int/lit8 v53, v53, 0x1

    goto :goto_18

    .line 1613
    .restart local v5       #HEIGHT:I
    :cond_33
    const/16 v33, 0x0

    .restart local v33       #k:I
    :goto_1a
    move/from16 v0, v37

    neg-int v0, v0

    move/from16 v55, v0

    move v0, v10

    move/from16 v1, v55

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v55

    move/from16 v0, v33

    move/from16 v1, v55

    if-ge v0, v1, :cond_34

    .line 1614
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mDividerHeight:I

    move/from16 v55, v0

    const/16 v56, 0x1

    sub-int v56, v10, v56

    sub-int v56, v56, v33

    move-object/from16 v0, p0

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->getChildAt(I)Landroid/view/View;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Landroid/view/View;->getHeight()I

    move-result v56

    add-int v55, v55, v56

    sub-int v5, v5, v55

    .line 1613
    add-int/lit8 v33, v33, 0x1

    goto :goto_1a

    .line 1617
    :cond_34
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->DEBUG_ANIMATION:Z

    move/from16 v55, v0

    if-eqz v55, :cond_35

    .line 1618
    const-string v55, "TFAnimatedListView.ItemAnimation"

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string v57, "Item "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string v57, " was not on screen. HEIGHT : "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-static/range {v55 .. v56}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1620
    :cond_35
    if-eqz v5, :cond_36

    .line 1621
    move-object/from16 v0, p0

    move v1, v5

    invoke-direct {v0, v1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->getItemAnimationData(I)Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;

    move-result-object v55

    move-object v0, v8

    move/from16 v1, v54

    move-object/from16 v2, v55

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1572
    .end local v5           #HEIGHT:I
    .end local v9           #arr$:[Ljava/lang/Object;
    .end local v26           #found:Z
    .end local v28           #i$:I
    .end local v33           #k:I
    .end local v35           #len$:I
    .end local v37           #offset:I
    .end local v53           #x:I
    :cond_36
    add-int/lit8 v54, v54, 0x1

    goto/16 :goto_16

    .line 1628
    :cond_37
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mDefaultAnimationType:I

    move/from16 v55, v0

    packed-switch v55, :pswitch_data_2

    goto/16 :goto_10

    .line 1631
    :pswitch_1
    const/4 v12, 0x0

    .local v12, d:I
    :goto_1b
    invoke-virtual/range {v18 .. v18}, Landroid/util/SparseArray;->size()I

    move-result v55

    move v0, v12

    move/from16 v1, v55

    if-ge v0, v1, :cond_3d

    .line 1632
    move-object/from16 v0, v18

    move v1, v12

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v34

    .line 1633
    .restart local v34       #key:I
    const/16 v55, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v34

    move-object/from16 v2, v55

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;

    .line 1634
    .restart local v13       #data:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;
    if-eqz v13, :cond_3b

    .line 1635
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->getShouldRetainView(I)Landroid/view/View;

    move-result-object v47

    .line 1638
    .restart local v47       #retainView:Landroid/view/View;
    const/16 v55, 0x1

    sub-int v6, v34, v55

    .line 1639
    .local v6, anchorPos:I
    const/16 v55, 0x1

    sub-int v23, v34, v55

    .local v23, f:I
    :goto_1c
    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_38

    .line 1640
    const/16 v55, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v23

    move-object/from16 v2, v55

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v55

    if-eqz v55, :cond_38

    .line 1641
    add-int/lit8 v6, v6, -0x1

    .line 1639
    add-int/lit8 v23, v23, -0x1

    goto :goto_1c

    .line 1646
    :cond_38
    if-eqz v47, :cond_3a

    .line 1648
    sub-int v55, v6, v24

    move-object/from16 v0, p0

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1649
    .local v7, anchorView:Landroid/view/View;
    const/16 v42, 0x0

    .line 1650
    .local v42, prevAnchorView:Landroid/view/View;
    move/from16 v39, v43

    .local v39, p:I
    :goto_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mPrevIds:[J

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    array-length v0, v0

    move/from16 v55, v0

    move/from16 v0, v39

    move/from16 v1, v55

    if-ge v0, v1, :cond_39

    .line 1651
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mPrevIds:[J

    move-object/from16 v55, v0

    aget-wide v55, v55, v39

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mCurIds:[J

    move-object/from16 v57, v0

    aget-wide v57, v57, v6

    cmp-long v55, v55, v57

    if-nez v55, :cond_3c

    .line 1652
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->getShouldRetainView(I)Landroid/view/View;

    move-result-object v42

    .line 1657
    :cond_39
    if-eqz v7, :cond_3a

    if-eqz v42, :cond_3a

    .line 1658
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v55

    invoke-virtual/range {v42 .. v42}, Landroid/view/View;->getTop()I

    move-result v56

    sub-int v37, v55, v56

    .line 1659
    .restart local v37       #offset:I
    move/from16 v0, v37

    move-object v1, v13

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;->anchorDeltaY:I

    .line 1663
    .end local v7           #anchorView:Landroid/view/View;
    .end local v37           #offset:I
    .end local v39           #p:I
    .end local v42           #prevAnchorView:Landroid/view/View;
    :cond_3a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->DEBUG_ANIMATION:Z

    move/from16 v55, v0

    if-eqz v55, :cond_3b

    .line 1664
    const-string v55, "TFAnimatedListView.ItemAnimation"

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string v57, "[Type "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mDefaultAnimationType:I

    move/from16 v57, v0

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string v57, "] Delete item at "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string v57, " have offset Y to anchor View : "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object v0, v13

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;->anchorDeltaY:I

    move/from16 v57, v0

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-static/range {v55 .. v56}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1631
    .end local v6           #anchorPos:I
    .end local v23           #f:I
    .end local v47           #retainView:Landroid/view/View;
    :cond_3b
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1b

    .line 1650
    .restart local v6       #anchorPos:I
    .restart local v7       #anchorView:Landroid/view/View;
    .restart local v23       #f:I
    .restart local v39       #p:I
    .restart local v42       #prevAnchorView:Landroid/view/View;
    .restart local v47       #retainView:Landroid/view/View;
    :cond_3c
    add-int/lit8 v39, v39, 0x1

    goto/16 :goto_1d

    .line 1670
    .end local v6           #anchorPos:I
    .end local v7           #anchorView:Landroid/view/View;
    .end local v13           #data:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;
    .end local v23           #f:I
    .end local v34           #key:I
    .end local v39           #p:I
    .end local v42           #prevAnchorView:Landroid/view/View;
    .end local v47           #retainView:Landroid/view/View;
    :cond_3d
    const/4 v12, 0x0

    :goto_1e
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v55

    move v0, v12

    move/from16 v1, v55

    if-ge v0, v1, :cond_24

    .line 1671
    invoke-virtual {v8, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v34

    .line 1672
    .restart local v34       #key:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mIdsOffset:[I

    move-object/from16 v55, v0

    aget v55, v55, v34

    const v56, 0x7fffffff

    move/from16 v0, v55

    move/from16 v1, v56

    if-ne v0, v1, :cond_40

    .line 1673
    const/16 v55, 0x0

    move-object v0, v8

    move/from16 v1, v34

    move-object/from16 v2, v55

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;

    .line 1674
    .restart local v13       #data:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;
    if-eqz v13, :cond_40

    .line 1675
    if-lez v25, :cond_40

    .line 1676
    sub-int v55, v34, v24

    move-object/from16 v0, p0

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->getChildAt(I)Landroid/view/View;

    move-result-object v30

    .line 1677
    .local v30, insertView:Landroid/view/View;
    if-eqz v30, :cond_3f

    .line 1679
    const/16 v55, 0x1

    sub-int v6, v34, v55

    .line 1680
    .restart local v6       #anchorPos:I
    const/16 v55, 0x1

    sub-int v23, v34, v55

    .restart local v23       #f:I
    :goto_1f
    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_3e

    .line 1681
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mIdsOffset:[I

    move-object/from16 v55, v0

    aget v55, v55, v23

    const v56, 0x7fffffff

    move/from16 v0, v55

    move/from16 v1, v56

    if-ne v0, v1, :cond_3e

    .line 1682
    add-int/lit8 v6, v6, -0x1

    .line 1680
    add-int/lit8 v23, v23, -0x1

    goto :goto_1f

    .line 1688
    :cond_3e
    move v0, v6

    move/from16 v1, v24

    if-ge v0, v1, :cond_41

    .line 1689
    const/16 v55, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->getChildAt(I)Landroid/view/View;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Landroid/view/View;->getTop()I

    move-result v55

    move/from16 v0, v55

    neg-int v0, v0

    move/from16 v55, v0

    move/from16 v0, v55

    move-object v1, v13

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;->anchorDeltaY:I

    .line 1708
    .end local v6           #anchorPos:I
    .end local v23           #f:I
    :cond_3f
    :goto_20
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->DEBUG_ANIMATION:Z

    move/from16 v55, v0

    if-eqz v55, :cond_40

    .line 1709
    const-string v55, "TFAnimatedListView.ItemAnimation"

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string v57, "[Type "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mDefaultAnimationType:I

    move/from16 v57, v0

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string v57, "] Inserted item at "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string v57, " have offset Y to anchor View : "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object v0, v13

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;->anchorDeltaY:I

    move/from16 v57, v0

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-static/range {v55 .. v56}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1670
    .end local v13           #data:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;
    .end local v30           #insertView:Landroid/view/View;
    :cond_40
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1e

    .line 1691
    .restart local v6       #anchorPos:I
    .restart local v13       #data:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;
    .restart local v23       #f:I
    .restart local v30       #insertView:Landroid/view/View;
    :cond_41
    add-int/lit8 v55, v6, 0x1

    sub-int v55, v55, v24

    move-object/from16 v0, p0

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->getChildAt(I)Landroid/view/View;

    move-result-object v29

    .line 1692
    .local v29, insertBaseView:Landroid/view/View;
    const/4 v7, 0x0

    .line 1693
    .restart local v7       #anchorView:Landroid/view/View;
    move/from16 v51, v43

    .local v51, v:I
    :goto_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mPrevIds:[J

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    array-length v0, v0

    move/from16 v55, v0

    move/from16 v0, v51

    move/from16 v1, v55

    if-ge v0, v1, :cond_42

    .line 1694
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mPrevIds:[J

    move-object/from16 v55, v0

    aget-wide v55, v55, v51

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mCurIds:[J

    move-object/from16 v57, v0

    aget-wide v57, v57, v6

    cmp-long v55, v55, v57

    if-nez v55, :cond_43

    .line 1695
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->getShouldRetainView(I)Landroid/view/View;

    move-result-object v7

    .line 1700
    :cond_42
    if-eqz v7, :cond_3f

    if-eqz v29, :cond_3f

    .line 1701
    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getTop()I

    move-result v55

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v56

    sub-int v20, v55, v56

    .line 1702
    .local v20, delta:I
    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v55, v0

    move/from16 v0, v55

    move-object v1, v13

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;->anchorY:I

    .line 1703
    move/from16 v0, v20

    move-object v1, v13

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;->anchorDeltaY:I

    goto/16 :goto_20

    .line 1693
    .end local v20           #delta:I
    :cond_43
    add-int/lit8 v51, v51, 0x1

    goto :goto_21

    .line 1719
    .end local v6           #anchorPos:I
    .end local v7           #anchorView:Landroid/view/View;
    .end local v12           #d:I
    .end local v13           #data:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;
    .end local v23           #f:I
    .end local v29           #insertBaseView:Landroid/view/View;
    .end local v30           #insertView:Landroid/view/View;
    .end local v34           #key:I
    .end local v51           #v:I
    :pswitch_2
    const/4 v12, 0x0

    .restart local v12       #d:I
    :goto_22
    invoke-virtual/range {v18 .. v18}, Landroid/util/SparseArray;->size()I

    move-result v55

    move v0, v12

    move/from16 v1, v55

    if-ge v0, v1, :cond_48

    .line 1720
    move-object/from16 v0, v18

    move v1, v12

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v34

    .line 1721
    .restart local v34       #key:I
    const/16 v55, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v34

    move-object/from16 v2, v55

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;

    .line 1722
    .restart local v13       #data:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;
    if-eqz v13, :cond_46

    .line 1723
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->getShouldRetainView(I)Landroid/view/View;

    move-result-object v47

    .line 1724
    .restart local v47       #retainView:Landroid/view/View;
    if-eqz v47, :cond_45

    .line 1726
    const/16 v55, 0x1

    sub-int v6, v34, v55

    .line 1727
    .restart local v6       #anchorPos:I
    const/16 v55, 0x1

    sub-int v23, v34, v55

    .restart local v23       #f:I
    :goto_23
    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_44

    .line 1728
    const/16 v55, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v23

    move-object/from16 v2, v55

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v55

    if-eqz v55, :cond_44

    .line 1729
    add-int/lit8 v6, v6, -0x1

    .line 1727
    add-int/lit8 v23, v23, -0x1

    goto :goto_23

    .line 1735
    :cond_44
    move v0, v6

    move/from16 v1, v24

    if-ge v0, v1, :cond_47

    .line 1736
    invoke-virtual/range {v47 .. v47}, Landroid/view/View;->getTop()I

    move-result v55

    move/from16 v0, v55

    neg-int v0, v0

    move/from16 v55, v0

    move/from16 v0, v55

    move-object v1, v13

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;->anchorDeltaY:I

    .line 1745
    .end local v6           #anchorPos:I
    .end local v23           #f:I
    :cond_45
    :goto_24
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->DEBUG_ANIMATION:Z

    move/from16 v55, v0

    if-eqz v55, :cond_46

    .line 1746
    const-string v55, "TFAnimatedListView.ItemAnimation"

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string v57, "[Type "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mDefaultAnimationType:I

    move/from16 v57, v0

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string v57, "] Delete item at "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string v57, " have offset Y to anchor View : "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object v0, v13

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;->anchorDeltaY:I

    move/from16 v57, v0

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-static/range {v55 .. v56}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1719
    .end local v47           #retainView:Landroid/view/View;
    :cond_46
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_22

    .line 1738
    .restart local v6       #anchorPos:I
    .restart local v23       #f:I
    .restart local v47       #retainView:Landroid/view/View;
    :cond_47
    sub-int v55, v6, v24

    move-object/from16 v0, p0

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1739
    .restart local v7       #anchorView:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;

    move-object/from16 v55, v0

    add-int/lit8 v56, v6, 0x1

    invoke-virtual/range {v55 .. v56}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->getShouldRetainView(I)Landroid/view/View;

    move-result-object v19

    .line 1740
    .local v19, deleteBaseView:Landroid/view/View;
    if-eqz v7, :cond_45

    if-eqz v19, :cond_45

    .line 1741
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v55

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTop()I

    move-result v56

    sub-int v55, v55, v56

    move/from16 v0, v55

    move-object v1, v13

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;->anchorDeltaY:I

    goto :goto_24

    .line 1752
    .end local v6           #anchorPos:I
    .end local v7           #anchorView:Landroid/view/View;
    .end local v13           #data:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;
    .end local v19           #deleteBaseView:Landroid/view/View;
    .end local v23           #f:I
    .end local v34           #key:I
    .end local v47           #retainView:Landroid/view/View;
    :cond_48
    const/4 v12, 0x0

    :goto_25
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v55

    move v0, v12

    move/from16 v1, v55

    if-ge v0, v1, :cond_24

    .line 1753
    invoke-virtual {v8, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v34

    .line 1754
    .restart local v34       #key:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mIdsOffset:[I

    move-object/from16 v55, v0

    aget v55, v55, v34

    const v56, 0x7fffffff

    move/from16 v0, v55

    move/from16 v1, v56

    if-ne v0, v1, :cond_4b

    .line 1755
    const/16 v55, 0x0

    move-object v0, v8

    move/from16 v1, v34

    move-object/from16 v2, v55

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;

    .line 1756
    .restart local v13       #data:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;
    if-eqz v13, :cond_4b

    .line 1757
    if-lez v25, :cond_4b

    .line 1758
    sub-int v55, v34, v24

    move-object/from16 v0, p0

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->getChildAt(I)Landroid/view/View;

    move-result-object v30

    .line 1759
    .restart local v30       #insertView:Landroid/view/View;
    if-eqz v30, :cond_4a

    .line 1761
    const/16 v55, 0x1

    sub-int v6, v34, v55

    .line 1762
    .restart local v6       #anchorPos:I
    const/16 v55, 0x1

    sub-int v23, v34, v55

    .restart local v23       #f:I
    :goto_26
    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_49

    .line 1763
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mIdsOffset:[I

    move-object/from16 v55, v0

    aget v55, v55, v23

    const v56, 0x7fffffff

    move/from16 v0, v55

    move/from16 v1, v56

    if-ne v0, v1, :cond_49

    .line 1764
    add-int/lit8 v6, v6, -0x1

    .line 1762
    add-int/lit8 v23, v23, -0x1

    goto :goto_26

    .line 1770
    :cond_49
    move v0, v6

    move/from16 v1, v24

    if-ge v0, v1, :cond_4c

    .line 1771
    const/16 v55, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->getChildAt(I)Landroid/view/View;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Landroid/view/View;->getTop()I

    move-result v55

    move/from16 v0, v55

    neg-int v0, v0

    move/from16 v55, v0

    move/from16 v0, v55

    move-object v1, v13

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;->anchorDeltaY:I

    .line 1790
    .end local v6           #anchorPos:I
    .end local v23           #f:I
    :cond_4a
    :goto_27
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->DEBUG_ANIMATION:Z

    move/from16 v55, v0

    if-eqz v55, :cond_4b

    .line 1791
    const-string v55, "TFAnimatedListView.ItemAnimation"

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string v57, "[Type "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mDefaultAnimationType:I

    move/from16 v57, v0

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string v57, "] Inserted item at "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string v57, " have offset Y to anchor View : "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object v0, v13

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;->anchorDeltaY:I

    move/from16 v57, v0

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-static/range {v55 .. v56}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1752
    .end local v13           #data:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;
    .end local v30           #insertView:Landroid/view/View;
    :cond_4b
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_25

    .line 1773
    .restart local v6       #anchorPos:I
    .restart local v13       #data:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;
    .restart local v23       #f:I
    .restart local v30       #insertView:Landroid/view/View;
    :cond_4c
    add-int/lit8 v55, v6, 0x1

    sub-int v55, v55, v24

    move-object/from16 v0, p0

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->getChildAt(I)Landroid/view/View;

    move-result-object v29

    .line 1774
    .restart local v29       #insertBaseView:Landroid/view/View;
    const/4 v7, 0x0

    .line 1775
    .restart local v7       #anchorView:Landroid/view/View;
    move/from16 v51, v43

    .restart local v51       #v:I
    :goto_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mPrevIds:[J

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    array-length v0, v0

    move/from16 v55, v0

    move/from16 v0, v51

    move/from16 v1, v55

    if-ge v0, v1, :cond_4d

    .line 1776
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mPrevIds:[J

    move-object/from16 v55, v0

    aget-wide v55, v55, v51

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mCurIds:[J

    move-object/from16 v57, v0

    aget-wide v57, v57, v6

    cmp-long v55, v55, v57

    if-nez v55, :cond_4e

    .line 1777
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->getShouldRetainView(I)Landroid/view/View;

    move-result-object v7

    .line 1782
    :cond_4d
    if-eqz v7, :cond_4a

    if-eqz v29, :cond_4a

    .line 1783
    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getTop()I

    move-result v55

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v56

    sub-int v20, v55, v56

    .line 1784
    .restart local v20       #delta:I
    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v55, v0

    move/from16 v0, v55

    move-object v1, v13

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;->anchorY:I

    .line 1785
    move/from16 v0, v20

    move-object v1, v13

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;->anchorDeltaY:I

    goto/16 :goto_27

    .line 1775
    .end local v20           #delta:I
    :cond_4e
    add-int/lit8 v51, v51, 0x1

    goto :goto_28

    .line 1811
    .end local v6           #anchorPos:I
    .end local v7           #anchorView:Landroid/view/View;
    .end local v12           #d:I
    .end local v21           #distortion:I
    .end local v23           #f:I
    .end local v29           #insertBaseView:Landroid/view/View;
    .end local v30           #insertView:Landroid/view/View;
    .end local v51           #v:I
    .end local v54           #z:I
    .restart local v49       #time:J
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mItemAnimator:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;

    move-object/from16 v55, v0

    move-object/from16 v0, p0

    move-object v1, v13

    move-wide/from16 v2, v49

    invoke-direct {v0, v1, v2, v3}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->getTranslateItemAnimation(Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;J)Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;

    move-result-object v56

    move-object/from16 v0, v55

    move/from16 v1, v34

    move-object/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->putItemAnimation(ILcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;)V

    goto/16 :goto_12

    .line 1815
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mItemAnimator:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;

    move-object/from16 v55, v0

    move-object/from16 v0, p0

    move/from16 v1, v34

    move-object v2, v13

    move-wide/from16 v3, v49

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->getCustomInsertItemAnimation(ILcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;J)Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;

    move-result-object v56

    move-object/from16 v0, v55

    move/from16 v1, v34

    move-object/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->putItemAnimation(ILcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;)V

    goto/16 :goto_12

    .line 1822
    .end local v13           #data:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;
    .end local v34           #key:I
    :cond_4f
    const/16 v27, 0x0

    :goto_29
    invoke-virtual/range {v45 .. v45}, Landroid/util/SparseArray;->size()I

    move-result v55

    move/from16 v0, v27

    move/from16 v1, v55

    if-ge v0, v1, :cond_51

    .line 1823
    move-object/from16 v0, v45

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v34

    .line 1824
    .restart local v34       #key:I
    const/16 v55, 0x0

    move-object/from16 v0, v45

    move/from16 v1, v34

    move-object/from16 v2, v55

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;

    .line 1825
    .restart local v13       #data:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;
    if-eqz v13, :cond_50

    .line 1826
    move-object v0, v13

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;->type:I

    move/from16 v55, v0

    packed-switch v55, :pswitch_data_3

    .line 1822
    :cond_50
    :goto_2a
    add-int/lit8 v27, v27, 0x1

    goto :goto_29

    .line 1828
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mItemAnimator:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;

    move-object/from16 v55, v0

    move-object/from16 v0, p0

    move-object v1, v13

    move-wide/from16 v2, v49

    invoke-direct {v0, v1, v2, v3}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->getTranslateItemAnimation(Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;J)Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;

    move-result-object v56

    move-object/from16 v0, v55

    move/from16 v1, v34

    move-object/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->putRetainItemAnimation(ILcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;)V

    goto :goto_2a

    .line 1832
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mItemAnimator:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;

    move-object/from16 v55, v0

    move-object/from16 v0, p0

    move/from16 v1, v34

    move-object v2, v13

    move-wide/from16 v3, v49

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->getCustomInsertItemAnimation(ILcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;J)Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;

    move-result-object v56

    move-object/from16 v0, v55

    move/from16 v1, v34

    move-object/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->putRetainItemAnimation(ILcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;)V

    goto :goto_2a

    .line 1839
    .end local v13           #data:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;
    .end local v34           #key:I
    :cond_51
    const/16 v27, 0x0

    :goto_2b
    invoke-virtual/range {v18 .. v18}, Landroid/util/SparseArray;->size()I

    move-result v55

    move/from16 v0, v27

    move/from16 v1, v55

    if-ge v0, v1, :cond_53

    .line 1840
    move-object/from16 v0, v18

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v34

    .line 1841
    .restart local v34       #key:I
    const/16 v55, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v34

    move-object/from16 v2, v55

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;

    .line 1842
    .restart local v13       #data:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;
    if-eqz v13, :cond_52

    .line 1843
    move-object v0, v13

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;->type:I

    move/from16 v55, v0

    packed-switch v55, :pswitch_data_4

    .line 1839
    :cond_52
    :goto_2c
    add-int/lit8 v27, v27, 0x1

    goto :goto_2b

    .line 1845
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mItemAnimator:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;

    move-object/from16 v55, v0

    move-object/from16 v0, p0

    move-object v1, v13

    move-wide/from16 v2, v49

    invoke-direct {v0, v1, v2, v3}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->getTranslateItemAnimation(Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;J)Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;

    move-result-object v56

    move-object/from16 v0, v55

    move/from16 v1, v34

    move-object/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->putDeleteItemAnimation(ILcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;)V

    goto :goto_2c

    .line 1849
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mItemAnimator:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;

    move-object/from16 v55, v0

    move-object/from16 v0, p0

    move/from16 v1, v34

    move-object v2, v13

    move-wide/from16 v3, v49

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->getCustomDeleteItemAnimation(ILcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;J)Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;

    move-result-object v56

    move-object/from16 v0, v55

    move/from16 v1, v34

    move-object/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->putDeleteItemAnimation(ILcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;)V

    goto :goto_2c

    .line 1855
    .end local v13           #data:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;
    .end local v34           #key:I
    :cond_53
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mItemAnimator:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;

    move-object/from16 v55, v0

    invoke-virtual/range {v55 .. v55}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->start()V

    .line 1870
    .end local v8           #animation:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;>;"
    .end local v10           #childCount:I
    .end local v18           #deleteAnimation:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;>;"
    .end local v24           #first:I
    .end local v25           #firstPositionOffset:I
    .end local v27           #i:I
    .end local v36           #list:[Ljava/lang/Object;
    .end local v43           #prevFirst:I
    .end local v45           #retainAnimation:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationData;>;"
    .end local v49           #time:J
    :cond_54
    :goto_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mFloatingViews:Ljava/util/ArrayList;

    move-object/from16 v55, v0

    invoke-virtual/range {v55 .. v55}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v28

    .local v28, i$:Ljava/util/Iterator;
    :cond_55
    :goto_2e
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v55

    if-eqz v55, :cond_58

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Landroid/view/View;

    .line 1871
    .local v51, v:Landroid/view/View;
    invoke-virtual/range {v51 .. v51}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v55

    if-nez v55, :cond_55

    .line 1872
    const/16 v55, -0x1

    const/16 v56, 0x0

    const/16 v57, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    move/from16 v2, v55

    move-object/from16 v3, v56

    move/from16 v4, v57

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    goto :goto_2e

    .line 1859
    .end local v28           #i$:Ljava/util/Iterator;
    .end local v51           #v:Landroid/view/View;
    :cond_56
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mPrevIds:[J

    move-object/from16 v55, v0

    if-eqz v55, :cond_57

    .line 1860
    const/16 v55, 0x0

    move-object/from16 v0, v55

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mPrevIds:[J

    .line 1862
    :cond_57
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mCurIds:[J

    move-object/from16 v55, v0

    if-eqz v55, :cond_54

    .line 1863
    const/16 v55, 0x0

    move-object/from16 v0, v55

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mCurIds:[J

    goto :goto_2d

    .line 1875
    .restart local v28       #i$:Ljava/util/Iterator;
    :cond_58
    return-void

    .line 1809
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 1550
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 1628
    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1826
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 1843
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    .line 1176
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mIsAnimating:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1177
    const/4 v0, 0x1

    .line 1179
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/nemustech/tiffany/widget/TFListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1192
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mIsAnimating:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1194
    const/4 v0, 0x1

    .line 1196
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/nemustech/tiffany/widget/TFListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1201
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mIsAnimating:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1203
    const/4 v0, 0x1

    .line 1205
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/nemustech/tiffany/widget/TFListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPostDrawChild(Landroid/graphics/Canvas;Landroid/view/View;J)V
    .locals 0
    .parameter "canvas"
    .parameter "child"
    .parameter "drawingTime"

    .prologue
    .line 1172
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    .line 1184
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mIsAnimating:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1185
    const/4 v0, 0x1

    .line 1187
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/nemustech/tiffany/widget/TFListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected removeFloatingView(Landroid/view/View;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 2236
    invoke-virtual {p0, p1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->removeViewInLayout(Landroid/view/View;)V

    .line 2238
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mFloatingViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2239
    return-void
.end method

.method public setAnimationAlpha(II)V
    .locals 1
    .parameter "minAlpha"
    .parameter "maxAlpha"

    .prologue
    const/16 v0, 0xff

    .line 1024
    if-lt p2, p1, :cond_1

    .line 1025
    if-ltz p1, :cond_0

    if-gt p1, v0, :cond_0

    .line 1026
    iput p1, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mAnimationMinAlpha:I

    .line 1029
    :cond_0
    if-ltz p2, :cond_1

    if-gt p2, v0, :cond_1

    .line 1030
    iput p2, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mAnimationMaxAlpha:I

    .line 1033
    :cond_1
    return-void
.end method

.method public setAnimationMaxAlpha(I)V
    .locals 1
    .parameter "maxAlpha"

    .prologue
    .line 1010
    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-gt p1, v0, :cond_0

    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mAnimationMinAlpha:I

    if-lt p1, v0, :cond_0

    .line 1011
    iput p1, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mAnimationMaxAlpha:I

    .line 1013
    :cond_0
    return-void
.end method

.method public setAnimationMinAlpha(I)V
    .locals 1
    .parameter "minAlpha"

    .prologue
    .line 997
    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-gt p1, v0, :cond_0

    .line 998
    iput p1, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mAnimationMinAlpha:I

    .line 1000
    :cond_0
    return-void
.end method

.method public setAnimationOnDataChangeEnabled(Z)V
    .locals 0
    .parameter "enableAnimation"

    .prologue
    .line 921
    iput-boolean p1, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mShowAnimationOnDataChange:Z

    .line 922
    return-void
.end method

.method public setCustomItemDeleteDrawCallback(Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemDeleteDrawCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 564
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mCustomItemDeleteDrawCallback:Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemDeleteDrawCallback;

    .line 565
    return-void
.end method

.method public setCustomItemInsertDrawCallback(Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemInsertDrawCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 526
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mCustomItemInsertDrawCallback:Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemInsertDrawCallback;

    .line 527
    return-void
.end method

.method public setDrawDeleteAnimationFront(Z)V
    .locals 0
    .parameter "drawFront"

    .prologue
    .line 939
    iput-boolean p1, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mDrawDeleteViewFront:Z

    .line 940
    return-void
.end method

.method public setDrawInsertAnimationFront(Z)V
    .locals 0
    .parameter "drawFront"

    .prologue
    .line 957
    iput-boolean p1, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mDrawInsertViewFront:Z

    .line 958
    return-void
.end method

.method public setItemAnimationDuration(I)V
    .locals 1
    .parameter "duration"

    .prologue
    .line 1041
    if-nez p1, :cond_0

    .line 1042
    const/16 v0, 0x12c

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mAnimationDuration:I

    .line 1045
    :goto_0
    return-void

    .line 1044
    :cond_0
    iput p1, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mAnimationDuration:I

    goto :goto_0
.end method

.method public setItemAnimationListener(Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 603
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mItemAnimationListener:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationListener;

    .line 604
    return-void
.end method

.method public setItemAnimationType(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 975
    if-ltz p1, :cond_0

    const/4 v0, 0x5

    if-ge p1, v0, :cond_0

    .line 977
    iput p1, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mDefaultAnimationType:I

    .line 978
    :cond_0
    return-void
.end method
