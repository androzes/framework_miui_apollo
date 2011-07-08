.class public Landroid/util/DisplayMetrics;
.super Ljava/lang/Object;
.source "DisplayMetrics.java"


# static fields
.field public static final DENSITY_DEFAULT:I = 0xa0

#the value of this static final field might be set in the static constructor
.field public static final DENSITY_DEVICE:I = 0x0

.field public static final DENSITY_HIGH:I = 0xf0

.field public static final DENSITY_LOW:I = 0x78

.field public static final DENSITY_MEDIUM:I = 0xa0


# instance fields
.field public density:F

.field public densityDpi:I

.field public heightPixels:I

.field public scaledDensity:F

.field public widthPixels:I

.field public xdpi:F

.field public ydpi:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    invoke-static {}, Landroid/util/DisplayMetrics;->getDeviceDensity()I

    move-result v0

    sput v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    return-void
.end method

.method private static getDeviceDensity()I
    .locals 3

    .prologue
    .line 224
    const-string v0, "qemu.sf.lcd_density"

    const-string v1, "ro.sf.lcd_density"

    const/16 v2, 0xa0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public setTo(Landroid/util/DisplayMetrics;)V
    .locals 1
    .parameter "o"

    .prologue
    .line 109
    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 110
    iget v0, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 111
    iget v0, p1, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Landroid/util/DisplayMetrics;->density:F

    .line 112
    iget v0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 113
    iget v0, p1, Landroid/util/DisplayMetrics;->scaledDensity:F

    iput v0, p0, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 114
    iget v0, p1, Landroid/util/DisplayMetrics;->xdpi:F

    iput v0, p0, Landroid/util/DisplayMetrics;->xdpi:F

    .line 115
    iget v0, p1, Landroid/util/DisplayMetrics;->ydpi:F

    iput v0, p0, Landroid/util/DisplayMetrics;->ydpi:F

    .line 116
    return-void
.end method

.method public setToDefaults()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 119
    iput v0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 120
    iput v0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 121
    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    int-to-float v0, v0

    const/high16 v1, 0x4320

    div-float/2addr v0, v1

    iput v0, p0, Landroid/util/DisplayMetrics;->density:F

    .line 122
    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    iput v0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 123
    iget v0, p0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 124
    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    int-to-float v0, v0

    iput v0, p0, Landroid/util/DisplayMetrics;->xdpi:F

    .line 125
    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    int-to-float v0, v0

    iput v0, p0, Landroid/util/DisplayMetrics;->ydpi:F

    .line 126
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DisplayMetrics{density="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", scaledDensity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/util/DisplayMetrics;->scaledDensity:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", xdpi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/util/DisplayMetrics;->xdpi:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ydpi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/util/DisplayMetrics;->ydpi:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateMetrics(Landroid/content/res/CompatibilityInfo;II)V
    .locals 12
    .parameter "compatibilityInfo"
    .parameter "orientation"
    .parameter "screenLayout"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/high16 v9, 0x43f0

    const/high16 v8, 0x43a0

    const/high16 v7, 0x3f00

    .line 136
    invoke-virtual {p1}, Landroid/content/res/CompatibilityInfo;->isConfiguredExpandable()Z

    move-result v2

    .line 137
    .local v2, expandable:Z
    invoke-virtual {p1}, Landroid/content/res/CompatibilityInfo;->isConfiguredLargeScreens()Z

    move-result v4

    .line 141
    .local v4, largeScreens:Z
    if-nez v2, :cond_0

    .line 142
    const/high16 v5, 0x1000

    and-int/2addr v5, p3

    if-nez v5, :cond_6

    .line 143
    const/4 v2, 0x1

    .line 145
    invoke-virtual {p1, v11}, Landroid/content/res/CompatibilityInfo;->setExpandable(Z)V

    .line 150
    :cond_0
    :goto_0
    if-nez v4, :cond_1

    .line 151
    and-int/lit8 v5, p3, 0xf

    const/4 v6, 0x3

    if-eq v5, v6, :cond_7

    .line 153
    const/4 v4, 0x1

    .line 155
    invoke-virtual {p1, v11}, Landroid/content/res/CompatibilityInfo;->setLargeScreens(Z)V

    .line 161
    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    if-nez v4, :cond_4

    .line 168
    :cond_2
    packed-switch p2, :pswitch_data_0

    .line 179
    :pswitch_0
    iget v5, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v5, v8

    add-float/2addr v5, v7

    float-to-int v1, v5

    .line 181
    .local v1, defaultWidth:I
    iget v5, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v5, v9

    add-float/2addr v5, v7

    float-to-int v0, v5

    .line 191
    .local v0, defaultHeight:I
    :goto_2
    iget v5, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ge v1, v5, :cond_3

    .line 193
    iput v1, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 195
    :cond_3
    iget v5, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v0, v5, :cond_4

    .line 196
    iput v0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 200
    .end local v0           #defaultHeight:I
    .end local v1           #defaultWidth:I
    :cond_4
    invoke-virtual {p1}, Landroid/content/res/CompatibilityInfo;->isScalingRequired()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 201
    iget v3, p1, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 202
    .local v3, invertedRatio:F
    iget v5, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v5, v3

    iput v5, p0, Landroid/util/DisplayMetrics;->density:F

    .line 203
    iget v5, p0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v6, 0x4320

    mul-float/2addr v5, v6

    add-float/2addr v5, v7

    float-to-int v5, v5

    iput v5, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 204
    iget v5, p0, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float/2addr v5, v3

    iput v5, p0, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 205
    iget v5, p0, Landroid/util/DisplayMetrics;->xdpi:F

    mul-float/2addr v5, v3

    iput v5, p0, Landroid/util/DisplayMetrics;->xdpi:F

    .line 206
    iget v5, p0, Landroid/util/DisplayMetrics;->ydpi:F

    mul-float/2addr v5, v3

    iput v5, p0, Landroid/util/DisplayMetrics;->ydpi:F

    .line 207
    iget v5, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v5, v5

    mul-float/2addr v5, v3

    add-float/2addr v5, v7

    float-to-int v5, v5

    iput v5, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 208
    iget v5, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v5, v5

    mul-float/2addr v5, v3

    add-float/2addr v5, v7

    float-to-int v5, v5

    iput v5, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 210
    .end local v3           #invertedRatio:F
    :cond_5
    :pswitch_1
    return-void

    .line 147
    :cond_6
    invoke-virtual {p1, v10}, Landroid/content/res/CompatibilityInfo;->setExpandable(Z)V

    goto :goto_0

    .line 157
    :cond_7
    invoke-virtual {p1, v10}, Landroid/content/res/CompatibilityInfo;->setLargeScreens(Z)V

    goto :goto_1

    .line 170
    :pswitch_2
    iget v5, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v5, v9

    add-float/2addr v5, v7

    float-to-int v1, v5

    .line 172
    .restart local v1       #defaultWidth:I
    iget v5, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v5, v8

    add-float/2addr v5, v7

    float-to-int v0, v5

    .line 174
    .restart local v0       #defaultHeight:I
    goto :goto_2

    .line 168
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
