.class Lcom/nemustech/tiffany/widget/TFFlipImage$FlipAnimation;
.super Ljava/lang/Object;
.source "TFFlipImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemustech/tiffany/widget/TFFlipImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlipAnimation"
.end annotation


# static fields
.field static final FOLD_FRONT_TO_BOTTOM:I = 0x1

.field static final FOLD_FRONT_TO_RIGHT:I = 0x3

.field static final FOLD_LEFT_TO_FRONT:I = 0x2

.field static final FOLD_TOP_TO_FRONT:I


# instance fields
.field private mAnimation:Lcom/nemustech/tiffany/widget/TFFlipImage$TFFlipRotate3dAnimation;

.field private mTargetView:Landroid/view/View;

.field final synthetic this$0:Lcom/nemustech/tiffany/widget/TFFlipImage;


# direct methods
.method public constructor <init>(Lcom/nemustech/tiffany/widget/TFFlipImage;Landroid/view/View;I)V
    .locals 6
    .parameter
    .parameter "target"
    .parameter "direction"

    .prologue
    .line 561
    invoke-static {p1}, Lcom/nemustech/tiffany/widget/TFFlipImage;->access$600(Lcom/nemustech/tiffany/widget/TFFlipImage;)I

    move-result v4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/nemustech/tiffany/widget/TFFlipImage$FlipAnimation;-><init>(Lcom/nemustech/tiffany/widget/TFFlipImage;Landroid/view/View;III)V

    .line 562
    return-void
.end method

.method public constructor <init>(Lcom/nemustech/tiffany/widget/TFFlipImage;Landroid/view/View;II)V
    .locals 6
    .parameter
    .parameter "target"
    .parameter "direction"
    .parameter "duration"

    .prologue
    .line 565
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/nemustech/tiffany/widget/TFFlipImage$FlipAnimation;-><init>(Lcom/nemustech/tiffany/widget/TFFlipImage;Landroid/view/View;III)V

    .line 566
    return-void
.end method

.method public constructor <init>(Lcom/nemustech/tiffany/widget/TFFlipImage;Landroid/view/View;III)V
    .locals 21
    .parameter
    .parameter "target"
    .parameter "direction"
    .parameter "duration"
    .parameter "delay"

    .prologue
    .line 568
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nemustech/tiffany/widget/TFFlipImage$FlipAnimation;->this$0:Lcom/nemustech/tiffany/widget/TFFlipImage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 570
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nemustech/tiffany/widget/TFFlipImage$FlipAnimation;->mTargetView:Landroid/view/View;

    .line 572
    if-nez p3, :cond_1

    .line 573
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v7, v2

    .line 574
    .local v7, height:F
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v12, v2

    .line 575
    .local v12, width:F
    new-instance v2, Lcom/nemustech/tiffany/widget/TFFlipImage$TFFlipRotate3dAnimation;

    const/4 v4, 0x0

    const/high16 v5, -0x3d4c

    const/high16 v3, 0x4000

    div-float v6, v12, v3

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v9}, Lcom/nemustech/tiffany/widget/TFFlipImage$TFFlipRotate3dAnimation;-><init>(Lcom/nemustech/tiffany/widget/TFFlipImage;FFFFFZ)V

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nemustech/tiffany/widget/TFFlipImage$FlipAnimation;->mAnimation:Lcom/nemustech/tiffany/widget/TFFlipImage$TFFlipRotate3dAnimation;

    .line 576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFFlipImage$FlipAnimation;->mAnimation:Lcom/nemustech/tiffany/widget/TFFlipImage$TFFlipRotate3dAnimation;

    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/nemustech/tiffany/widget/TFFlipImage$TFFlipRotate3dAnimation;->setRotateAxis(I)V

    .line 577
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFFlipImage$FlipAnimation;->mAnimation:Lcom/nemustech/tiffany/widget/TFFlipImage$TFFlipRotate3dAnimation;

    move-object v2, v0

    move/from16 v0, p5

    int-to-long v0, v0

    move-wide v3, v0

    invoke-virtual {v2, v3, v4}, Lcom/nemustech/tiffany/widget/TFFlipImage$TFFlipRotate3dAnimation;->setStartOffset(J)V

    .line 578
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFFlipImage$FlipAnimation;->mAnimation:Lcom/nemustech/tiffany/widget/TFFlipImage$TFFlipRotate3dAnimation;

    move-object v2, v0

    move/from16 v0, p4

    int-to-long v0, v0

    move-wide v3, v0

    invoke-virtual {v2, v3, v4}, Lcom/nemustech/tiffany/widget/TFFlipImage$TFFlipRotate3dAnimation;->setDuration(J)V

    .line 579
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFFlipImage$FlipAnimation;->mAnimation:Lcom/nemustech/tiffany/widget/TFFlipImage$TFFlipRotate3dAnimation;

    move-object v2, v0

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Lcom/nemustech/tiffany/widget/TFFlipImage$TFFlipRotate3dAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 601
    .end local v7           #height:F
    .end local v12           #width:F
    :cond_0
    :goto_0
    return-void

    .line 580
    :cond_1
    const/4 v2, 0x1

    move/from16 v0, p3

    move v1, v2

    if-ne v0, v1, :cond_2

    .line 581
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v12, v2

    .line 582
    .restart local v12       #width:F
    new-instance v8, Lcom/nemustech/tiffany/widget/TFFlipImage$TFFlipRotate3dAnimation;

    const/high16 v10, 0x42b4

    const/4 v11, 0x0

    const/high16 v2, 0x4000

    div-float/2addr v12, v2

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v9, p1

    invoke-direct/range {v8 .. v15}, Lcom/nemustech/tiffany/widget/TFFlipImage$TFFlipRotate3dAnimation;-><init>(Lcom/nemustech/tiffany/widget/TFFlipImage;FFFFFZ)V

    .end local v12           #width:F
    move-object v0, v8

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nemustech/tiffany/widget/TFFlipImage$FlipAnimation;->mAnimation:Lcom/nemustech/tiffany/widget/TFFlipImage$TFFlipRotate3dAnimation;

    .line 583
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFFlipImage$FlipAnimation;->mAnimation:Lcom/nemustech/tiffany/widget/TFFlipImage$TFFlipRotate3dAnimation;

    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/nemustech/tiffany/widget/TFFlipImage$TFFlipRotate3dAnimation;->setRotateAxis(I)V

    .line 584
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFFlipImage$FlipAnimation;->mAnimation:Lcom/nemustech/tiffany/widget/TFFlipImage$TFFlipRotate3dAnimation;

    move-object v2, v0

    move/from16 v0, p5

    int-to-long v0, v0

    move-wide v3, v0

    invoke-virtual {v2, v3, v4}, Lcom/nemustech/tiffany/widget/TFFlipImage$TFFlipRotate3dAnimation;->setStartOffset(J)V

    .line 585
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFFlipImage$FlipAnimation;->mAnimation:Lcom/nemustech/tiffany/widget/TFFlipImage$TFFlipRotate3dAnimation;

    move-object v2, v0

    move/from16 v0, p4

    int-to-long v0, v0

    move-wide v3, v0

    invoke-virtual {v2, v3, v4}, Lcom/nemustech/tiffany/widget/TFFlipImage$TFFlipRotate3dAnimation;->setDuration(J)V

    .line 586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFFlipImage$FlipAnimation;->mAnimation:Lcom/nemustech/tiffany/widget/TFFlipImage$TFFlipRotate3dAnimation;

    move-object v2, v0

    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Lcom/nemustech/tiffany/widget/TFFlipImage$TFFlipRotate3dAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto :goto_0

    .line 587
    :cond_2
    const/4 v2, 0x2

    move/from16 v0, p3

    move v1, v2

    if-ne v0, v1, :cond_3

    .line 588
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v7, v2

    .line 589
    .restart local v7       #height:F
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v12, v2

    .line 590
    .restart local v12       #width:F
    new-instance v8, Lcom/nemustech/tiffany/widget/TFFlipImage$TFFlipRotate3dAnimation;

    const/4 v10, 0x0

    const/high16 v11, 0x42b4

    const/high16 v2, 0x4000

    div-float v13, v7, v2

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v9, p1

    invoke-direct/range {v8 .. v15}, Lcom/nemustech/tiffany/widget/TFFlipImage$TFFlipRotate3dAnimation;-><init>(Lcom/nemustech/tiffany/widget/TFFlipImage;FFFFFZ)V

    move-object v0, v8

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nemustech/tiffany/widget/TFFlipImage$FlipAnimation;->mAnimation:Lcom/nemustech/tiffany/widget/TFFlipImage$TFFlipRotate3dAnimation;

    .line 591
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFFlipImage$FlipAnimation;->mAnimation:Lcom/nemustech/tiffany/widget/TFFlipImage$TFFlipRotate3dAnimation;

    move-object v2, v0

    move/from16 v0, p5

    int-to-long v0, v0

    move-wide v3, v0

    invoke-virtual {v2, v3, v4}, Lcom/nemustech/tiffany/widget/TFFlipImage$TFFlipRotate3dAnimation;->setStartOffset(J)V

    .line 592
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFFlipImage$FlipAnimation;->mAnimation:Lcom/nemustech/tiffany/widget/TFFlipImage$TFFlipRotate3dAnimation;

    move-object v2, v0

    move/from16 v0, p4

    int-to-long v0, v0

    move-wide v3, v0

    invoke-virtual {v2, v3, v4}, Lcom/nemustech/tiffany/widget/TFFlipImage$TFFlipRotate3dAnimation;->setDuration(J)V

    .line 593
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFFlipImage$FlipAnimation;->mAnimation:Lcom/nemustech/tiffany/widget/TFFlipImage$TFFlipRotate3dAnimation;

    move-object v2, v0

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Lcom/nemustech/tiffany/widget/TFFlipImage$TFFlipRotate3dAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto/16 :goto_0

    .line 594
    .end local v7           #height:F
    .end local v12           #width:F
    :cond_3
    const/4 v2, 0x3

    move/from16 v0, p3

    move v1, v2

    if-ne v0, v1, :cond_0

    .line 595
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v7, v2

    .line 596
    .restart local v7       #height:F
    new-instance v13, Lcom/nemustech/tiffany/widget/TFFlipImage$TFFlipRotate3dAnimation;

    const/high16 v15, -0x3d4c

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/high16 v2, 0x4000

    div-float v18, v7, v2

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v14, p1

    invoke-direct/range {v13 .. v20}, Lcom/nemustech/tiffany/widget/TFFlipImage$TFFlipRotate3dAnimation;-><init>(Lcom/nemustech/tiffany/widget/TFFlipImage;FFFFFZ)V

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nemustech/tiffany/widget/TFFlipImage$FlipAnimation;->mAnimation:Lcom/nemustech/tiffany/widget/TFFlipImage$TFFlipRotate3dAnimation;

    .line 597
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFFlipImage$FlipAnimation;->mAnimation:Lcom/nemustech/tiffany/widget/TFFlipImage$TFFlipRotate3dAnimation;

    move-object v2, v0

    move/from16 v0, p5

    int-to-long v0, v0

    move-wide v3, v0

    invoke-virtual {v2, v3, v4}, Lcom/nemustech/tiffany/widget/TFFlipImage$TFFlipRotate3dAnimation;->setStartOffset(J)V

    .line 598
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFFlipImage$FlipAnimation;->mAnimation:Lcom/nemustech/tiffany/widget/TFFlipImage$TFFlipRotate3dAnimation;

    move-object v2, v0

    move/from16 v0, p4

    int-to-long v0, v0

    move-wide v3, v0

    invoke-virtual {v2, v3, v4}, Lcom/nemustech/tiffany/widget/TFFlipImage$TFFlipRotate3dAnimation;->setDuration(J)V

    .line 599
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFFlipImage$FlipAnimation;->mAnimation:Lcom/nemustech/tiffany/widget/TFFlipImage$TFFlipRotate3dAnimation;

    move-object v2, v0

    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Lcom/nemustech/tiffany/widget/TFFlipImage$TFFlipRotate3dAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 609
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFFlipImage$FlipAnimation;->mTargetView:Landroid/view/View;

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFFlipImage$FlipAnimation;->mAnimation:Lcom/nemustech/tiffany/widget/TFFlipImage$TFFlipRotate3dAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 610
    return-void
.end method

.method public setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 604
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFFlipImage$FlipAnimation;->mAnimation:Lcom/nemustech/tiffany/widget/TFFlipImage$TFFlipRotate3dAnimation;

    invoke-virtual {v0, p1}, Lcom/nemustech/tiffany/widget/TFFlipImage$TFFlipRotate3dAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 605
    return-void
.end method
