.class Landroid/webkit/WebView$ExtendedZoomControls;
.super Landroid/widget/FrameLayout;
.source "WebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExtendedZoomControls"
.end annotation


# instance fields
.field mPlusMinusZoomControls:Landroid/widget/ZoomControls;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 316
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 317
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 319
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x1090074

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 320
    const v1, 0x1020227

    invoke-virtual {p0, v1}, Landroid/webkit/WebView$ExtendedZoomControls;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ZoomControls;

    iput-object v1, p0, Landroid/webkit/WebView$ExtendedZoomControls;->mPlusMinusZoomControls:Landroid/widget/ZoomControls;

    .line 322
    const v1, 0x102022a

    invoke-virtual {p0, v1}, Landroid/webkit/WebView$ExtendedZoomControls;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 324
    return-void
.end method

.method private fade(IFF)V
    .locals 3
    .parameter "visibility"
    .parameter "startAlpha"
    .parameter "endAlpha"

    .prologue
    .line 337
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p2, p3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 338
    .local v0, anim:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 339
    invoke-virtual {p0, v0}, Landroid/webkit/WebView$ExtendedZoomControls;->startAnimation(Landroid/view/animation/Animation;)V

    .line 340
    invoke-virtual {p0, p1}, Landroid/webkit/WebView$ExtendedZoomControls;->setVisibility(I)V

    .line 341
    return-void
.end method


# virtual methods
.method public hasFocus()Z
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Landroid/webkit/WebView$ExtendedZoomControls;->mPlusMinusZoomControls:Landroid/widget/ZoomControls;

    invoke-virtual {v0}, Landroid/widget/ZoomControls;->hasFocus()Z

    move-result v0

    return v0
.end method

.method public hide()V
    .locals 3

    .prologue
    .line 333
    const/16 v0, 0x8

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/webkit/WebView$ExtendedZoomControls;->fade(IFF)V

    .line 334
    return-void
.end method

.method public setOnZoomInClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 348
    iget-object v0, p0, Landroid/webkit/WebView$ExtendedZoomControls;->mPlusMinusZoomControls:Landroid/widget/ZoomControls;

    invoke-virtual {v0, p1}, Landroid/widget/ZoomControls;->setOnZoomInClickListener(Landroid/view/View$OnClickListener;)V

    .line 349
    return-void
.end method

.method public setOnZoomOutClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 352
    iget-object v0, p0, Landroid/webkit/WebView$ExtendedZoomControls;->mPlusMinusZoomControls:Landroid/widget/ZoomControls;

    invoke-virtual {v0, p1}, Landroid/widget/ZoomControls;->setOnZoomOutClickListener(Landroid/view/View$OnClickListener;)V

    .line 353
    return-void
.end method

.method public show(ZZ)V
    .locals 3
    .parameter "showZoom"
    .parameter "canZoomOut"

    .prologue
    const/4 v2, 0x0

    .line 327
    iget-object v0, p0, Landroid/webkit/WebView$ExtendedZoomControls;->mPlusMinusZoomControls:Landroid/widget/ZoomControls;

    if-eqz p1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ZoomControls;->setVisibility(I)V

    .line 329
    const/4 v0, 0x0

    const/high16 v1, 0x3f80

    invoke-direct {p0, v2, v0, v1}, Landroid/webkit/WebView$ExtendedZoomControls;->fade(IFF)V

    .line 330
    return-void

    .line 327
    :cond_0
    const/16 v1, 0x8

    goto :goto_0
.end method
