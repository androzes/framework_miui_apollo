.class public Lcom/android/server/status/IconMerger;
.super Landroid/widget/LinearLayout;
.source "IconMerger.java"


# instance fields
.field private mBugWorkaroundHandler:Landroid/os/Handler;

.field private mBugWorkaroundNumber:I

.field private mBugWorkaroundRunnable:Ljava/lang/Runnable;

.field moreIcon:Lcom/android/server/status/StatusBarIcon;

.field service:Lcom/android/server/status/StatusBarService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 126
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/status/IconMerger;->mBugWorkaroundHandler:Landroid/os/Handler;

    .line 127
    new-instance v0, Lcom/android/server/status/IconMerger$1;

    invoke-direct {v0, p0}, Lcom/android/server/status/IconMerger$1;-><init>(Lcom/android/server/status/IconMerger;)V

    iput-object v0, p0, Lcom/android/server/status/IconMerger;->mBugWorkaroundRunnable:Ljava/lang/Runnable;

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/status/IconMerger;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget v0, p0, Lcom/android/server/status/IconMerger;->mBugWorkaroundNumber:I

    return v0
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 25
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 36
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 38
    sub-int v15, p4, p2

    .line 39
    .local v15, maxWidth:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/status/IconMerger;->getChildCount()I

    move-result v5

    .line 43
    .local v5, N:I
    const/4 v13, -0x1

    .line 44
    .local v13, fitRight:I
    const/16 v21, 0x1

    sub-int v14, v5, v21

    .local v14, i:I
    :goto_0
    if-ltz v14, :cond_0

    .line 45
    move-object/from16 v0, p0

    move v1, v14

    invoke-virtual {v0, v1}, Lcom/android/server/status/IconMerger;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 46
    .local v8, child:Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v21

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_2

    .line 47
    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v13

    .line 53
    .end local v8           #child:Landroid/view/View;
    :cond_0
    const/16 v16, 0x0

    .line 54
    .local v16, moreView:Landroid/view/View;
    const/4 v12, -0x1

    .line 55
    .local v12, fitLeft:I
    const/16 v20, -0x1

    .line 56
    .local v20, startIndex:I
    const/4 v14, 0x0

    :goto_1
    if-ge v14, v5, :cond_4

    .line 57
    move-object/from16 v0, p0

    move v1, v14

    invoke-virtual {v0, v1}, Lcom/android/server/status/IconMerger;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 58
    .restart local v8       #child:Landroid/view/View;
    const v21, 0x1080079

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_3

    .line 59
    move-object/from16 v16, v8

    .line 60
    add-int/lit8 v20, v14, 0x1

    .line 56
    :cond_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 44
    .end local v12           #fitLeft:I
    .end local v16           #moreView:Landroid/view/View;
    .end local v20           #startIndex:I
    :cond_2
    add-int/lit8 v14, v14, -0x1

    goto :goto_0

    .line 62
    .restart local v12       #fitLeft:I
    .restart local v16       #moreView:Landroid/view/View;
    .restart local v20       #startIndex:I
    :cond_3
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v21

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_1

    .line 63
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v12

    .line 68
    .end local v8           #child:Landroid/view/View;
    :cond_4
    if-eqz v16, :cond_5

    if-gez v20, :cond_6

    .line 69
    :cond_5
    new-instance v21, Ljava/lang/RuntimeException;

    const-string v22, "Status Bar / IconMerger moreView == null"

    invoke-direct/range {v21 .. v22}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 74
    :cond_6
    const/4 v6, 0x0

    .line 75
    .local v6, adjust:I
    sub-int v21, v13, v12

    move/from16 v0, v21

    move v1, v15

    if-gt v0, v1, :cond_7

    .line 76
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    move-result v21

    sub-int v6, v12, v21

    .line 77
    sub-int/2addr v12, v6

    .line 78
    sub-int/2addr v13, v6

    .line 79
    const/16 v21, 0x0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v22

    const/16 v23, 0x0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getBottom()I

    move-result v24

    move-object/from16 v0, v16

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 81
    :cond_7
    sub-int v11, v13, p4

    .line 82
    .local v11, extra:I
    const/16 v19, -0x1

    .line 84
    .local v19, shift:I
    add-int v21, v12, v11

    add-int v7, v21, v6

    .line 85
    .local v7, breakingPoint:I
    const/16 v18, 0x0

    .line 86
    .local v18, number:I
    move/from16 v14, v20

    :goto_2
    if-ge v14, v5, :cond_c

    .line 87
    move-object/from16 v0, p0

    move v1, v14

    invoke-virtual {v0, v1}, Lcom/android/server/status/IconMerger;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 88
    .restart local v8       #child:Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v21

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_8

    .line 89
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v9

    .line 90
    .local v9, childLeft:I
    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v10

    .line 91
    .local v10, childRight:I
    if-ge v9, v7, :cond_a

    .line 93
    const/16 v21, 0x0

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v22

    const/16 v23, 0x0

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v24

    move-object v0, v8

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 94
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/IconMerger;->service:Lcom/android/server/status/StatusBarService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v8

    invoke-virtual {v0, v1}, Lcom/android/server/status/StatusBarService;->getIconNumberForView(Landroid/view/View;)I

    move-result v17

    .line 95
    .local v17, n:I
    if-nez v17, :cond_9

    .line 96
    add-int/lit8 v18, v18, 0x1

    .line 86
    .end local v9           #childLeft:I
    .end local v10           #childRight:I
    .end local v17           #n:I
    :cond_8
    :goto_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 97
    .restart local v9       #childLeft:I
    .restart local v10       #childRight:I
    .restart local v17       #n:I
    :cond_9
    if-lez v17, :cond_8

    .line 98
    add-int v18, v18, v17

    goto :goto_3

    .line 102
    .end local v17           #n:I
    :cond_a
    if-gez v19, :cond_b

    .line 103
    sub-int v19, v9, v12

    .line 106
    :cond_b
    sub-int v21, v9, v19

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v22

    sub-int v23, v10, v19

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v24

    move-object v0, v8

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    goto :goto_3

    .line 120
    .end local v8           #child:Landroid/view/View;
    .end local v9           #childLeft:I
    .end local v10           #childRight:I
    :cond_c
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/status/IconMerger;->mBugWorkaroundNumber:I

    .line 121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/IconMerger;->mBugWorkaroundHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/IconMerger;->mBugWorkaroundRunnable:Ljava/lang/Runnable;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 123
    return-void
.end method
