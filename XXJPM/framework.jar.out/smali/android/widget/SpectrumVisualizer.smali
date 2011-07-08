.class public Landroid/widget/SpectrumVisualizer;
.super Landroid/widget/ImageView;
.source "SpectrumVisualizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/SpectrumVisualizer$SymmetryDotBar;,
        Landroid/widget/SpectrumVisualizer$AsymmetryDotBar;,
        Landroid/widget/SpectrumVisualizer$DotBarDrawer;,
        Landroid/widget/SpectrumVisualizer$OnActiveStreamChangedListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_HEIGHT_PER_CELL:I = 0x8

.field private static final RES_DEFAULT_SLIDING_DOT_BAR_ID:I = 0x10804b8

.field private static final RES_DEFAULT_SLIDING_PANEL_ID:I = 0x10804b7

.field private static final VISUALIZATION_ALPHA_WIDTH:I = 0x1e

.field private static final VISUALIZATION_HEIGHT:I = 0xc

.field private static final VISUALIZATION_SAMPLE_LENGTH:I = 0x100

.field private static final VISUALIZATION_WIDTH:I = 0x3c


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private div:F

.field private mAlphaWidth:I

.field private mCellHeight:I

.field private mDotHeight:I

.field private mDotWidth:I

.field private mDrawer:Landroid/widget/SpectrumVisualizer$DotBarDrawer;

.field private mHeightScale:D

.field private mIsEnableUpdate:Z

.field private mLastMusicActiveTime:J

.field private mOnActiveStreamChangedListener:Landroid/widget/SpectrumVisualizer$OnActiveStreamChangedListener;

.field private mPaint:Landroid/graphics/Paint;

.field private mPixels:[I

.field private mPointData:[I

.field private mUpdateRunnable:Ljava/lang/Runnable;

.field private mVisualWidth:I

.field private mVizData:[S

.field private misNeedCareStreamActive:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 32
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/widget/SpectrumVisualizer;->mPaint:Landroid/graphics/Paint;

    .line 44
    const/16 v0, 0x200

    new-array v0, v0, [S

    iput-object v0, p0, Landroid/widget/SpectrumVisualizer;->mVizData:[S

    .line 45
    const/16 v0, 0x3c

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/SpectrumVisualizer;->mPointData:[I

    .line 49
    new-instance v0, Landroid/widget/SpectrumVisualizer$1;

    invoke-direct {v0, p0}, Landroid/widget/SpectrumVisualizer$1;-><init>(Landroid/widget/SpectrumVisualizer;)V

    iput-object v0, p0, Landroid/widget/SpectrumVisualizer;->mUpdateRunnable:Ljava/lang/Runnable;

    .line 173
    const/high16 v0, 0x4200

    iput v0, p0, Landroid/widget/SpectrumVisualizer;->div:F

    .line 174
    const/high16 v0, 0x4180

    iput v0, p0, Landroid/widget/SpectrumVisualizer;->a:F

    .line 175
    const/high16 v0, 0x4000

    iput v0, p0, Landroid/widget/SpectrumVisualizer;->b:F

    .line 176
    const/high16 v0, 0x3fc0

    iput v0, p0, Landroid/widget/SpectrumVisualizer;->c:F

    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/SpectrumVisualizer;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/widget/SpectrumVisualizer;->mPaint:Landroid/graphics/Paint;

    .line 44
    const/16 v0, 0x200

    new-array v0, v0, [S

    iput-object v0, p0, Landroid/widget/SpectrumVisualizer;->mVizData:[S

    .line 45
    const/16 v0, 0x3c

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/SpectrumVisualizer;->mPointData:[I

    .line 49
    new-instance v0, Landroid/widget/SpectrumVisualizer$1;

    invoke-direct {v0, p0}, Landroid/widget/SpectrumVisualizer$1;-><init>(Landroid/widget/SpectrumVisualizer;)V

    iput-object v0, p0, Landroid/widget/SpectrumVisualizer;->mUpdateRunnable:Ljava/lang/Runnable;

    .line 173
    const/high16 v0, 0x4200

    iput v0, p0, Landroid/widget/SpectrumVisualizer;->div:F

    .line 174
    const/high16 v0, 0x4180

    iput v0, p0, Landroid/widget/SpectrumVisualizer;->a:F

    .line 175
    const/high16 v0, 0x4000

    iput v0, p0, Landroid/widget/SpectrumVisualizer;->b:F

    .line 176
    const/high16 v0, 0x3fc0

    iput v0, p0, Landroid/widget/SpectrumVisualizer;->c:F

    .line 64
    invoke-direct {p0, p1, p2}, Landroid/widget/SpectrumVisualizer;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 68
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/widget/SpectrumVisualizer;->mPaint:Landroid/graphics/Paint;

    .line 44
    const/16 v0, 0x200

    new-array v0, v0, [S

    iput-object v0, p0, Landroid/widget/SpectrumVisualizer;->mVizData:[S

    .line 45
    const/16 v0, 0x3c

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/SpectrumVisualizer;->mPointData:[I

    .line 49
    new-instance v0, Landroid/widget/SpectrumVisualizer$1;

    invoke-direct {v0, p0}, Landroid/widget/SpectrumVisualizer$1;-><init>(Landroid/widget/SpectrumVisualizer;)V

    iput-object v0, p0, Landroid/widget/SpectrumVisualizer;->mUpdateRunnable:Ljava/lang/Runnable;

    .line 173
    const/high16 v0, 0x4200

    iput v0, p0, Landroid/widget/SpectrumVisualizer;->div:F

    .line 174
    const/high16 v0, 0x4180

    iput v0, p0, Landroid/widget/SpectrumVisualizer;->a:F

    .line 175
    const/high16 v0, 0x4000

    iput v0, p0, Landroid/widget/SpectrumVisualizer;->b:F

    .line 176
    const/high16 v0, 0x3fc0

    iput v0, p0, Landroid/widget/SpectrumVisualizer;->c:F

    .line 69
    invoke-direct {p0, p1, p2}, Landroid/widget/SpectrumVisualizer;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    return-void
.end method

.method static synthetic access$000(Landroid/widget/SpectrumVisualizer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/widget/SpectrumVisualizer;->update()V

    return-void
.end method

.method static synthetic access$300(Landroid/widget/SpectrumVisualizer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget v0, p0, Landroid/widget/SpectrumVisualizer;->mDotHeight:I

    return v0
.end method

.method static synthetic access$400(Landroid/widget/SpectrumVisualizer;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Landroid/widget/SpectrumVisualizer;->mPointData:[I

    return-object v0
.end method

.method static synthetic access$500(Landroid/widget/SpectrumVisualizer;)D
    .locals 2
    .parameter "x0"

    .prologue
    .line 23
    iget-wide v0, p0, Landroid/widget/SpectrumVisualizer;->mHeightScale:D

    return-wide v0
.end method

.method static synthetic access$600(Landroid/widget/SpectrumVisualizer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget v0, p0, Landroid/widget/SpectrumVisualizer;->mCellHeight:I

    return v0
.end method

.method static synthetic access$700(Landroid/widget/SpectrumVisualizer;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Landroid/widget/SpectrumVisualizer;->mPixels:[I

    return-object v0
.end method

.method static synthetic access$800(Landroid/widget/SpectrumVisualizer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget v0, p0, Landroid/widget/SpectrumVisualizer;->mDotWidth:I

    return v0
.end method

.method static synthetic access$900(Landroid/widget/SpectrumVisualizer;)Landroid/graphics/Paint;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Landroid/widget/SpectrumVisualizer;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 13
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 73
    const/4 v10, 0x0

    .line 74
    .local v10, panelDrawable:Landroid/graphics/drawable/Drawable;
    const/4 v9, 0x0

    .line 75
    .local v9, dotBarDrawble:Landroid/graphics/drawable/Drawable;
    const/16 v12, 0xc

    .line 76
    .local v12, visualHeight:I
    const/4 v11, 0x0

    .line 78
    .local v11, symmetry:Z
    const/16 v1, 0x1e

    iput v1, p0, Landroid/widget/SpectrumVisualizer;->mAlphaWidth:I

    .line 79
    const/16 v1, 0x3c

    iput v1, p0, Landroid/widget/SpectrumVisualizer;->mVisualWidth:I

    .line 80
    const/16 v1, 0x8

    iput v1, p0, Landroid/widget/SpectrumVisualizer;->mCellHeight:I

    .line 81
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/SpectrumVisualizer;->misNeedCareStreamActive:Z

    .line 83
    if-eqz p2, :cond_0

    .line 84
    sget-object v1, Lcom/android/internal/R$styleable;->SpectrumVisualizer:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 85
    .local v8, a:Landroid/content/res/TypedArray;
    const/4 v1, 0x6

    iget v2, p0, Landroid/widget/SpectrumVisualizer;->mCellHeight:I

    invoke-virtual {v8, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/widget/SpectrumVisualizer;->mCellHeight:I

    .line 86
    const/4 v1, 0x2

    invoke-virtual {v8, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 87
    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 88
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v8, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    .line 90
    const/4 v1, 0x3

    iget v2, p0, Landroid/widget/SpectrumVisualizer;->mAlphaWidth:I

    invoke-virtual {v8, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/widget/SpectrumVisualizer;->mAlphaWidth:I

    .line 91
    const/4 v1, 0x4

    iget v2, p0, Landroid/widget/SpectrumVisualizer;->mVisualWidth:I

    invoke-virtual {v8, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/widget/SpectrumVisualizer;->mVisualWidth:I

    .line 92
    const/4 v1, 0x5

    invoke-virtual {v8, v1, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v12

    .line 93
    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-virtual {v8, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/widget/SpectrumVisualizer;->mIsEnableUpdate:Z

    .line 94
    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {v8, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/widget/SpectrumVisualizer;->misNeedCareStreamActive:Z

    .line 95
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 98
    .end local v8           #a:Landroid/content/res/TypedArray;
    :cond_0
    if-eqz v12, :cond_2

    .line 99
    const-wide/high16 v1, 0x4028

    int-to-double v3, v12

    div-double/2addr v1, v3

    iput-wide v1, p0, Landroid/widget/SpectrumVisualizer;->mHeightScale:D

    .line 104
    :goto_0
    if-nez v10, :cond_3

    .line 105
    const v1, 0x10804b7

    invoke-virtual {p0, v1}, Landroid/widget/SpectrumVisualizer;->setImageResource(I)V

    .line 110
    :goto_1
    if-nez v9, :cond_1

    .line 111
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10804b8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 114
    :cond_1
    check-cast v9, Landroid/graphics/drawable/BitmapDrawable;

    .end local v9           #dotBarDrawble:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v9}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 115
    .local v0, dotBar:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p0, Landroid/widget/SpectrumVisualizer;->mDotWidth:I

    .line 116
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, p0, Landroid/widget/SpectrumVisualizer;->mDotHeight:I

    .line 117
    iget v1, p0, Landroid/widget/SpectrumVisualizer;->mDotWidth:I

    iget v2, p0, Landroid/widget/SpectrumVisualizer;->mDotHeight:I

    mul-int/2addr v1, v2

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/widget/SpectrumVisualizer;->mPixels:[I

    .line 118
    iget-object v1, p0, Landroid/widget/SpectrumVisualizer;->mPixels:[I

    const/4 v2, 0x0

    iget v3, p0, Landroid/widget/SpectrumVisualizer;->mDotWidth:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, p0, Landroid/widget/SpectrumVisualizer;->mDotWidth:I

    iget v7, p0, Landroid/widget/SpectrumVisualizer;->mDotHeight:I

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 120
    if-eqz v11, :cond_4

    .line 121
    new-instance v1, Landroid/widget/SpectrumVisualizer$SymmetryDotBar;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/widget/SpectrumVisualizer$SymmetryDotBar;-><init>(Landroid/widget/SpectrumVisualizer;Landroid/widget/SpectrumVisualizer$1;)V

    iput-object v1, p0, Landroid/widget/SpectrumVisualizer;->mDrawer:Landroid/widget/SpectrumVisualizer$DotBarDrawer;

    .line 126
    :goto_2
    return-void

    .line 101
    .end local v0           #dotBar:Landroid/graphics/Bitmap;
    .restart local v9       #dotBarDrawble:Landroid/graphics/drawable/Drawable;
    :cond_2
    const-wide/high16 v1, 0x3ff0

    iput-wide v1, p0, Landroid/widget/SpectrumVisualizer;->mHeightScale:D

    goto :goto_0

    .line 107
    :cond_3
    invoke-virtual {p0, v10}, Landroid/widget/SpectrumVisualizer;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 123
    .end local v9           #dotBarDrawble:Landroid/graphics/drawable/Drawable;
    .restart local v0       #dotBar:Landroid/graphics/Bitmap;
    :cond_4
    new-instance v1, Landroid/widget/SpectrumVisualizer$AsymmetryDotBar;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/widget/SpectrumVisualizer$AsymmetryDotBar;-><init>(Landroid/widget/SpectrumVisualizer;Landroid/widget/SpectrumVisualizer$1;)V

    iput-object v1, p0, Landroid/widget/SpectrumVisualizer;->mDrawer:Landroid/widget/SpectrumVisualizer$DotBarDrawer;

    goto :goto_2
.end method

.method public static snoopPlayer([SI)I
    .locals 9
    .parameter "outData"
    .parameter "kind"

    .prologue
    const-class v4, Landroid/media/MediaPlayer;

    .line 235
    const/4 v3, 0x0

    .line 238
    .local v3, ret:I
    :try_start_0
    const-class v4, Landroid/media/MediaPlayer;

    const-string/jumbo v5, "snoop"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, [S

    aput-object v8, v6, v7

    const/4 v7, 0x1

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 239
    .local v1, m:Ljava/lang/reflect/Method;
    const-class v4, Landroid/media/MediaPlayer;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 241
    .local v2, result:Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 242
    instance-of v4, v2, Ljava/lang/Integer;

    if-eqz v4, :cond_0

    .line 243
    check-cast v2, Ljava/lang/Integer;

    .end local v2           #result:Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    move-result v3

    .line 259
    .end local v1           #m:Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return v3

    .line 247
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 248
    .local v0, e:Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    .line 249
    .end local v0           #e:Ljava/lang/SecurityException;
    :catch_1
    move-exception v4

    move-object v0, v4

    .line 250
    .local v0, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 251
    .end local v0           #e:Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v4

    move-object v0, v4

    .line 252
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 253
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v4

    move-object v0, v4

    .line 254
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 255
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v4

    move-object v0, v4

    .line 256
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method private update()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 180
    invoke-virtual {p0, v11}, Landroid/widget/SpectrumVisualizer;->postUpdate(Z)V

    .line 183
    iget-boolean v7, p0, Landroid/widget/SpectrumVisualizer;->misNeedCareStreamActive:Z

    if-eqz v7, :cond_1

    const/4 v7, 0x3

    invoke-static {v7}, Landroid/media/AudioSystem;->isStreamActive(I)Z

    move-result v7

    if-nez v7, :cond_1

    .line 185
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-wide v9, p0, Landroid/widget/SpectrumVisualizer;->mLastMusicActiveTime:J

    sub-long/2addr v7, v9

    const-wide/16 v9, 0x1f4

    cmp-long v7, v7, v9

    if-lez v7, :cond_2

    .line 186
    const/16 v7, 0x8

    invoke-virtual {p0, v7}, Landroid/widget/SpectrumVisualizer;->setVisibility(I)V

    .line 187
    iget-object v7, p0, Landroid/widget/SpectrumVisualizer;->mOnActiveStreamChangedListener:Landroid/widget/SpectrumVisualizer$OnActiveStreamChangedListener;

    if-eqz v7, :cond_0

    .line 188
    iget-object v7, p0, Landroid/widget/SpectrumVisualizer;->mOnActiveStreamChangedListener:Landroid/widget/SpectrumVisualizer$OnActiveStreamChangedListener;

    invoke-interface {v7, v12}, Landroid/widget/SpectrumVisualizer$OnActiveStreamChangedListener;->onChanged(Z)V

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    invoke-virtual {p0, v12}, Landroid/widget/SpectrumVisualizer;->setVisibility(I)V

    .line 196
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, p0, Landroid/widget/SpectrumVisualizer;->mLastMusicActiveTime:J

    .line 197
    iget-object v7, p0, Landroid/widget/SpectrumVisualizer;->mOnActiveStreamChangedListener:Landroid/widget/SpectrumVisualizer$OnActiveStreamChangedListener;

    if-eqz v7, :cond_2

    .line 198
    iget-object v7, p0, Landroid/widget/SpectrumVisualizer;->mOnActiveStreamChangedListener:Landroid/widget/SpectrumVisualizer$OnActiveStreamChangedListener;

    invoke-interface {v7, v11}, Landroid/widget/SpectrumVisualizer$OnActiveStreamChangedListener;->onChanged(Z)V

    .line 203
    :cond_2
    iget-object v7, p0, Landroid/widget/SpectrumVisualizer;->mVizData:[S

    invoke-static {v7, v11}, Landroid/widget/SpectrumVisualizer;->snoopPlayer([SI)I

    .line 205
    const/4 v4, 0x0

    .line 206
    .local v4, srcIdx:I
    const/4 v0, 0x0

    .line 207
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget v7, p0, Landroid/widget/SpectrumVisualizer;->mVisualWidth:I

    if-ge v1, v7, :cond_4

    .line 208
    const-wide/16 v2, 0x0

    .line 212
    .local v2, max:D
    :goto_2
    const/16 v7, 0x100

    if-ge v0, v7, :cond_3

    .line 215
    iget-object v7, p0, Landroid/widget/SpectrumVisualizer;->mVizData:[S

    aget-short v7, v7, v4

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    int-to-float v7, v7

    int-to-float v8, v4

    iget v9, p0, Landroid/widget/SpectrumVisualizer;->a:F

    div-float/2addr v8, v9

    iget v9, p0, Landroid/widget/SpectrumVisualizer;->b:F

    add-float/2addr v8, v9

    mul-float/2addr v7, v8

    float-to-double v5, v7

    .line 217
    .local v5, val:D
    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    .line 218
    add-int/lit8 v4, v4, 0x1

    .line 219
    iget v7, p0, Landroid/widget/SpectrumVisualizer;->mVisualWidth:I

    add-int/2addr v0, v7

    .line 220
    goto :goto_2

    .line 221
    .end local v5           #val:D
    :cond_3
    add-int/lit16 v0, v0, -0x100

    .line 225
    iget v7, p0, Landroid/widget/SpectrumVisualizer;->div:F

    float-to-double v7, v7

    div-double v7, v2, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->log(D)D

    move-result-wide v7

    iget v9, p0, Landroid/widget/SpectrumVisualizer;->c:F

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->log(D)D

    move-result-wide v9

    div-double/2addr v7, v9

    const-wide/high16 v9, 0x4028

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    .line 228
    iget-object v7, p0, Landroid/widget/SpectrumVisualizer;->mPointData:[I

    double-to-int v8, v2

    iget-object v9, p0, Landroid/widget/SpectrumVisualizer;->mPointData:[I

    aget v9, v9, v1

    sub-int/2addr v9, v11

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    aput v8, v7, v1

    .line 207
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 231
    .end local v2           #max:D
    :cond_4
    invoke-virtual {p0}, Landroid/widget/SpectrumVisualizer;->invalidate()V

    goto :goto_0
.end method


# virtual methods
.method public enableUpdate(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 149
    iget-boolean v0, p0, Landroid/widget/SpectrumVisualizer;->mIsEnableUpdate:Z

    if-eq v0, p1, :cond_0

    .line 150
    invoke-virtual {p0, p1}, Landroid/widget/SpectrumVisualizer;->postUpdate(Z)V

    .line 151
    iput-boolean p1, p0, Landroid/widget/SpectrumVisualizer;->mIsEnableUpdate:Z

    .line 153
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    .line 130
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 133
    iget-object v2, p0, Landroid/widget/SpectrumVisualizer;->mPaint:Landroid/graphics/Paint;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 134
    iget v2, p0, Landroid/widget/SpectrumVisualizer;->mVisualWidth:I

    iget v3, p0, Landroid/widget/SpectrumVisualizer;->mAlphaWidth:I

    sub-int v0, v2, v3

    .line 135
    .local v0, end:I
    iget v1, p0, Landroid/widget/SpectrumVisualizer;->mAlphaWidth:I

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 136
    iget-object v2, p0, Landroid/widget/SpectrumVisualizer;->mDrawer:Landroid/widget/SpectrumVisualizer$DotBarDrawer;

    invoke-interface {v2, p1, v1}, Landroid/widget/SpectrumVisualizer$DotBarDrawer;->drawDotBar(Landroid/graphics/Canvas;I)V

    .line 135
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 140
    :cond_0
    iget v1, p0, Landroid/widget/SpectrumVisualizer;->mAlphaWidth:I

    :goto_1
    if-lez v1, :cond_1

    .line 141
    iget-object v2, p0, Landroid/widget/SpectrumVisualizer;->mPaint:Landroid/graphics/Paint;

    mul-int/lit16 v3, v1, 0xff

    iget v4, p0, Landroid/widget/SpectrumVisualizer;->mAlphaWidth:I

    div-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 142
    iget-object v2, p0, Landroid/widget/SpectrumVisualizer;->mDrawer:Landroid/widget/SpectrumVisualizer$DotBarDrawer;

    const/4 v3, 0x1

    sub-int v3, v1, v3

    invoke-interface {v2, p1, v3}, Landroid/widget/SpectrumVisualizer$DotBarDrawer;->drawDotBar(Landroid/graphics/Canvas;I)V

    .line 143
    iget-object v2, p0, Landroid/widget/SpectrumVisualizer;->mDrawer:Landroid/widget/SpectrumVisualizer$DotBarDrawer;

    iget v3, p0, Landroid/widget/SpectrumVisualizer;->mVisualWidth:I

    sub-int/2addr v3, v1

    invoke-interface {v2, p1, v3}, Landroid/widget/SpectrumVisualizer$DotBarDrawer;->drawDotBar(Landroid/graphics/Canvas;I)V

    .line 140
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 146
    :cond_1
    return-void
.end method

.method public postUpdate(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 156
    iget-object v0, p0, Landroid/widget/SpectrumVisualizer;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/SpectrumVisualizer;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 157
    if-eqz p1, :cond_0

    .line 158
    iget-object v0, p0, Landroid/widget/SpectrumVisualizer;->mUpdateRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x32

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/SpectrumVisualizer;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 160
    :cond_0
    return-void
.end method

.method public setOnActiveStreamChangedListener(Landroid/widget/SpectrumVisualizer$OnActiveStreamChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 169
    iput-object p1, p0, Landroid/widget/SpectrumVisualizer;->mOnActiveStreamChangedListener:Landroid/widget/SpectrumVisualizer$OnActiveStreamChangedListener;

    .line 170
    return-void
.end method
