.class Lcom/android/internal/widget/SlidingPanel$Slider;
.super Landroid/widget/FrameLayout;
.source "SlidingPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/SlidingPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Slider"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/SlidingPanel;

.field private zImage:Landroid/widget/ImageView;

.field private zText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/android/internal/widget/SlidingPanel;Landroid/content/Context;)V
    .locals 5
    .parameter
    .parameter "context"

    .prologue
    const/16 v4, 0x8

    const/4 v3, -0x2

    .line 923
    iput-object p1, p0, Lcom/android/internal/widget/SlidingPanel$Slider;->this$0:Lcom/android/internal/widget/SlidingPanel;

    .line 924
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 926
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/widget/SlidingPanel$Slider;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/widget/SlidingPanel$Slider;->zImage:Landroid/widget/ImageView;

    .line 927
    iget-object v0, p0, Lcom/android/internal/widget/SlidingPanel$Slider;->zImage:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 928
    iget-object v0, p0, Lcom/android/internal/widget/SlidingPanel$Slider;->zImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 929
    iget-object v0, p0, Lcom/android/internal/widget/SlidingPanel$Slider;->zImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/SlidingPanel$Slider;->addView(Landroid/view/View;)V

    .line 931
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/widget/SlidingPanel$Slider;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/widget/SlidingPanel$Slider;->zText:Landroid/widget/TextView;

    .line 932
    iget-object v0, p0, Lcom/android/internal/widget/SlidingPanel$Slider;->zText:Landroid/widget/TextView;

    const v1, 0x10804a9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 933
    iget-object v0, p0, Lcom/android/internal/widget/SlidingPanel$Slider;->zText:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 934
    iget-object v0, p0, Lcom/android/internal/widget/SlidingPanel$Slider;->zText:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 935
    iget-object v0, p0, Lcom/android/internal/widget/SlidingPanel$Slider;->zText:Landroid/widget/TextView;

    const/4 v1, 0x2

    const/high16 v2, 0x4170

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 936
    iget-object v0, p0, Lcom/android/internal/widget/SlidingPanel$Slider;->zText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 937
    iget-object v0, p0, Lcom/android/internal/widget/SlidingPanel$Slider;->zText:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/SlidingPanel$Slider;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 938
    return-void
.end method


# virtual methods
.method public getTextVisibility()I
    .locals 1

    .prologue
    .line 965
    iget-object v0, p0, Lcom/android/internal/widget/SlidingPanel$Slider;->zText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    const/4 v6, 0x0

    .line 942
    sub-int v1, p4, p2

    .line 943
    .local v1, width:I
    sub-int v0, p5, p3

    .line 945
    .local v0, height:I
    iget-object v2, p0, Lcom/android/internal/widget/SlidingPanel$Slider;->zImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v6, v6, v1, v0}, Landroid/widget/ImageView;->layout(IIII)V

    .line 946
    iget-object v2, p0, Lcom/android/internal/widget/SlidingPanel$Slider;->zText:Landroid/widget/TextView;

    div-int/lit8 v3, v1, 0x2

    div-int/lit8 v4, v0, 0x2

    iget-object v5, p0, Lcom/android/internal/widget/SlidingPanel$Slider;->zText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    div-int/lit8 v5, v1, 0x2

    iget-object v6, p0, Lcom/android/internal/widget/SlidingPanel$Slider;->zText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    div-int/lit8 v6, v0, 0x2

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->layout(IIII)V

    .line 951
    return-void
.end method

.method public setImage(I)V
    .locals 4
    .parameter "resId"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 954
    iget-object v0, p0, Lcom/android/internal/widget/SlidingPanel$Slider;->zImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 955
    iget-object v0, p0, Lcom/android/internal/widget/SlidingPanel$Slider;->zImage:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 956
    if-eqz p1, :cond_1

    move v0, v2

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/SlidingPanel$Slider;->setVisibility(I)V

    .line 957
    return-void

    :cond_0
    move v1, v3

    .line 955
    goto :goto_0

    :cond_1
    move v0, v3

    .line 956
    goto :goto_1
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 960
    iget-object v0, p0, Lcom/android/internal/widget/SlidingPanel$Slider;->zText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 961
    iget-object v0, p0, Lcom/android/internal/widget/SlidingPanel$Slider;->zText:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 962
    return-void

    .line 961
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
