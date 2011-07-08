.class public Lcom/nemustech/tiffany/world/TFAnimationSet;
.super Ljava/lang/Object;
.source "TFAnimationSet.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TFAnimationSet"

.field public static final TYPE_CENTER_ZOOM:I = 0x5

.field public static final TYPE_DIAGONAL_FLING:I = 0x1

.field public static final TYPE_DIAGONAL_SCALE:I = 0x2

.field public static final TYPE_LINE_ZOOM_SCALE:I = 0x7

.field public static final TYPE_LINE_ZOOM_TRANSLATE:I = 0x6

.field public static final TYPE_NONE:I = 0x0

.field public static final TYPE_PROJECTOR_BOARD_DOWN:I = 0x4

.field public static final TYPE_PROJECTOR_BOARD_UP:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method


# virtual methods
.method public getAnimation(IZ)Landroid/view/animation/Animation;
    .locals 17
    .parameter "type"
    .parameter "isInAnimation"

    .prologue
    .line 19
    const/4 v4, 0x0

    .line 21
    .local v4, resultAnimation:Landroid/view/animation/Animation;
    packed-switch p1, :pswitch_data_0

    .line 122
    :cond_0
    :goto_0
    return-object v4

    .line 23
    :pswitch_0
    const/4 v6, 0x1

    move/from16 v0, p2

    move v1, v6

    if-ne v0, v1, :cond_1

    .line 24
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    .end local v4           #resultAnimation:Landroid/view/animation/Animation;
    const/4 v6, 0x0

    const/high16 v7, 0x3f80

    invoke-direct {v4, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 41
    .restart local v4       #resultAnimation:Landroid/view/animation/Animation;
    :goto_1
    const-wide/16 v6, 0x3e8

    invoke-virtual {v4, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    goto :goto_0

    .line 26
    :cond_1
    new-instance v16, Landroid/view/animation/AnimationSet;

    const/4 v6, 0x1

    move-object/from16 v0, v16

    move v1, v6

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 27
    .local v16, as:Landroid/view/animation/AnimationSet;
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const/high16 v3, 0x3f80

    const/high16 v4, 0x3f00

    const/high16 v5, 0x3f80

    const/high16 v6, 0x3f00

    const/4 v7, 0x0

    const/high16 v8, 0x3f00

    const/4 v9, 0x0

    const/high16 v10, 0x3f00

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 29
    .end local v4           #resultAnimation:Landroid/view/animation/Animation;
    .local v2, sa:Landroid/view/animation/ScaleAnimation;
    new-instance v6, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v2, v6}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 30
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 31
    new-instance v3, Landroid/view/animation/RotateAnimation;

    const/4 v4, 0x0

    const/high16 v5, 0x42b4

    const/4 v6, 0x1

    const/high16 v7, 0x3f80

    const/4 v8, 0x1

    const/high16 v9, 0x3f80

    invoke-direct/range {v3 .. v9}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 33
    .local v3, ra:Landroid/view/animation/RotateAnimation;
    new-instance v15, Landroid/view/animation/AlphaAnimation;

    const/high16 v6, 0x3f80

    const/4 v7, 0x0

    invoke-direct {v15, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 35
    .local v15, aa:Landroid/view/animation/AlphaAnimation;
    move-object/from16 v0, v16

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 36
    move-object/from16 v0, v16

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 37
    move-object/from16 v0, v16

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 39
    move-object/from16 v4, v16

    .restart local v4       #resultAnimation:Landroid/view/animation/Animation;
    goto :goto_1

    .line 45
    .end local v2           #sa:Landroid/view/animation/ScaleAnimation;
    .end local v3           #ra:Landroid/view/animation/RotateAnimation;
    .end local v15           #aa:Landroid/view/animation/AlphaAnimation;
    .end local v16           #as:Landroid/view/animation/AnimationSet;
    :pswitch_1
    const/4 v6, 0x1

    move/from16 v0, p2

    move v1, v6

    if-ne v0, v1, :cond_2

    .line 46
    new-instance v4, Landroid/view/animation/ScaleAnimation;

    .end local v4           #resultAnimation:Landroid/view/animation/Animation;
    const/4 v5, 0x0

    const/high16 v6, 0x3f80

    const/4 v7, 0x0

    const/high16 v8, 0x3f80

    const/4 v9, 0x1

    const/high16 v10, 0x3f80

    const/4 v11, 0x1

    const/high16 v12, 0x3f80

    invoke-direct/range {v4 .. v12}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 48
    .restart local v4       #resultAnimation:Landroid/view/animation/Animation;
    new-instance v6, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v4, v6}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 49
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 56
    :goto_2
    const-wide/16 v6, 0x3e8

    invoke-virtual {v4, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    goto/16 :goto_0

    .line 51
    :cond_2
    new-instance v4, Landroid/view/animation/ScaleAnimation;

    .end local v4           #resultAnimation:Landroid/view/animation/Animation;
    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    const/high16 v7, 0x3f80

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 53
    .restart local v4       #resultAnimation:Landroid/view/animation/Animation;
    new-instance v6, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v4, v6}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 54
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    goto :goto_2

    .line 60
    :pswitch_2
    const/4 v6, 0x1

    move/from16 v0, p2

    move v1, v6

    if-eq v0, v1, :cond_0

    .line 63
    new-instance v4, Landroid/view/animation/ScaleAnimation;

    .end local v4           #resultAnimation:Landroid/view/animation/Animation;
    const/high16 v5, 0x3f80

    const/high16 v6, 0x3f80

    const/high16 v7, 0x3f80

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 65
    .restart local v4       #resultAnimation:Landroid/view/animation/Animation;
    new-instance v6, Landroid/view/animation/AnticipateOvershootInterpolator;

    invoke-direct {v6}, Landroid/view/animation/AnticipateOvershootInterpolator;-><init>()V

    invoke-virtual {v4, v6}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 66
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 67
    const-wide/16 v6, 0x7d0

    invoke-virtual {v4, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    goto/16 :goto_0

    .line 72
    :pswitch_3
    const/4 v6, 0x1

    move/from16 v0, p2

    move v1, v6

    if-eq v0, v1, :cond_0

    .line 75
    new-instance v4, Landroid/view/animation/ScaleAnimation;

    .end local v4           #resultAnimation:Landroid/view/animation/Animation;
    const/high16 v5, 0x3f80

    const/high16 v6, 0x3f80

    const/4 v7, 0x0

    const/high16 v8, 0x3f80

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 77
    .restart local v4       #resultAnimation:Landroid/view/animation/Animation;
    new-instance v6, Landroid/view/animation/BounceInterpolator;

    invoke-direct {v6}, Landroid/view/animation/BounceInterpolator;-><init>()V

    invoke-virtual {v4, v6}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 78
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 79
    const-wide/16 v6, 0x7d0

    invoke-virtual {v4, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    goto/16 :goto_0

    .line 84
    :pswitch_4
    const/4 v6, 0x1

    move/from16 v0, p2

    move v1, v6

    if-ne v0, v1, :cond_0

    .line 85
    new-instance v4, Landroid/view/animation/ScaleAnimation;

    .end local v4           #resultAnimation:Landroid/view/animation/Animation;
    const/4 v5, 0x0

    const/high16 v6, 0x3f80

    const/4 v7, 0x0

    const/high16 v8, 0x3f80

    const/4 v9, 0x1

    const/high16 v10, 0x3f00

    const/4 v11, 0x1

    const/high16 v12, 0x3f00

    invoke-direct/range {v4 .. v12}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 87
    .restart local v4       #resultAnimation:Landroid/view/animation/Animation;
    new-instance v6, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v4, v6}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 88
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 89
    const-wide/16 v6, 0x3e8

    invoke-virtual {v4, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    goto/16 :goto_0

    .line 95
    :pswitch_5
    const/4 v6, 0x1

    move/from16 v0, p2

    move v1, v6

    if-ne v0, v1, :cond_0

    .line 96
    new-instance v16, Landroid/view/animation/AnimationSet;

    const/4 v6, 0x1

    move-object/from16 v0, v16

    move v1, v6

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 97
    .restart local v16       #as:Landroid/view/animation/AnimationSet;
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const/high16 v6, 0x3f80

    const/high16 v7, 0x3f80

    const v8, 0x3ba3d70a

    const v9, 0x3ba3d70a

    invoke-direct {v2, v6, v7, v8, v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    .line 98
    .restart local v2       #sa:Landroid/view/animation/ScaleAnimation;
    new-instance v5, Landroid/view/animation/TranslateAnimation;

    const/4 v6, 0x1

    const/high16 v7, -0x4080

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    const v11, 0x3efeb852

    const/4 v12, 0x1

    const v13, 0x3efeb852

    invoke-direct/range {v5 .. v13}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 101
    .local v5, ta:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v6, 0x3e8

    invoke-virtual {v5, v6, v7}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 103
    move-object/from16 v0, v16

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 104
    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 106
    move-object/from16 v4, v16

    .line 107
    goto/16 :goto_0

    .line 112
    .end local v2           #sa:Landroid/view/animation/ScaleAnimation;
    .end local v5           #ta:Landroid/view/animation/TranslateAnimation;
    .end local v16           #as:Landroid/view/animation/AnimationSet;
    :pswitch_6
    const/4 v6, 0x1

    move/from16 v0, p2

    move v1, v6

    if-ne v0, v1, :cond_0

    .line 113
    new-instance v4, Landroid/view/animation/ScaleAnimation;

    .end local v4           #resultAnimation:Landroid/view/animation/Animation;
    const/high16 v7, 0x3f80

    const/high16 v8, 0x3f80

    const v9, 0x3ba3d70a

    const/high16 v10, 0x3f80

    const/4 v11, 0x1

    const/high16 v12, 0x3f00

    const/4 v13, 0x1

    const/high16 v14, 0x3f00

    move-object v6, v4

    invoke-direct/range {v6 .. v14}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 115
    .restart local v4       #resultAnimation:Landroid/view/animation/Animation;
    const-wide/16 v6, 0x3e8

    invoke-virtual {v4, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    goto/16 :goto_0

    .line 21
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
