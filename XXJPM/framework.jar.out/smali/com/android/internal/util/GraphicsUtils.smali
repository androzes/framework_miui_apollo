.class public Lcom/android/internal/util/GraphicsUtils;
.super Ljava/lang/Object;
.source "GraphicsUtils.java"


# static fields
.field private static final FRAME_BUFFER:Ljava/lang/String; = "/dev/graphics/fb0"

.field private static sAsiaLangPattern:Ljava/util/regex/Pattern;

.field private static sHandwriting:Landroid/graphics/Typeface;

.field private static sKaiti:Landroid/graphics/Typeface;

.field private static suffix:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 29
    const/16 v0, 0x28

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "\u8001\u5e08"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "\u5148\u751f"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "\u8001\u677f"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "\u4ed4"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "\u624b\u673a"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "\u53d4"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "\u963f\u59e8"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "\u5b85"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "\u4f2f"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "\u4f2f\u6bcd"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "\u4f2f\u7236"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "\u54e5"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "\u59d0"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "\u5f1f"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "\u59b9"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "\u8205"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "\u59d1"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "\u7236"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "\u4e3b\u4efb"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "\u7ecf\u7406"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "\u5de5\u4f5c"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "\u540c\u4e8b"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "\u5f8b\u5e08"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string/jumbo v2, "\u53f8\u673a"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string/jumbo v2, "\u5e08\u5085"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string/jumbo v2, "\u5e08\u7236"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string/jumbo v2, "\u7237"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string/jumbo v2, "\u5976"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string/jumbo v2, "\u4e2d\u4ecb"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string/jumbo v2, "\u8463"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string/jumbo v2, "\u603b"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string/jumbo v2, "\u592a\u592a"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string/jumbo v2, "\u4fdd\u59c6"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string/jumbo v2, "\u67d0"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string/jumbo v2, "\u79d8\u4e66"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string/jumbo v2, "\u5904\u957f"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string/jumbo v2, "\u5c40\u957f"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string/jumbo v2, "\u73ed\u957f"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string/jumbo v2, "\u5144"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string/jumbo v2, "\u52a9\u7406"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/util/GraphicsUtils;->suffix:[Ljava/lang/String;

    .line 38
    const-string v0, "[\u4e00-\u9fa5]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/GraphicsUtils;->sAsiaLangPattern:Ljava/util/regex/Pattern;

    .line 42
    const-string v0, "/system/fonts/simkai.ttf"

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/GraphicsUtils;->sKaiti:Landroid/graphics/Typeface;

    .line 43
    const-string v0, "/system/fonts/handwriting.ttf"

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/GraphicsUtils;->sHandwriting:Landroid/graphics/Typeface;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static close(Ljava/io/FileInputStream;)V
    .locals 1
    .parameter "f"

    .prologue
    .line 256
    if-eqz p0, :cond_0

    .line 258
    :try_start_0
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 259
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static convertColor(BBBB)I
    .locals 4
    .parameter "r"
    .parameter "g"
    .parameter "b"
    .parameter "a"

    .prologue
    .line 252
    and-int/lit16 v0, p3, 0xff

    and-int/lit16 v1, p0, 0xff

    and-int/lit16 v2, p1, 0xff

    and-int/lit16 v3, p2, 0xff

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method public static createNameBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "name"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 55
    if-gtz p1, :cond_0

    .line 56
    const/4 p0, 0x0

    .line 112
    .end local p0
    .end local p1
    .end local p2
    :goto_0
    return-object p0

    .line 58
    .restart local p0
    .restart local p1
    .restart local p2
    :cond_0
    if-gtz p2, :cond_1

    .line 59
    const/4 p0, 0x0

    goto :goto_0

    .line 61
    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 62
    const/4 p0, 0x0

    goto :goto_0

    .line 63
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/GraphicsUtils;->getWordFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, word:Ljava/lang/String;
    if-nez v0, :cond_3

    .line 65
    const/4 p0, 0x0

    goto :goto_0

    .line 66
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 67
    .end local v0           #word:Ljava/lang/String;
    .local v3, word:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 68
    const/4 p0, 0x0

    goto :goto_0

    .line 70
    :cond_4
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x108053a

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 71
    .local v1, bmpSrc:Landroid/graphics/Bitmap;
    const/4 v0, 0x0

    invoke-static {v1, p1, p2, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 72
    .local v0, bmp:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 73
    .local v2, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 74
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 75
    .local v4, paint:Landroid/graphics/Paint;
    const/4 v1, -0x1

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 76
    .end local v1           #bmpSrc:Landroid/graphics/Bitmap;
    invoke-static {p0}, Lcom/android/internal/util/GraphicsUtils;->isChinese(Ljava/lang/String;)Z

    move-result p0

    .end local p0
    if-eqz p0, :cond_5

    .line 77
    sget-object p0, Lcom/android/internal/util/GraphicsUtils;->sKaiti:Landroid/graphics/Typeface;

    invoke-virtual {v4, p0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 78
    invoke-static {p1, p2}, Landroid/util/MathUtils;->min(II)F

    move-result p0

    const v1, 0x3f666666

    mul-float/2addr p0, v1

    invoke-virtual {v4, p0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 79
    int-to-double p0, p1

    const-wide v5, 0x3fa999999999999aL

    mul-double/2addr p0, v5

    double-to-int p0, p0

    int-to-float p0, p0

    int-to-double p1, p2

    const-wide v5, 0x3fe999999999999aL

    mul-double/2addr p1, v5

    double-to-int p1, p1

    int-to-float p1, p1

    invoke-virtual {v2, v3, p0, p1, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .end local v3           #word:Ljava/lang/String;
    .end local p1
    .end local p2
    :goto_1
    move-object p0, v0

    .line 112
    goto :goto_0

    .line 81
    .restart local v3       #word:Ljava/lang/String;
    .restart local p1
    .restart local p2
    :cond_5
    sget-object p0, Lcom/android/internal/util/GraphicsUtils;->sHandwriting:Landroid/graphics/Typeface;

    invoke-virtual {v4, p0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 82
    const-string p0, " |\\.|-|,|\\(|\\)|\uff08|\uff09|\u2014"

    invoke-virtual {v3, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 83
    .local v3, nameStrs:[Ljava/lang/String;
    if-nez v3, :cond_6

    .line 84
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 85
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 87
    :cond_6
    const/4 p0, 0x0

    .line 88
    .local p0, first:Ljava/lang/String;
    const/4 v5, 0x0

    .line 89
    .local v5, second:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    array-length v6, v3

    if-ge v1, v6, :cond_9

    .line 90
    aget-object v6, v3, v1

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 91
    if-nez p0, :cond_8

    .line 92
    aget-object p0, v3, v1

    .end local p0           #first:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 89
    .restart local p0       #first:Ljava/lang/String;
    :cond_7
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 93
    :cond_8
    if-nez v5, :cond_9

    .line 94
    aget-object v5, v3, v1

    .end local v5           #second:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .restart local v5       #second:Ljava/lang/String;
    goto :goto_3

    .line 100
    :cond_9
    if-nez p0, :cond_a

    .line 101
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 102
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 103
    :cond_a
    if-nez v5, :cond_b

    .line 104
    invoke-static {p1, p2}, Landroid/util/MathUtils;->min(II)F

    move-result v1

    .end local v1           #i:I
    const v3, 0x3f666666

    mul-float/2addr v1, v3

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 105
    .end local v3           #nameStrs:[Ljava/lang/String;
    int-to-double v5, p1

    const-wide v7, 0x3fa999999999999aL

    mul-double/2addr v5, v7

    double-to-int p1, v5

    int-to-float p1, p1

    int-to-double v5, p2

    const-wide v7, 0x3fe999999999999aL

    mul-double/2addr v5, v7

    double-to-int p2, v5

    int-to-float p2, p2

    invoke-virtual {v2, p0, p1, p2, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 107
    .restart local v1       #i:I
    .restart local v3       #nameStrs:[Ljava/lang/String;
    :cond_b
    invoke-static {p1, p2}, Landroid/util/MathUtils;->min(II)F

    move-result v1

    .end local v1           #i:I
    const v3, 0x3ecccccd

    mul-float/2addr v1, v3

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 108
    .end local v3           #nameStrs:[Ljava/lang/String;
    int-to-double v6, p1

    const-wide v8, 0x3fa999999999999aL

    mul-double/2addr v6, v8

    double-to-int v1, v6

    int-to-float v1, v1

    int-to-double v6, p2

    const-wide v8, 0x3fdccccccccccccdL

    mul-double/2addr v6, v8

    double-to-int v3, v6

    int-to-float v3, v3

    invoke-virtual {v2, p0, v1, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 109
    int-to-double p0, p1

    const-wide v6, 0x3fd3333333333333L

    mul-double/2addr p0, v6

    double-to-int p0, p0

    int-to-float p0, p0

    int-to-double p1, p2

    const-wide v6, 0x3feccccccccccccdL

    mul-double/2addr p1, v6

    double-to-int p1, p1

    int-to-float p1, p1

    invoke-virtual {v2, v5, p0, p1, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1
.end method

.method public static frameBuffer2Bitmap()Landroid/graphics/Bitmap;
    .locals 14

    .prologue
    .line 168
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 169
    .local v1, displayWidth:I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 171
    .local v0, displayHeight:I
    if-lez v1, :cond_0

    if-gtz v0, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 239
    .end local v1           #displayWidth:I
    :goto_0
    return-object v1

    .line 173
    .restart local v1       #displayWidth:I
    :cond_1
    if-le v1, v0, :cond_8

    .line 175
    move v2, v0

    .line 176
    .local v2, temp:I
    move v0, v1

    .line 177
    move v1, v2

    move v3, v0

    .end local v0           #displayHeight:I
    .local v3, displayHeight:I
    move v4, v1

    .line 180
    .end local v1           #displayWidth:I
    .end local v2           #temp:I
    .local v4, displayWidth:I
    :goto_1
    const/4 v1, 0x0

    .line 182
    .local v1, fis:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    const-string v0, "/dev/graphics/fb0"

    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    .end local v1           #fis:Ljava/io/FileInputStream;
    .local v5, fis:Ljava/io/FileInputStream;
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 190
    .local v0, bmp:Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 192
    .local v2, corrupted:Z
    mul-int/lit8 v7, v4, 0x4

    .line 193
    .local v7, oneLineByteLength:I
    mul-int v6, v7, v3

    .line 194
    .local v6, screenLength:I
    new-array v1, v6, [B

    .line 196
    .local v1, buffer:[B
    :try_start_1
    invoke-virtual {v5, v1}, Ljava/io/FileInputStream;->read([B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v8

    if-eq v8, v6, :cond_4

    .line 198
    const/4 v1, 0x1

    .end local v2           #corrupted:Z
    .local v1, corrupted:Z
    move v2, v1

    .line 230
    .end local v1           #corrupted:Z
    .end local v6           #screenLength:I
    .restart local v2       #corrupted:Z
    :cond_2
    invoke-static {v5}, Lcom/android/internal/util/GraphicsUtils;->close(Ljava/io/FileInputStream;)V

    .line 231
    :goto_2
    const/4 v1, 0x0

    .line 233
    .local v1, buffer:[B
    if-eqz v2, :cond_3

    .line 234
    if-eqz v0, :cond_3

    .line 235
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 236
    const/4 v0, 0x0

    :cond_3
    move-object v1, v0

    move v0, v3

    .line 239
    .end local v3           #displayHeight:I
    .local v0, displayHeight:I
    goto :goto_0

    .line 183
    .end local v0           #displayHeight:I
    .end local v2           #corrupted:Z
    .end local v5           #fis:Ljava/io/FileInputStream;
    .end local v7           #oneLineByteLength:I
    .local v1, fis:Ljava/io/FileInputStream;
    .restart local v3       #displayHeight:I
    :catch_0
    move-exception v0

    .line 184
    .local v0, e:Ljava/lang/Exception;
    invoke-static {v1}, Lcom/android/internal/util/GraphicsUtils;->close(Ljava/io/FileInputStream;)V

    .line 185
    const/4 v0, 0x0

    .line 186
    .end local v1           #fis:Ljava/io/FileInputStream;
    .local v0, fis:Ljava/io/FileInputStream;
    const/4 v0, 0x0

    move-object v1, v0

    move v0, v3

    .end local v3           #displayHeight:I
    .local v0, displayHeight:I
    goto :goto_0

    .line 200
    .local v0, bmp:Landroid/graphics/Bitmap;
    .local v1, buffer:[B
    .restart local v2       #corrupted:Z
    .restart local v3       #displayHeight:I
    .restart local v5       #fis:Ljava/io/FileInputStream;
    .restart local v6       #screenLength:I
    .restart local v7       #oneLineByteLength:I
    :cond_4
    :try_start_2
    const-string/jumbo v6, "sholes"

    .end local v6           #screenLength:I
    sget-object v8, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-static {v6, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 202
    const/4 v6, 0x0

    .local v6, height:I
    :goto_3
    if-ge v6, v3, :cond_2

    .line 203
    const/4 v8, 0x0

    .local v8, width:I
    :goto_4
    if-ge v8, v4, :cond_5

    .line 204
    mul-int v9, v6, v7

    mul-int/lit8 v10, v8, 0x4

    add-int/2addr v9, v10

    add-int/lit8 v9, v9, 0x2

    aget-byte v9, v1, v9

    mul-int v10, v6, v7

    mul-int/lit8 v11, v8, 0x4

    add-int/2addr v10, v11

    add-int/lit8 v10, v10, 0x1

    aget-byte v10, v1, v10

    mul-int v11, v6, v7

    mul-int/lit8 v12, v8, 0x4

    add-int/2addr v11, v12

    aget-byte v11, v1, v11

    mul-int v12, v6, v7

    mul-int/lit8 v13, v8, 0x4

    add-int/2addr v12, v13

    add-int/lit8 v12, v12, 0x3

    aget-byte v12, v1, v12

    invoke-static {v9, v10, v11, v12}, Lcom/android/internal/util/GraphicsUtils;->convertColor(BBBB)I

    move-result v9

    invoke-virtual {v0, v8, v6, v9}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 203
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 202
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 214
    .end local v6           #height:I
    .end local v8           #width:I
    :cond_6
    const/4 v6, 0x0

    .restart local v6       #height:I
    :goto_5
    if-ge v6, v3, :cond_2

    .line 215
    const/4 v8, 0x0

    .restart local v8       #width:I
    :goto_6
    if-ge v8, v4, :cond_7

    .line 216
    mul-int v9, v6, v7

    mul-int/lit8 v10, v8, 0x4

    add-int/2addr v9, v10

    aget-byte v9, v1, v9

    mul-int v10, v6, v7

    mul-int/lit8 v11, v8, 0x4

    add-int/2addr v10, v11

    add-int/lit8 v10, v10, 0x1

    aget-byte v10, v1, v10

    mul-int v11, v6, v7

    mul-int/lit8 v12, v8, 0x4

    add-int/2addr v11, v12

    add-int/lit8 v11, v11, 0x2

    aget-byte v11, v1, v11

    mul-int v12, v6, v7

    mul-int/lit8 v13, v8, 0x4

    add-int/2addr v12, v13

    add-int/lit8 v12, v12, 0x3

    aget-byte v12, v1, v12

    invoke-static {v9, v10, v11, v12}, Lcom/android/internal/util/GraphicsUtils;->convertColor(BBBB)I

    move-result v9

    invoke-virtual {v0, v8, v6, v9}, Landroid/graphics/Bitmap;->setPixel(III)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 215
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 214
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 227
    .end local v6           #height:I
    .end local v8           #width:I
    :catch_1
    move-exception v1

    .line 228
    .local v1, e:Ljava/lang/Exception;
    const/4 v2, 0x1

    .line 230
    invoke-static {v5}, Lcom/android/internal/util/GraphicsUtils;->close(Ljava/io/FileInputStream;)V

    goto/16 :goto_2

    .local v1, buffer:[B
    :catchall_0
    move-exception v0

    move-object v1, v0

    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v1           #buffer:[B
    invoke-static {v5}, Lcom/android/internal/util/GraphicsUtils;->close(Ljava/io/FileInputStream;)V

    .line 231
    const/4 v0, 0x0

    .line 230
    .local v0, buffer:[B
    throw v1

    .end local v2           #corrupted:Z
    .end local v3           #displayHeight:I
    .end local v4           #displayWidth:I
    .end local v5           #fis:Ljava/io/FileInputStream;
    .end local v7           #oneLineByteLength:I
    .local v0, displayHeight:I
    .local v1, displayWidth:I
    :cond_8
    move v3, v0

    .end local v0           #displayHeight:I
    .restart local v3       #displayHeight:I
    move v4, v1

    .end local v1           #displayWidth:I
    .restart local v4       #displayWidth:I
    goto/16 :goto_1
.end method

.method private static getWordFromName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "name"

    .prologue
    .line 120
    invoke-static {p0}, Lcom/android/internal/util/GraphicsUtils;->isChinese(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 121
    invoke-static {p0}, Lcom/android/internal/util/GraphicsUtils;->removeSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, word:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 123
    const/4 v2, 0x0

    .line 127
    .end local v1           #word:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 124
    .restart local v1       #word:Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 125
    .local v0, length:I
    const/4 v2, 0x1

    sub-int v2, v0, v2

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .end local v0           #length:I
    .end local v1           #word:Ljava/lang/String;
    :cond_1
    move-object v2, p0

    .line 127
    goto :goto_0
.end method

.method private static isChinese(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 116
    sget-object v0, Lcom/android/internal/util/GraphicsUtils;->sAsiaLangPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    return v0
.end method

.method private static removeSuffix(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "name"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 132
    move-object v3, p0

    .line 133
    .local v3, result:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 134
    const/4 v4, 0x0

    .line 158
    :goto_0
    return-object v4

    .line 135
    :cond_0
    const/4 v1, 0x0

    .line 137
    .local v1, found:Z
    :cond_1
    const/4 v1, 0x0

    .line 138
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    sget-object v4, Lcom/android/internal/util/GraphicsUtils;->suffix:[Ljava/lang/String;

    array-length v4, v4

    if-ge v2, v4, :cond_3

    .line 139
    sget-object v4, Lcom/android/internal/util/GraphicsUtils;->suffix:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 140
    const/4 v1, 0x1

    .line 141
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    sget-object v5, Lcom/android/internal/util/GraphicsUtils;->suffix:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 152
    :cond_2
    :goto_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 154
    :cond_3
    if-eqz v1, :cond_4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 155
    :cond_4
    if-eqz v3, :cond_5

    .line 156
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    :cond_5
    move-object v4, v3

    .line 158
    goto :goto_0

    .line 143
    :cond_6
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v7

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 145
    .local v0, c:C
    const/16 v4, 0x41

    if-lt v0, v4, :cond_7

    const/16 v4, 0x5a

    if-le v0, v4, :cond_9

    :cond_7
    const/16 v4, 0x61

    if-lt v0, v4, :cond_8

    const/16 v4, 0x7a

    if-le v0, v4, :cond_9

    :cond_8
    const/16 v4, 0x2c

    if-eq v0, v4, :cond_9

    const/16 v4, 0x2e

    if-eq v0, v4, :cond_9

    const/16 v4, 0x2d

    if-eq v0, v4, :cond_9

    const/16 v4, 0x28

    if-eq v0, v4, :cond_9

    const/16 v4, 0x29

    if-eq v0, v4, :cond_9

    const v4, 0xff08

    if-eq v0, v4, :cond_9

    const v4, 0xff09

    if-eq v0, v4, :cond_9

    const/16 v4, 0x2014

    if-ne v0, v4, :cond_2

    .line 148
    :cond_9
    const/4 v1, 0x1

    .line 149
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v7

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 138
    .end local v0           #c:C
    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method
