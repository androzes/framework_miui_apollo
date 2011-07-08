package com.android.launcher2; class Utilities {/*

.class final Lcom/android/launcher2/Utilities;
.super Ljava/lang/Object;
.source "Utilities.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/Utilities$BubbleText;
    }
.end annotation


# static fields
.field private static final sBlurPaint:Landroid/graphics/Paint;

.field private static final sBounds:Landroid/graphics/Rect;

.field private static final sCanvas:Landroid/graphics/Canvas;

.field static sColorIndex:I

.field static sColors:[I

.field private static final sDisabledPaint:Landroid/graphics/Paint;

.field private static final sGlowColorFocusedPaint:Landroid/graphics/Paint;

.field private static final sGlowColorPressedPaint:Landroid/graphics/Paint;

.field private static sIconHeight:I

.field private static sIconWidth:I

.field private static final sOldBounds:Landroid/graphics/Rect;

.field private static final sPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v0, 0x5a

    .line 53
    #v0=(PosByte);
    sput v0, Lcom/android/launcher2/Utilities;->sIconWidth:I

    .line 54
    sput v0, Lcom/android/launcher2/Utilities;->sIconHeight:I

    .line 56
    new-instance v0, Landroid/graphics/Paint;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    #v0=(Reference);
    sput-object v0, Lcom/android/launcher2/Utilities;->sPaint:Landroid/graphics/Paint;

    .line 57
    new-instance v0, Landroid/graphics/Paint;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    #v0=(Reference);
    sput-object v0, Lcom/android/launcher2/Utilities;->sBlurPaint:Landroid/graphics/Paint;

    .line 58
    new-instance v0, Landroid/graphics/Paint;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    #v0=(Reference);
    sput-object v0, Lcom/android/launcher2/Utilities;->sGlowColorPressedPaint:Landroid/graphics/Paint;

    .line 59
    new-instance v0, Landroid/graphics/Paint;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    #v0=(Reference);
    sput-object v0, Lcom/android/launcher2/Utilities;->sGlowColorFocusedPaint:Landroid/graphics/Paint;

    .line 60
    new-instance v0, Landroid/graphics/Paint;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    #v0=(Reference);
    sput-object v0, Lcom/android/launcher2/Utilities;->sDisabledPaint:Landroid/graphics/Paint;

    .line 61
    new-instance v0, Landroid/graphics/Rect;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #v0=(Reference);
    sput-object v0, Lcom/android/launcher2/Utilities;->sBounds:Landroid/graphics/Rect;

    .line 62
    new-instance v0, Landroid/graphics/Rect;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #v0=(Reference);
    sput-object v0, Lcom/android/launcher2/Utilities;->sOldBounds:Landroid/graphics/Rect;

    .line 63
    new-instance v0, Landroid/graphics/Canvas;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    #v0=(Reference);
    sput-object v0, Lcom/android/launcher2/Utilities;->sCanvas:Landroid/graphics/Canvas;

    .line 66
    sget-object v0, Lcom/android/launcher2/Utilities;->sCanvas:Landroid/graphics/Canvas;

    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    #v1=(UninitRef);
    const/4 v2, 0x4

    #v2=(PosByte);
    const/4 v3, 0x2

    #v3=(PosByte);
    invoke-direct {v1, v2, v3}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 91
    const/4 v0, 0x3

    #v0=(PosByte);
    new-array v0, v0, [I

    #v0=(Reference);
    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/launcher2/Utilities;->sColors:[I

    .line 92
    const/4 v0, 0x0

    #v0=(Null);
    sput v0, Lcom/android/launcher2/Utilities;->sColorIndex:I

    return-void

    .line 91
    :array_0
    .array-data 0x4
        0x0t 0x0t 0xfft 0xfft
        0x0t 0xfft 0x0t 0xfft
        0xfft 0x0t 0x0t 0xfft
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    #p0=(Reference);
    return-void
.end method

.method static createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "icon"
    .parameter "context"

    .prologue
    .line 99
    instance-of v1, p0, Landroid/graphics/drawable/BitmapDrawable;

    #v1=(Boolean);
    if-eqz v1, :cond_0

    sget v1, Lcom/android/launcher2/Utilities;->sIconWidth:I

    #v1=(Integer);
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    #v2=(Integer);
    if-ne v1, v2, :cond_0

    sget v1, Lcom/android/launcher2/Utilities;->sIconHeight:I

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 102
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .end local p0
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    .line 168
    .end local p1
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);
    return-object p0

    .line 105
    .restart local p0
    .restart local p1
    :cond_0
    #v0=(Uninit);v1=(Integer);v2=(Conflicted);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);
    sget-object v6, Lcom/android/launcher2/Utilities;->sCanvas:Landroid/graphics/Canvas;

    #v6=(Reference);
    monitor-enter v6

    .line 106
    :try_start_0
    sget v1, Lcom/android/launcher2/Utilities;->sIconWidth:I

    const/4 v2, -0x1

    #v2=(Byte);
    if-ne v1, v2, :cond_1

    .line 107
    invoke-static {p1}, Lcom/android/launcher2/Utilities;->initStatics(Landroid/content/Context;)V

    .line 110
    :cond_1
    sget v4, Lcom/android/launcher2/Utilities;->sIconWidth:I

    .line 111
    .local v4, width:I
    #v4=(Integer);
    sget v3, Lcom/android/launcher2/Utilities;->sIconHeight:I

    .line 113
    .local v3, height:I
    #v3=(Integer);
    instance-of v1, p0, Landroid/graphics/drawable/PaintDrawable;

    #v1=(Boolean);
    if-eqz v1, :cond_4

    .line 114
    move-object v0, p0

    #v0=(Reference);
    check-cast v0, Landroid/graphics/drawable/PaintDrawable;

    move-object p1, v0

    .line 115
    .local p1, painter:Landroid/graphics/drawable/PaintDrawable;
    invoke-virtual {p1, v4}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    .line 116
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    .line 125
    .end local p1           #painter:Landroid/graphics/drawable/PaintDrawable;
    :cond_2
    :goto_1
    #v0=(Conflicted);v1=(Integer);v2=(Conflicted);
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 126
    .local v2, sourceWidth:I
    #v2=(Integer);
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 128
    .local v1, sourceHeight:I
    if-lez v2, :cond_7

    if-lez v2, :cond_7

    .line 130
    if-lt v4, v2, :cond_3

    if-ge v3, v1, :cond_6

    .line 132
    :cond_3
    int-to-float p1, v2

    #p1=(Float);
    int-to-float v5, v1

    #v5=(Float);
    div-float/2addr p1, v5

    .line 133
    .local p1, ratio:F
    if-le v2, v1, :cond_5

    .line 134
    int-to-float v1, v4

    #v1=(Float);
    div-float p1, v1, p1

    float-to-int p1, p1

    .end local v3           #height:I
    .local p1, height:I
    #p1=(Integer);
    move v1, v4

    .end local v4           #width:I
    .local v1, width:I
    :goto_2
    #v1=(Integer);
    move v2, p1

    .end local p1           #height:I
    .local v2, height:I
    move v5, v1

    .line 146
    .end local v1           #width:I
    .local v5, width:I
    :goto_3
    #v5=(Integer);p1=(Conflicted);
    sget p1, Lcom/android/launcher2/Utilities;->sIconWidth:I

    #p1=(Integer);
    sget v1, Lcom/android/launcher2/Utilities;->sIconHeight:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    #v3=(Reference);
    invoke-static {p1, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 148
    .local p1, bitmap:Landroid/graphics/Bitmap;
    #p1=(Reference);
    sget-object v1, Lcom/android/launcher2/Utilities;->sCanvas:Landroid/graphics/Canvas;

    .line 149
    .local v1, canvas:Landroid/graphics/Canvas;
    #v1=(Reference);
    invoke-virtual {v1, p1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 151
    sget v3, Lcom/android/launcher2/Utilities;->sIconWidth:I

    #v3=(Integer);
    sub-int/2addr v3, v5

    div-int/lit8 v3, v3, 0x2

    .line 152
    .local v3, left:I
    sget v4, Lcom/android/launcher2/Utilities;->sIconHeight:I

    sub-int/2addr v4, v2

    div-int/lit8 v4, v4, 0x2

    .line 163
    .local v4, top:I
    sget-object v7, Lcom/android/launcher2/Utilities;->sOldBounds:Landroid/graphics/Rect;

    #v7=(Reference);
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    #v8=(Reference);
    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 164
    add-int/2addr v5, v3

    add-int/2addr v2, v4

    invoke-virtual {p0, v3, v4, v5, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 165
    .end local v2           #height:I
    .end local v5           #width:I
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 166
    sget-object v1, Lcom/android/launcher2/Utilities;->sOldBounds:Landroid/graphics/Rect;

    .end local v1           #canvas:Landroid/graphics/Canvas;
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 168
    monitor-exit v6

    move-object p0, p1

    goto :goto_0

    .line 117
    .local v3, height:I
    .local v4, width:I
    .local p1, context:Landroid/content/Context;
    :cond_4
    #v0=(Uninit);v1=(Boolean);v2=(Byte);v5=(Uninit);v7=(Uninit);v8=(Uninit);
    instance-of v1, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_2

    .line 119
    move-object v0, p0

    #v0=(Reference);
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v2, v0

    .line 120
    .local v2, bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    #v2=(Reference);
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 121
    .local v1, bitmap:Landroid/graphics/Bitmap;
    #v1=(Reference);
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v1

    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    #v1=(Integer);
    if-nez v1, :cond_2

    .line 122
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .end local p1           #context:Landroid/content/Context;
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    goto :goto_1

    .line 169
    .end local v2           #bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    .end local v3           #height:I
    .end local v4           #width:I
    .end local p0
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v7=(Conflicted);v8=(Conflicted);p1=(Conflicted);
    move-exception p0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 135
    .local v1, sourceHeight:I
    .local v2, sourceWidth:I
    .restart local v3       #height:I
    .restart local v4       #width:I
    .restart local p0
    .local p1, ratio:F
    :cond_5
    #v1=(Integer);v2=(Integer);v3=(Integer);v4=(Integer);v5=(Float);v7=(Uninit);v8=(Uninit);p1=(Float);
    if-le v1, v2, :cond_8

    .line 136
    int-to-float v1, v3

    #v1=(Float);
    mul-float/2addr p1, v1

    float-to-int p1, p1

    .end local v4           #width:I
    .local p1, width:I
    #p1=(Integer);
    move v1, p1

    .end local p1           #width:I
    .local v1, width:I
    #v1=(Integer);
    move p1, v3

    .end local v3           #height:I
    .local p1, height:I
    goto :goto_2

    .line 138
    .end local p1           #height:I
    .local v1, sourceHeight:I
    .restart local v3       #height:I
    .restart local v4       #width:I
    :cond_6
    #v5=(Uninit);p1=(Reference);
    if-ge v2, v4, :cond_7

    if-ge v1, v3, :cond_7

    .line 140
    move v2, v2

    .line 141
    .end local v4           #width:I
    .local v2, width:I
    move p1, v1

    .end local v3           #height:I
    .restart local p1       #height:I
    #p1=(Integer);
    move v5, v2

    .end local v2           #width:I
    .restart local v5       #width:I
    #v5=(Integer);
    move v2, p1

    .end local p1           #height:I
    .local v2, height:I
    goto :goto_3

    .end local v5           #width:I
    .local v2, sourceWidth:I
    .restart local v3       #height:I
    .restart local v4       #width:I
    :cond_7
    #v5=(Uninit);p1=(Reference);
    move v2, v3

    .end local v3           #height:I
    .local v2, height:I
    move v5, v4

    .end local v4           #width:I
    .restart local v5       #width:I
    #v5=(Integer);
    goto :goto_3

    .end local v5           #width:I
    .local v2, sourceWidth:I
    .restart local v3       #height:I
    .restart local v4       #width:I
    .local p1, ratio:F
    :cond_8
    #v5=(Float);p1=(Float);
    move p1, v3

    .end local v3           #height:I
    .local p1, height:I
    #p1=(Integer);
    move v1, v4

    .end local v4           #width:I
    .local v1, width:I
    goto :goto_2
.end method

.method private static initStatics(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    const/16 v9, 0x1e

    #v9=(PosByte);
    const/4 v8, 0x0

    .line 238
    #v8=(Null);
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 239
    .local v3, resources:Landroid/content/res/Resources;
    #v3=(Reference);
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 240
    .local v2, metrics:Landroid/util/DisplayMetrics;
    #v2=(Reference);
    iget v1, v2, Landroid/util/DisplayMetrics;->density:F

    .line 242
    .local v1, density:F
    #v1=(Integer);
    sget-object v4, Lcom/android/launcher2/Utilities;->sBlurPaint:Landroid/graphics/Paint;

    #v4=(Reference);
    new-instance v5, Landroid/graphics/BlurMaskFilter;

    #v5=(UninitRef);
    const/high16 v6, 0x40a0

    #v6=(Integer);
    mul-float/2addr v6, v1

    #v6=(Float);
    sget-object v7, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    #v7=(Reference);
    invoke-direct {v5, v6, v7}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    #v5=(Reference);
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 243
    sget-object v4, Lcom/android/launcher2/Utilities;->sGlowColorPressedPaint:Landroid/graphics/Paint;

    const/16 v5, -0x3d00

    #v5=(Short);
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 244
    sget-object v4, Lcom/android/launcher2/Utilities;->sGlowColorPressedPaint:Landroid/graphics/Paint;

    invoke-static {v8, v9}, Landroid/graphics/TableMaskFilter;->CreateClipTable(II)Landroid/graphics/TableMaskFilter;

    move-result-object v5

    #v5=(Reference);
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 245
    sget-object v4, Lcom/android/launcher2/Utilities;->sGlowColorFocusedPaint:Landroid/graphics/Paint;

    const/16 v5, -0x7200

    #v5=(Short);
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 246
    sget-object v4, Lcom/android/launcher2/Utilities;->sGlowColorFocusedPaint:Landroid/graphics/Paint;

    invoke-static {v8, v9}, Landroid/graphics/TableMaskFilter;->CreateClipTable(II)Landroid/graphics/TableMaskFilter;

    move-result-object v5

    #v5=(Reference);
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 248
    new-instance v0, Landroid/graphics/ColorMatrix;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 249
    .local v0, cm:Landroid/graphics/ColorMatrix;
    #v0=(Reference);
    const v4, 0x3e4ccccd

    #v4=(Integer);
    invoke-virtual {v0, v4}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 250
    sget-object v4, Lcom/android/launcher2/Utilities;->sDisabledPaint:Landroid/graphics/Paint;

    #v4=(Reference);
    new-instance v5, Landroid/graphics/ColorMatrixColorFilter;

    #v5=(UninitRef);
    invoke-direct {v5, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    #v5=(Reference);
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 251
    sget-object v4, Lcom/android/launcher2/Utilities;->sDisabledPaint:Landroid/graphics/Paint;

    const/16 v5, 0x88

    #v5=(PosShort);
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 252
    return-void
.end method

.method static resampleIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "bitmap"
    .parameter "context"

    .prologue
    .line 208
    sget-object v0, Lcom/android/launcher2/Utilities;->sCanvas:Landroid/graphics/Canvas;

    #v0=(Reference);
    monitor-enter v0

    .line 209
    :try_start_0
    sget v1, Lcom/android/launcher2/Utilities;->sIconWidth:I

    #v1=(Integer);
    const/4 v2, -0x1

    #v2=(Byte);
    if-ne v1, v2, :cond_0

    .line 210
    invoke-static {p1}, Lcom/android/launcher2/Utilities;->initStatics(Landroid/content/Context;)V

    .line 213
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sget v2, Lcom/android/launcher2/Utilities;->sIconWidth:I

    #v2=(Integer);
    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget v2, Lcom/android/launcher2/Utilities;->sIconHeight:I

    if-ne v1, v2, :cond_1

    .line 214
    monitor-exit v0

    move-object v0, p0

    .line 216
    :goto_0
    #v1=(Conflicted);
    return-object v0

    :cond_1
    #v1=(Integer);
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    #v1=(UninitRef);
    invoke-direct {v1, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    #v1=(Reference);
    invoke-static {v1, p1}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    monitor-exit v0

    move-object v0, v1

    goto :goto_0

    .line 218
    :catchall_0
    #v1=(Conflicted);v2=(Conflicted);
    move-exception v1

    #v1=(Reference);
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static roundToPow2(I)I
    .locals 3
    .parameter "n"

    .prologue
    .line 369
    move v1, p0

    .line 370
    .local v1, orig:I
    #v1=(Integer);
    shr-int/lit8 p0, p0, 0x1

    .line 371
    const/high16 v0, 0x800

    .line 372
    .local v0, mask:I
    :goto_0
    #v0=(Integer);v2=(Conflicted);
    if-eqz v0, :cond_0

    and-int v2, p0, v0

    #v2=(Integer);
    if-nez v2, :cond_0

    .line 373
    shr-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 375
    :cond_0
    :goto_1
    #v2=(Conflicted);
    if-eqz v0, :cond_1

    .line 376
    or-int/2addr p0, v0

    .line 377
    shr-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 379
    :cond_1
    add-int/lit8 p0, p0, 0x1

    .line 380
    if-eq p0, v1, :cond_2

    .line 381
    shl-int/lit8 p0, p0, 0x1

    .line 383
    :cond_2
    return p0
.end method

*/}
