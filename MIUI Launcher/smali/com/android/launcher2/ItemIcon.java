package com.android.launcher2; class ItemIcon {/*

.class public abstract Lcom/android/launcher2/ItemIcon;
.super Landroid/widget/FrameLayout;
.source "ItemIcon.java"

# interfaces
.implements Lcom/android/launcher2/ApplicationsMessage$IconMessage;


# instance fields
.field protected mIcon:Landroid/widget/ImageView;

.field private mIconMargin:I

.field private mIsCompact:Z

.field private mMessage:Landroid/widget/TextView;

.field private mMessageMargin:I

.field private mShadow:Landroid/widget/ImageView;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    #p0=(Reference);
    const/4 v0, 0x0

    #v0=(Null);
    iput-boolean v0, p0, Lcom/android/launcher2/ItemIcon;->mIsCompact:Z

    .line 35
    const/4 v0, 0x1

    #v0=(One);
    invoke-virtual {p0, v0}, Lcom/android/launcher2/ItemIcon;->setDrawingCacheEnabled(Z)V

    .line 36
    invoke-virtual {p0}, Lcom/android/launcher2/ItemIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    #v0=(Reference);
    const v1, 0x7f0b0016

    #v1=(Integer);
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    #v0=(Integer);
    iput v0, p0, Lcom/android/launcher2/ItemIcon;->mMessageMargin:I

    .line 37
    invoke-virtual {p0}, Lcom/android/launcher2/ItemIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    #v0=(Reference);
    const v1, 0x7f0b0015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    #v0=(Integer);
    iput v0, p0, Lcom/android/launcher2/ItemIcon;->mIconMargin:I

    .line 38
    return-void
.end method

.method private createShadowBackground(IILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "width"
    .parameter "height"
    .parameter "src"

    .prologue
    const/4 v10, 0x0

    .line 65
    #v10=(Null);
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    #v7=(Reference);
    invoke-static {p1, p2, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 66
    .local v4, result:Landroid/graphics/Bitmap;
    #v4=(Reference);
    new-instance v1, Landroid/graphics/Canvas;

    #v1=(UninitRef);
    invoke-direct {v1, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 67
    .local v1, dest:Landroid/graphics/Canvas;
    #v1=(Reference);
    sget-object v7, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v10, v7}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 68
    new-instance v0, Landroid/graphics/Paint;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 69
    .local v0, blurPaint:Landroid/graphics/Paint;
    #v0=(Reference);
    const/4 v7, 0x2

    #v7=(PosByte);
    new-array v3, v7, [I

    .line 70
    .local v3, offset:[I
    #v3=(Reference);
    invoke-virtual {p0}, Lcom/android/launcher2/ItemIcon;->getContext()Landroid/content/Context;

    move-result-object v7

    #v7=(Reference);
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b001a

    #v8=(Integer);
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    .line 71
    .local v6, shadowSize:F
    #v6=(Float);
    new-instance v7, Landroid/graphics/BlurMaskFilter;

    #v7=(UninitRef);
    sget-object v8, Landroid/graphics/BlurMaskFilter$Blur;->INNER:Landroid/graphics/BlurMaskFilter$Blur;

    #v8=(Reference);
    invoke-direct {v7, v6, v8}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    #v7=(Reference);
    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 72
    invoke-virtual {p3, v0, v3}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 73
    .local v2, mask:Landroid/graphics/Bitmap;
    #v2=(Reference);
    new-instance v5, Landroid/graphics/Paint;

    #v5=(UninitRef);
    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 74
    .local v5, shadowPaint:Landroid/graphics/Paint;
    #v5=(Reference);
    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 75
    const/4 v7, 0x0

    #v7=(Null);
    invoke-virtual {p0}, Lcom/android/launcher2/ItemIcon;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090026

    #v9=(Integer);
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    #v8=(Integer);
    invoke-virtual {v5, v6, v7, v6, v8}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 77
    aget v7, v3, v10

    #v7=(Integer);
    int-to-float v7, v7

    #v7=(Float);
    add-float/2addr v7, v6

    const/4 v8, 0x1

    #v8=(One);
    aget v8, v3, v8

    #v8=(Integer);
    int-to-float v8, v8

    #v8=(Float);
    add-float/2addr v8, v6

    invoke-virtual {v1, v2, v7, v8, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 78
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 79
    return-object v4
.end method


# virtual methods
.method public getMessage()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/android/launcher2/ItemIcon;->isEmptyMessage()Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/android/launcher2/ItemIcon;->mMessage:Landroid/widget/TextView;

    #v0=(Reference);
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 93
    :goto_0
    return-object v0

    :cond_0
    #v0=(Boolean);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public isCompact()Z
    .locals 1

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/android/launcher2/ItemIcon;->mIsCompact:Z

    #v0=(Boolean);
    return v0
.end method

.method public isEmptyMessage()Z
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/launcher2/ItemIcon;->mMessage:Landroid/widget/TextView;

    #v0=(Reference);
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    #v0=(Integer);
    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    #v0=(Boolean);
    return v0

    :cond_0
    #v0=(Integer);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    const/16 v6, 0x8

    .line 106
    #v6=(PosByte);
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 107
    iget-boolean v3, p0, Lcom/android/launcher2/ItemIcon;->mIsCompact:Z

    #v3=(Boolean);
    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/ItemIcon;->getContext()Landroid/content/Context;

    move-result-object v3

    #v3=(Reference);
    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "pref_key_icon_shadow"

    #v4=(Reference);
    const/4 v5, 0x1

    #v5=(One);
    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    #v3=(Boolean);
    if-nez v3, :cond_2

    .line 110
    :cond_0
    #v4=(Conflicted);v5=(Conflicted);
    iget-object v3, p0, Lcom/android/launcher2/ItemIcon;->mShadow:Landroid/widget/ImageView;

    #v3=(Reference);
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 122
    :cond_1
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    return-void

    .line 112
    :cond_2
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Boolean);v4=(Reference);v5=(One);
    invoke-virtual {p0}, Lcom/android/launcher2/ItemIcon;->getMeasuredWidth()I

    move-result v2

    .line 113
    .local v2, width:I
    #v2=(Integer);
    invoke-virtual {p0}, Lcom/android/launcher2/ItemIcon;->getMeasuredHeight()I

    move-result v0

    .line 114
    .local v0, height:I
    #v0=(Integer);
    iget-object v3, p0, Lcom/android/launcher2/ItemIcon;->mIcon:Landroid/widget/ImageView;

    #v3=(Reference);
    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 115
    .local v1, src:Landroid/graphics/drawable/Drawable;
    #v1=(Reference);
    instance-of v3, v1, Landroid/graphics/drawable/BitmapDrawable;

    #v3=(Boolean);
    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher2/ItemIcon;->mShadow:Landroid/widget/ImageView;

    #v3=(Reference);
    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    #v3=(Integer);
    if-ne v3, v6, :cond_1

    if-lez v2, :cond_1

    if-lez v0, :cond_1

    .line 117
    iget-object v3, p0, Lcom/android/launcher2/ItemIcon;->mShadow:Landroid/widget/ImageView;

    #v3=(Reference);
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .end local v1           #src:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {p0, v2, v0, v4}, Lcom/android/launcher2/ItemIcon;->createShadowBackground(IILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 119
    iget-object v3, p0, Lcom/android/launcher2/ItemIcon;->mShadow:Landroid/widget/ImageView;

    const/4 v4, 0x0

    #v4=(Null);
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 42
    const v0, 0x7f08002d

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/launcher2/ItemIcon;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher2/ItemIcon;->mIcon:Landroid/widget/ImageView;

    .line 43
    const v0, 0x7f08002e

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/launcher2/ItemIcon;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher2/ItemIcon;->mMessage:Landroid/widget/TextView;

    .line 44
    const v0, 0x7f080030

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/launcher2/ItemIcon;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher2/ItemIcon;->mTitle:Landroid/widget/TextView;

    .line 45
    const v0, 0x7f08002f

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/launcher2/ItemIcon;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher2/ItemIcon;->mShadow:Landroid/widget/ImageView;

    .line 46
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v6, 0x0

    .line 50
    #v6=(Null);
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 51
    iget-object v3, p0, Lcom/android/launcher2/ItemIcon;->mIcon:Landroid/widget/ImageView;

    #v3=(Reference);
    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    .line 52
    .local v0, iconWidth:I
    #v0=(Integer);
    iget-object v3, p0, Lcom/android/launcher2/ItemIcon;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    .line 53
    .local v2, messageWidth:I
    #v2=(Integer);
    iget-object v3, p0, Lcom/android/launcher2/ItemIcon;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 54
    .local v1, lp:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v3, 0x46

    #v3=(PosByte);
    if-le v2, v3, :cond_0

    .line 55
    const/16 v2, 0x46

    #v2=(PosByte);
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 57
    :cond_0
    #v2=(Integer);
    div-int/lit8 v3, v0, 0x2

    #v3=(Integer);
    iget v4, p0, Lcom/android/launcher2/ItemIcon;->mMessageMargin:I

    #v4=(Integer);
    add-int/2addr v3, v4

    div-int/lit8 v4, v2, 0x2

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/launcher2/ItemIcon;->mMessageMargin:I

    invoke-virtual {v1, v3, v4, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 58
    iget-object v3, p0, Lcom/android/launcher2/ItemIcon;->mMessage:Landroid/widget/TextView;

    #v3=(Reference);
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    iget-object v3, p0, Lcom/android/launcher2/ItemIcon;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1           #lp:Landroid/widget/FrameLayout$LayoutParams;
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 60
    .restart local v1       #lp:Landroid/widget/FrameLayout$LayoutParams;
    iget v3, p0, Lcom/android/launcher2/ItemIcon;->mIconMargin:I

    #v3=(Integer);
    int-to-float v4, v0

    #v4=(Float);
    const v5, 0x3daaaaab

    #v5=(Integer);
    mul-float/2addr v4, v5

    float-to-int v4, v4

    #v4=(Integer);
    iget v5, p0, Lcom/android/launcher2/ItemIcon;->mIconMargin:I

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 61
    iget-object v3, p0, Lcom/android/launcher2/ItemIcon;->mIcon:Landroid/widget/ImageView;

    #v3=(Reference);
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    return-void
.end method

.method public setCompactViewMode(Z)V
    .locals 2
    .parameter "isCompact"

    .prologue
    .line 137
    iput-boolean p1, p0, Lcom/android/launcher2/ItemIcon;->mIsCompact:Z

    .line 138
    iget-object v0, p0, Lcom/android/launcher2/ItemIcon;->mTitle:Landroid/widget/TextView;

    #v0=(Reference);
    if-eqz p1, :cond_0

    const/16 v1, 0x8

    :goto_0
    #v1=(PosByte);
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 139
    return-void

    .line 138
    :cond_0
    #v1=(Uninit);
    const/4 v1, 0x0

    #v1=(Null);
    goto :goto_0
.end method

.method public setIcon(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/launcher2/ItemIcon;->mIcon:Landroid/widget/ImageView;

    #v0=(Reference);
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 126
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/launcher2/ItemIcon;->mIcon:Landroid/widget/ImageView;

    #v0=(Reference);
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 103
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/launcher2/ItemIcon;->mMessage:Landroid/widget/TextView;

    #v0=(Reference);
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_0

    const/4 v1, 0x4

    :goto_0
    #v1=(PosByte);
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 85
    iget-object v0, p0, Lcom/android/launcher2/ItemIcon;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    return-void

    .line 84
    :cond_0
    #v1=(Boolean);
    const/4 v1, 0x0

    #v1=(Null);
    goto :goto_0
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/launcher2/ItemIcon;->mTitle:Landroid/widget/TextView;

    #v0=(Reference);
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    return-void
.end method

*/}
