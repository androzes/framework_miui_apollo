.class public Lcom/android/settings/RunningServices$LinearColorBar;
.super Landroid/widget/LinearLayout;
.source "RunningServices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/RunningServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LinearColorBar"
.end annotation


# instance fields
.field private mGreenRatio:F

.field final mPaint:Landroid/graphics/Paint;

.field final mRect:Landroid/graphics/Rect;

.field private mRedRatio:F

.field private mYellowRatio:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 854
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 850
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/settings/RunningServices$LinearColorBar;->mRect:Landroid/graphics/Rect;

    .line 851
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/RunningServices$LinearColorBar;->mPaint:Landroid/graphics/Paint;

    .line 855
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/RunningServices$LinearColorBar;->setWillNotDraw(Z)V

    .line 856
    iget-object v0, p0, Lcom/android/settings/RunningServices$LinearColorBar;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 857
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    .line 868
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 870
    invoke-virtual {p0}, Lcom/android/settings/RunningServices$LinearColorBar;->getWidth()I

    move-result v2

    .line 871
    .local v2, width:I
    iget-object v3, p0, Lcom/android/settings/RunningServices$LinearColorBar;->mRect:Landroid/graphics/Rect;

    const/4 v4, 0x0

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 872
    iget-object v3, p0, Lcom/android/settings/RunningServices$LinearColorBar;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/settings/RunningServices$LinearColorBar;->getHeight()I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 874
    const/4 v0, 0x0

    .line 876
    .local v0, left:I
    int-to-float v3, v2

    iget v4, p0, Lcom/android/settings/RunningServices$LinearColorBar;->mRedRatio:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    add-int v1, v0, v3

    .line 877
    .local v1, right:I
    if-ge v0, v1, :cond_0

    .line 878
    iget-object v3, p0, Lcom/android/settings/RunningServices$LinearColorBar;->mRect:Landroid/graphics/Rect;

    iput v0, v3, Landroid/graphics/Rect;->left:I

    .line 879
    iget-object v3, p0, Lcom/android/settings/RunningServices$LinearColorBar;->mRect:Landroid/graphics/Rect;

    iput v1, v3, Landroid/graphics/Rect;->right:I

    .line 880
    iget-object v3, p0, Lcom/android/settings/RunningServices$LinearColorBar;->mPaint:Landroid/graphics/Paint;

    const/16 v4, -0x7f80

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 881
    iget-object v3, p0, Lcom/android/settings/RunningServices$LinearColorBar;->mRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/settings/RunningServices$LinearColorBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 882
    sub-int v3, v1, v0

    sub-int/2addr v2, v3

    .line 883
    move v0, v1

    .line 886
    :cond_0
    int-to-float v3, v2

    iget v4, p0, Lcom/android/settings/RunningServices$LinearColorBar;->mYellowRatio:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    add-int v1, v0, v3

    .line 887
    if-ge v0, v1, :cond_1

    .line 888
    iget-object v3, p0, Lcom/android/settings/RunningServices$LinearColorBar;->mRect:Landroid/graphics/Rect;

    iput v0, v3, Landroid/graphics/Rect;->left:I

    .line 889
    iget-object v3, p0, Lcom/android/settings/RunningServices$LinearColorBar;->mRect:Landroid/graphics/Rect;

    iput v1, v3, Landroid/graphics/Rect;->right:I

    .line 890
    iget-object v3, p0, Lcom/android/settings/RunningServices$LinearColorBar;->mPaint:Landroid/graphics/Paint;

    const/16 v4, -0x100

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 891
    iget-object v3, p0, Lcom/android/settings/RunningServices$LinearColorBar;->mRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/settings/RunningServices$LinearColorBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 892
    sub-int v3, v1, v0

    sub-int/2addr v2, v3

    .line 893
    move v0, v1

    .line 896
    :cond_1
    add-int v1, v0, v2

    .line 897
    if-ge v0, v1, :cond_2

    .line 898
    iget-object v3, p0, Lcom/android/settings/RunningServices$LinearColorBar;->mRect:Landroid/graphics/Rect;

    iput v0, v3, Landroid/graphics/Rect;->left:I

    .line 899
    iget-object v3, p0, Lcom/android/settings/RunningServices$LinearColorBar;->mRect:Landroid/graphics/Rect;

    iput v1, v3, Landroid/graphics/Rect;->right:I

    .line 900
    iget-object v3, p0, Lcom/android/settings/RunningServices$LinearColorBar;->mPaint:Landroid/graphics/Paint;

    const v4, -0x7f0080

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 901
    iget-object v3, p0, Lcom/android/settings/RunningServices$LinearColorBar;->mRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/settings/RunningServices$LinearColorBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 903
    :cond_2
    return-void
.end method

.method public setRatios(FFF)V
    .locals 0
    .parameter "red"
    .parameter "yellow"
    .parameter "green"

    .prologue
    .line 860
    iput p1, p0, Lcom/android/settings/RunningServices$LinearColorBar;->mRedRatio:F

    .line 861
    iput p2, p0, Lcom/android/settings/RunningServices$LinearColorBar;->mYellowRatio:F

    .line 862
    iput p3, p0, Lcom/android/settings/RunningServices$LinearColorBar;->mGreenRatio:F

    .line 863
    invoke-virtual {p0}, Lcom/android/settings/RunningServices$LinearColorBar;->invalidate()V

    .line 864
    return-void
.end method
