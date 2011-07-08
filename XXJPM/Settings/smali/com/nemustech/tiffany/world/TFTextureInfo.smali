.class public Lcom/nemustech/tiffany/world/TFTextureInfo;
.super Ljava/lang/Object;
.source "TFTextureInfo.java"


# instance fields
.field bLoaded:Z

.field bTexturized:Z

.field bmp:Landroid/graphics/Bitmap;

.field private coordRatioHeight:F

.field private coordRatioWidth:F

.field fileName:Ljava/lang/String;

.field private height:I

.field private quantitated_height:I

.field private quantitated_width:I

.field resource_id:I

.field texture_name:I

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFTextureInfo;->bmp:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getCoordRatioHeight()F
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/nemustech/tiffany/world/TFTextureInfo;->coordRatioHeight:F

    return v0
.end method

.method public getCoordRatioWidth()F
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/nemustech/tiffany/world/TFTextureInfo;->coordRatioWidth:F

    return v0
.end method

.method public getHeight(Z)I
    .locals 1
    .parameter "quantitated"

    .prologue
    .line 36
    if-eqz p1, :cond_0

    .line 37
    iget v0, p0, Lcom/nemustech/tiffany/world/TFTextureInfo;->quantitated_height:I

    .line 39
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/nemustech/tiffany/world/TFTextureInfo;->height:I

    goto :goto_0
.end method

.method public getWidth(Z)I
    .locals 1
    .parameter "quantitated"

    .prologue
    .line 29
    if-eqz p1, :cond_0

    .line 30
    iget v0, p0, Lcom/nemustech/tiffany/world/TFTextureInfo;->quantitated_width:I

    .line 32
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/nemustech/tiffany/world/TFTextureInfo;->width:I

    goto :goto_0
.end method

.method public setHeight(I)V
    .locals 2
    .parameter "h"

    .prologue
    .line 49
    iput p1, p0, Lcom/nemustech/tiffany/world/TFTextureInfo;->height:I

    .line 50
    invoke-static {p1}, Lcom/nemustech/tiffany/world/TFUtils;->getTextureLength(I)I

    move-result v0

    iput v0, p0, Lcom/nemustech/tiffany/world/TFTextureInfo;->quantitated_height:I

    .line 51
    iget v0, p0, Lcom/nemustech/tiffany/world/TFTextureInfo;->height:I

    int-to-float v0, v0

    iget v1, p0, Lcom/nemustech/tiffany/world/TFTextureInfo;->quantitated_height:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/nemustech/tiffany/world/TFTextureInfo;->coordRatioHeight:F

    .line 52
    return-void
.end method

.method public setWidth(I)V
    .locals 2
    .parameter "w"

    .prologue
    .line 43
    iput p1, p0, Lcom/nemustech/tiffany/world/TFTextureInfo;->width:I

    .line 44
    invoke-static {p1}, Lcom/nemustech/tiffany/world/TFUtils;->getTextureLength(I)I

    move-result v0

    iput v0, p0, Lcom/nemustech/tiffany/world/TFTextureInfo;->quantitated_width:I

    .line 45
    iget v0, p0, Lcom/nemustech/tiffany/world/TFTextureInfo;->width:I

    int-to-float v0, v0

    iget v1, p0, Lcom/nemustech/tiffany/world/TFTextureInfo;->quantitated_width:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/nemustech/tiffany/world/TFTextureInfo;->coordRatioWidth:F

    .line 46
    return-void
.end method
