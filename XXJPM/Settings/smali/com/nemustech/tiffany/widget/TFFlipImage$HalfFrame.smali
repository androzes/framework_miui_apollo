.class Lcom/nemustech/tiffany/widget/TFFlipImage$HalfFrame;
.super Landroid/view/View;
.source "TFFlipImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemustech/tiffany/widget/TFFlipImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HalfFrame"
.end annotation


# instance fields
.field private mFrameBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mFrameImageDrawable:Landroid/graphics/drawable/Drawable;

.field private mIsBottom:Z

.field final synthetic this$0:Lcom/nemustech/tiffany/widget/TFFlipImage;


# direct methods
.method public constructor <init>(Lcom/nemustech/tiffany/widget/TFFlipImage;Landroid/content/Context;Z)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "isBottom"

    .prologue
    .line 619
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFFlipImage$HalfFrame;->this$0:Lcom/nemustech/tiffany/widget/TFFlipImage;

    .line 620
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 621
    iput-boolean p3, p0, Lcom/nemustech/tiffany/widget/TFFlipImage$HalfFrame;->mIsBottom:Z

    .line 622
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .parameter "canvas"

    .prologue
    const/4 v13, 0x0

    .line 649
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFFlipImage$HalfFrame;->getWidth()I

    move-result v10

    .line 650
    .local v10, width:I
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFFlipImage$HalfFrame;->getHeight()I

    move-result v2

    .line 652
    .local v2, height:I
    if-eqz v10, :cond_0

    if-nez v2, :cond_1

    .line 693
    :cond_0
    :goto_0
    return-void

    .line 654
    :cond_1
    iget-boolean v11, p0, Lcom/nemustech/tiffany/widget/TFFlipImage$HalfFrame;->mIsBottom:Z

    if-eqz v11, :cond_2

    .line 655
    const/4 v11, 0x0

    neg-int v12, v2

    int-to-float v12, v12

    invoke-virtual {p1, v11, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 659
    :cond_2
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFFlipImage$HalfFrame;->mFrameBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 660
    .local v0, bgDrawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_3

    .line 661
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v12

    invoke-virtual {v0, v13, v13, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 662
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 666
    :cond_3
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFFlipImage$HalfFrame;->mFrameImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 667
    .local v1, frameDrawable:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 668
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    .line 669
    .local v6, imageIntrinsicW:I
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 671
    .local v5, imageIntrinsicH:I
    if-eqz v6, :cond_0

    if-eqz v5, :cond_0

    .line 674
    const/4 v8, 0x0

    .line 675
    .local v8, moveX:I
    const/4 v9, 0x0

    .line 676
    .local v9, moveY:I
    move v7, v10

    .line 677
    .local v7, imageW:I
    move v3, v2

    .line 678
    .local v3, imageH:I
    if-ge v6, v10, :cond_4

    .line 679
    sub-int v11, v10, v6

    div-int/lit8 v8, v11, 0x2

    .line 680
    move v7, v6

    .line 683
    :cond_4
    div-int/lit8 v4, v5, 0x2

    .line 685
    .local v4, imageHalfH:I
    sub-int v9, v2, v4

    .line 686
    move v3, v5

    .line 688
    int-to-float v11, v8

    int-to-float v12, v9

    invoke-virtual {p1, v11, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 690
    invoke-virtual {v1, v13, v13, v7, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 691
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 5
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 626
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFFlipImage$HalfFrame;->mFrameBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 627
    .local v0, bg:Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFFlipImage$HalfFrame;->mFrameImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 629
    .local v2, image:Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    if-nez v2, :cond_0

    .line 630
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 645
    :goto_0
    return-void

    .line 632
    :cond_0
    const/4 v3, 0x0

    .line 633
    .local v3, width:I
    const/4 v1, 0x0

    .line 635
    .local v1, height:I
    if-eqz v0, :cond_2

    .line 636
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 637
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 643
    :cond_1
    :goto_1
    if-lez v1, :cond_3

    div-int/lit8 v4, v1, 0x2

    :goto_2
    invoke-virtual {p0, v3, v4}, Lcom/nemustech/tiffany/widget/TFFlipImage$HalfFrame;->setMeasuredDimension(II)V

    goto :goto_0

    .line 638
    :cond_2
    if-eqz v2, :cond_1

    .line 639
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 640
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    goto :goto_1

    .line 643
    :cond_3
    const/4 v4, 0x0

    goto :goto_2
.end method

.method public setFrameBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "d"

    .prologue
    .line 696
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFFlipImage$HalfFrame;->mFrameBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 697
    return-void
.end method

.method public setFrameImage(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "d"

    .prologue
    .line 700
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFFlipImage$HalfFrame;->mFrameImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 701
    return-void
.end method
